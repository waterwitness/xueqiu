package pl.droidsonroids.gif;

import android.support.annotation.NonNull;

public enum c
{
  @NonNull
  public final String v;
  int w;
  
  private c(int paramInt, String paramString)
  {
    this.w = paramInt;
    this.v = paramString;
  }
  
  static c a(int paramInt)
  {
    Object localObject = values();
    int i2 = localObject.length;
    int i1 = 0;
    while (i1 < i2)
    {
      c localc = localObject[i1];
      if (localc.w == paramInt) {
        return localc;
      }
      i1 += 1;
    }
    localObject = u;
    ((c)localObject).w = paramInt;
    return (c)localObject;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\pl\droidsonroids\gif\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */