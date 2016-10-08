package com.xiaomi.push.service;

import android.content.Context;
import java.util.Locale;

public final class al
{
  public final String a;
  protected final String b;
  protected final String c;
  protected final String d;
  protected final String e;
  protected final String f;
  protected final int g;
  
  public al(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, int paramInt)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramString3;
    this.d = paramString4;
    this.e = paramString5;
    this.f = paramString6;
    this.g = paramInt;
  }
  
  public final bd a(XMPushService paramXMPushService)
  {
    bd localbd = new bd(paramXMPushService);
    localbd.a = paramXMPushService.getPackageName();
    localbd.b = this.a;
    localbd.i = this.c;
    localbd.c = this.b;
    localbd.h = "5";
    localbd.d = "XMPUSH-PASS";
    localbd.e = false;
    localbd.f = "sdk_ver:8";
    if (paramXMPushService.getPackageName().equals("com.xiaomi.xmsf")) {}
    for (String str = "1000271";; str = this.d)
    {
      localbd.g = String.format("%1$s:%2$s,%3$s:%4$s", new Object[] { "appid", str, "locale", Locale.getDefault().toString() });
      localbd.k = paramXMPushService.b;
      return localbd;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\service\al.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */