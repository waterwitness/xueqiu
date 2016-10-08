package com.xiaomi.e.c;

public final class c
{
  public static final c a = new c("get");
  public static final c b = new c("set");
  public static final c c = new c("result");
  public static final c d = new c("error");
  public static final c e = new c("command");
  private String f;
  
  private c(String paramString)
  {
    this.f = paramString;
  }
  
  public static c a(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return null;
      paramString = paramString.toLowerCase();
      if (a.toString().equals(paramString)) {
        return a;
      }
      if (b.toString().equals(paramString)) {
        return b;
      }
      if (d.toString().equals(paramString)) {
        return d;
      }
      if (c.toString().equals(paramString)) {
        return c;
      }
    } while (!e.toString().equals(paramString));
    return e;
  }
  
  public final String toString()
  {
    return this.f;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\e\c\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */