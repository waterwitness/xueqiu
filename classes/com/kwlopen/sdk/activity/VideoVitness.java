package com.kwlopen.sdk.activity;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.bairuitech.anychat.AnyChatCoreSDK;
import com.bairuitech.anychat.d;
import com.bairuitech.anychat.e;
import com.bairuitech.anychat.g;
import com.bairuitech.anychat.j;
import com.bairuitech.anychat.m;
import com.bairuitech.anychat.o;
import com.bairuitech.anychat.p;
import com.bairuitech.b.b;
import com.bairuitech.b.c;
import java.io.UnsupportedEncodingException;
import java.util.Timer;
import java.util.TimerTask;

public class VideoVitness
  extends Activity
  implements View.OnClickListener, View.OnTouchListener, d, m, o
{
  public static final int MSG_CHAT_GONE = 33;
  public static final int MSG_CHECKAV = 1;
  public static final int MSG_SESSIONEND = 34;
  public static final int MSG_TIMEUPDATE = 2;
  public static final int PROGRESSBAR_HEIGHT = 5;
  private AnyChatCoreSDK anychat;
  private String anychatServerAddr = null;
  private int anychatServerPort = -1;
  private boolean bLogined = false;
  boolean bNormal = true;
  boolean bOtherVideoOpened = false;
  boolean bSelfVideoOpened = false;
  boolean bVideoViewLoaded = false;
  private b configEntity;
  private Dialog dialog;
  int dwTargetUserId = -1;
  private Handler handler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      switch (paramAnonymousMessage.what)
      {
      default: 
        return;
      }
      VideoVitness.this.anychat.Logout();
    }
  };
  private Timer loginTimer = null;
  private Button mBtnEndSession;
  private View mBtnSwitch;
  float mCurrentLength = 0.0F;
  float mCurrentRate = 1.0F;
  private Handler mHandler;
  boolean mIsFirst = true;
  float mOriginalLength = 0.0F;
  private ProgressBar mProgressNotice;
  private ProgressBar mProgressRemote;
  private ProgressBar mProgressSelf;
  private SurfaceView mSurfaceRemote;
  private SurfaceView mSurfaceSelf;
  private Timer mTImerShowVidoTime;
  private Timer mTimerCheckAv;
  private TimerTask mTimerTask;
  private TextView mTxtTime;
  private String mobileTel = null;
  private Timer timer;
  int videoAreaHeight = 0;
  int videoAreaWidth = 0;
  int videoIndex = 0;
  private int video_status = -1;
  int videocallSeconds = 0;
  
  private void ApplyVideoConfig()
  {
    b localb = c.a(this);
    if (localb.f == 1)
    {
      AnyChatCoreSDK.SetSDKOptionInt(30, localb.i);
      if (localb.i == 0) {
        AnyChatCoreSDK.SetSDKOptionInt(31, localb.k);
      }
      AnyChatCoreSDK.SetSDKOptionInt(33, localb.j);
      AnyChatCoreSDK.SetSDKOptionInt(32, localb.j * 4);
      AnyChatCoreSDK.SetSDKOptionInt(38, localb.g);
      AnyChatCoreSDK.SetSDKOptionInt(39, localb.h);
      AnyChatCoreSDK.SetSDKOptionInt(34, localb.l);
    }
    AnyChatCoreSDK.SetSDKOptionInt(35, localb.f);
    AnyChatCoreSDK.SetSDKOptionInt(40, localb.r);
    AnyChatCoreSDK.SetSDKOptionInt(92, localb.m);
    AnyChatCoreSDK.SetSDKOptionInt(3, localb.t);
    AnyChatCoreSDK.SetSDKOptionInt(18, localb.u);
    AnyChatCoreSDK.SetSDKOptionInt(94, localb.n);
    AnyChatCoreSDK.SetSDKOptionInt(96, localb.o);
    AnyChatCoreSDK.SetSDKOptionInt(84, localb.p);
    AnyChatCoreSDK.SetSDKOptionInt(98, localb.q);
    AnyChatCoreSDK.SetSDKOptionInt(85, localb.q);
  }
  
  private void CheckVideoStatus()
  {
    Object localObject;
    if ((!this.bOtherVideoOpened) && (this.anychat.GetCameraState(this.dwTargetUserId) == 2) && (this.anychat.GetUserVideoWidth(this.dwTargetUserId) != 0))
    {
      localObject = this.mSurfaceRemote.getHolder();
      if (AnyChatCoreSDK.GetSDKOptionInt(83) != 5)
      {
        ((SurfaceHolder)localObject).setFormat(4);
        ((SurfaceHolder)localObject).setFixedSize(this.anychat.GetUserVideoWidth(-1), this.anychat.GetUserVideoHeight(-1));
      }
      localObject = ((SurfaceHolder)localObject).getSurface();
      if (AnyChatCoreSDK.GetSDKOptionInt(83) != 5) {
        break label224;
      }
      this.anychat.m.a(this.videoIndex, this.dwTargetUserId);
    }
    for (;;)
    {
      this.bOtherVideoOpened = true;
      if ((!this.bSelfVideoOpened) && (this.anychat.GetCameraState(-1) == 2) && (this.anychat.GetUserVideoWidth(-1) != 0))
      {
        localObject = this.mSurfaceSelf.getHolder();
        if (AnyChatCoreSDK.GetSDKOptionInt(83) != 5)
        {
          ((SurfaceHolder)localObject).setFormat(4);
          ((SurfaceHolder)localObject).setFixedSize(this.anychat.GetUserVideoWidth(-1), this.anychat.GetUserVideoHeight(-1));
        }
        localObject = ((SurfaceHolder)localObject).getSurface();
        this.anychat.SetVideoPos(-1, (Surface)localObject, 0, 0, 0, 0);
        this.bSelfVideoOpened = true;
      }
      return;
      label224:
      this.anychat.SetVideoPos(this.dwTargetUserId, (Surface)localObject, 0, 0, 0, 0);
    }
  }
  
  private void Login()
  {
    this.anychat.Connect(this.anychatServerAddr, this.anychatServerPort);
    this.anychat.Login(this.mobileTel, "C|123456");
    startLoginTimer();
  }
  
  private void ShowEndSessionResumeDialg()
  {
    if ((this.dialog != null) && (this.dialog.isShowing())) {
      this.dialog.dismiss();
    }
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setTitle("视频见证");
    localBuilder.setMessage(com.b.a.a.f.b(this, "kwlopen_str_endsession"));
    localBuilder.setPositiveButton("确定", new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface.dismiss();
        VideoVitness.this.anychat.UserCameraControl(-1, 0);
        VideoVitness.this.anychat.UserSpeakControl(-1, 0);
        VideoVitness.this.anychat.UserSpeakControl(VideoVitness.this.dwTargetUserId, 0);
        VideoVitness.this.anychat.UserCameraControl(VideoVitness.this.dwTargetUserId, 0);
        VideoVitness.this.anychat.LeaveRoom(-1);
        VideoVitness.this.anychat.Logout();
        paramAnonymousDialogInterface = new Intent();
        paramAnonymousDialogInterface.putExtra("errcode", -7);
        paramAnonymousDialogInterface.putExtra("errmsg", "客户自动断开，认证不通过！");
        VideoVitness.this.setResult(-1, paramAnonymousDialogInterface);
        VideoVitness.this.stopTimer();
        VideoVitness.this.finish();
      }
    });
    localBuilder.setNegativeButton("取消", new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface.dismiss();
      }
    });
    this.dialog = localBuilder.create();
    this.dialog.show();
  }
  
  private void initSdk()
  {
    if (this.anychat == null)
    {
      this.anychat = new AnyChatCoreSDK();
      this.anychat.InitSDK(Build.VERSION.SDK_INT, 0);
    }
    Object localObject = this.anychat;
    AnyChatCoreSDK.i = new com.bairuitech.anychat.f((AnyChatCoreSDK)localObject);
    ((AnyChatCoreSDK)localObject).RegisterNotify();
    ((AnyChatCoreSDK)localObject).a = this;
    localObject = this.anychat;
    ((AnyChatCoreSDK)localObject).RegisterNotify();
    ((AnyChatCoreSDK)localObject).f = this;
    localObject = this.anychat;
    ((AnyChatCoreSDK)localObject).RegisterNotify();
    ((AnyChatCoreSDK)localObject).e = this;
    localObject = this.anychat.l;
    int i;
    if ((getResources().getConfiguration().screenLayout & 0xF) >= 3)
    {
      i = 2;
      AnyChatCoreSDK.SetSDKOptionInt(103, i);
      switch (((WindowManager)getSystemService("window")).getDefaultDisplay().getRotation())
      {
      default: 
        i = 0;
      }
    }
    for (;;)
    {
      AnyChatCoreSDK.SetSDKOptionInt(99, i);
      AnyChatCoreSDK.k.g = this;
      AnyChatCoreSDK.j.i = this;
      if (((j)localObject).a == null) {
        ((j)localObject).a = new g(this);
      }
      ((j)localObject).a.enable();
      SensorManager localSensorManager = (SensorManager)getSystemService("sensor");
      localSensorManager.registerListener((SensorEventListener)localObject, localSensorManager.getDefaultSensor(1), 3);
      return;
      i = 1;
      break;
      i = 0;
      continue;
      i = 90;
      continue;
      i = 180;
      continue;
      i = 270;
    }
  }
  
  private void initTimerCheckAv()
  {
    if (this.mTimerCheckAv == null) {
      this.mTimerCheckAv = new Timer();
    }
    this.mTimerTask = new TimerTask()
    {
      public void run()
      {
        VideoVitness.this.mHandler.sendEmptyMessage(1);
      }
    };
    this.mTimerCheckAv.schedule(this.mTimerTask, 1000L, 100L);
  }
  
  private void initTimerShowTime()
  {
    if (this.mTImerShowVidoTime == null) {
      this.mTImerShowVidoTime = new Timer();
    }
    this.mTimerTask = new TimerTask()
    {
      public void run()
      {
        VideoVitness.this.mHandler.sendEmptyMessage(2);
      }
    };
    this.mTImerShowVidoTime.schedule(this.mTimerTask, 100L, 1000L);
  }
  
  private void initView()
  {
    setContentView(com.b.a.a.f.f(this, "kwlopen_video_activity"));
    this.mSurfaceSelf = ((SurfaceView)findViewById(com.b.a.a.f.a(this, "kwlopen_surface_local")));
    this.mSurfaceRemote = ((SurfaceView)findViewById(com.b.a.a.f.a(this, "kwlopen_surface_remote")));
    this.mProgressSelf = ((ProgressBar)findViewById(com.b.a.a.f.a(this, "kwlopen_progress_local")));
    this.mProgressRemote = ((ProgressBar)findViewById(com.b.a.a.f.a(this, "kwlopen_progress_remote")));
    this.mProgressNotice = ((ProgressBar)findViewById(com.b.a.a.f.a(this, "kwlopen_mProgressNotice")));
    this.mBtnSwitch = findViewById(com.b.a.a.f.a(this, "kwlopen_btn_switch"));
    this.mTxtTime = ((TextView)findViewById(com.b.a.a.f.a(this, "kwlopen_txt_time")));
    this.mBtnEndSession = ((Button)findViewById(com.b.a.a.f.a(this, "kwlopen_btn_endsession")));
    this.mBtnEndSession.setOnClickListener(this);
    this.mBtnSwitch.setOnClickListener(this);
    this.mSurfaceRemote.setTag(Integer.valueOf(this.dwTargetUserId));
    this.configEntity = c.a(this);
    if (this.configEntity.m != 0) {
      this.mSurfaceSelf.getHolder().setType(3);
    }
    this.mSurfaceSelf.setZOrderOnTop(true);
    if (AnyChatCoreSDK.GetSDKOptionInt(95) == 3)
    {
      this.mSurfaceSelf.getHolder().addCallback(AnyChatCoreSDK.k);
      Log.i("ANYCHAT", "VIDEOCAPTRUE---JAVA");
    }
    if (AnyChatCoreSDK.GetSDKOptionInt(83) == 5)
    {
      this.videoIndex = this.anychat.m.a(this.mSurfaceRemote.getHolder());
      this.anychat.m.a(this.videoIndex, this.dwTargetUserId);
      Log.i("ANYCHAT", "VIDEOSHOW---JAVA");
    }
    final Object localObject = findViewById(com.b.a.a.f.a(this, "kwlopen_frame_local_area"));
    ((View)localObject).getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener()
    {
      public void onGlobalLayout()
      {
        if (!VideoVitness.this.bVideoViewLoaded)
        {
          VideoVitness.this.bVideoViewLoaded = true;
          VideoVitness.this.videoAreaWidth = localObject.getWidth();
        }
      }
    });
    int i;
    Camera.CameraInfo localCameraInfo;
    if (AnyChatCoreSDK.GetSDKOptionInt(95) == 3)
    {
      localObject = AnyChatCoreSDK.k;
      if (e.b() > 1)
      {
        this.mBtnSwitch.setVisibility(0);
        localObject = AnyChatCoreSDK.k;
        AnyChatCoreSDK.k.getClass();
        i = 0;
        if (i < Camera.getNumberOfCameras())
        {
          localCameraInfo = new Camera.CameraInfo();
          Camera.getCameraInfo(i, localCameraInfo);
          if (localCameraInfo.facing != 1) {
            break label435;
          }
          ((e)localObject).d = i;
        }
      }
      label415:
      if (getResources().getConfiguration().orientation != 2) {
        break label509;
      }
      adjustLocalVideo(true);
    }
    label435:
    label507:
    label509:
    while (getResources().getConfiguration().orientation != 1)
    {
      return;
      i += 1;
      break;
      localObject = this.anychat.EnumVideoCapture();
      if ((localObject == null) || (localObject.length <= 1)) {
        break label415;
      }
      this.mBtnSwitch.setVisibility(0);
      i = 0;
      for (;;)
      {
        if (i >= localObject.length) {
          break label507;
        }
        localCameraInfo = localObject[i];
        if (localCameraInfo.indexOf("Front") >= 0)
        {
          this.anychat.SelectVideoCapture(localCameraInfo);
          break;
        }
        i += 1;
      }
      break label415;
    }
    adjustLocalVideo(false);
  }
  
  private void startLoginTimer()
  {
    this.loginTimer = new Timer();
    TimerTask local8 = new TimerTask()
    {
      public void run()
      {
        VideoVitness.this.handler.sendEmptyMessage(1);
      }
    };
    this.loginTimer.schedule(local8, 15000L);
  }
  
  private void stopLoginTimer()
  {
    try
    {
      if (this.loginTimer != null)
      {
        this.loginTimer.cancel();
        this.loginTimer = null;
      }
      return;
    }
    catch (Exception localException) {}
  }
  
  private void updateVolume()
  {
    this.mProgressSelf.setProgress(this.anychat.GetUserSpeakVolume(-1));
    this.mProgressRemote.setProgress(this.anychat.GetUserSpeakVolume(this.dwTargetUserId));
  }
  
  public void OnAnyChatConnectMessage(boolean paramBoolean)
  {
    Log.d(VideoVitness.class.getName(), "OnAnyChatConnectMessage---" + paramBoolean);
    if (!paramBoolean)
    {
      com.bairuitech.b.a.a("视频服务器连接失败", this);
      this.bLogined = false;
      this.mProgressNotice.setVisibility(8);
      Intent localIntent = new Intent();
      localIntent.putExtra("errcode", -1);
      localIntent.putExtra("errmsg", "连接服务器失败，请检查网络！");
      setResult(-1, localIntent);
      stopTimer();
      finish();
    }
  }
  
  public void OnAnyChatEnterRoomMessage(int paramInt1, int paramInt2)
  {
    if (paramInt2 == 0)
    {
      this.anychat.UserCameraControl(-1, 1);
      this.anychat.UserSpeakControl(-1, 1);
      this.anychat.UserCameraControl(this.dwTargetUserId, 1);
      this.anychat.UserSpeakControl(this.dwTargetUserId, 1);
      this.bSelfVideoOpened = false;
      initTimerShowTime();
    }
  }
  
  public void OnAnyChatLinkCloseMessage(int paramInt)
  {
    Log.d(VideoVitness.class.getName(), "OnAnyChatLinkCloseMessage -- >" + paramInt);
    this.anychat.UserCameraControl(-1, 0);
    this.anychat.UserSpeakControl(-1, 0);
    this.anychat.UserSpeakControl(this.dwTargetUserId, 0);
    this.anychat.UserCameraControl(this.dwTargetUserId, 0);
    this.anychat.LeaveRoom(-1);
    com.bairuitech.b.a.a(com.b.a.a.f.b(this, "ac_serverlink_close"), this);
    Intent localIntent = new Intent();
    localIntent.putExtra("errcode", -4);
    localIntent.putExtra("errmsg", com.b.a.a.f.b(this, "ac_serverlink_close"));
    setResult(-1, localIntent);
    stopTimer();
    finish();
  }
  
  public void OnAnyChatLoginMessage(int paramInt1, int paramInt2)
  {
    if (paramInt2 == 0)
    {
      this.bLogined = true;
      stopLoginTimer();
      com.bairuitech.a.a.f = paramInt1;
      Log.d(VideoVitness.class.getName(), "anychat userID --->" + paramInt1);
      com.bairuitech.a.a.h = this.anychat.QueryUserStateString(paramInt1, 6);
      com.bairuitech.a.a.a(this.dwTargetUserId, "");
    }
    while (paramInt2 != 200) {
      return;
    }
    com.bairuitech.b.a.a(com.b.a.a.f.b(this, "ac_lggin_failed"), this);
    this.bLogined = false;
    this.mProgressNotice.setVisibility(8);
    Intent localIntent = new Intent();
    localIntent.putExtra("errcode", -2);
    localIntent.putExtra("errmsg", "登录超时，请检查网络！");
    setResult(-1, localIntent);
    stopTimer();
    finish();
  }
  
  public void OnAnyChatOnlineUserMessage(int paramInt1, int paramInt2)
  {
    this.anychat.UserCameraControl(this.dwTargetUserId, 1);
    this.anychat.UserSpeakControl(this.dwTargetUserId, 1);
    this.bOtherVideoOpened = false;
  }
  
  public void OnAnyChatSDKFilterData(byte[] paramArrayOfByte, int paramInt) {}
  
  public void OnAnyChatTransBuffer(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    try
    {
      paramArrayOfByte = new String(paramArrayOfByte, 0, paramInt2, "gb2312");
      Log.d(VideoVitness.class.getName(), "msg=" + paramArrayOfByte);
      paramArrayOfByte = paramArrayOfByte.split("\\|");
      if (Integer.valueOf(paramArrayOfByte[0]).intValue() == 5100)
      {
        stopTimer();
        this.video_status = Integer.valueOf(paramArrayOfByte[1]).intValue();
        Intent localIntent = new Intent();
        localIntent.putExtra("errcode", 0);
        if (this.video_status == 1) {
          localIntent.putExtra("errmsg", paramArrayOfByte[2]);
        }
        localIntent.putExtra("flag", this.video_status);
        setResult(-1, localIntent);
        finish();
      }
      return;
    }
    catch (UnsupportedEncodingException paramArrayOfByte)
    {
      paramArrayOfByte.printStackTrace();
      stopTimer();
      this.video_status = -1;
      paramArrayOfByte = new Intent();
      paramArrayOfByte.putExtra("errcode", 0);
      paramArrayOfByte.putExtra("flag", this.video_status);
      setResult(-1, paramArrayOfByte);
      finish();
    }
  }
  
  public void OnAnyChatTransBufferEx(int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3, int paramInt4, int paramInt5) {}
  
  public void OnAnyChatTransFile(int paramInt1, String paramString1, String paramString2, int paramInt2, int paramInt3, int paramInt4, int paramInt5) {}
  
  public void OnAnyChatUserAtRoomMessage(int paramInt, boolean paramBoolean)
  {
    this.anychat.UserCameraControl(this.dwTargetUserId, 1);
    this.anychat.UserSpeakControl(this.dwTargetUserId, 1);
    this.bOtherVideoOpened = false;
    if ((paramBoolean) && (paramInt == this.dwTargetUserId)) {
      this.mProgressNotice.setVisibility(8);
    }
    if ((!paramBoolean) && (paramInt == this.dwTargetUserId))
    {
      this.anychat.LeaveRoom(-1);
      com.bairuitech.b.a.a(com.b.a.a.f.b(this, "ac_serverlink_close"), this);
      Intent localIntent = new Intent();
      localIntent.putExtra("errcode", -3);
      localIntent.putExtra("errmsg", "坐席退出房间，请重新认证！");
      setResult(-1, localIntent);
      stopTimer();
      finish();
    }
  }
  
  public void OnAnyChatVideoCallEvent(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, String paramString)
  {
    switch (paramInt1)
    {
    default: 
    case 2: 
      for (;;)
      {
        return;
        try
        {
          com.bairuitech.a.a.a().a(paramInt2, paramInt3);
          if (paramInt3 != 0) {
            return;
          }
        }
        catch (Exception paramString)
        {
          for (;;)
          {
            paramString = new Intent();
            paramString.putExtra("errcode", -6);
            paramString.putExtra("errmsg", "坐席意外断开，请重新认证！");
            paramString.putExtra("flag", this.video_status);
            setResult(-1, paramString);
            finish();
          }
        }
      }
    case 3: 
      com.bairuitech.a.a.a().b();
      this.anychat.EnterRoom(paramInt5, "");
      return;
    }
    com.bairuitech.a.a.a();
    com.bairuitech.a.a.c();
    this.anychat.UserCameraControl(-1, 0);
    this.anychat.UserSpeakControl(-1, 0);
    this.anychat.UserSpeakControl(this.dwTargetUserId, 0);
    this.anychat.UserCameraControl(this.dwTargetUserId, 0);
    this.anychat.LeaveRoom(-1);
    if (paramInt3 != 0)
    {
      paramString = new Intent();
      paramString.putExtra("errcode", -5);
      paramString.putExtra("errmsg", "坐席意外退出，请重新认证！");
      setResult(-1, paramString);
      stopTimer();
      finish();
      return;
    }
    startTimer();
    Log.d(VideoVitness.class.getName(), "dwErrorCode=" + paramInt3);
  }
  
  public void adjustLocalVideo(boolean paramBoolean)
  {
    Object localObject = new DisplayMetrics();
    getWindowManager().getDefaultDisplay().getMetrics((DisplayMetrics)localObject);
    float f2 = ((DisplayMetrics)localObject).widthPixels / 4.0F;
    localObject = (LinearLayout)findViewById(com.b.a.a.f.a(this, "kwlopen_frame_local_area"));
    FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)((LinearLayout)localObject).getLayoutParams();
    float f1;
    if (paramBoolean) {
      if (AnyChatCoreSDK.GetSDKOptionInt(38) != 0) {
        f1 = AnyChatCoreSDK.GetSDKOptionInt(39) * f2 / AnyChatCoreSDK.GetSDKOptionInt(38) + 5.0F;
      }
    }
    for (;;)
    {
      localLayoutParams.width = ((int)f2);
      localLayoutParams.height = ((int)f1);
      ((LinearLayout)localObject).setLayoutParams(localLayoutParams);
      return;
      f1 = 0.75F * f2 + 5.0F;
      continue;
      if (AnyChatCoreSDK.GetSDKOptionInt(39) != 0) {
        f1 = AnyChatCoreSDK.GetSDKOptionInt(38) * f2 / AnyChatCoreSDK.GetSDKOptionInt(39) + 5.0F;
      } else {
        f1 = 1.3333334F * f2 + 5.0F;
      }
    }
  }
  
  protected void intParams()
  {
    this.anychatServerAddr = getIntent().getStringExtra("anychatServerAddr");
    this.anychatServerPort = getIntent().getIntExtra("anychatServerPort", 0);
    this.dwTargetUserId = getIntent().getIntExtra("anychatRemoteUserId", 0);
    this.mobileTel = getIntent().getStringExtra("mobileTel");
    Log.e("=====", this.anychatServerAddr + " " + this.anychatServerPort + " " + this.dwTargetUserId + " " + this.mobileTel);
    com.bairuitech.a.a.a();
    com.bairuitech.a.a.c = this;
    if ((this.anychatServerAddr != null) && (this.mobileTel != null) && (this.anychatServerPort != -1) && (this.dwTargetUserId != -1))
    {
      Login();
      return;
    }
    com.bairuitech.b.a.a("登录参数为空，请检查！", this);
  }
  
  public void onClick(View paramView)
  {
    int i = 0;
    if (paramView == this.mBtnEndSession) {
      ShowEndSessionResumeDialg();
    }
    if (paramView == this.mBtnSwitch)
    {
      if (AnyChatCoreSDK.GetSDKOptionInt(95) == 3)
      {
        paramView = AnyChatCoreSDK.k;
        try
        {
          if (Camera.getNumberOfCameras() == 1) {
            return;
          }
          if (paramView.e == null) {
            return;
          }
          if (paramView.d == 0) {
            i = 1;
          }
          paramView.d = i;
          if (paramView.a != null)
          {
            paramView.a.stopPreview();
            paramView.a.setPreviewCallbackWithBuffer(null);
            paramView.b = false;
            paramView.f = -1;
            paramView.a.release();
            paramView.a = null;
          }
          paramView.a = Camera.open(paramView.d);
          paramView.a.setPreviewDisplay(paramView.e);
          paramView.a();
          return;
        }
        catch (Exception localException)
        {
          if (paramView.a == null) {
            return;
          }
        }
        paramView.a.release();
        paramView.a = null;
        paramView.f = -1;
        return;
      }
      paramView = this.anychat.EnumVideoCapture();
      String str = this.anychat.GetCurVideoCapture();
      i = 0;
      while (i < paramView.length)
      {
        if (!str.equals(paramView[i]))
        {
          this.anychat.UserCameraControl(-1, 0);
          this.anychat.SelectVideoCapture(paramView[i]);
          this.anychat.UserCameraControl(-1, 1);
          this.bSelfVideoOpened = false;
          return;
        }
        i += 1;
      }
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    if (paramConfiguration.orientation == 2)
    {
      adjustLocalVideo(true);
      AnyChatCoreSDK.k.c();
      return;
    }
    adjustLocalVideo(false);
    AnyChatCoreSDK.k.c();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getWindow().addFlags(128);
    initSdk();
    intParams();
    initView();
    ApplyVideoConfig();
    this.mHandler = new Handler(new Handler.Callback()
    {
      public boolean handleMessage(Message paramAnonymousMessage)
      {
        switch (paramAnonymousMessage.what)
        {
        default: 
        case 1: 
          for (;;)
          {
            return false;
            VideoVitness.this.CheckVideoStatus();
            VideoVitness.this.updateVolume();
          }
        }
        TextView localTextView = VideoVitness.this.mTxtTime;
        paramAnonymousMessage = VideoVitness.this;
        int k = paramAnonymousMessage.videocallSeconds;
        paramAnonymousMessage.videocallSeconds = (k + 1);
        new String();
        int i = k / 3600;
        int j = k / 60 % 60;
        k %= 60;
        label121:
        String str1;
        if (i >= 10)
        {
          paramAnonymousMessage = String.valueOf(i);
          if (j < 10) {
            break label208;
          }
          str1 = String.valueOf(j);
          label134:
          if (k < 10) {
            break label229;
          }
        }
        label208:
        label229:
        for (String str2 = String.valueOf(k);; str2 = "0" + k)
        {
          localTextView.setText(paramAnonymousMessage + ":" + str1 + ":" + str2);
          break;
          paramAnonymousMessage = "0" + i;
          break label121;
          str1 = "0" + j;
          break label134;
        }
      }
    });
    initTimerCheckAv();
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    this.anychat.Logout();
    this.anychat.Release();
    if (this.mTimerCheckAv != null) {
      this.mTimerCheckAv.cancel();
    }
    if (this.mTImerShowVidoTime != null) {
      this.mTImerShowVidoTime.cancel();
    }
    if ((this.dialog != null) && (this.dialog.isShowing())) {
      this.dialog.dismiss();
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4) {
      ShowEndSessionResumeDialg();
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected void onPause()
  {
    super.onPause();
  }
  
  protected void onRestart()
  {
    super.onRestart();
    this.anychat.UserCameraControl(-1, 1);
    this.anychat.UserSpeakControl(-1, 1);
    this.anychat.UserSpeakControl(this.dwTargetUserId, 1);
    this.anychat.UserCameraControl(this.dwTargetUserId, 1);
    if (AnyChatCoreSDK.GetSDKOptionInt(83) == 5)
    {
      this.videoIndex = this.anychat.m.a(this.mSurfaceRemote.getHolder());
      this.anychat.m.a(this.videoIndex, this.dwTargetUserId);
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    com.bairuitech.a.a.c = this;
    initSdk();
  }
  
  protected void onStop()
  {
    super.onStop();
    this.anychat.UserCameraControl(-1, 0);
    this.anychat.UserSpeakControl(-1, 0);
    this.anychat.UserSpeakControl(this.dwTargetUserId, 0);
    this.anychat.UserCameraControl(this.dwTargetUserId, 0);
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    return false;
  }
  
  public void startTimer()
  {
    Log.d(VideoVitness.class.getName(), "我开始定时器了-----");
    this.timer = new Timer();
    TimerTask local5 = new TimerTask()
    {
      public void run()
      {
        Log.d(VideoVitness.class.getName(), "我到时间了--------");
        Intent localIntent = new Intent();
        localIntent.putExtra("errcode", -6);
        localIntent.putExtra("errmsg", "坐席意外断开，请重新认证！");
        localIntent.putExtra("flag", VideoVitness.this.video_status);
        VideoVitness.this.setResult(-1, localIntent);
        VideoVitness.this.stopTimer();
        VideoVitness.this.finish();
      }
    };
    this.timer.schedule(local5, 5000L);
  }
  
  public void stopTimer()
  {
    Log.d(VideoVitness.class.getName(), "关闭定时器---");
    try
    {
      if (this.timer != null)
      {
        this.timer.cancel();
        this.timer = null;
      }
      return;
    }
    catch (Exception localException) {}
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\kwlopen\sdk\activity\VideoVitness.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */