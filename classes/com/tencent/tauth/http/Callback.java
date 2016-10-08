package com.tencent.tauth.http;

public abstract interface Callback
{
  public abstract void onFail(int paramInt, String paramString);
  
  public abstract void onSuccess(Object paramObject);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\tauth\http\Callback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */