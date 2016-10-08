package com.tencent.tauth.http;

import java.io.FileNotFoundException;
import java.io.IOException;

public abstract interface IRequestListener
{
  public abstract void onComplete(String paramString, Object paramObject);
  
  public abstract void onFileNotFoundException(FileNotFoundException paramFileNotFoundException, Object paramObject);
  
  public abstract void onIOException(IOException paramIOException, Object paramObject);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\tauth\http\IRequestListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */