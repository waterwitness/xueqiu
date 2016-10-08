package com.viewpagerindicator;

public enum p
{
  public final int c;
  
  private p(int paramInt)
  {
    this.c = paramInt;
  }
  
  public static p a(int paramInt)
  {
    p[] arrayOfp = values();
    int j = arrayOfp.length;
    int i = 0;
    while (i < j)
    {
      p localp = arrayOfp[i];
      if (localp.c == paramInt) {
        return localp;
      }
      i += 1;
    }
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\viewpagerindicator\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */