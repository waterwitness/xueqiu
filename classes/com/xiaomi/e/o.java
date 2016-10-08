package com.xiaomi.e;

public final class o
{
  public static final o a = new o("result");
  public static final o b = new o("error");
  private String c;
  
  private o(String paramString)
  {
    this.c = paramString;
  }
  
  public static o a(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return null;
      paramString = paramString.toLowerCase();
      if (b.toString().equals(paramString)) {
        return b;
      }
    } while (!a.toString().equals(paramString));
    return a;
  }
  
  public final String toString()
  {
    return this.c;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\e\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */