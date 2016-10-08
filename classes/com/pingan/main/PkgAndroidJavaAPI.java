package com.pingan.main;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.letpower.engine.AndroidJavaAPI;
import com.letpower.engine.LDEngineDemo;
import com.pingan.a.a.a;
import com.pingan.a.a.e;

public class PkgAndroidJavaAPI
{
  private static final String TAG = "PkgAndroidJavaAPI";
  private static String deviceId = ((TelephonyManager)LDEngineDemo.mContext.getSystemService("phone")).getDeviceId();
  private static IAVCallStatusListener mAvCallStatusListener = null;
  
  static
  {
    Log.e("static", "mContext=" + LDEngineDemo.mContext);
  }
  
  public static int NativeInit(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-NativeInit");
    return LDEngineDemo.LDVoiceEngAndroidAPI.NativeInit(paramContext, paramString1, paramString2, paramString3);
  }
  
  public static int acceptcall(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7)
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-acceptcall");
    return LDEngineDemo.LDVoiceEngAndroidAPI.acceptcall(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7);
  }
  
  public static int closeRemoteVideo()
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-closeRemoteVideo");
    return LDEngineDemo.LDVoiceEngAndroidAPI.closeRemoteVideo();
  }
  
  public static int connectCaptureDevice(int paramInt)
  {
    return LDEngineDemo.LDVoiceEngAndroidAPI.connectCaptureDevice(paramInt);
  }
  
  public static int enableMic(boolean paramBoolean)
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-enableMic");
    return LDEngineDemo.LDVoiceEngAndroidAPI.enableMic(paramBoolean);
  }
  
  public static void enableRTCPReport(boolean paramBoolean1, int paramInt1, boolean paramBoolean2, int paramInt2)
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-enableRTCPReport");
    LDEngineDemo.LDVoiceEngAndroidAPI.enableRTCPReport(paramBoolean1, paramInt1, paramBoolean2, paramInt2);
  }
  
  public static int endcall()
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-endcall");
    return LDEngineDemo.LDVoiceEngAndroidAPI.endcall();
  }
  
  public static int freeRes()
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-freeRes");
    return LDEngineDemo.LDVoiceEngAndroidAPI.freeRes();
  }
  
  public static int getAndAllocateCaptureDevice(int paramInt)
  {
    return LDEngineDemo.LDVoiceEngAndroidAPI.getAndAllocateCaptureDevice(paramInt);
  }
  
  public static int getCallState()
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-getCallState");
    return LDEngineDemo.LDVoiceEngAndroidAPI.getCallState();
  }
  
  public static int getCallType()
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-getCallType");
    return LDEngineDemo.LDVoiceEngAndroidAPI.getCallType();
  }
  
  public static String getIncomingCaller()
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-getIncomingCaller");
    return LDEngineDemo.LDVoiceEngAndroidAPI.getIncomingCaller();
  }
  
  public static int getRegisterState()
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-getRegisterState");
    return LDEngineDemo.LDVoiceEngAndroidAPI.getRegisterState();
  }
  
  public static String getRemotescreen()
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-getRemotescreen");
    return LDEngineDemo.LDVoiceEngAndroidAPI.getRemotescreen();
  }
  
  public static String getSDKVersion()
  {
    return LDEngineDemo.LDVoiceEngAndroidAPI.getSDKVersion();
  }
  
  public static String getServerUUID()
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-getServerUUID");
    return LDEngineDemo.LDVoiceEngAndroidAPI.getServerUUID();
  }
  
  public static String getSipMsg()
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-getSipMsg");
    return LDEngineDemo.LDVoiceEngAndroidAPI.getSipMsg();
  }
  
  public static String getVideoRTCPReport()
  {
    return LDEngineDemo.LDVoiceEngAndroidAPI.getVideoRTCPReport();
  }
  
  public static String getVoiceRTCPReport()
  {
    return LDEngineDemo.LDVoiceEngAndroidAPI.getVoiceRTCPReport();
  }
  
  public static boolean initSDKLog(String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return LDEngineDemo.LDVoiceEngAndroidAPI.initSDKLog(paramString1, paramString2, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public static boolean initUALog(String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return LDEngineDemo.LDVoiceEngAndroidAPI.initUALog(paramString1, paramString2, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public static int openLocalVideo()
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-openLocalVideo");
    return LDEngineDemo.LDVoiceEngAndroidAPI.openLocalVideo();
  }
  
  public static int openRemoteVideo()
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-openRemoteVideo");
    return LDEngineDemo.LDVoiceEngAndroidAPI.openRemoteVideo();
  }
  
  private static void outputAVCallStatus(int paramInt, Object paramObject)
  {
    e.a("PkgAndroidJavaAPI", "outputAVCallStatus mAvCallStatusListener:" + mAvCallStatusListener + "--status:" + paramInt + "--obj:" + paramObject);
    IAVCallStatusListener localIAVCallStatusListener = LDEngineDemo.getIAVCallStatusListener();
    mAvCallStatusListener = localIAVCallStatusListener;
    if (localIAVCallStatusListener != null)
    {
      e.a("PkgAndroidJavaAPI", "outputAVCallStatus mAvCallStatusListener  in");
      mAvCallStatusListener.outputAVCallStatus(paramInt, paramObject);
    }
  }
  
  public static int registeracc()
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-registeracc");
    return LDEngineDemo.LDVoiceEngAndroidAPI.registeracc();
  }
  
  public static int reject()
  {
    return LDEngineDemo.LDVoiceEngAndroidAPI.reject();
  }
  
  public static int releaseCaptureDevice(int paramInt)
  {
    return LDEngineDemo.LDVoiceEngAndroidAPI.releaseCaptureDevice(paramInt);
  }
  
  public static int setIPAddr(String paramString)
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-setIPAddr");
    return LDEngineDemo.LDVoiceEngAndroidAPI.setIPAddr(paramString);
  }
  
  public static int setLSInfo(String paramString1, String paramString2, String paramString3)
  {
    return LDEngineDemo.LDVoiceEngAndroidAPI.setLSInfo(paramString1, paramString2, paramString3);
  }
  
  public static void setMirrorXY(boolean paramBoolean1, boolean paramBoolean2)
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-setMirrorXY");
    LDEngineDemo.LDVoiceEngAndroidAPI.setMirrorXY(paramBoolean1, paramBoolean2);
  }
  
  public static int setPacketLoss(int paramInt1, int paramInt2)
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-setPacketLoss");
    Log.e("PkgAndroidJavaAPI", "setPacketLoss  - checkLossPercentInSec " + paramInt1 + " - packetLossPercent -" + paramInt2);
    return LDEngineDemo.LDVoiceEngAndroidAPI.setPacketLoss(paramInt1, paramInt2);
  }
  
  public static int setRTLogFlag(boolean paramBoolean)
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-setRTLogFlag");
    return LDEngineDemo.LDVoiceEngAndroidAPI.setRTLogFlag(paramBoolean);
  }
  
  public static int setRotateCapturedFrames(int paramInt)
  {
    return LDEngineDemo.LDVoiceEngAndroidAPI.setRotateCapturedFrames(paramInt);
  }
  
  public static int setSBCInfo(String paramString1, int paramInt, String paramString2)
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-setSBCInfo");
    return LDEngineDemo.LDVoiceEngAndroidAPI.setSBCInfo(paramString1, paramInt, paramString2);
  }
  
  public static void setSIPMsgOutput(boolean paramBoolean1, boolean paramBoolean2)
  {
    LDEngineDemo.LDVoiceEngAndroidAPI.setSIPMsgOutput(paramBoolean1, paramBoolean2);
  }
  
  public static int setSIPRegisterExpires(int paramInt1, int paramInt2)
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-setSIPRegisterExpires");
    return LDEngineDemo.LDVoiceEngAndroidAPI.setSIPRegisterExpires(paramInt1, paramInt2);
  }
  
  public static void setScreenResolution(int paramInt1, int paramInt2)
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-setScreenResolution");
    LDEngineDemo.LDVoiceEngAndroidAPI.setScreenResolution(paramInt1, paramInt2);
  }
  
  public static int setUserInfo(String paramString1, String paramString2)
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-setUserInfo");
    return LDEngineDemo.LDVoiceEngAndroidAPI.setUserInfo(paramString1, paramString2);
  }
  
  public static void setcameraindex(int paramInt)
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-setcameraindex");
    LDEngineDemo.LDVoiceEngAndroidAPI.setcameraindex(paramInt);
  }
  
  public static void setlocalview(Object paramObject)
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-setlocalview");
    LDEngineDemo.LDVoiceEngAndroidAPI.setlocalview(paramObject);
  }
  
  public static void setremoteview(Object paramObject)
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-setremoteview");
    LDEngineDemo.LDVoiceEngAndroidAPI.setremoteview(paramObject);
  }
  
  public static int startLocalCamera()
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-startLocalCamera");
    return LDEngineDemo.LDVoiceEngAndroidAPI.startLocalCamera();
  }
  
  public static int startMediaVideoFromUI()
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-startMediaVideoFromUI");
    return LDEngineDemo.LDVoiceEngAndroidAPI.startMediaVideoFromUI();
  }
  
  public static int startRenderLocal()
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-startRenderLocal");
    return LDEngineDemo.LDVoiceEngAndroidAPI.startRenderLocal();
  }
  
  public static int startRenderRemote()
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-startRenderRemote");
    return LDEngineDemo.LDVoiceEngAndroidAPI.startRenderRemote();
  }
  
  public static int startnetworkdetection(String paramString, int paramInt)
  {
    return LDEngineDemo.LDVoiceEngAndroidAPI.startnetworkdetection(paramString, paramInt);
  }
  
  public static int stopLocalCamera()
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-stopLocalCamera");
    return LDEngineDemo.LDVoiceEngAndroidAPI.stopLocalCamera();
  }
  
  public static int stopRenderLocal()
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-stopRenderLocal");
    return LDEngineDemo.LDVoiceEngAndroidAPI.stopRenderLocal();
  }
  
  public static int stopRenderRemote()
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-stopRenderRemote");
    return LDEngineDemo.LDVoiceEngAndroidAPI.stopRenderRemote();
  }
  
  public static int stopnetworkdetection()
  {
    return LDEngineDemo.LDVoiceEngAndroidAPI.stopnetworkdetection();
  }
  
  public static int switchRenderWindows(int paramInt)
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-switchRenderWindows");
    return LDEngineDemo.LDVoiceEngAndroidAPI.switchRenderWindows(paramInt);
  }
  
  public static int unregister()
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-unregister");
    return LDEngineDemo.LDVoiceEngAndroidAPI.unregister();
  }
  
  public static int videocall(String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7)
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-videocall");
    return LDEngineDemo.LDVoiceEngAndroidAPI.videocall(paramString, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7);
  }
  
  public static int voicecall(String paramString)
  {
    outputAVCallStatus(999, a.a() + "-" + deviceId + "-voicecall");
    return LDEngineDemo.LDVoiceEngAndroidAPI.voicecall(paramString);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\main\PkgAndroidJavaAPI.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */