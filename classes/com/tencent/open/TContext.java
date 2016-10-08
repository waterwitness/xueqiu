package com.tencent.open;

import android.content.Context;

public class TContext
{
  public String a = "webview";
  private String b;
  private String c;
  private long d = -1L;
  private String e;
  private Context f;
  
  public TContext(String paramString, Context paramContext)
  {
    this.b = paramString;
    a(paramContext);
  }
  
  public void a(Context paramContext)
  {
    this.f = paramContext;
  }
  
  public void a(String paramString)
  {
    this.e = paramString;
  }
  
  public void a(String paramString1, String paramString2)
  {
    this.d = 0L;
    this.c = null;
    String str = paramString2;
    if (paramString2 == null) {
      str = "0";
    }
    this.d = (System.currentTimeMillis() + Long.parseLong(str) * 1000L);
    this.c = paramString1;
  }
  
  public boolean a()
  {
    return (this.c != null) && (System.currentTimeMillis() < this.d);
  }
  
  public String b()
  {
    return this.c;
  }
  
  public String c()
  {
    return this.e;
  }
  
  public String d()
  {
    return this.b;
  }
  
  public long e()
  {
    return this.d;
  }
  
  public Context f()
  {
    return this.f;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\open\TContext.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */