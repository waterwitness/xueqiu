package com.alipay.android.app;

import android.os.IInterface;

public abstract interface IAlixPay
  extends IInterface
{
  public abstract String Pay(String paramString);
  
  public abstract String prePay(String paramString);
  
  public abstract void registerCallback(IRemoteServiceCallback paramIRemoteServiceCallback);
  
  public abstract String test();
  
  public abstract void unregisterCallback(IRemoteServiceCallback paramIRemoteServiceCallback);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\android\app\IAlixPay.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */