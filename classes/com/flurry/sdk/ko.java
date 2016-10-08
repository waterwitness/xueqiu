package com.flurry.sdk;

import java.util.Timer;

public class ko
{
  private static final String a = ko.class.getSimpleName();
  private Timer b;
  private ko.a c;
  private kp d;
  
  public ko(kp paramkp)
  {
    this.d = paramkp;
  }
  
  public void a()
  {
    try
    {
      if (this.b != null)
      {
        this.b.cancel();
        this.b = null;
        kg.a(3, a, "HttpRequestTimeoutTimer stopped.");
      }
      this.c = null;
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
      this.b = new Timer("HttpRequestTimeoutTimer");
      this.c = new ko.a(this, null);
      this.b.schedule(this.c, paramLong);
      kg.a(3, a, "HttpRequestTimeoutTimer started: " + paramLong + "MS");
      return;
    }
    finally {}
  }
  
  public boolean b()
  {
    return this.b != null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\ko.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */