package com.loopj.android.http;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class AsyncHttpResponseHandler$ResponderHandler
  extends Handler
{
  private final AsyncHttpResponseHandler mResponder;
  
  AsyncHttpResponseHandler$ResponderHandler(AsyncHttpResponseHandler paramAsyncHttpResponseHandler, Looper paramLooper)
  {
    super(paramLooper);
    this.mResponder = paramAsyncHttpResponseHandler;
  }
  
  public void handleMessage(Message paramMessage)
  {
    this.mResponder.handleMessage(paramMessage);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\loopj\android\http\AsyncHttpResponseHandler$ResponderHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */