package com.pingan.main;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.media.AudioManager;
import android.media.AudioManager.OnAudioFocusChangeListener;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.OrientationEventListener;
import android.view.SurfaceView;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import com.letpower.engine.AndroidJavaAPI;
import com.letpower.engine.HeadsetPlugReceiver;
import com.letpower.engine.LDEngineDemo;
import com.letpower.engine.LDEngineDemo.UA_CALL_STATE;
import com.letpower.engine.PAEngine;
import com.letpower.engine.PAEngine.UA_CALL_TYPE;
import com.letpower.engine.Utils;
import com.pingan.a.a.e;
import com.pingan.a.a.g;
import com.pingan.a.c;
import com.pingan.b.c.a.a;
import com.pingan.b.c.k;
import com.pingan.main.utils.CameraUtils;
import com.pingan.main.utils.MCPUtils;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.webrtc.videoengine.ViERenderer;
import org.webrtc.videoengine.VideoCaptureAndroid;

public class PAVideoSdkApiManager
{
  public static final int CALL_ONLY_VIDEO = 0;
  public static final int CALL_STATE_CALLING = 0;
  public static final int CALL_STATE_CONNECTED = 2;
  public static final int CALL_STATE_GET_FAILD = -1;
  public static final int CALL_STATE_IDLE = 255;
  public static final int CALL_STATE_RINGING = 1;
  public static final int CALL_VIDEO_VOICE = 1;
  public static final int LOG_LJS = 805;
  public static final int LOG_NO_XMPP = 802;
  public static String LOG_PATH;
  private static String LOG_ROOT_PATH;
  public static final int LOG_SDK_API = 804;
  public static final int LOG_SDK_API_DEMO = 803;
  public static final int LOG_XMPP = 801;
  public static final int MOBILE_PHONE = 0;
  public static final int PAD = 1;
  private static final String TAG = "PAVideoSdkApiManager";
  private static String Version = "20160406-1005";
  private static String VersionIntroduction = "20160406-1005(1.修复线程里面调用initAPI会崩溃问题)";
  static AudioManager.OnAudioFocusChangeListener aChangeListener = new AudioManager.OnAudioFocusChangeListener()
  {
    public void onAudioFocusChange(int paramAnonymousInt)
    {
      if (paramAnonymousInt == -2)
      {
        e.a("PAVideoSdkApiManager", "aChangeListener---focusChange == AudioManager.AUDIOFOCUS_LOSS_TRANSIENT");
        return;
      }
      if (paramAnonymousInt == -1)
      {
        e.a("PAVideoSdkApiManager", "aChangeListener---focusChange == AudioManager.AUDIOFOCUS_LOSS");
        PAVideoSdkApiManager.am.abandonAudioFocus(PAVideoSdkApiManager.aChangeListener);
        return;
      }
      if (paramAnonymousInt == -3)
      {
        e.a("PAVideoSdkApiManager", "aChangeListener---focusChange == AudioManager.AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK");
        return;
      }
      if (paramAnonymousInt == 1)
      {
        e.a("PAVideoSdkApiManager", "aChangeListener---focusChange == AudioManager.AUDIOFOCUS_GAIN");
        return;
      }
      e.a("PAVideoSdkApiManager", "aChangeListener---focusChange == else");
    }
  };
  public static AudioManager am;
  private static boolean authFlag = false;
  private static PAVideoSdkApiManager instance;
  private static IAVCallStatusListener mAvCallStatusListener;
  private static Context mContext;
  private static DisplayMetrics metric;
  private static ExecutorService pool;
  private static g uploadJob;
  public static boolean videoflag;
  private int KEEP_DAYS = 30;
  private int LOG_MAX_NUM = 10;
  private int LOG_MAX_SIZE = 5;
  private int authCount = 0;
  private Camera.CameraInfo[] cameras = new Camera.CameraInfo[Camera.getNumberOfCameras()];
  int degrees1 = 0;
  int degrees2 = 0;
  private int iLocalVideoViewIndex = 0;
  private String ip_addr;
  private boolean needUploadLogFile = true;
  private OrientationEventListener orientationListener;
  private int packetLossPercent = 100;
  private int pakageLossPercentInSec = 600;
  private int regSipMax = 50;
  private int regSipMin = 40;
  private int requestedOrientation;
  private ViewGroup svContainer;
  private SurfaceView svLocal;
  private SurfaceView svRemote;
  private String temp_ip;
  private boolean useFrontCamera;
  
  static
  {
    LOG_ROOT_PATH = Environment.getExternalStorageDirectory().getPath() + "/PinganSDK";
    LOG_PATH = "log";
    instance = null;
    mAvCallStatusListener = null;
    pool = Executors.newCachedThreadPool();
    videoflag = true;
  }
  
  private PAVideoSdkApiManager(Context paramContext)
  {
    paramContext = new Camera.CameraInfo[Camera.getNumberOfCameras()];
    for (;;)
    {
      if (i >= Camera.getNumberOfCameras())
      {
        setDefaultCamera();
        return;
      }
      paramContext[i] = new Camera.CameraInfo();
      Camera.getCameraInfo(i, paramContext[i]);
      this.cameras[paramContext[i].facing] = paramContext[i];
      i += 1;
    }
  }
  
  public static void catchAudioFocus()
  {
    if (am == null) {
      am = (AudioManager)mContext.getSystemService("audio");
    }
    am.requestAudioFocus(aChangeListener, 3, 2);
  }
  
  private void compensateRotation(int paramInt)
  {
    if (!isRegisterState()) {
      return;
    }
    for (;;)
    {
      try
      {
        if ((this.svLocal == null) || (paramInt == -1)) {
          break;
        }
        if ((paramInt > 0) && (paramInt < 35))
        {
          paramInt = rotationFromRealWorldUp(this.cameras[getCameraIndex()], paramInt);
          LDEngineDemo.LDVoiceEngAndroidAPI.setRotateCapturedFrames(paramInt);
          return;
        }
      }
      catch (Exception localException)
      {
        return;
      }
      if (((paramInt <= 55) || (paramInt >= 125)) && ((paramInt <= 145) || (paramInt >= 215)) && ((paramInt <= 235) || (paramInt >= 305))) {
        if (paramInt <= 325) {
          break;
        }
      }
    }
  }
  
  /* Error */
  private boolean createLogDir()
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 5
    //   3: new 286	java/text/SimpleDateFormat
    //   6: dup
    //   7: ldc_w 288
    //   10: invokespecial 289	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   13: new 291	java/util/Date
    //   16: dup
    //   17: invokespecial 292	java/util/Date:<init>	()V
    //   20: invokevirtual 296	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   23: putstatic 140	com/pingan/main/PAVideoSdkApiManager:LOG_PATH	Ljava/lang/String;
    //   26: new 111	java/io/File
    //   29: dup
    //   30: new 103	java/lang/StringBuilder
    //   33: dup
    //   34: getstatic 136	com/pingan/main/PAVideoSdkApiManager:LOG_ROOT_PATH	Ljava/lang/String;
    //   37: invokestatic 121	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   40: invokespecial 125	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   43: ldc_w 298
    //   46: invokevirtual 131	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   49: getstatic 140	com/pingan/main/PAVideoSdkApiManager:LOG_PATH	Ljava/lang/String;
    //   52: invokevirtual 131	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   55: ldc_w 300
    //   58: invokevirtual 131	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   61: invokevirtual 134	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   64: invokespecial 301	java/io/File:<init>	(Ljava/lang/String;)V
    //   67: astore_1
    //   68: new 111	java/io/File
    //   71: dup
    //   72: new 103	java/lang/StringBuilder
    //   75: dup
    //   76: getstatic 136	com/pingan/main/PAVideoSdkApiManager:LOG_ROOT_PATH	Ljava/lang/String;
    //   79: invokestatic 121	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   82: invokespecial 125	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   85: ldc_w 298
    //   88: invokevirtual 131	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   91: getstatic 140	com/pingan/main/PAVideoSdkApiManager:LOG_PATH	Ljava/lang/String;
    //   94: invokevirtual 131	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   97: ldc_w 303
    //   100: invokevirtual 131	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   103: invokevirtual 134	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   106: invokespecial 301	java/io/File:<init>	(Ljava/lang/String;)V
    //   109: astore_2
    //   110: new 111	java/io/File
    //   113: dup
    //   114: new 103	java/lang/StringBuilder
    //   117: dup
    //   118: getstatic 136	com/pingan/main/PAVideoSdkApiManager:LOG_ROOT_PATH	Ljava/lang/String;
    //   121: invokestatic 121	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   124: invokespecial 125	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   127: ldc_w 298
    //   130: invokevirtual 131	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   133: getstatic 140	com/pingan/main/PAVideoSdkApiManager:LOG_PATH	Ljava/lang/String;
    //   136: invokevirtual 131	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   139: ldc_w 305
    //   142: invokevirtual 131	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   145: invokevirtual 134	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   148: invokespecial 301	java/io/File:<init>	(Ljava/lang/String;)V
    //   151: astore_3
    //   152: iload 5
    //   154: istore 4
    //   156: aload_1
    //   157: invokevirtual 308	java/io/File:exists	()Z
    //   160: ifne +120 -> 280
    //   163: aload_1
    //   164: invokevirtual 311	java/io/File:mkdirs	()Z
    //   167: iconst_0
    //   168: ior
    //   169: istore 6
    //   171: ldc 43
    //   173: new 103	java/lang/StringBuilder
    //   176: dup
    //   177: ldc_w 313
    //   180: invokespecial 125	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   183: iload 6
    //   185: invokevirtual 316	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   188: invokevirtual 134	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   191: invokestatic 322	com/pingan/a/a/e:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   194: iload 5
    //   196: istore 4
    //   198: aload_2
    //   199: invokevirtual 308	java/io/File:exists	()Z
    //   202: ifne +78 -> 280
    //   205: iload 6
    //   207: aload_2
    //   208: invokevirtual 311	java/io/File:mkdirs	()Z
    //   211: ior
    //   212: istore 6
    //   214: ldc 43
    //   216: new 103	java/lang/StringBuilder
    //   219: dup
    //   220: ldc_w 324
    //   223: invokespecial 125	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   226: iload 6
    //   228: invokevirtual 316	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   231: invokevirtual 134	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   234: invokestatic 322	com/pingan/a/a/e:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   237: iload 5
    //   239: istore 4
    //   241: aload_3
    //   242: invokevirtual 308	java/io/File:exists	()Z
    //   245: ifne +35 -> 280
    //   248: aload_3
    //   249: invokevirtual 311	java/io/File:mkdirs	()Z
    //   252: iload 6
    //   254: ior
    //   255: istore 4
    //   257: ldc 43
    //   259: new 103	java/lang/StringBuilder
    //   262: dup
    //   263: ldc_w 326
    //   266: invokespecial 125	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   269: iload 4
    //   271: invokevirtual 316	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   274: invokevirtual 134	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   277: invokestatic 322	com/pingan/a/a/e:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   280: iload 4
    //   282: ireturn
    //   283: astore_1
    //   284: iconst_0
    //   285: ireturn
    //   286: astore_1
    //   287: iconst_0
    //   288: ireturn
    //   289: astore_1
    //   290: iconst_0
    //   291: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	292	0	this	PAVideoSdkApiManager
    //   67	97	1	localFile1	File
    //   283	1	1	localException1	Exception
    //   286	1	1	localException2	Exception
    //   289	1	1	localException3	Exception
    //   109	99	2	localFile2	File
    //   151	98	3	localFile3	File
    //   154	127	4	bool1	boolean
    //   1	237	5	bool2	boolean
    //   169	86	6	bool3	boolean
    // Exception table:
    //   from	to	target	type
    //   163	194	283	java/lang/Exception
    //   205	237	286	java/lang/Exception
    //   248	280	289	java/lang/Exception
  }
  
  private void decreaseLocalView(int paramInt1, int paramInt2)
  {
    e.b("PAVideoSdkApiManager", "decreaseLocalView-->" + paramInt1 + "---" + paramInt2);
    ViewGroup.LayoutParams localLayoutParams = this.svLocal.getLayoutParams();
    e.b("PAVideoSdkApiManager", "decreaseLocalView-->" + localLayoutParams.width + "---" + localLayoutParams.height);
    localLayoutParams.height = paramInt2;
    localLayoutParams.width = paramInt1;
    if (this.svLocal != null) {
      this.svLocal.setLayoutParams(localLayoutParams);
    }
  }
  
  private void decreaseRemoteView(int paramInt1, int paramInt2)
  {
    e.b("PAVideoSdkApiManager", "decreaseRemoteView-->" + paramInt1 + "---" + paramInt2);
    ViewGroup.LayoutParams localLayoutParams = this.svRemote.getLayoutParams();
    e.b("PAVideoSdkApiManager", "decreaseRemoteView-->" + localLayoutParams.width + "---" + localLayoutParams.height);
    localLayoutParams.height = paramInt2;
    localLayoutParams.width = paramInt1;
    if (this.svRemote != null) {
      this.svRemote.setLayoutParams(localLayoutParams);
    }
  }
  
  public static void freeRes(int paramInt)
  {
    if (!isSDKAlive()) {
      return;
    }
    e.b("PAVideoSdkApiManager", "getCallState=" + LDEngineDemo.LDVoiceEngAndroidAPI.getCallState());
    StringBuilder localStringBuilder = new StringBuilder("PAVideoSdkApiManage--freeRes(what)--getCallState()=");
    if (LDEngineDemo.UA_CALL_STATE.getByValue(LDEngineDemo.LDVoiceEngAndroidAPI.getCallState()) != LDEngineDemo.UA_CALL_STATE.UA_CALL_STATE_IDLE) {}
    for (boolean bool = true;; bool = false)
    {
      e.b("PAVideoSdkApiManager", bool);
      if (LDEngineDemo.UA_CALL_STATE.getByValue(LDEngineDemo.LDVoiceEngAndroidAPI.getCallState()) != LDEngineDemo.UA_CALL_STATE.UA_CALL_STATE_IDLE)
      {
        e.a("PAVideoSdkApiManager", "PAVideoSdkApiManage--freeRes(what)--endcall()");
        LDEngineDemo.LDVoiceEngAndroidAPI.endcall();
      }
      LDEngineDemo.LDVoiceEngAndroidAPI.stopLocalCamera();
      if (LDEngineDemo.LDVoiceEngAndroidAPI.getRegisterState() == 1) {
        LDEngineDemo.LDVoiceEngAndroidAPI.unregister();
      }
      if (authFlag) {
        LDEngineDemo.LDVoiceEngAndroidAPI.freeRes();
      }
      LDEngineDemo.LDVoiceEngAndroidAPI = null;
      return;
    }
  }
  
  public static NetworkInfo getActiveNetwork(Context paramContext)
  {
    if (paramContext == null) {
      return null;
    }
    paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
    if (paramContext == null) {
      return null;
    }
    return paramContext.getActiveNetworkInfo();
  }
  
  private int getCameraId(int paramInt)
  {
    int i = Camera.getNumberOfCameras() - 1;
    for (;;)
    {
      if (i < 0)
      {
        e.d("PAVideoSdkApiManager", "getCameraId--failed--Index does not match a camera--index=" + paramInt);
        throw new RuntimeException("Index does not match a camera");
      }
      Camera.CameraInfo localCameraInfo = new Camera.CameraInfo();
      Camera.getCameraInfo(i, localCameraInfo);
      if (paramInt == localCameraInfo.facing)
      {
        e.a("PAVideoSdkApiManager", "getCameraId=info.facing=" + localCameraInfo.facing);
        return i;
      }
      i -= 1;
    }
  }
  
  private int getCameraIndex()
  {
    if (this.useFrontCamera) {
      return 1;
    }
    return 0;
  }
  
  public static PAVideoSdkApiManager getInstance(Context paramContext)
  {
    mContext = paramContext;
    LDEngineDemo.mContext = paramContext;
    g localg;
    if (uploadJob == null)
    {
      localg = new g();
      uploadJob = localg;
    }
    try
    {
      localg.b = new k(new com.pingan.b.c.b().a(new a(System.getProperty("java.io.tmpdir"))).a());
      if (LDEngineDemo.LDVoiceEngAndroidAPI == null) {
        LDEngineDemo.LDVoiceEngAndroidAPI = new AndroidJavaAPI(paramContext);
      }
      if (instance == null) {
        instance = new PAVideoSdkApiManager(paramContext);
      }
      e.a(paramContext);
      if (am == null) {
        am = (AudioManager)mContext.getSystemService("audio");
      }
      if ((mContext instanceof Activity))
      {
        metric = new DisplayMetrics();
        ((Activity)mContext).getWindowManager().getDefaultDisplay().getMetrics(metric);
        e.a("PAVideoSdkApiManager", "设置分辨率--setScreenResolution-->" + metric.widthPixels + "," + metric.heightPixels);
      }
      return instance;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        localIOException.printStackTrace();
        e.d("UploadUtil", localIOException.getMessage());
      }
    }
  }
  
  public static String getLogRootPath()
  {
    return LOG_ROOT_PATH;
  }
  
  public static String getSDKVersion()
  {
    return Version;
  }
  
  public static String getSDKVersionIntroduction()
  {
    return VersionIntroduction;
  }
  
  public static String getSOVersion()
  {
    return LDEngineDemo.LDVoiceEngAndroidAPI.getSDKVersion();
  }
  
  private boolean isParamsEmpty()
  {
    return (TextUtils.isEmpty(GlobalVarHolder.account)) || (TextUtils.isEmpty(GlobalVarHolder.password)) || (TextUtils.isEmpty(GlobalVarHolder.SBCDomain)) || (TextUtils.isEmpty(GlobalVarHolder.SBCIP)) || (TextUtils.isEmpty(GlobalVarHolder.SBCPort));
  }
  
  public static boolean isSDKAlive()
  {
    return LDEngineDemo.LDVoiceEngAndroidAPI != null;
  }
  
  private void outputAVCallStatus(int paramInt, Object paramObject)
  {
    e.a("PASDK", "outputAVCallStatus mAvCallStatusListener:" + mAvCallStatusListener + "--status:" + paramInt + "--obj:" + paramObject);
    IAVCallStatusListener localIAVCallStatusListener = LDEngineDemo.getIAVCallStatusListener();
    mAvCallStatusListener = localIAVCallStatusListener;
    if (localIAVCallStatusListener != null)
    {
      e.a("PASDK", "outputAVCallStatus mAvCallStatusListener  in");
      mAvCallStatusListener.outputAVCallStatus(paramInt, paramObject);
    }
  }
  
  public static void releaseAudioFocus()
  {
    if (am != null) {
      am.abandonAudioFocus(aChangeListener);
    }
  }
  
  private static int rotationFromRealWorldUp(Camera.CameraInfo paramCameraInfo, int paramInt)
  {
    paramInt = (int)(Math.round(paramInt / 90.0D) * 90L) % 360;
    if (paramCameraInfo.facing == 1) {
      return (360 - paramInt + paramCameraInfo.orientation) % 360;
    }
    return (paramInt + paramCameraInfo.orientation) % 360;
  }
  
  private void setIP()
  {
    this.ip_addr = Utils.getIPAddress(mContext);
    e.b("PAVideoSdkApiManager", "setIP-手机IP地址--ip_addr=" + this.ip_addr);
    if ((this.ip_addr != null) && (!"".equals(this.ip_addr.trim())))
    {
      e.b("PAVideoSdkApiManager", this.ip_addr + "-----进入设置ip");
      LDEngineDemo.LDVoiceEngAndroidAPI.setIPAddr(this.ip_addr);
      this.temp_ip = this.ip_addr;
    }
  }
  
  public static void setLogRootPath(String paramString)
  {
    LOG_ROOT_PATH = paramString;
  }
  
  public static void uploadLog(String paramString)
  {
    pool.execute(new Thread()
    {
      public void run()
      {
        PAVideoSdkApiManager.uploadJob.a(PAVideoSdkApiManager.this);
        super.run();
      }
    });
  }
  
  public void CloseSpeaker()
  {
    try
    {
      AudioManager localAudioManager = (AudioManager)mContext.getSystemService("audio");
      localAudioManager.setMode(3);
      int i = localAudioManager.getStreamVolume(3);
      if ((localAudioManager != null) && (localAudioManager.isSpeakerphoneOn()))
      {
        localAudioManager.setSpeakerphoneOn(false);
        localAudioManager.setStreamVolume(3, i, 0);
      }
      return;
    }
    catch (Exception localException)
    {
      e.d("PAVideoSdkApiManager", "CloseSpeaker--Exception:" + localException.getMessage());
      localException.printStackTrace();
    }
  }
  
  public boolean MuteMic(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (paramBoolean = false; LDEngineDemo.LDVoiceEngAndroidAPI.enableMic(paramBoolean) == 1; paramBoolean = true) {
      return true;
    }
    return false;
  }
  
  public void OpenSpeaker()
  {
    try
    {
      AudioManager localAudioManager = (AudioManager)mContext.getSystemService("audio");
      localAudioManager.setMode(3);
      e.a("PAVideoSdkApiManager", "OpenSpeaker-->HeadsetPlugReceiver.getIsHeadsetConnected()=" + HeadsetPlugReceiver.getIsHeadsetConnected());
      if ((!localAudioManager.isSpeakerphoneOn()) && (!HeadsetPlugReceiver.getIsHeadsetConnected()))
      {
        localAudioManager.setSpeakerphoneOn(true);
        localAudioManager.setStreamVolume(3, localAudioManager.getStreamVolume(3), 0);
      }
      return;
    }
    catch (Exception localException)
    {
      e.d("PAVideoSdkApiManager", "OpenSpeaker--Exception:" + localException.getMessage());
      localException.printStackTrace();
    }
  }
  
  public boolean acceptCall()
  {
    catchAudioFocus();
    e.b("PAVideoSdkApiManager", "acceptCall()-->in");
    int i;
    if (getIncomingCallType() == 1)
    {
      e.b("PAVideoSdkApiManager", "acceptCall()-->视频来电接通");
      openLocalView();
      openRemoteView();
      PAEngine.local_call_type = PAEngine.UA_CALL_TYPE.UA_CALL_TYPE_VIDEO;
      i = LDEngineDemo.LDVoiceEngAndroidAPI.acceptcall(GlobalVarHolder.DEFAULT_VIDEO_CODEC_WIDTH, GlobalVarHolder.DEFAULT_VIDEO_CODEC_HEIGHT, GlobalVarHolder.DEFAULT_VIDEO_CODEC_FPS, 50, 300, 100, 1);
      e.b("PAVideoSdkApiManager", "acceptCall()-->openLocalView");
    }
    while (i == 1)
    {
      return true;
      PAEngine.local_call_type = PAEngine.UA_CALL_TYPE.UA_CALL_TYPE_VOICE;
      e.b("PAVideoSdkApiManager", "acceptCall()-->音频来电接通");
      i = LDEngineDemo.LDVoiceEngAndroidAPI.acceptcall(0, 0, 0, 0, 0, 0, 0);
    }
    return false;
  }
  
  public void addLocalViewToSurface()
  {
    LDEngineDemo.LDVoiceEngAndroidAPI.startRenderLocal();
    e.a("PAVideoSdkApiManager", "addLocalViewToSurface()");
  }
  
  public void addRemoteViewToSurface()
  {
    LDEngineDemo.LDVoiceEngAndroidAPI.startRenderRemote();
    e.b("PAVideoSdkApiManager", "addRemoteViewToSurface()--end ");
  }
  
  public void changeLocalViewZOrderOnTop(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      LDEngineDemo.LDVoiceEngAndroidAPI.stopRenderRemote();
      this.svContainer.removeView(this.svRemote);
      this.svContainer.addView(this.svRemote);
      LDEngineDemo.LDVoiceEngAndroidAPI.setremoteview(this.svRemote);
      LDEngineDemo.LDVoiceEngAndroidAPI.startRenderRemote();
      this.svLocal.setZOrderOnTop(true);
      this.svRemote.setZOrderOnTop(false);
      LDEngineDemo.LDVoiceEngAndroidAPI.stopRenderLocal();
      this.svContainer.removeView(this.svLocal);
      this.svContainer.addView(this.svLocal);
      LDEngineDemo.LDVoiceEngAndroidAPI.setlocalview(this.svLocal);
      LDEngineDemo.LDVoiceEngAndroidAPI.startRenderLocal();
      return;
    }
    LDEngineDemo.LDVoiceEngAndroidAPI.stopRenderLocal();
    this.svContainer.removeView(this.svLocal);
    this.svContainer.addView(this.svLocal);
    LDEngineDemo.LDVoiceEngAndroidAPI.setlocalview(this.svLocal);
    LDEngineDemo.LDVoiceEngAndroidAPI.startRenderLocal();
    this.svLocal.setZOrderOnTop(false);
    this.svRemote.setZOrderOnTop(true);
    LDEngineDemo.LDVoiceEngAndroidAPI.stopRenderRemote();
    this.svContainer.removeView(this.svRemote);
    this.svContainer.addView(this.svRemote);
    LDEngineDemo.LDVoiceEngAndroidAPI.setremoteview(this.svRemote);
    LDEngineDemo.LDVoiceEngAndroidAPI.startRenderRemote();
  }
  
  public boolean checkIP()
  {
    e.b("PAVideoSdkApiManager", "checkIP--ip_addr=" + this.ip_addr);
    setIP();
    e.b("PAVideoSdkApiManager", "checkIP--after setIP()--ip_addr=" + this.ip_addr);
    if ((this.ip_addr == null) || (this.ip_addr.equals("")) || (this.ip_addr.isEmpty()))
    {
      e.d("PAVideoSdkApiManager", "IP号获取为空 ip_addr= " + this.ip_addr);
      return false;
    }
    return true;
  }
  
  public void cleanVideoView()
  {
    LDEngineDemo.LDVoiceEngAndroidAPI.stopRenderLocal();
    LDEngineDemo.LDVoiceEngAndroidAPI.stopRenderRemote();
    if ((this.svContainer != null) && (this.svContainer.getChildCount() != 0))
    {
      if (this.svLocal != null) {
        this.svContainer.removeView(this.svLocal);
      }
      if (this.svRemote != null) {
        this.svContainer.removeView(this.svRemote);
      }
      if (this.svLocal != null) {
        this.svContainer.addView(this.svLocal);
      }
      if (this.svRemote != null) {
        this.svContainer.addView(this.svRemote);
      }
    }
    LDEngineDemo.LDVoiceEngAndroidAPI.stopLocalCamera();
    LDEngineDemo.LDVoiceEngAndroidAPI.closeRemoteVideo();
  }
  
  public void closeView()
  {
    if (PAEngine.local_call_type == PAEngine.UA_CALL_TYPE.UA_CALL_TYPE_VIDEO) {
      cleanVideoView();
    }
    PAEngine.local_call_type = PAEngine.UA_CALL_TYPE.UA_CALL_TYPE_VOICE;
    releaseAudioFocus();
  }
  
  public void enableRTCPReport(boolean paramBoolean)
  {
    LDEngineDemo.LDVoiceEngAndroidAPI.enableRTCPReport(paramBoolean, 1, paramBoolean, 1);
  }
  
  public void enableRTCPReport(boolean paramBoolean1, int paramInt1, boolean paramBoolean2, int paramInt2)
  {
    LDEngineDemo.LDVoiceEngAndroidAPI.enableRTCPReport(paramBoolean1, paramInt1, paramBoolean2, paramInt2);
  }
  
  public void freeRes()
  {
    if (!isSDKAlive()) {
      return;
    }
    e.a("getCallState=" + LDEngineDemo.LDVoiceEngAndroidAPI.getCallState());
    StringBuilder localStringBuilder = new StringBuilder("PAVideoSdkApiManage--freeRes()--getCallState()=");
    if (LDEngineDemo.UA_CALL_STATE.getByValue(LDEngineDemo.LDVoiceEngAndroidAPI.getCallState()) != LDEngineDemo.UA_CALL_STATE.UA_CALL_STATE_IDLE) {}
    for (boolean bool = true;; bool = false)
    {
      e.b("PAVideoSdkApiManager", bool);
      if ((isRegisterState()) && (LDEngineDemo.UA_CALL_STATE.getByValue(LDEngineDemo.LDVoiceEngAndroidAPI.getCallState()) != LDEngineDemo.UA_CALL_STATE.UA_CALL_STATE_IDLE))
      {
        e.b("PAVideoSdkApiManager", "PAVideoSdkApiManage--freeRes()--endcall()");
        LDEngineDemo.LDVoiceEngAndroidAPI.endcall();
      }
      LDEngineDemo.LDVoiceEngAndroidAPI.stopLocalCamera();
      if (this.svContainer != null)
      {
        if (this.svLocal != null)
        {
          this.svContainer.removeView(this.svLocal);
          this.svLocal = null;
        }
        if (this.svRemote != null)
        {
          this.svContainer.removeView(this.svRemote);
          this.svRemote = null;
        }
        this.svContainer = null;
      }
      if (LDEngineDemo.LDVoiceEngAndroidAPI.getRegisterState() == 1) {
        LDEngineDemo.LDVoiceEngAndroidAPI.unregister();
      }
      if (authFlag)
      {
        LDEngineDemo.LDVoiceEngAndroidAPI.freeRes();
        authFlag = false;
      }
      LDEngineDemo.LDVoiceEngAndroidAPI = null;
      return;
    }
  }
  
  public int getCallState()
  {
    if (LDEngineDemo.LDVoiceEngAndroidAPI == null) {
      return -1;
    }
    return LDEngineDemo.LDVoiceEngAndroidAPI.getCallState();
  }
  
  public Camera getCameraFront()
  {
    e.b("PAVideoSdkApiManager", "getCameraFront---->getCallState=" + getCallState() + "...getCameraIndex=" + getCameraIndex());
    if ((getCallState() == 2) && (getCameraIndex() == 1)) {
      return VideoCaptureAndroid.cameraFront;
    }
    return null;
  }
  
  public int getIncomingCallType()
  {
    String str;
    if (PAEngine.UA_CALL_TYPE.getByValue(LDEngineDemo.LDVoiceEngAndroidAPI.getCallType()) == PAEngine.UA_CALL_TYPE.UA_CALL_TYPE_VOICE)
    {
      e.b("PAVideoSdkApiManager", "getIncomingCallType()-->音频来电接通");
      str = "voice";
    }
    while ("video".equals(str))
    {
      return 1;
      if (PAEngine.UA_CALL_TYPE.getByValue(LDEngineDemo.LDVoiceEngAndroidAPI.getCallType()) == PAEngine.UA_CALL_TYPE.UA_CALL_TYPE_VIDEO)
      {
        e.b("PAVideoSdkApiManager", "getIncomingCallType()-->视频来电接通");
        str = "video";
      }
      else
      {
        e.b("PAVideoSdkApiManager", "getIncomingCallType()-->else");
        str = "voice";
      }
    }
    return 0;
  }
  
  public String getIncomingCaller()
  {
    if (LDEngineDemo.LDVoiceEngAndroidAPI == null) {
      return null;
    }
    return LDEngineDemo.LDVoiceEngAndroidAPI.getIncomingCaller();
  }
  
  public int getKEEP_DAYS()
  {
    return this.KEEP_DAYS;
  }
  
  public int getPacktLoss()
  {
    return LDEngineDemo.LDVoiceEngAndroidAPI.getPacketLoss();
  }
  
  public String getRemotescreen()
  {
    return LDEngineDemo.LDVoiceEngAndroidAPI.getRemotescreen();
  }
  
  public String getSipMsg()
  {
    return LDEngineDemo.LDVoiceEngAndroidAPI.getSipMsg();
  }
  
  public SurfaceView getSvLocalView()
  {
    return this.svLocal;
  }
  
  public SurfaceView getSvRemoteView()
  {
    return this.svRemote;
  }
  
  public String getUUID()
  {
    if ((LDEngineDemo.LDVoiceEngAndroidAPI.getServerUUID() == null) || ("".equals(LDEngineDemo.LDVoiceEngAndroidAPI.getServerUUID().trim())))
    {
      e.d("PAVideoSdkApiManager", "获取录音流水号为空");
      return null;
    }
    return LDEngineDemo.LDVoiceEngAndroidAPI.getServerUUID();
  }
  
  public boolean hangup()
  {
    boolean bool = false;
    if (getCallState() != 255)
    {
      e.a("PAVideoSdkApiManager", "LDEngineDemo--hangup()--endcall()");
      if (!isSDKAlive()) {}
    }
    for (int i = LDEngineDemo.LDVoiceEngAndroidAPI.endcall();; i = 0)
    {
      closeView();
      if (this.orientationListener != null) {
        this.orientationListener.disable();
      }
      if (i == 1) {
        bool = true;
      }
      return bool;
    }
  }
  
  public boolean hasFrontCamera()
  {
    return CameraUtils.hasFrontFacingCamera();
  }
  
  public void initAPI()
  {
    e.b("PAVideoSdkApiManager", "Calling native init...");
    int i = -99;
    if (!authFlag) {
      i = LDEngineDemo.LDVoiceEngAndroidAPI.NativeInit(mContext, null, null, null);
    }
    if (i < 0)
    {
      if ((!authFlag) && (this.authCount < 5))
      {
        this.authCount += 1;
        initAPI();
      }
      while (this.authCount < 5) {
        return;
      }
      outputAVCallStatus(400, String.valueOf(i));
      this.authCount = 0;
      return;
    }
    authFlag = true;
    this.authCount = 0;
    outputAVCallStatus(420, String.valueOf(i));
  }
  
  public void initAPI(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    e.b("PAVideoSdkApiManager", "Calling native init...");
    if ((TextUtils.isEmpty(paramString2)) || (TextUtils.isEmpty(paramString3)) || (TextUtils.isEmpty(paramString4)) || (TextUtils.isEmpty(paramString1)))
    {
      outputAVCallStatus(400, " 传递的参数不能为空！");
      return;
    }
    if ((paramString1 == null) || ("".equals(paramString1.trim()))) {}
    for (GlobalVarHolder.UUID = com.pingan.a.a.b.a(mContext);; GlobalVarHolder.UUID = paramString1)
    {
      e.a(this.KEEP_DAYS);
      if (this.needUploadLogFile) {
        MCPUtils.getIBOSTokenAndUpload(mContext, uploadJob);
      }
      nativeInit(mContext, paramString2, paramString3, paramString4);
      return;
    }
  }
  
  public boolean initLog(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramInt == 801) {
      LOG_PATH = "xmppLog";
    }
    for (;;)
    {
      Log.e("logapi", "initLog1=" + LOG_PATH);
      if (!createLogDir()) {
        break label334;
      }
      boolean bool1 = LDEngineDemo.LDVoiceEngAndroidAPI.initUALog(LOG_ROOT_PATH + "/" + LOG_PATH + "/UA/", "UA", this.KEEP_DAYS, 8, this.LOG_MAX_SIZE, this.LOG_MAX_NUM);
      boolean bool2 = LDEngineDemo.LDVoiceEngAndroidAPI.initSIPLog(LOG_ROOT_PATH + "/" + LOG_PATH + "/SIP/", "SIP", this.KEEP_DAYS, 8, this.LOG_MAX_SIZE, this.LOG_MAX_NUM);
      boolean bool3 = LDEngineDemo.LDVoiceEngAndroidAPI.initSDKLog(null, null, this.KEEP_DAYS, 8, this.LOG_MAX_SIZE, this.LOG_MAX_NUM);
      LDEngineDemo.LDVoiceEngAndroidAPI.setSIPMsgOutput(false, paramBoolean1);
      e.b("PAVideoSdkApiManager", bool1 + ",," + bool2 + ",," + bool3);
      if (paramBoolean2) {
        c.a().a(mContext);
      }
      if ((bool1) || (bool2) || (bool3)) {
        break;
      }
      return false;
      if (paramInt == 802) {
        LOG_PATH = "noXmppLog";
      } else if (paramInt == 803) {
        LOG_PATH = "sdkApiDemoLog";
      } else if (paramInt == 804) {
        LOG_PATH = "sdkApiLog";
      } else if (paramInt == 805) {
        LOG_PATH = "sdkLJS";
      }
    }
    return true;
    label334:
    return false;
  }
  
  public boolean initLog(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (createLogDir())
    {
      boolean bool1 = LDEngineDemo.LDVoiceEngAndroidAPI.initUALog(LOG_ROOT_PATH + "/" + LOG_PATH + "/UA/", "UA", this.KEEP_DAYS, 8, this.LOG_MAX_SIZE, this.LOG_MAX_NUM);
      boolean bool2 = LDEngineDemo.LDVoiceEngAndroidAPI.initSIPLog(LOG_ROOT_PATH + "/" + LOG_PATH + "/SIP/", "SIP", this.KEEP_DAYS, 8, this.LOG_MAX_SIZE, this.LOG_MAX_NUM);
      boolean bool3 = LDEngineDemo.LDVoiceEngAndroidAPI.initSDKLog(null, null, this.KEEP_DAYS, 8, this.LOG_MAX_SIZE, this.LOG_MAX_NUM);
      LDEngineDemo.LDVoiceEngAndroidAPI.setSIPMsgOutput(false, paramBoolean1);
      e.b("PAVideoSdkApiManager", bool1 + ",," + bool2 + ",," + bool3);
      if (paramBoolean2) {
        c.a().a(mContext);
      }
      return (bool1) || (bool2) || (bool3);
    }
    return false;
  }
  
  public void initVideoView(ViewGroup paramViewGroup, SurfaceView paramSurfaceView1, SurfaceView paramSurfaceView2)
  {
    this.svContainer = paramViewGroup;
    this.svLocal = ViERenderer.CreateRenderer(mContext, true);
    this.svRemote = ViERenderer.CreateRenderer(mContext, true);
    ViewGroup.LayoutParams localLayoutParams1 = paramSurfaceView1.getLayoutParams();
    e.a("PAVideoSdkApiManager", "initVideo--params.getWidth()=" + localLayoutParams1.width + "--params.height=" + localLayoutParams1.height);
    ViewGroup.LayoutParams localLayoutParams2 = paramSurfaceView2.getLayoutParams();
    e.a("PAVideoSdkApiManager", "initVideo--rparams.getWidth()=" + localLayoutParams2.width + "--rparams.height=" + localLayoutParams2.height);
    this.svLocal.setLayoutParams(localLayoutParams1);
    this.svRemote.setLayoutParams(localLayoutParams2);
    this.svLocal.setId(paramSurfaceView1.getId());
    this.svRemote.setId(paramSurfaceView2.getId());
    paramViewGroup.removeView(paramSurfaceView2);
    paramViewGroup.removeView(paramSurfaceView1);
    Log.d("PAVideoSdkApiManager", "initVideo--msvLocal=" + paramSurfaceView1.getId() + "--msvRemote=" + paramSurfaceView2.getId());
    if (videoflag)
    {
      paramViewGroup.addView(this.svLocal, 0);
      paramViewGroup.addView(this.svRemote, 1);
      return;
    }
    paramViewGroup.addView(this.svRemote, 0);
    paramViewGroup.addView(this.svLocal, 1);
  }
  
  public boolean isIpChanged()
  {
    this.ip_addr = Utils.getIPAddress(mContext);
    e.b("LDSDK", "ip_addr=" + this.ip_addr + "--temp_ip=" + this.temp_ip);
    return !this.ip_addr.equals(this.temp_ip);
  }
  
  public boolean isRegisterState()
  {
    if (LDEngineDemo.LDVoiceEngAndroidAPI != null) {}
    for (int i = LDEngineDemo.LDVoiceEngAndroidAPI.getRegisterState(); i == 1; i = 0) {
      return true;
    }
    return false;
  }
  
  public void nativeInit(final Context paramContext, final String paramString1, final String paramString2, final String paramString3)
  {
    new Thread()
    {
      public void run()
      {
        if (!PAVideoSdkApiManager.authFlag)
        {
          int i = LDEngineDemo.LDVoiceEngAndroidAPI.NativeInit(PAVideoSdkApiManager.mContext, paramString1, paramString2, paramString3);
          if (i < 0)
          {
            if (PAVideoSdkApiManager.this.authCount < 5)
            {
              e.d("PAVideoSdkApiManager", "initAPI 失败，进入重试！authCount=" + PAVideoSdkApiManager.this.authCount);
              PAVideoSdkApiManager localPAVideoSdkApiManager = PAVideoSdkApiManager.this;
              localPAVideoSdkApiManager.authCount += 1;
              PAVideoSdkApiManager.authFlag = false;
              PAVideoSdkApiManager.this.nativeInit(paramContext, paramString1, paramString2, paramString3);
              return;
            }
            e.d("PAVideoSdkApiManager", "initAPI 五次重试失败");
            PAVideoSdkApiManager.authFlag = false;
            PAVideoSdkApiManager.this.outputAVCallStatus(400, String.valueOf(i));
            PAVideoSdkApiManager.this.authCount = 0;
            return;
          }
          e.d("PAVideoSdkApiManager", "initAPI 成功");
          PAVideoSdkApiManager.authFlag = true;
          PAVideoSdkApiManager.this.authCount = 0;
          PAVideoSdkApiManager.this.outputAVCallStatus(420, String.valueOf(i));
          return;
        }
        e.a("PAVideoSdkApiManager", "initAPI--已经是认证成功的状态");
        PAVideoSdkApiManager.this.outputAVCallStatus(420, "0");
      }
    }.start();
  }
  
  public void openLocalView()
  {
    e.b("PAVideoSdkApiManager", "openLocalView-->svLocal=" + this.svLocal + "---hasFrontCamera=" + hasFrontCamera());
    if (hasFrontCamera()) {
      LDEngineDemo.LDVoiceEngAndroidAPI.setcameraindex(getCameraId(getCameraIndex()));
    }
    for (;;)
    {
      LDEngineDemo.LDVoiceEngAndroidAPI.setlocalview(this.svLocal);
      LDEngineDemo.LDVoiceEngAndroidAPI.openLocalVideo();
      removeLocalViewFromSurface();
      addLocalViewToSurface();
      return;
      LDEngineDemo.LDVoiceEngAndroidAPI.setcameraindex(0);
    }
  }
  
  public void openRemoteView()
  {
    e.b("PAVideoSdkApiManager", "openRemoteView-->setremoteview ");
    LDEngineDemo.LDVoiceEngAndroidAPI.setremoteview(this.svRemote);
    LDEngineDemo.LDVoiceEngAndroidAPI.openRemoteVideo();
    LDEngineDemo.LDVoiceEngAndroidAPI.startMediaVideoFromUI();
    removeRemoteViewFromSurface();
    addRemoteViewToSurface();
    e.b("PAVideoSdkApiManager", "openRemoteView-->end ");
  }
  
  public int pressDtmf(int paramInt)
  {
    e.a("PAVideoSdkApiManager", "pressDtmf--num=" + paramInt);
    return LDEngineDemo.LDVoiceEngAndroidAPI.pressDtmf(paramInt);
  }
  
  public void printParamForReg()
  {
    e.b("PAVideoSdkApiManager", "regMax=" + this.regSipMax + ",,,regMin=" + this.regSipMin + ",,,packLossPer=" + this.packetLossPercent + ",,,,packLossPerInSec=" + this.pakageLossPercentInSec);
  }
  
  public int realtimeLogSwitch(boolean paramBoolean)
  {
    return LDEngineDemo.LDVoiceEngAndroidAPI.setRTLogFlag(paramBoolean);
  }
  
  public void reduceLocalView()
  {
    Object localObject = LDEngineDemo.LDVoiceEngAndroidAPI.getRemotescreen();
    e.a("PAVideoSdkApiManager", "decreaseLocalView--getRemotescreen->w_h=" + (String)localObject);
    localObject = ((String)localObject).split(",");
    int i = Integer.parseInt(localObject[0]);
    int j = Integer.parseInt(localObject[1]);
    if ((i <= 0) || (j <= 0))
    {
      decreaseLocalView(GlobalVarHolder.DEFAULT_SMALL_VIDEO_WIDTH, GlobalVarHolder.DEFAULT_SMALL_VIDEO_HEIGHT);
      return;
    }
    if (i > j)
    {
      decreaseLocalView((int)(i / j * GlobalVarHolder.DEFAULT_SMALL_VIDEO_HEIGHT), GlobalVarHolder.DEFAULT_SMALL_VIDEO_HEIGHT);
      return;
    }
    float f1 = j / i;
    float f2 = GlobalVarHolder.DEFAULT_SMALL_VIDEO_WIDTH;
    decreaseLocalView(GlobalVarHolder.DEFAULT_SMALL_VIDEO_WIDTH, (int)(f1 * f2));
  }
  
  public boolean register(int paramInt)
  {
    e.a("PAVideoSdkApiManager", "register--deviceType=" + paramInt);
    if (isParamsEmpty())
    {
      e.d("PAVideoSdkApiManager", "register()-->注册参数有空值");
      outputAVCallStatus(2, "注册参数有空值");
      return false;
    }
    if (!checkIP())
    {
      e.d("PAVideoSdkApiManager", "register()-->网络连接不通");
      outputAVCallStatus(2, "网络连接失败");
      return false;
    }
    Log.i("deviceModel", "DeviceModel=" + Build.MODEL);
    if (paramInt == 0) {
      if ("Nexus 6".equals(Build.MODEL.trim()))
      {
        this.degrees1 = 90;
        this.degrees2 = 90;
      }
    }
    for (;;)
    {
      GlobalVarHolder.deviceType = paramInt;
      if ((mContext instanceof Activity))
      {
        LDEngineDemo.LDVoiceEngAndroidAPI.setScreenResolution(metric.widthPixels, metric.heightPixels);
        GlobalVarHolder.DEFAULT_SMALL_VIDEO_HEIGHT = metric.heightPixels / 4;
        GlobalVarHolder.DEFAULT_SMALL_VIDEO_WIDTH = metric.widthPixels / 4;
      }
      paramInt = LDEngineDemo.LDVoiceEngAndroidAPI.setSIPRegisterExpires(this.regSipMin, this.regSipMax);
      if (paramInt == 0) {
        e.d("PAVideoSdkApiManager", "设置SIP注册间隔失败--retA=" + paramInt);
      }
      paramInt = LDEngineDemo.LDVoiceEngAndroidAPI.setUserInfo(GlobalVarHolder.account, GlobalVarHolder.password);
      e.b("PAVideoSdkApiManager", "设置用户信息--retB=" + paramInt);
      paramInt = LDEngineDemo.LDVoiceEngAndroidAPI.setSBCInfo(GlobalVarHolder.SBCIP, Integer.parseInt(GlobalVarHolder.SBCPort), GlobalVarHolder.SBCDomain);
      e.b("PAVideoSdkApiManager", "设置用户信息--retB=" + paramInt);
      paramInt = LDEngineDemo.LDVoiceEngAndroidAPI.setPacketLoss(this.pakageLossPercentInSec, this.packetLossPercent);
      if (paramInt > 0) {
        break;
      }
      e.d("PAVideoSdkApiManager", "设置丢包挂机参数失败--retC=" + paramInt);
      outputAVCallStatus(2, "设置丢包挂机参数失败");
      return false;
      this.degrees1 = 270;
      this.degrees2 = 90;
      continue;
      if ("Nexus 6".equals(Build.MODEL.trim())) {
        this.degrees1 = 180;
      }
    }
    e.b("PAVideoSdkApiManager", "register-->GlobalVarHolder.account=" + GlobalVarHolder.account);
    paramInt = LDEngineDemo.LDVoiceEngAndroidAPI.registeracc();
    if (paramInt != 0)
    {
      e.d("PAVideoSdkApiManager", "注册时发生错误--ret=" + paramInt);
      outputAVCallStatus(2, "注册时发生错误");
    }
    if (hasFrontCamera())
    {
      LDEngineDemo.LDVoiceEngAndroidAPI.setcameraindex(getCameraId(getCameraIndex()));
      label477:
      e.b("PAVideoSdkApiManager", "register-->useFrontCamera=" + this.useFrontCamera);
      if (!this.useFrontCamera) {
        break label550;
      }
      LDEngineDemo.LDVoiceEngAndroidAPI.setMirrorXY(false, false);
      LDEngineDemo.LDVoiceEngAndroidAPI.setRotateCapturedFrames(this.degrees1);
    }
    for (;;)
    {
      PAEngine.local_call_type = PAEngine.UA_CALL_TYPE.UA_CALL_TYPE_VOICE;
      if (paramInt != 0) {
        break;
      }
      return true;
      LDEngineDemo.LDVoiceEngAndroidAPI.setcameraindex(0);
      break label477;
      label550:
      LDEngineDemo.LDVoiceEngAndroidAPI.setMirrorXY(false, false);
      LDEngineDemo.LDVoiceEngAndroidAPI.setRotateCapturedFrames(this.degrees2);
    }
  }
  
  public void registerConnectionChangeReceiver(Context paramContext, BroadcastReceiver paramBroadcastReceiver)
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    localIntentFilter.setPriority(1000);
    paramContext.registerReceiver(paramBroadcastReceiver, localIntentFilter);
  }
  
  public void removeLocalViewFromSurface()
  {
    LDEngineDemo.LDVoiceEngAndroidAPI.stopRenderLocal();
    e.a("PAVideoSdkApiManager", " removeLocalViewFromSurface()");
  }
  
  public void removeRemoteViewFromSurface()
  {
    LDEngineDemo.LDVoiceEngAndroidAPI.stopRenderRemote();
    e.d("PAVideoSdkApiManager", "removeRemoteViewFromSurface()");
  }
  
  public int setCustom(String paramString)
  {
    return LDEngineDemo.LDVoiceEngAndroidAPI.setCustom(paramString);
  }
  
  public void setDefaultCamera()
  {
    this.useFrontCamera = hasFrontCamera();
  }
  
  public void setKEEP_DAYS(int paramInt)
  {
    this.KEEP_DAYS = paramInt;
  }
  
  public void setNeedUploadLogFile(boolean paramBoolean)
  {
    this.needUploadLogFile = paramBoolean;
  }
  
  public void setOrientation(final boolean paramBoolean)
  {
    if (!(mContext instanceof Activity)) {}
    do
    {
      return;
      this.requestedOrientation = ((Activity)mContext).getRequestedOrientation();
      this.orientationListener = new OrientationEventListener(mContext, 2)
      {
        public void onOrientationChanged(int paramAnonymousInt)
        {
          PAVideoSdkApiManager.this.compensateRotation(paramAnonymousInt);
          if (paramAnonymousInt != -1)
          {
            if ((paramAnonymousInt >= 10) && (paramAnonymousInt <= 350)) {
              break label55;
            }
            if ((PAVideoSdkApiManager.this.requestedOrientation == 1) && (!paramBoolean)) {
              PAVideoSdkApiManager.this.orientationListener.disable();
            }
          }
          label55:
          while (((paramAnonymousInt < 100) && (paramAnonymousInt > 80)) || ((paramAnonymousInt < 190) && (paramAnonymousInt > 170)) || (paramAnonymousInt >= 280) || (paramAnonymousInt <= 260) || (PAVideoSdkApiManager.this.requestedOrientation != 0) || (paramBoolean)) {
            return;
          }
          PAVideoSdkApiManager.this.orientationListener.disable();
        }
      };
    } while (!this.orientationListener.canDetectOrientation());
    this.orientationListener.enable();
  }
  
  public boolean setPacketLoss(int paramInt1, int paramInt2)
  {
    e.b("PAVideoSdkApiManager", " PAVideoSdkApiManager   setPakageLoss--start");
    if ((paramInt1 >= 0) && (paramInt2 >= 0))
    {
      this.packetLossPercent = paramInt2;
      this.pakageLossPercentInSec = paramInt1;
      LDEngineDemo.LDVoiceEngAndroidAPI.setPacketLoss(paramInt1, paramInt2);
      e.b("PAVideoSdkApiManager", "PAVideoSdkApiManager  setPakageLoss--end--success");
      return true;
    }
    e.a("PAVideoSdkApiManager", "setPakageLoss--failed,传入的参数为无效参数。pakageLossPercentInSec=" + paramInt1 + ",,packetLossPercent=" + paramInt2);
    return false;
  }
  
  public void setPacketLossPercent(int paramInt)
  {
    this.packetLossPercent = paramInt;
  }
  
  public void setPakageLossPercentInSec(int paramInt)
  {
    this.pakageLossPercentInSec = paramInt;
  }
  
  public int setRealtimeLogSwitch(boolean paramBoolean)
  {
    return LDEngineDemo.LDVoiceEngAndroidAPI.setRTLogFlag(paramBoolean);
  }
  
  public boolean setRegSip(int paramInt1, int paramInt2)
  {
    e.b("PAVideoSdkApiManager", "setRegSip--start");
    if ((paramInt1 >= 0) && (paramInt2 >= 0))
    {
      if (paramInt2 > paramInt1)
      {
        this.regSipMax = paramInt2;
        this.regSipMin = paramInt1;
      }
      for (;;)
      {
        e.b("PAVideoSdkApiManager", "setRegSip--end-success");
        return true;
        this.regSipMin = paramInt2;
        this.regSipMax = paramInt1;
      }
    }
    e.d("PAVideoSdkApiManager", "setRegSip--failed,传入的参数为无效参数。regSipMin=" + paramInt1 + ",,regSipMax=" + paramInt2);
    return false;
  }
  
  public void setRemoteView(SurfaceView paramSurfaceView)
  {
    this.svRemote = paramSurfaceView;
  }
  
  public int startLocalCarema()
  {
    e.a("PAVideoSdkApiManager", "startLocalCarema");
    int i = LDEngineDemo.LDVoiceEngAndroidAPI.startLocalCamera();
    LDEngineDemo.LDVoiceEngAndroidAPI.startRenderLocal();
    return i;
  }
  
  public int stopLocalCarema()
  {
    e.a("PAVideoSdkApiManager", "stopLocalCarema");
    return LDEngineDemo.LDVoiceEngAndroidAPI.stopLocalCamera();
  }
  
  public void switchView()
  {
    e.b("PAVideoSdkApiManager", "svLocal.getLayoutParams().width=" + this.svLocal.getLayoutParams().width + ", svLarge.getLayoutParams().width=" + this.svRemote.getLayoutParams().width);
    if (this.iLocalVideoViewIndex == 1)
    {
      LDEngineDemo.LDVoiceEngAndroidAPI.setlocalview(this.svLocal);
      LDEngineDemo.LDVoiceEngAndroidAPI.setremoteview(this.svRemote);
    }
    for (;;)
    {
      LDEngineDemo.LDVoiceEngAndroidAPI.switchRenderWindows(this.iLocalVideoViewIndex);
      if (this.iLocalVideoViewIndex != 0) {
        break;
      }
      this.iLocalVideoViewIndex = 1;
      return;
      LDEngineDemo.LDVoiceEngAndroidAPI.setlocalview(this.svRemote);
      LDEngineDemo.LDVoiceEngAndroidAPI.setremoteview(this.svLocal);
    }
    this.iLocalVideoViewIndex = 0;
  }
  
  public void toggleCamera()
  {
    boolean bool = true;
    if (!hasFrontCamera()) {
      return;
    }
    int i;
    if (this.iLocalVideoViewIndex == 0)
    {
      if (this.svLocal == null) {
        break label290;
      }
      i = 1;
    }
    for (;;)
    {
      label26:
      if (GlobalVarHolder.deviceType == 1) {
        i = 0;
      }
      if (this.useFrontCamera) {
        bool = false;
      }
      this.useFrontCamera = bool;
      LDEngineDemo.LDVoiceEngAndroidAPI.stopLocalCamera();
      e.a("PAVideoSdkApiManager", "toggleCamera::getCameraId(getCameraIndex()) = " + getCameraId(getCameraIndex()) + " iLocalVideoViewIndex = " + this.iLocalVideoViewIndex);
      LDEngineDemo.LDVoiceEngAndroidAPI.setcameraindex(getCameraId(getCameraIndex()));
      if (this.iLocalVideoViewIndex == 0)
      {
        LDEngineDemo.LDVoiceEngAndroidAPI.setlocalview(this.svLocal);
        LDEngineDemo.LDVoiceEngAndroidAPI.setremoteview(this.svRemote);
        label139:
        if (!this.useFrontCamera) {
          break label243;
        }
        LDEngineDemo.LDVoiceEngAndroidAPI.setMirrorXY(false, false);
        LDEngineDemo.LDVoiceEngAndroidAPI.setRotateCapturedFrames(this.degrees1);
      }
      for (;;)
      {
        LDEngineDemo.LDVoiceEngAndroidAPI.openLocalVideo();
        if (i == 0) {
          break;
        }
        if (this.iLocalVideoViewIndex != 0) {
          break label265;
        }
        decreaseLocalView(this.svLocal.getLayoutParams().width, this.svLocal.getLayoutParams().height);
        return;
        if (this.svRemote == null) {
          break label290;
        }
        i = 1;
        break label26;
        LDEngineDemo.LDVoiceEngAndroidAPI.setlocalview(this.svRemote);
        LDEngineDemo.LDVoiceEngAndroidAPI.setremoteview(this.svLocal);
        break label139;
        label243:
        LDEngineDemo.LDVoiceEngAndroidAPI.setMirrorXY(false, false);
        LDEngineDemo.LDVoiceEngAndroidAPI.setRotateCapturedFrames(this.degrees2);
      }
      label265:
      decreaseRemoteView(this.svRemote.getLayoutParams().width, this.svRemote.getLayoutParams().height);
      return;
      label290:
      i = 0;
    }
  }
  
  public boolean unregister()
  {
    return LDEngineDemo.LDVoiceEngAndroidAPI.unregister() == 1;
  }
  
  public boolean voiceAndVideoCall(int paramInt)
  {
    
    if (!checkIP())
    {
      e.d("PAVideoSdkApiManager", "register()-->网络连接不通");
      return false;
    }
    if (GlobalVarHolder.callTo == null)
    {
      e.d("PAVideoSdkApiManager", "register()-->被叫号码为空");
      return false;
    }
    if (getCallState() != 255)
    {
      e.a("PAVideoSdkApiManager", "voiceCall()-->呼叫状态不为idle，执行endcall操作");
      LDEngineDemo.LDVoiceEngAndroidAPI.endcall();
      LDEngineDemo.isRegister = false;
    }
    this.useFrontCamera = true;
    this.iLocalVideoViewIndex = 0;
    if (hasFrontCamera())
    {
      LDEngineDemo.LDVoiceEngAndroidAPI.setcameraindex(getCameraId(getCameraIndex()));
      if (this.useFrontCamera)
      {
        LDEngineDemo.LDVoiceEngAndroidAPI.setMirrorXY(false, false);
        LDEngineDemo.LDVoiceEngAndroidAPI.setRotateCapturedFrames(this.degrees1);
        PAEngine.local_call_type = PAEngine.UA_CALL_TYPE.UA_CALL_TYPE_VIDEO;
        e.b("PAVideoSdkApiManager", "local_call_type=" + PAEngine.local_call_type);
        e.a("PAVideoSdkApiManager", GlobalVarHolder.callTo + ",,1,," + GlobalVarHolder.DEFAULT_VIDEO_CODEC_WIDTH + ",,2,," + GlobalVarHolder.DEFAULT_VIDEO_CODEC_HEIGHT + ",,3,," + GlobalVarHolder.DEFAULT_VIDEO_CODEC_FPS + ",,4,," + paramInt);
        if (GlobalVarHolder.deviceType != 0) {
          break label339;
        }
        paramInt = LDEngineDemo.LDVoiceEngAndroidAPI.videocall(GlobalVarHolder.callTo, GlobalVarHolder.DEFAULT_VIDEO_CODEC_WIDTH, GlobalVarHolder.DEFAULT_VIDEO_CODEC_HEIGHT, GlobalVarHolder.DEFAULT_VIDEO_CODEC_FPS, 50, GlobalVarHolder.DEFAULT_VIDEO_MAX_BITS, 100, paramInt);
        e.a("PAVideoSdkApiManager", "voiceAndVideoCall--->deviceType=MOBILE_PHONE--ret=" + paramInt);
      }
    }
    for (;;)
    {
      e.a("PAVideoSdkApiManager", "voiceAndVideoCall-->end ");
      if (paramInt != 0) {
        break label450;
      }
      return true;
      LDEngineDemo.LDVoiceEngAndroidAPI.setMirrorXY(false, false);
      LDEngineDemo.LDVoiceEngAndroidAPI.setRotateCapturedFrames(this.degrees2);
      break;
      LDEngineDemo.LDVoiceEngAndroidAPI.setcameraindex(0);
      LDEngineDemo.LDVoiceEngAndroidAPI.setMirrorXY(false, false);
      LDEngineDemo.LDVoiceEngAndroidAPI.setRotateCapturedFrames(this.degrees2);
      break;
      label339:
      if (GlobalVarHolder.deviceType == 1)
      {
        paramInt = LDEngineDemo.LDVoiceEngAndroidAPI.videocall(GlobalVarHolder.callTo, GlobalVarHolder.DEFAULT_VIDEO_CODEC_WIDTH_PAD, GlobalVarHolder.DEFAULT_VIDEO_CODEC_HEIGHT_PAD, GlobalVarHolder.DEFAULT_VIDEO_CODEC_FPS, 50, GlobalVarHolder.DEFAULT_VIDEO_MAX_BITS, 100, paramInt);
        e.a("PAVideoSdkApiManager", "voiceAndVideoCall--->deviceType=PAD--ret=" + paramInt);
      }
      else
      {
        paramInt = LDEngineDemo.LDVoiceEngAndroidAPI.videocall(GlobalVarHolder.callTo, GlobalVarHolder.DEFAULT_VIDEO_CODEC_WIDTH, GlobalVarHolder.DEFAULT_VIDEO_CODEC_HEIGHT, GlobalVarHolder.DEFAULT_VIDEO_CODEC_FPS, 50, GlobalVarHolder.DEFAULT_VIDEO_MAX_BITS, 100, paramInt);
        e.a("PAVideoSdkApiManager", "voiceAndVideoCall--->deviceType=else--ret=" + paramInt);
      }
    }
    label450:
    return false;
  }
  
  public boolean voiceCall()
  {
    
    if (!checkIP()) {
      e.d("PAVideoSdkApiManager", "voiceCall()-->网络连接不通");
    }
    int i;
    do
    {
      return false;
      if (!isRegisterState())
      {
        e.d("PAVideoSdkApiManager", "voiceCall()-->未注册");
        return false;
      }
      if (GlobalVarHolder.callTo == null)
      {
        e.d("PAVideoSdkApiManager", "voiceCall()-->被叫号码为空");
        return false;
      }
      if (getCallState() != 255)
      {
        e.a("PAVideoSdkApiManager", "voiceCall()-->呼叫状态不为idle，执行endcall操作");
        LDEngineDemo.LDVoiceEngAndroidAPI.endcall();
        LDEngineDemo.isRegister = false;
      }
      i = LDEngineDemo.LDVoiceEngAndroidAPI.voicecall(GlobalVarHolder.callTo);
      PAEngine.local_call_type = PAEngine.UA_CALL_TYPE.UA_CALL_TYPE_VOICE;
    } while (i != 0);
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\main\PAVideoSdkApiManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */