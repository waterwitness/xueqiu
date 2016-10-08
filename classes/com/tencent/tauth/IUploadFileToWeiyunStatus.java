package com.tencent.tauth;

public abstract interface IUploadFileToWeiyunStatus
{
  public abstract void onError(String paramString);
  
  public abstract void onPrepareStart();
  
  public abstract void onUploadProgress(int paramInt);
  
  public abstract void onUploadStart();
  
  public abstract void onUploadSuccess();
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\tauth\IUploadFileToWeiyunStatus.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */