package com.flurry.sdk;

public class lo
{
  private static long a = 100L;
  private static lo b = null;
  private final lp c = new lp();
  
  public lo()
  {
    this.c.a(a);
    this.c.a(true);
  }
  
  public static lo a()
  {
    try
    {
      if (b == null) {
        b = new lo();
      }
      lo locallo = b;
      return locallo;
    }
    finally {}
  }
  
  public static void b()
  {
    try
    {
      if (b != null)
      {
        b.c();
        b = null;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void a(kb<ln> paramkb)
  {
    try
    {
      kc.a().a("com.flurry.android.sdk.TickEvent", paramkb);
      if (kc.a().b("com.flurry.android.sdk.TickEvent") > 0) {
        this.c.a();
      }
      return;
    }
    finally
    {
      paramkb = finally;
      throw paramkb;
    }
  }
  
  public void b(kb<ln> paramkb)
  {
    try
    {
      kc.a().b("com.flurry.android.sdk.TickEvent", paramkb);
      if (kc.a().b("com.flurry.android.sdk.TickEvent") == 0) {
        this.c.b();
      }
      return;
    }
    finally
    {
      paramkb = finally;
      throw paramkb;
    }
  }
  
  public void c()
  {
    try
    {
      kc.a().a("com.flurry.android.sdk.TickEvent");
      this.c.b();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\lo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */