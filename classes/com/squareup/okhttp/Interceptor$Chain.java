package com.squareup.okhttp;

public abstract interface Interceptor$Chain
{
  public abstract Connection connection();
  
  public abstract Response proceed(Request paramRequest);
  
  public abstract Request request();
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\Interceptor$Chain.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */