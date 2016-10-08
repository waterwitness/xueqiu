package com.sleepycat.b.k.a;

public enum g
{
  private g() {}
  
  static g a(String paramString)
  {
    int i = new Integer(paramString.substring(paramString.length() - 1, paramString.length())).intValue();
    if (i == a.ordinal()) {
      return a;
    }
    if (i == b.ordinal()) {
      return b;
    }
    return c;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\k\a\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */