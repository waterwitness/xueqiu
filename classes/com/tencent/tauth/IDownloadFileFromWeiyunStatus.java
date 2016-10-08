package com.tencent.tauth;

public abstract interface IDownloadFileFromWeiyunStatus
{
  public abstract void onDownloadProgress(int paramInt);
  
  public abstract void onDownloadStart();
  
  public abstract void onDownloadSuccess(String paramString);
  
  public abstract void onError(String paramString);
  
  public abstract void onPrepareStart();
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\tauth\IDownloadFileFromWeiyunStatus.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */