package com.bairuitech.anychat;

import android.view.Surface;

public class AnyChatCoreSDK
{
  public static f i;
  public static a j;
  public static e k;
  private static AnyChatCoreSDK n = null;
  private static int o;
  private static int p;
  private static int q;
  private static int r;
  private static int s;
  private static int t;
  private static int u;
  private static int v;
  public d a;
  k b;
  h c;
  l d;
  public m e;
  public o f;
  n g;
  i h;
  public j l = new j();
  public p m = new p();
  
  static
  {
    i = null;
    j = new a();
    k = new e();
    o = 1;
    p = 2;
    q = 3;
    r = 4;
    s = 5;
    t = 6;
    u = 7;
    v = 8;
    System.loadLibrary("audio_preprocessing");
    System.loadLibrary("mediacore");
    System.loadLibrary("anychatcore");
  }
  
  public static native byte[] FetchAudioPlayBuffer(int paramInt);
  
  public static native int GetSDKOptionInt(int paramInt);
  
  public static native int InputAudioData(byte[] paramArrayOfByte, int paramInt1, int paramInt2);
  
  public static native int InputVideoData(byte[] paramArrayOfByte, int paramInt1, int paramInt2);
  
  public static native int SetInputAudioFormat(int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public static native int SetInputVideoFormat(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5);
  
  public static native int SetSDKOptionInt(int paramInt1, int paramInt2);
  
  public native int Connect(String paramString, int paramInt);
  
  public native int EnterRoom(int paramInt, String paramString);
  
  public native String[] EnumVideoCapture();
  
  public native int GetCameraState(int paramInt);
  
  public native String GetCurVideoCapture();
  
  public native int GetUserSpeakVolume(int paramInt);
  
  public native int GetUserVideoHeight(int paramInt);
  
  public native int GetUserVideoWidth(int paramInt);
  
  public native int InitSDK(int paramInt1, int paramInt2);
  
  public native int LeaveRoom(int paramInt);
  
  public native int Login(String paramString1, String paramString2);
  
  public native int Logout();
  
  public native String QueryUserStateString(int paramInt1, int paramInt2);
  
  public native int RegisterNotify();
  
  public native int Release();
  
  public native int SelectVideoCapture(String paramString);
  
  public native int SetVideoPos(int paramInt1, Surface paramSurface, int paramInt2, int paramInt3, int paramInt4, int paramInt5);
  
  public native int UserCameraControl(int paramInt1, int paramInt2);
  
  public native int UserSpeakControl(int paramInt1, int paramInt2);
  
  public native int VideoCallControl(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, String paramString);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\bairuitech\anychat\AnyChatCoreSDK.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */