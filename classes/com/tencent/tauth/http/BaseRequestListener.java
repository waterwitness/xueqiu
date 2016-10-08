package com.tencent.tauth.http;

import java.io.FileNotFoundException;
import java.io.IOException;

public class BaseRequestListener
  implements IRequestListener
{
  private static final String TAG = "BaseRequestListener";
  
  public void onComplete(String paramString, Object paramObject) {}
  
  public void onFileNotFoundException(FileNotFoundException paramFileNotFoundException, Object paramObject)
  {
    TDebug.i("BaseRequestListener", "Resource not found:" + paramFileNotFoundException.getMessage());
  }
  
  public void onIOException(IOException paramIOException, Object paramObject)
  {
    TDebug.i("BaseRequestListener", "Network Error:" + paramIOException.getMessage());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\tauth\http\BaseRequestListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */