package com.pingan.paphone.extension.http;

import android.os.Message;
import java.io.IOException;
import java.util.regex.Pattern;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpResponseException;
import org.apache.http.entity.BufferedHttpEntity;
import org.apache.http.util.EntityUtils;

public class BinaryHttpResponseHandler
  extends AsyncHttpResponseHandler
{
  private static String[] mAllowedContentTypes = { "image/jpeg", "image/png" };
  
  public BinaryHttpResponseHandler() {}
  
  public BinaryHttpResponseHandler(String[] paramArrayOfString)
  {
    this();
    mAllowedContentTypes = paramArrayOfString;
  }
  
  protected void handleFailureMessage(Throwable paramThrowable, byte[] paramArrayOfByte)
  {
    onFailure(paramThrowable, paramArrayOfByte);
  }
  
  protected void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default: 
      super.handleMessage(paramMessage);
      return;
    case 0: 
      paramMessage = (Object[])paramMessage.obj;
      handleSuccessMessage(((Integer)paramMessage[0]).intValue(), (byte[])paramMessage[1]);
      return;
    }
    paramMessage = (Object[])paramMessage.obj;
    handleFailureMessage((Throwable)paramMessage[0], paramMessage[1].toString());
  }
  
  protected void handleSuccessMessage(int paramInt, byte[] paramArrayOfByte)
  {
    onSuccess(paramInt, paramArrayOfByte);
  }
  
  @Deprecated
  public void onFailure(Throwable paramThrowable, byte[] paramArrayOfByte)
  {
    onFailure(paramThrowable);
  }
  
  public void onSuccess(int paramInt, byte[] paramArrayOfByte)
  {
    onSuccess(paramArrayOfByte);
  }
  
  public void onSuccess(byte[] paramArrayOfByte) {}
  
  protected void sendFailureMessage(Throwable paramThrowable, byte[] paramArrayOfByte)
  {
    sendMessage(obtainMessage(1, new Object[] { paramThrowable, paramArrayOfByte }));
  }
  
  void sendResponseMessage(HttpResponse paramHttpResponse)
  {
    int j = 0;
    StatusLine localStatusLine = paramHttpResponse.getStatusLine();
    Object localObject = paramHttpResponse.getHeaders("Content-Type");
    if (localObject.length != 1)
    {
      sendFailureMessage(new HttpResponseException(localStatusLine.getStatusCode(), "None, or more than one, Content-Type Header found!"), null);
      return;
    }
    localObject = localObject[0];
    String[] arrayOfString = mAllowedContentTypes;
    int k = arrayOfString.length;
    int i = 0;
    while (i < k)
    {
      if (Pattern.matches(arrayOfString[i], ((Header)localObject).getValue())) {
        j = 1;
      }
      i += 1;
    }
    if (j == 0)
    {
      sendFailureMessage(new HttpResponseException(localStatusLine.getStatusCode(), "Content-Type not allowed!"), null);
      return;
    }
    for (;;)
    {
      try
      {
        paramHttpResponse = paramHttpResponse.getEntity();
        if (paramHttpResponse == null) {
          break label211;
        }
        paramHttpResponse = new BufferedHttpEntity(paramHttpResponse);
        paramHttpResponse = EntityUtils.toByteArray(paramHttpResponse);
      }
      catch (IOException paramHttpResponse)
      {
        sendFailureMessage(paramHttpResponse, null);
        paramHttpResponse = null;
        continue;
        sendSuccessMessage(localStatusLine.getStatusCode(), paramHttpResponse);
        return;
      }
      if (localStatusLine.getStatusCode() >= 300)
      {
        sendFailureMessage(new HttpResponseException(localStatusLine.getStatusCode(), localStatusLine.getReasonPhrase()), paramHttpResponse);
        return;
      }
      label211:
      paramHttpResponse = null;
    }
  }
  
  protected void sendSuccessMessage(int paramInt, byte[] paramArrayOfByte)
  {
    sendMessage(obtainMessage(0, new Object[] { Integer.valueOf(paramInt), paramArrayOfByte }));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\paphone\extension\http\BinaryHttpResponseHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */