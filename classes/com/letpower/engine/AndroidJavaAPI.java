package com.letpower.engine;

import android.content.Context;
import com.pingan.a.a.e;

public class AndroidJavaAPI
{
  public AndroidJavaAPI(Context paramContext)
  {
    e.a("*WEBRTCJ*", "Loading AndroidJavaAPI...");
    System.loadLibrary("pasdk-jni");
  }
  
  public native int NativeInit(Context paramContext, String paramString1, String paramString2, String paramString3);
  
  public native int acceptcall(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7);
  
  public native int closeRemoteVideo();
  
  public native int connectCaptureDevice(int paramInt);
  
  public native int enableMic(boolean paramBoolean);
  
  public native void enableRTCPReport(boolean paramBoolean1, int paramInt1, boolean paramBoolean2, int paramInt2);
  
  public native int endcall();
  
  public native int freeRes();
  
  public native int getAndAllocateCaptureDevice(int paramInt);
  
  public native int getCallState();
  
  public native int getCallType();
  
  public native String getIncomingCaller();
  
  public native int getPacketLoss();
  
  public native int getRegisterState();
  
  public native String getRemotescreen();
  
  public native String getSDKVersion();
  
  public native String getServerUUID();
  
  public native String getSipMsg();
  
  public native String getVideoRTCPReport();
  
  public native String getVoiceRTCPReport();
  
  public native boolean initSDKLog(String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public native boolean initSIPLog(String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public native boolean initUALog(String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public native int openLocalVideo();
  
  public native int openRemoteVideo();
  
  public native int pressDtmf(int paramInt);
  
  public native int registeracc();
  
  public native int reject();
  
  public native int releaseCaptureDevice(int paramInt);
  
  public native int setCustom(String paramString);
  
  public native int setIPAddr(String paramString);
  
  public native int setLSInfo(String paramString1, String paramString2, String paramString3);
  
  public native void setMirrorXY(boolean paramBoolean1, boolean paramBoolean2);
  
  public native int setPacketLoss(int paramInt1, int paramInt2);
  
  public native int setRTLogFlag(boolean paramBoolean);
  
  public native int setRotateCapturedFrames(int paramInt);
  
  public native int setSBCInfo(String paramString1, int paramInt, String paramString2);
  
  public native void setSIPMsgOutput(boolean paramBoolean1, boolean paramBoolean2);
  
  public native int setSIPRegisterExpires(int paramInt1, int paramInt2);
  
  public native void setScreenResolution(int paramInt1, int paramInt2);
  
  public native int setUserInfo(String paramString1, String paramString2);
  
  public native void setcameraindex(int paramInt);
  
  public native void setlocalview(Object paramObject);
  
  public native void setremoteview(Object paramObject);
  
  public native int startLocalCamera();
  
  public native int startMediaVideoFromUI();
  
  public native int startRenderLocal();
  
  public native int startRenderRemote();
  
  public native int startnetworkdetection(String paramString, int paramInt);
  
  public native int stopLocalCamera();
  
  public native int stopRenderLocal();
  
  public native int stopRenderRemote();
  
  public native int stopnetworkdetection();
  
  public native int switchRenderWindows(int paramInt);
  
  public native int unregister();
  
  public native int videocall(String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7);
  
  public native int voicecall(String paramString);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\letpower\engine\AndroidJavaAPI.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */