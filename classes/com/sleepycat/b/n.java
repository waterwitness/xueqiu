package com.sleepycat.b;

public abstract class n
  extends RuntimeException
{
  private String a = null;
  
  public n(String paramString)
  {
    super(a() + paramString);
  }
  
  public n(String paramString, Throwable paramThrowable)
  {
    super(a() + paramString, paramThrowable);
  }
  
  private static String a()
  {
    return "(JE " + am.a + ") ";
  }
  
  public final void a(String paramString)
  {
    if (this.a == null)
    {
      this.a = (" " + paramString);
      return;
    }
    this.a = (this.a + ' ' + paramString);
  }
  
  public String getMessage()
  {
    if (this.a == null) {
      return super.getMessage();
    }
    return super.getMessage() + this.a;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */