package com.alipay.android.app;

import android.os.Bundle;
import android.os.IInterface;

public abstract interface IRemoteServiceCallback
  extends IInterface
{
  public abstract boolean isHideLoadingScreen();
  
  public abstract void payEnd(boolean paramBoolean, String paramString);
  
  public abstract void startActivity(String paramString1, String paramString2, int paramInt, Bundle paramBundle);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\android\app\IRemoteServiceCallback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */