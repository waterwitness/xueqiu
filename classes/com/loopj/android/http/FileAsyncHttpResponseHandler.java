package com.loopj.android.http;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;

public abstract class FileAsyncHttpResponseHandler
  extends AsyncHttpResponseHandler
{
  private static final String LOG_TAG = "FileAsyncHttpResponseHandler";
  protected final boolean append;
  protected final File mFile;
  
  static
  {
    if (!FileAsyncHttpResponseHandler.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  public FileAsyncHttpResponseHandler(Context paramContext)
  {
    this.mFile = getTemporaryFile(paramContext);
    this.append = false;
  }
  
  public FileAsyncHttpResponseHandler(File paramFile)
  {
    this(paramFile, false);
  }
  
  public FileAsyncHttpResponseHandler(File paramFile, boolean paramBoolean)
  {
    if (paramFile != null) {}
    for (boolean bool = true;; bool = false)
    {
      AssertUtils.asserts(bool, "File passed into FileAsyncHttpResponseHandler constructor must not be null");
      this.mFile = paramFile;
      this.append = paramBoolean;
      return;
    }
  }
  
  public boolean deleteTargetFile()
  {
    return (getTargetFile() != null) && (getTargetFile().delete());
  }
  
  protected byte[] getResponseData(HttpEntity paramHttpEntity)
  {
    int i = 0;
    if (paramHttpEntity != null)
    {
      InputStream localInputStream = paramHttpEntity.getContent();
      long l = paramHttpEntity.getContentLength();
      paramHttpEntity = new FileOutputStream(getTargetFile(), this.append);
      if (localInputStream != null)
      {
        try
        {
          byte[] arrayOfByte = new byte['က'];
          for (;;)
          {
            int j = localInputStream.read(arrayOfByte);
            if ((j == -1) || (Thread.currentThread().isInterrupted())) {
              break;
            }
            i += j;
            paramHttpEntity.write(arrayOfByte, 0, j);
            sendProgressMessage(i, (int)l);
          }
          AsyncHttpClient.silentCloseInputStream(localInputStream);
        }
        finally
        {
          AsyncHttpClient.silentCloseInputStream(localInputStream);
          paramHttpEntity.flush();
          AsyncHttpClient.silentCloseOutputStream(paramHttpEntity);
        }
        paramHttpEntity.flush();
        AsyncHttpClient.silentCloseOutputStream(paramHttpEntity);
      }
    }
    return null;
  }
  
  protected File getTargetFile()
  {
    assert (this.mFile != null);
    return this.mFile;
  }
  
  protected File getTemporaryFile(Context paramContext)
  {
    if (paramContext != null) {}
    for (boolean bool = true;; bool = false)
    {
      AssertUtils.asserts(bool, "Tried creating temporary file without having Context");
      try
      {
        if (($assertionsDisabled) || (paramContext != null)) {
          break;
        }
        throw new AssertionError();
      }
      catch (IOException paramContext)
      {
        Log.e("FileAsyncHttpResponseHandler", "Cannot create temporary file", paramContext);
        return null;
      }
    }
    paramContext = File.createTempFile("temp_", "_handled", paramContext.getCacheDir());
    return paramContext;
  }
  
  public abstract void onFailure(int paramInt, Header[] paramArrayOfHeader, Throwable paramThrowable, File paramFile);
  
  public final void onFailure(int paramInt, Header[] paramArrayOfHeader, byte[] paramArrayOfByte, Throwable paramThrowable)
  {
    onFailure(paramInt, paramArrayOfHeader, paramThrowable, getTargetFile());
  }
  
  public abstract void onSuccess(int paramInt, Header[] paramArrayOfHeader, File paramFile);
  
  public final void onSuccess(int paramInt, Header[] paramArrayOfHeader, byte[] paramArrayOfByte)
  {
    onSuccess(paramInt, paramArrayOfHeader, getTargetFile());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\loopj\android\http\FileAsyncHttpResponseHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */