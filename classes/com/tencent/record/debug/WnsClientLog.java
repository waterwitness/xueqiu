package com.tencent.record.debug;

public class WnsClientLog
  extends WnsTracer
{
  public static WnsClientLog a = null;
  
  public WnsClientLog()
  {
    this.d = new FileTracer(b);
  }
  
  public static WnsClientLog a()
  {
    if (a == null) {}
    try
    {
      if (a == null) {
        a = new WnsClientLog();
      }
      return a;
    }
    finally {}
  }
  
  public static final void a(String paramString1, String paramString2)
  {
    a().a(1, paramString1, paramString2, null);
  }
  
  public static final void a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    a().a(16, paramString1, paramString2, paramThrowable);
  }
  
  public static final void b(String paramString1, String paramString2)
  {
    a().a(2, paramString1, paramString2, null);
  }
  
  public static final void c(String paramString1, String paramString2)
  {
    a().a(4, paramString1, paramString2, null);
  }
  
  public static final void d(String paramString1, String paramString2)
  {
    a().a(16, paramString1, paramString2, null);
  }
  
  public void b()
  {
    try
    {
      if (this.d != null)
      {
        this.d.a();
        this.d.b();
        this.d = null;
        a = null;
      }
      return;
    }
    finally {}
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\record\debug\WnsClientLog.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */