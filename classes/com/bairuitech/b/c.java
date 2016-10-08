package com.bairuitech.b;

import android.content.Context;
import android.content.SharedPreferences;

public final class c
{
  public static b a(Context paramContext)
  {
    b localb = new b();
    paramContext = paramContext.getSharedPreferences("perference", 2);
    localb.b = paramContext.getString("name", "");
    localb.c = paramContext.getString("password", "");
    if (paramContext.getString("IsSaveNameAndPw", "").equals("1")) {}
    for (boolean bool = true;; bool = false)
    {
      localb.a = bool;
      localb.d = paramContext.getString("ip", "demo.anychat.cn");
      localb.e = paramContext.getInt("port", 8906);
      localb.f = paramContext.getInt("configMode", 1);
      localb.g = paramContext.getInt("resolution_width", 320);
      localb.h = paramContext.getInt("resolution_height", 240);
      localb.i = paramContext.getInt("videoBitrate", 150000);
      localb.j = paramContext.getInt("videoFps", 10);
      localb.k = paramContext.getInt("videoQuality", 3);
      localb.l = paramContext.getInt("videoPreset", 3);
      localb.m = paramContext.getInt("videoOverlay", 1);
      localb.n = paramContext.getInt("VideoRotateMode", 0);
      localb.o = paramContext.getInt("FixColorDeviation", 0);
      localb.p = paramContext.getInt("videoShowGPURender", 0);
      localb.q = paramContext.getInt("videoAutoRotation", 1);
      localb.r = paramContext.getInt("enableP2P", 1);
      localb.s = paramContext.getInt("useARMv6Lib", 0);
      localb.t = paramContext.getInt("enableAEC", 1);
      localb.u = paramContext.getInt("useHWCodec", 0);
      return localb;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\bairuitech\b\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */