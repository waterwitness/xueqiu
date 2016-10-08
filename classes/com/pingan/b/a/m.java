package com.pingan.b.a;

import java.util.Locale;

public final class m
{
  public final int a;
  public final String b;
  public final String c;
  public final String d;
  public final String e;
  public final double f;
  public final String g;
  public final String h;
  public final int i;
  public final String j;
  public final String k;
  public final long l;
  public final long m;
  
  public m(int paramInt1, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, int paramInt2, double paramDouble, long paramLong, String paramString7)
  {
    this.a = paramInt1;
    this.b = paramString1;
    this.c = paramString2;
    this.d = paramString3;
    this.g = paramString4;
    this.j = paramString5;
    this.f = paramDouble;
    this.e = paramString7;
    this.h = paramString6;
    this.i = paramInt2;
    this.k = q.a().a;
    this.l = (System.currentTimeMillis() / 1000L);
    this.m = paramLong;
  }
  
  public static m a()
  {
    return new m(-2, "", "", "", "", "", "", -1, 0.0D, 0L, "cancelled by user");
  }
  
  public static m a(Exception paramException)
  {
    return new m(-3, "", "", "", "", "", "", -1, 0.0D, 0L, paramException.getMessage());
  }
  
  public final boolean b()
  {
    return (this.a == 200) && (this.e == null);
  }
  
  public final boolean c()
  {
    boolean bool = false;
    if ((this.a == -1) || (this.a == 64533) || (this.a == 64532) || (this.a == 64535) || (this.a == 64531))
    {
      n = 1;
      if (n == 0) {
        if (((this.a < 500) || (this.a >= 600) || (this.a == 579)) && (this.a != 996)) {
          break label111;
        }
      }
    }
    label111:
    for (int n = 1;; n = 0)
    {
      if (n != 0) {
        bool = true;
      }
      return bool;
      n = 0;
      break;
    }
  }
  
  public final boolean d()
  {
    if (this.a == -2) {}
    for (int n = 1; (n == 0) && ((c()) || (this.a == 406) || ((this.a == 200) && (this.e != null))); n = 0) {
      return true;
    }
    return false;
  }
  
  public final String e()
  {
    return this.j;
  }
  
  public final String toString()
  {
    return String.format(Locale.ENGLISH, "{ResponseInfo:%s,status:%d, reqId:%s, xlog:%s, xvia:%s, host:%s, path:%s, ip:%s, port:%d, duration:%f s, time:%d, sent:%d,error:%s}", new Object[] { this.k, Integer.valueOf(this.a), this.b, this.c, this.d, this.g, this.j, this.h, Integer.valueOf(this.i), Double.valueOf(this.f), Long.valueOf(this.l), Long.valueOf(this.m), this.e });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\b\a\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */