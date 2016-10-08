package com.viewpagerindicator;

public enum o
{
  public final int d;
  
  private o(int paramInt)
  {
    this.d = paramInt;
  }
  
  public static o a(int paramInt)
  {
    o[] arrayOfo = values();
    int j = arrayOfo.length;
    int i = 0;
    while (i < j)
    {
      o localo = arrayOfo[i];
      if (localo.d == paramInt) {
        return localo;
      }
      i += 1;
    }
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\viewpagerindicator\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */