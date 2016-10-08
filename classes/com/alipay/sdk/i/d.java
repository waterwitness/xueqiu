package com.alipay.sdk.i;

public enum d
{
  public String p;
  private int q;
  
  private d(int paramInt, String paramString)
  {
    this.q = paramInt;
    this.p = paramString;
  }
  
  public static d a(int paramInt)
  {
    d[] arrayOfd = values();
    int i2 = arrayOfd.length;
    int i1 = 0;
    while (i1 < i2)
    {
      d locald = arrayOfd[i1];
      if (locald.q == paramInt) {
        return locald;
      }
      i1 += 1;
    }
    return o;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\sdk\i\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */