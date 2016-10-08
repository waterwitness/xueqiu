package com.pingan.paphone.extension.http;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.io.IOException;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpResponseException;
import org.apache.http.entity.BufferedHttpEntity;
import org.apache.http.util.EntityUtils;

public class AsyncHttpResponseHandler
{
  protected static final int FAILURE_MESSAGE = 1;
  protected static final int FINISH_MESSAGE = 3;
  protected static final int START_MESSAGE = 2;
  protected static final int SUCCESS_MESSAGE = 0;
  private Handler handler;
  
  public AsyncHttpResponseHandler()
  {
    if (Looper.myLooper() != null) {
      this.handler = new Handler()
      {
        public void handleMessage(Message paramAnonymousMessage)
        {
          AsyncHttpResponseHandler.this.handleMessage(paramAnonymousMessage);
        }
      };
    }
  }
  
  protected void handleFailureMessage(Throwable paramThrowable, String paramString)
  {
    onFailure(paramThrowable, paramString);
  }
  
  protected void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default: 
      return;
    case 0: 
      paramMessage = (Object[])paramMessage.obj;
      handleSuccessMessage(((Integer)paramMessage[0]).intValue(), (Header[])paramMessage[1], (String)paramMessage[2]);
      return;
    case 1: 
      paramMessage = (Object[])paramMessage.obj;
      handleFailureMessage((Throwable)paramMessage[0], (String)paramMessage[1]);
      return;
    case 2: 
      onStart();
      return;
    }
    onFinish();
  }
  
  protected void handleSuccessMessage(int paramInt, Header[] paramArrayOfHeader, String paramString)
  {
    onSuccess(paramInt, paramArrayOfHeader, paramString);
  }
  
  protected Message obtainMessage(int paramInt, Object paramObject)
  {
    if (this.handler != null) {
      return this.handler.obtainMessage(paramInt, paramObject);
    }
    Message localMessage = Message.obtain();
    localMessage.what = paramInt;
    localMessage.obj = paramObject;
    return localMessage;
  }
  
  @Deprecated
  public void onFailure(Throwable paramThrowable) {}
  
  public void onFailure(Throwable paramThrowable, String paramString)
  {
    onFailure(paramThrowable);
  }
  
  public void onFinish() {}
  
  public void onStart() {}
  
  public void onSuccess(int paramInt, String paramString)
  {
    onSuccess(paramString);
  }
  
  public void onSuccess(int paramInt, Header[] paramArrayOfHeader, String paramString)
  {
    onSuccess(paramInt, paramString);
  }
  
  public void onSuccess(String paramString) {}
  
  protected void sendFailureMessage(Throwable paramThrowable, String paramString)
  {
    sendMessage(obtainMessage(1, new Object[] { paramThrowable, paramString }));
  }
  
  protected void sendFailureMessage(Throwable paramThrowable, byte[] paramArrayOfByte)
  {
    sendMessage(obtainMessage(1, new Object[] { paramThrowable, paramArrayOfByte }));
  }
  
  protected void sendFinishMessage()
  {
    sendMessage(obtainMessage(3, null));
  }
  
  protected void sendMessage(Message paramMessage)
  {
    if (this.handler != null)
    {
      this.handler.sendMessage(paramMessage);
      return;
    }
    handleMessage(paramMessage);
  }
  
  void sendResponseMessage(HttpResponse paramHttpResponse)
  {
    Object localObject3 = null;
    StatusLine localStatusLine = paramHttpResponse.getStatusLine();
    try
    {
      HttpEntity localHttpEntity = paramHttpResponse.getEntity();
      localObject1 = localObject3;
      if (localHttpEntity != null) {
        localObject1 = EntityUtils.toString(new BufferedHttpEntity(localHttpEntity), "UTF-8");
      }
    }
    catch (IOException localIOException)
    {
      Object localObject2;
      for (;;)
      {
        Object localObject1;
        sendFailureMessage(localIOException, null);
        localObject2 = localObject3;
      }
      sendSuccessMessage(localStatusLine.getStatusCode(), paramHttpResponse.getAllHeaders(), (String)localObject2);
    }
    if (localStatusLine.getStatusCode() >= 300)
    {
      sendFailureMessage(new HttpResponseException(localStatusLine.getStatusCode(), localStatusLine.getReasonPhrase()), (String)localObject1);
      return;
    }
  }
  
  protected void sendStartMessage()
  {
    sendMessage(obtainMessage(2, null));
  }
  
  protected void sendSuccessMessage(int paramInt, Header[] paramArrayOfHeader, String paramString)
  {
    sendMessage(obtainMessage(0, new Object[] { new Integer(paramInt), paramArrayOfHeader, paramString }));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\paphone\extension\http\AsyncHttpResponseHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */