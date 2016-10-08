package com.umeng.analytics.game;

import java.io.Serializable;

class b$a
  implements Serializable
{
  private static final long a = 20140327L;
  private String b;
  private long c;
  private long d;
  
  public b$a(String paramString)
  {
    this.b = paramString;
  }
  
  public void a()
  {
    this.d = System.currentTimeMillis();
  }
  
  public boolean a(String paramString)
  {
    return this.b.equals(paramString);
  }
  
  public void b()
  {
    this.c += System.currentTimeMillis() - this.d;
    this.d = 0L;
  }
  
  public void c()
  {
    a();
  }
  
  public void d()
  {
    b();
  }
  
  public long e()
  {
    return this.c;
  }
  
  public String f()
  {
    return this.b;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\analytics\game\b$a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */