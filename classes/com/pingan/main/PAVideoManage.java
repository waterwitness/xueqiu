package com.pingan.main;

import android.content.Context;
import android.media.AudioManager;
import android.os.Handler;
import android.os.Message;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.SurfaceView;
import android.view.ViewGroup;
import android.widget.Toast;
import com.google.gson.Gson;
import com.letpower.engine.HeadsetUtils;
import com.letpower.engine.PAEngine;
import com.paic.openapi.demo.core.Head;
import com.pingan.main.utils.MCPUtils;
import com.pingan.paphone.extension.MCPExtension2;
import com.pingan.paphone.utils.CommonUtil;
import com.pingan.paphone.utils.LogM;
import java.io.PrintStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class PAVideoManage
  implements IAVCallStatusListener
{
  public static final int CHECKED_NOT_PASS = 1116;
  public static final int CHECKED_PASS = 1115;
  public static final int CHECKED_REJECT = 1114;
  public static final int CLEAN_VIEW = 1112;
  public static final int FAT = 0;
  public static final String FORMAT_DATE_TIME_24 = "yyyy-MM-dd HH:mm:ss";
  public static final int HANG_UP = 1111;
  public static PAVideoSdkApiManager PASDKAPI;
  public static final int PRO = 3;
  public static final int START_VIDEO = 1110;
  private static final String TAG = PAVideoManage.class.getSimpleName();
  public static final int UAT_IN = 1;
  public static final int UAT_OUT = 2;
  public static final int VIDEO_RESULT_TIP = 100;
  private static String appId = null;
  public static boolean authFlag = false;
  private static String channelId = null;
  private static int configEnvironment;
  private static Context context;
  private static int getExCount;
  private static PAVideoManage instance;
  private static boolean isChannelPassed;
  public static boolean isJump;
  public static boolean isLoading;
  public static boolean isReg;
  private static PAVideoManage.MyTask myTask;
  private static Timer myTimer;
  private static int queueCount;
  public static boolean regVideoPluginFlag;
  public static String resultMsg;
  private static SimpleDateFormat sdf = new SimpleDateFormat();
  private static String userId;
  private AudioManager audioManager;
  private int authCount = 0;
  private String callID = null;
  private String callto = "326328";
  private ConnectionChangeReceiver ccr = new ConnectionChangeReceiver();
  private int currentVolume;
  private String deviceId = null;
  private Handler handler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      switch (paramAnonymousMessage.what)
      {
      }
      for (;;)
      {
        switch (paramAnonymousMessage.arg1)
        {
        default: 
          return;
          PAVideoManage.this.hs.handlerState(paramAnonymousMessage.what, "获取分机号成功！");
          LogM.e(PAVideoManage.TAG, "GET_EXTENSION_OK_S--分机号成功");
          CommonUtil.setValue(PAVideoManage.context, "config", "extensionTime", Long.valueOf(System.currentTimeMillis()));
          PAVideoManage.access$302(0);
          LogM.e(PAVideoManage.TAG, "handler--GET_EXTENSION_OK_S-GlobalVarHolder.account:" + GlobalVarHolder.account);
          LogM.e(PAVideoManage.TAG, GlobalVarHolder.account);
          LogM.e(PAVideoManage.TAG, GlobalVarHolder.password);
          LogM.e(PAVideoManage.TAG, GlobalVarHolder.SBCDomain);
          LogM.e(PAVideoManage.TAG, GlobalVarHolder.SBCIP);
          LogM.e(PAVideoManage.TAG, GlobalVarHolder.SBCPort);
          if (GlobalVarHolder.password == null) {
            GlobalVarHolder.password = "zq" + GlobalVarHolder.account;
          }
          LogM.e(PAVideoManage.TAG, "callState=" + PAVideoManage.PASDKAPI.getCallState());
          LogM.e(PAVideoManage.TAG, "serverPath=" + com.pingan.a.i);
          if (PAVideoSdkApiManager.isSDKAlive())
          {
            PAVideoSdkApiManager localPAVideoSdkApiManager1 = PAVideoManage.PASDKAPI;
            PAVideoSdkApiManager localPAVideoSdkApiManager2 = PAVideoManage.PASDKAPI;
            localPAVideoSdkApiManager1.register(0);
            PAVideoManage.PASDKAPI.setPacketLoss(30, 100);
            continue;
            PAVideoManage.this.hs.handlerState(paramAnonymousMessage.what, "分机号不足！");
            LogM.e(PAVideoManage.TAG, "GET_EXTENSION_OK_F--分机号不足");
            continue;
            PAVideoManage.this.hs.handlerState(paramAnonymousMessage.what, "获取分机号失败！");
            LogM.e(PAVideoManage.TAG, "GET_EXTENSION_FAIL--分机号失败");
            if (PAVideoManage.getExCount <= 3)
            {
              MCPExtension2.getExtension(PAVideoManage.context, PAVideoManage.this.handler);
              PAVideoManage.access$308();
            }
            for (;;)
            {
              LogM.d(PAVideoManage.TAG, "handler--GET_EXTENSION_FAIL");
              break;
              PAVideoManage.access$302(0);
            }
            PAVideoManage.this.hs.handlerState(paramAnonymousMessage.what, "释放分机号成功！");
            LogM.d(PAVideoManage.TAG, "handler--释放分机号成功");
            continue;
            PAVideoManage.this.hs.handlerState(paramAnonymousMessage.what, "开启视频成功！");
            PAVideoManage.this.startVideo();
            continue;
            LogM.e(PAVideoManage.TAG, "hang_up");
            PAVideoManage.PASDKAPI.hangup();
            if (!TextUtils.isEmpty(PAVideoManage.this.callID))
            {
              PAVideoManage.this.saveHungUpState();
              continue;
              LogM.e(PAVideoManage.TAG, "clean_view");
              PAVideoManage.PASDKAPI.cleanVideoView();
              if (!TextUtils.isEmpty(PAVideoManage.this.callID)) {
                PAVideoManage.this.saveHungUpState();
              }
              PAVideoManage.this.hs.handlerState(paramAnonymousMessage.what, "坐席挂机！");
              continue;
              LogM.e(PAVideoManage.TAG, "CHECKED_REJECT");
              PAVideoManage.this.hs.handlerState(paramAnonymousMessage.what, (String)paramAnonymousMessage.obj);
              continue;
              LogM.e(PAVideoManage.TAG, "CHECKED_PASS");
              PAVideoManage.this.hs.handlerState(paramAnonymousMessage.what, (String)paramAnonymousMessage.obj);
              continue;
              LogM.e(PAVideoManage.TAG, "CHECKED_NOT_PASS");
              PAVideoManage.this.hs.handlerState(paramAnonymousMessage.what, (String)paramAnonymousMessage.obj);
            }
          }
          break;
        }
      }
      try
      {
        int j = Integer.parseInt((String)paramAnonymousMessage.obj);
        int i = j;
        if (j <= 0) {
          i = 1;
        }
        if (i < PAVideoManage.queueCount) {
          PAVideoManage.access$802(i);
        }
        PAVideoManage.this.hs.handlerState(paramAnonymousMessage.arg1, "您的前面还有" + i + "位客户在等待，请稍后...");
        return;
      }
      catch (NumberFormatException paramAnonymousMessage)
      {
        paramAnonymousMessage.printStackTrace();
      }
    }
  };
  private HeadsetUtils headSet;
  private PAVideoManage.HandlerState hs = null;
  private boolean isCall = false;
  private boolean isCleanReg = false;
  private boolean isConSs = false;
  private boolean isConnected = false;
  private boolean isOpenLocalVideo;
  private boolean isOpenRemoteVideo;
  private boolean isUserHangUp = false;
  private int maxVolume;
  private PowerManager powerManager;
  private int regCount = 0;
  private String result = "";
  private String sip = null;
  private ViewGroup svContainer;
  private SurfaceView svLocal = null;
  private SurfaceView svRemote = null;
  private String tempCallID = null;
  private PowerManager.WakeLock wakeLock;
  
  static
  {
    isChannelPassed = false;
    getExCount = 0;
    queueCount = 99;
    instance = null;
    context = null;
    userId = null;
    configEnvironment = 2;
  }
  
  private PAVideoManage(Context paramContext)
  {
    context = paramContext;
  }
  
  private void LSAuth()
  {
    new Thread()
    {
      public void run()
      {
        try
        {
          Thread.sleep(50L);
          LogM.e(PAVideoManage.TAG, "进入认证--");
          if ((PAVideoManage.configEnvironment == 1) || (PAVideoManage.configEnvironment == 2) || (PAVideoManage.configEnvironment == 0))
          {
            PAVideoManage.PASDKAPI.initAPI(com.pingan.a.a, "CDG010", "988275de9690c6b1d23c31322966ca12", "test-mcscams.dmzstg1.pingan.com.cn:5080");
            return;
          }
        }
        catch (InterruptedException localInterruptedException)
        {
          do
          {
            for (;;)
            {
              localInterruptedException.printStackTrace();
            }
          } while (PAVideoManage.configEnvironment != 3);
          PAVideoManage.PASDKAPI.initAPI(com.pingan.a.a, "ZQprd01A", "06c81d590af7b7c332e0a81a78d689b1", "mcscams.pingan.com.cn:80");
        }
      }
    }.start();
  }
  
  public static String bytes2Hex(byte[] paramArrayOfByte)
  {
    String str1 = "";
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      String str3 = Integer.toHexString(paramArrayOfByte[i] & 0xFF);
      String str2 = str1;
      if (str3.length() == 1) {
        str2 = str1 + "0";
      }
      str1 = str2 + str3;
      i += 1;
    }
    return str1;
  }
  
  public static void checkChannel(final Context paramContext, final String paramString1, String paramString2, String paramString3, String[] paramArrayOfString, final String paramString4, final CheckChannelCallback paramCheckChannelCallback)
  {
    if (paramContext == null) {}
    while (TextUtils.isEmpty(paramString1)) {
      return;
    }
    context = paramContext;
    appId = paramString1;
    userId = paramString2;
    channelId = paramString3;
    paramString2 = (Long)CommonUtil.getValue(paramContext, "config", "lastCheckChannelTime", Long.valueOf(0L));
    if (System.currentTimeMillis() - paramString2.longValue() > 86400000L)
    {
      new Thread()
      {
        public final void run()
        {
          Object localObject2 = new StringBuffer();
          int i = 0;
          while (i < PAVideoManage.this.length)
          {
            ((StringBuffer)localObject2).append(PAVideoManage.this[i]);
            if (i != PAVideoManage.this.length - 1) {
              ((StringBuffer)localObject2).append("-");
            }
            i += 1;
          }
          Object localObject1 = new HashMap();
          ((Map)localObject1).put("accessSign", "OpenID");
          ((Map)localObject1).put("Content-Type", "application/json");
          try
          {
            JSONObject localJSONObject = new JSONObject();
            localJSONObject.put("channel_ids", ((StringBuffer)localObject2).toString());
            localJSONObject.put("app_id", paramString1);
            localJSONObject.put("channel_code", paramString4);
            localJSONObject.put("source", "2");
            localObject2 = PAVideoManage.formatRequestParam(localJSONObject.toString());
            localObject1 = com.paic.openapi.demo.util.a.a(com.pingan.a.u, (String)localObject2, (Map)localObject1);
            if ((localObject1 == null) || (TextUtils.isEmpty((CharSequence)localObject1)))
            {
              PAVideoManage.access$902(true);
              paramCheckChannelCallback.checkPassed();
              return;
            }
            try
            {
              localObject1 = new JSONObject((String)localObject1);
              if (!((JSONObject)localObject1).getString("resCode").equals("0"))
              {
                CommonUtil.setValue(paramContext, "config", "checkChannelResults", "");
                PAVideoManage.access$902(false);
                paramCheckChannelCallback.checkFailed();
                return;
              }
            }
            catch (JSONException localJSONException)
            {
              localJSONException.printStackTrace();
              PAVideoManage.access$902(true);
              paramCheckChannelCallback.checkPassed();
              return;
            }
            localJSONArray = localException.getJSONArray("resBody");
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
            PAVideoManage.access$902(false);
            paramCheckChannelCallback.checkFailed();
            return;
          }
          JSONArray localJSONArray;
          CommonUtil.setValue(paramContext, "config", "lastCheckChannelTime", Long.valueOf(System.currentTimeMillis()));
          CommonUtil.setValue(paramContext, "config", "checkChannelResults", localJSONArray.toString());
          if (PAVideoManage.access$1000())
          {
            PAVideoManage.access$902(true);
            paramCheckChannelCallback.checkPassed();
            return;
          }
          PAVideoManage.access$902(false);
          paramCheckChannelCallback.checkFailed();
        }
      }.start();
      return;
    }
    if (isChannelExists())
    {
      isChannelPassed = true;
      paramCheckChannelCallback.checkPassed();
      return;
    }
    isChannelPassed = false;
    paramCheckChannelCallback.checkFailed();
  }
  
  public static String encrypt(String paramString)
  {
    paramString = paramString.getBytes();
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("SHA-1");
      localMessageDigest.update(paramString);
      paramString = bytes2Hex(localMessageDigest.digest());
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      System.out.println("Invalid algorithm.");
    }
    return null;
  }
  
  public static String formatRequestParam(String paramString)
  {
    Object localObject = new Head();
    ((Head)localObject).setAppId(com.pingan.a.m);
    ((Head)localObject).setFormat("json");
    ((Head)localObject).setOpenId("openacc");
    ((Head)localObject).setSign(encrypt(com.pingan.a.q + String.valueOf(paramString)));
    ((Head)localObject).setTimestamp(getCurrentTime());
    localObject = new Gson().toJson(localObject);
    return "{\"head\":" + (String)localObject + ",\"body\":" + paramString + "}";
  }
  
  public static String getCurrentTime()
  {
    sdf.applyPattern("yyyy-MM-dd HH:mm:ss");
    return sdf.format(new Date());
  }
  
  public static PAVideoManage getInstance(Context paramContext)
  {
    if (instance == null) {}
    try
    {
      if (instance == null)
      {
        instance = new PAVideoManage(paramContext);
        LogM.e(TAG, "MainLooper:" + paramContext.getMainLooper());
      }
      return instance;
    }
    finally {}
  }
  
  private void initOther()
  {
    this.headSet = new HeadsetUtils(context);
  }
  
  private void initPaPhoneSDK()
  {
    MCPExtension2.setContext(context);
    com.pingan.a.a = ((TelephonyManager)context.getSystemService("phone")).getDeviceId();
    LogM.d("cx", "DEVICE_ID=" + com.pingan.a.a);
    PAEngine.setIAVCallStatusListener(this);
    PASDKAPI = PAVideoSdkApiManager.getInstance(context);
    LogM.e(TAG, "authFlag:false");
    if (!isChannelPassed)
    {
      Toast.makeText(context, "鉴权失败", 1).show();
      return;
    }
    LSAuth();
    isReg = false;
    isLoading = false;
    isJump = false;
    regVideoPluginFlag = false;
  }
  
  private static boolean isChannelExists()
  {
    Object localObject1 = (String)CommonUtil.getValue(context, "config", "checkChannelResults", "");
    if (TextUtils.isEmpty((CharSequence)localObject1)) {
      return false;
    }
    try
    {
      localObject1 = new JSONArray((String)localObject1);
      int i = 0;
      while (i < ((JSONArray)localObject1).length())
      {
        Object localObject2 = (JSONObject)((JSONArray)localObject1).get(i);
        String str = ((JSONObject)localObject2).getString("results");
        localObject2 = ((JSONObject)localObject2).getString("pass");
        if (str.equals(channelId))
        {
          boolean bool = ((String)localObject2).equals("1");
          if (bool) {
            return true;
          }
        }
        i += 1;
      }
      return false;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  private void myTask()
  {
    LogM.e(TAG, "myTask");
    Long localLong = (Long)CommonUtil.getValue(context, "config", "extensionTime", Long.valueOf(0L));
    if (System.currentTimeMillis() - localLong.longValue() > 30000L)
    {
      LogM.e(TAG, "myTask-30S-end");
      PASDKAPI.hangup();
      unregVideo();
      stopMyTask();
    }
    if ((System.currentTimeMillis() - localLong.longValue() > 10000L) && (this.isUserHangUp))
    {
      LogM.e(TAG, "myTask-10S-end");
      MCPExtension2.releaseByPost(null);
      this.isUserHangUp = false;
      stopMyTask();
    }
  }
  
  private boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    this.currentVolume = this.audioManager.getStreamVolume(3);
    switch (paramInt)
    {
    }
    do
    {
      do
      {
        return true;
        this.audioManager.adjustStreamVolume(3, -1, 5);
      } while (this.currentVolume > 0);
      this.audioManager.setStreamVolume(3, 0, 0);
      this.audioManager.setRingerMode(0);
      this.currentVolume = 0;
      return true;
      this.audioManager.adjustStreamVolume(3, 1, 5);
      this.audioManager.setRingerMode(2);
    } while (this.currentVolume < this.maxVolume);
    this.audioManager.setStreamVolume(3, this.maxVolume, 0);
    this.currentVolume = this.maxVolume;
    return true;
  }
  
  private void parseResult(String paramString)
  {
    try
    {
      paramString = new JSONObject(paramString);
      String str = paramString.getString("type");
      if ("1".equals(str))
      {
        resultMsg = paramString.getString("msg");
        this.result = paramString.getString("step");
        sendMessage(1114, "msg:" + resultMsg + "step:" + this.result);
        return;
      }
      if ("0".equals(str))
      {
        this.result = paramString.getString("result");
        if ((this.result != null) && ("0".equals(this.result))) {
          sendMessage(1115, "认证通过，开户成功!");
        }
        if ((this.result != null) && ("1".equals(this.result)))
        {
          sendMessage(1116, "认证未通过，开户失败!");
          return;
        }
      }
    }
    catch (JSONException paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  private void regReceiver()
  {
    this.headSet.registerHeadsetPlugReceiver();
    this.headSet.registerBluetoothScoReceiver();
    PASDKAPI.registerConnectionChangeReceiver(context, this.ccr);
  }
  
  private void regVideo()
  {
    if (PAVideoSdkApiManager.isSDKAlive()) {
      MCPExtension2.getExtension(context, this.handler);
    }
  }
  
  private void saveHungUpState()
  {
    new Thread()
    {
      public void run()
      {
        HashMap localHashMap = new HashMap();
        localHashMap.put("accessSign", "OpenID");
        localHashMap.put("Content-Type", "application/json");
        try
        {
          JSONObject localJSONObject = new JSONObject();
          localJSONObject.put("userid", PAVideoManage.userId);
          if ((!PAVideoManage.this.isCall) && (PAVideoManage.this.callID != null)) {}
          for (String str = "1";; str = "4")
          {
            localJSONObject.put("state", str);
            localJSONObject.put("flowsn", PAVideoManage.this.callID);
            str = PAVideoManage.formatRequestParam(localJSONObject.toString());
            str = com.paic.openapi.demo.util.a.a(com.pingan.a.y, str, localHashMap);
            if ((str != null) && (!TextUtils.isEmpty(str))) {
              break;
            }
            Log.e("shadowfaxghh", "挂断结果返回失败");
            return;
            if (!PAVideoManage.this.isCall) {
              return;
            }
          }
          Log.e("shadowfaxghh", str);
          return;
        }
        catch (JSONException localJSONException)
        {
          localJSONException.printStackTrace();
          return;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
    }.start();
  }
  
  private void sendMessage(int paramInt)
  {
    sendMessage(paramInt, null);
  }
  
  private void sendMessage(int paramInt, Object paramObject)
  {
    Message localMessage = Message.obtain();
    localMessage.what = paramInt;
    localMessage.obj = paramObject;
    this.handler.sendMessage(localMessage);
  }
  
  public static void setEnvironment(int paramInt)
  {
    configEnvironment = paramInt;
    MCPUtils.mcpSwitch(0);
    switch (paramInt)
    {
    default: 
      return;
    case 1: 
      com.pingan.a.i = com.pingan.a.e;
      com.pingan.a.b = "http://222.68.184.171:8090/eim-mcp-portal/";
      com.pingan.a.m = com.pingan.a.j;
      com.pingan.a.q = com.pingan.a.n;
      com.pingan.a.u = com.pingan.a.r;
      com.pingan.a.y = com.pingan.a.v;
      return;
    case 2: 
      com.pingan.a.i = com.pingan.a.f;
      com.pingan.a.b = "http://222.68.184.171:8090/eim-mcp-portal/";
      com.pingan.a.m = com.pingan.a.j;
      com.pingan.a.q = com.pingan.a.n;
      com.pingan.a.u = com.pingan.a.r;
      com.pingan.a.y = com.pingan.a.v;
      return;
    case 0: 
      com.pingan.a.i = com.pingan.a.g;
      com.pingan.a.b = "http://222.68.184.171:8090/eim-mcp-portal/";
      com.pingan.a.m = com.pingan.a.k;
      com.pingan.a.q = com.pingan.a.o;
      com.pingan.a.u = com.pingan.a.s;
      com.pingan.a.y = com.pingan.a.w;
      return;
    }
    com.pingan.a.i = com.pingan.a.h;
    com.pingan.a.b = "https://eim-mcp.pingan.com.cn/eim-mcp-portal/";
    com.pingan.a.m = com.pingan.a.l;
    com.pingan.a.q = com.pingan.a.p;
    com.pingan.a.u = com.pingan.a.t;
    com.pingan.a.y = com.pingan.a.x;
  }
  
  private void startMyTask()
  {
    stopMyTask();
    if (myTimer == null) {
      myTimer = new Timer();
    }
    if (myTask == null) {
      myTask = new PAVideoManage.MyTask(this);
    }
    if ((this.isUserHangUp) && (!this.isCall)) {
      myTimer.schedule(myTask, 10000L);
    }
    if (!this.isUserHangUp) {
      myTimer.schedule(myTask, 30000L);
    }
  }
  
  private void startVideo()
  {
    try
    {
      JSONObject localJSONObject = new JSONObject();
      com.pingan.a.d = userId;
      localJSONObject.put("user_id", userId);
      localJSONObject.put("owner_id", channelId);
      PASDKAPI.setCustom(localJSONObject.toString());
      GlobalVarHolder.callTo = this.callto;
      PASDKAPI.initVideoView(this.svContainer, this.svLocal, this.svRemote);
      PASDKAPI.voiceAndVideoCall(1);
      this.svLocal.setVisibility(0);
      PASDKAPI.openLocalView();
      MCPExtension2.startQueueRefresh(context, this.handler);
      this.isOpenLocalVideo = true;
      return;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        localJSONException.printStackTrace();
      }
    }
  }
  
  private void stopMyTask()
  {
    if (myTimer != null)
    {
      LogM.e(TAG, "myTimer-stopMyTask");
      myTimer.cancel();
      myTimer = null;
    }
    if (myTask != null)
    {
      LogM.e(TAG, "myTask-stopMyTask");
      myTask.cancel();
      myTask = null;
    }
  }
  
  private void unregReceiver()
  {
    this.headSet.unregisterBluetoothScoReceiver();
    this.headSet.unregisterHeadsetPlugReceiver();
    context.unregisterReceiver(this.ccr);
  }
  
  private void unregVideo()
  {
    MCPExtension2.stopTimerRefresh();
    MCPExtension2.stopQueueRefresh();
    if (PAVideoSdkApiManager.isSDKAlive()) {
      PASDKAPI.unregister();
    }
    MCPExtension2.releaseByPost(null);
  }
  
  public void hangup()
  {
    this.isUserHangUp = true;
  }
  
  public void onPACreate(PAVideoManage.HandlerState paramHandlerState, ViewGroup paramViewGroup, SurfaceView paramSurfaceView1, SurfaceView paramSurfaceView2)
  {
    this.svContainer = paramViewGroup;
    this.svLocal = paramSurfaceView1;
    this.svRemote = paramSurfaceView2;
    this.hs = paramHandlerState;
    this.callID = null;
    this.isUserHangUp = false;
    this.regCount = 0;
    getExCount = 0;
    this.audioManager = ((AudioManager)context.getSystemService("audio"));
    this.maxVolume = this.audioManager.getStreamMaxVolume(3);
    this.powerManager = ((PowerManager)context.getSystemService("power"));
    this.wakeLock = this.powerManager.newWakeLock(536870922, TAG);
    this.isConSs = false;
    initPaPhoneSDK();
    initOther();
  }
  
  public void onPADestroy()
  {
    CommonUtil.setValue(context, "config", "isFirstOpen", Boolean.valueOf(false));
    CommonUtil.setValue(context, "config", "closeTime", Long.valueOf(System.currentTimeMillis()));
    CommonUtil.setValue(context, "config", "authFlag", Boolean.valueOf(false));
    PASDKAPI.hangup();
    MCPExtension2.setExtensionCount(99);
    MCPExtension2.stopQueueRefresh();
    isJump = false;
    boolean bool = ((Boolean)CommonUtil.getValue(context, "config", "authFlag", Boolean.valueOf(false))).booleanValue();
    LogM.d(TAG, "authFlag1：" + bool);
    PASDKAPI.unregister();
    MCPExtension2.stopTimerRefresh();
    if (this.isCall) {
      MCPExtension2.releaseByPost(null);
    }
  }
  
  public void onPAPause()
  {
    LogM.d(TAG, "onPause");
    if (this.wakeLock != null) {
      this.wakeLock.release();
    }
    unregReceiver();
  }
  
  public void onPARestart()
  {
    PAEngine.setIAVCallStatusListener(this);
    if ((!isJump) && (PASDKAPI.isRegisterState()))
    {
      LogM.i("cx", "onRestart--stopHomeTimer  in");
      stopMyTask();
    }
    if ((!isJump) && (!PASDKAPI.isRegisterState()) && (regVideoPluginFlag))
    {
      regVideo();
      LogM.i("cx", "onRestart--regVideo  in");
    }
    LogM.d(TAG, "onRestart");
    if (this.isOpenLocalVideo) {
      PASDKAPI.addLocalViewToSurface();
    }
    if ((this.isOpenRemoteVideo) && (this.isConnected)) {
      PASDKAPI.addRemoteViewToSurface();
    }
  }
  
  public void onPAResume()
  {
    stopMyTask();
    if (this.wakeLock != null) {
      this.wakeLock.acquire();
    }
    regReceiver();
  }
  
  public void onPAStart() {}
  
  public void onPAStop()
  {
    if (PASDKAPI.isRegisterState()) {
      startMyTask();
    }
    LogM.d(TAG, "onStop");
    if (this.isOpenLocalVideo) {
      PASDKAPI.removeLocalViewFromSurface();
    }
    if (this.isOpenRemoteVideo) {
      PASDKAPI.removeRemoteViewFromSurface();
    }
  }
  
  public void outputAVCallStatus(int paramInt, Object paramObject)
  {
    LogM.d(TAG, "outputAVCallStatus-->status=" + paramInt);
    switch (paramInt)
    {
    default: 
      LogM.e(TAG, "STATUS_default");
    case 16: 
    case 17: 
    case 901: 
    case 902: 
    case 400: 
    case 420: 
    case 1: 
    case 2: 
    case 3: 
    case 4: 
    case 5: 
    case 6: 
    case 8: 
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  return;
                  this.hs.handlerState(paramInt, "视频认证失败！");
                  Log.e(TAG, "STATUS_AUTH_FAILED--认证失败");
                  authFlag = false;
                  this.authCount += 1;
                } while (this.authCount > 5);
                LogM.d(TAG, "认证失败，重试中。。authCount=" + this.authCount);
                LSAuth();
                return;
                this.hs.handlerState(paramInt, "视频认证成功！");
                LogM.e(TAG, "STATUS_AUTH_SUCCESS--认证成功");
                authFlag = true;
                CommonUtil.setValue(context, "config", "authFlag", Boolean.valueOf(true));
                this.authCount = 0;
                paramObject = (Long)CommonUtil.getValue(context, "config", "closeTime", Long.valueOf(0L));
                if (System.currentTimeMillis() - ((Long)paramObject).longValue() > 10000L)
                {
                  MCPExtension2.releaseByPost(null);
                  MCPExtension2.getExtension(context, this.handler);
                  return;
                }
                PASDKAPI.register(0);
                PASDKAPI.setPacketLoss(30, 100);
                return;
                this.hs.handlerState(paramInt, "视频注册成功！");
                LogM.e(TAG, "注册成功");
                this.regCount = 0;
                MCPExtension2.startTimerRefresh();
                isReg = true;
                this.handler.sendEmptyMessage(1110);
              } while (!isLoading);
              isLoading = false;
              isJump = true;
              return;
              this.hs.handlerState(paramInt, "视频注册失败！");
              LogM.e(TAG, "STATUS_SIP_REG_FAILED--注册失败");
              paramInt = this.regCount + 1;
              this.regCount = paramInt;
              if (paramInt <= 3) {
                PASDKAPI.register(0);
              }
              if ((this.regCount > 3) && (getExCount <= 3))
              {
                getExCount += 1;
                this.regCount = 0;
                LogM.i(TAG, "regCount---三次重试失败！");
                MCPExtension2.releaseByPost(null);
              }
            } while (getExCount < 4);
            LogM.i(TAG, "getExCount-三次重试失败！");
            MCPExtension2.releaseByPost(null);
            getExCount = 0;
            return;
            this.hs.handlerState(paramInt, "视频注册注销！");
            LogM.e(TAG, "STATUS_SIP_UN_REG_OK--视频注销");
            isReg = false;
            return;
            this.hs.handlerState(paramInt, "坐席振铃！");
            Log.d(TAG, "STATUS_CALL_RINGING");
            this.isConSs = true;
          } while (!PAVideoSdkApiManager.isSDKAlive());
          this.tempCallID = PASDKAPI.getUUID();
          LogM.d(TAG, "callID=" + this.callID);
          LogM.d(TAG, "tempCallID=" + this.tempCallID);
        } while ((this.tempCallID == null) || (this.tempCallID.equals(this.callID)));
        this.callID = this.tempCallID;
        LogM.e(TAG, "振铃-----上传录音流水号");
        MCPExtension2.fetchCallUuId(this.callID, context, this.handler);
        MCPExtension2.callDo(this.callID);
        return;
        this.hs.handlerState(paramInt, "坐席通话接通！");
        Log.d(TAG, "STATUS_CALL_CONNECTED");
        Log.d(TAG, "STATUS_CALL_CONNECTED--(String)obj=" + (String)paramObject);
        this.isCall = true;
        this.isConnected = true;
        if ("video".equals((String)paramObject))
        {
          Log.d(TAG, "STATUS_CALL_CONNECTED--视频接通");
          PASDKAPI.openRemoteView();
          this.isOpenRemoteVideo = true;
        }
        for (;;)
        {
          MCPExtension2.stopQueueRefresh();
          return;
          Log.d(TAG, "STATUS_CALL_CONNECTED--音频接通");
        }
        this.hs.handlerState(paramInt, "坐席呼叫失败！");
        Log.d(TAG, "STATUS_CALL_FAILED");
        PASDKAPI.hangup();
        this.isOpenLocalVideo = false;
        this.isOpenRemoteVideo = false;
        this.isConnected = false;
        return;
        this.hs.handlerState(paramInt, "坐席挂机！");
        LogM.e(TAG, "STATUS_CALL_IDLE-对方挂机");
        sendMessage(1112);
        this.isConnected = false;
        PASDKAPI.unregister();
        isReg = false;
      } while (!this.result.equals("0"));
      PASDKAPI.unregister();
      MCPExtension2.stopTimerRefresh();
      MCPExtension2.releaseByPost(null);
      return;
    case 11: 
      this.hs.handlerState(paramInt, "坐席拒绝！");
      LogM.e(TAG, "STATUS_CALL_REFUSED-对方拒绝");
      PASDKAPI.hangup();
      this.isConnected = false;
      MCPExtension2.releaseByPost(null);
      return;
    case 12: 
      this.hs.handlerState(paramInt, "坐席繁忙！");
      LogM.e(TAG, "STATUS_CALL_BUSY-对方繁忙");
      PASDKAPI.hangup();
      this.isConnected = false;
      return;
    case 13: 
      this.hs.handlerState(paramInt, "坐席号码不存在！");
      Log.d(TAG, "STATUS_CALL_NON_EXIST-号码不存在");
      PASDKAPI.hangup();
      this.isConnected = false;
      return;
    case 14: 
      this.hs.handlerState(paramInt, "坐席全忙！");
      LogM.e(TAG, "STATUS_CALL_AGENT_ALL_BUSY");
      return;
    case 15: 
      this.sip = ((String)paramObject);
      LogM.e(TAG, "sip消息内容:" + this.sip);
      return;
    }
    parseResult((String)paramObject);
    LogM.d(TAG, "收到消息---resultmsg=" + resultMsg + "---result=" + this.result);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\main\PAVideoManage.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */