package com.flurry.sdk;

import java.util.Timer;

class li
{
  private Timer a;
  private li.a b;
  
  public void a()
  {
    try
    {
      if (this.a != null)
      {
        this.a.cancel();
        this.a = null;
      }
      this.b = null;
      return;
    }
    finally {}
  }
  
  public void a(long paramLong)
  {
    try
    {
      if (b()) {
        a();
      }
      this.a = new Timer("FlurrySessionTimer");
      this.b = new li.a(this);
      this.a.schedule(this.b, paramLong);
      return;
    }
    finally {}
  }
  
  public boolean b()
  {
    return this.a != null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\li.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */