package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.push.service.ak;

public final class k
{
  public String a;
  public String b;
  public String c;
  public String d;
  public String e;
  public String f;
  public String g;
  public boolean h = true;
  public boolean i = false;
  public int j = 1;
  
  private k(j paramj) {}
  
  public final boolean a()
  {
    return a(this.a, this.b);
  }
  
  public final boolean a(String paramString1, String paramString2)
  {
    return (TextUtils.equals(this.a, paramString1)) && (TextUtils.equals(this.b, paramString2)) && (!TextUtils.isEmpty(this.c)) && (!TextUtils.isEmpty(this.d)) && (TextUtils.equals(this.f, ak.c(this.k.a)));
  }
  
  final String b()
  {
    return j.a(this.k.a, this.k.a.getPackageName());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\mipush\sdk\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */