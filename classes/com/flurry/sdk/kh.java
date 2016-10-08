package com.flurry.sdk;

import android.os.Build.VERSION;

public final class kh
{
  private final Class<? extends kj> a;
  private final int b;
  
  public kh(Class<? extends kj> paramClass, int paramInt)
  {
    this.a = paramClass;
    this.b = paramInt;
  }
  
  public final Class<? extends kj> a()
  {
    return this.a;
  }
  
  public final boolean b()
  {
    return (this.a != null) && (Build.VERSION.SDK_INT >= this.b);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\kh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */