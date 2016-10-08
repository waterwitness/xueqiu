package com.tencent.tauth.http;

import android.os.Bundle;
import java.io.FileNotFoundException;
import java.io.IOException;

public class AsyncHttpRequestRunner
{
  public void request(String paramString, Bundle paramBundle, IRequestListener paramIRequestListener)
  {
    request(paramString, paramBundle, "GET", paramIRequestListener, null);
  }
  
  public void request(final String paramString1, final Bundle paramBundle, final String paramString2, final IRequestListener paramIRequestListener, final Object paramObject)
  {
    new Thread()
    {
      public final void run()
      {
        try
        {
          String str = ClientHttpRequest.openUrl(paramString1, paramString2, paramBundle);
          paramIRequestListener.onComplete(str, paramObject);
          return;
        }
        catch (FileNotFoundException localFileNotFoundException)
        {
          paramIRequestListener.onFileNotFoundException(localFileNotFoundException, paramObject);
          return;
        }
        catch (IOException localIOException)
        {
          paramIRequestListener.onIOException(localIOException, paramObject);
        }
      }
    }.start();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\tauth\http\AsyncHttpRequestRunner.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */