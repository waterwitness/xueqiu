package com.c.a;

import android.view.animation.Interpolator;

public abstract class n
  implements Cloneable
{
  float a;
  Class b;
  Interpolator c = null;
  boolean d = false;
  
  public static n a(float paramFloat1, float paramFloat2)
  {
    return new o(paramFloat1, paramFloat2);
  }
  
  public static n a(float paramFloat, int paramInt)
  {
    return new p(paramFloat, paramInt);
  }
  
  public abstract Object a();
  
  public abstract void a(Object paramObject);
  
  public abstract n b();
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\c\a\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */