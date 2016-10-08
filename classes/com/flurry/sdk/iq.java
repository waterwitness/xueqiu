package com.flurry.sdk;

public enum iq
{
  String d;
  int e;
  
  private iq(String paramString, int paramInt)
  {
    this.d = paramString;
    this.e = paramInt;
  }
  
  public static iq a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 0: 
      return a;
    case 1: 
      return b;
    }
    return c;
  }
  
  public final int a()
  {
    return this.e;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\iq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */