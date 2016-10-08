package com.umeng.update;

public abstract interface UmengDownloadListener
{
  public abstract void OnDownloadEnd(int paramInt, String paramString);
  
  public abstract void OnDownloadStart();
  
  public abstract void OnDownloadUpdate(int paramInt);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\update\UmengDownloadListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */