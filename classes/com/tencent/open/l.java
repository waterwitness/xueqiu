package com.tencent.open;

import android.os.Handler;
import android.os.Message;
import com.tencent.record.debug.WnsClientLog;
import com.tencent.tauth.IRequestListener;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import org.apache.http.conn.ConnectTimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

final class l
  implements IRequestListener
{
  public l(i parami)
  {
    WnsClientLog.b("openSDK_LOG", "OpenUi, RequestListener()");
  }
  
  public final void onComplete(JSONObject paramJSONObject, Object paramObject)
  {
    WnsClientLog.b("openSDK_LOG", "OpenUi, RequestListener() onComplete");
    paramObject = new Message();
    ((Message)paramObject).what = 0;
    ((Message)paramObject).obj = paramJSONObject;
    i.c(this.a).sendMessage((Message)paramObject);
  }
  
  public final void onConnectTimeoutException(ConnectTimeoutException paramConnectTimeoutException, Object paramObject)
  {
    WnsClientLog.a("openSDK_LOG", "OpenUi, RequestListener() onConnectTimeoutException", paramConnectTimeoutException);
    paramObject = new Message();
    ((Message)paramObject).what = -7;
    ((Message)paramObject).obj = paramConnectTimeoutException.getMessage();
    i.c(this.a).sendMessage((Message)paramObject);
  }
  
  public final void onHttpStatusException(HttpStatusException paramHttpStatusException, Object paramObject)
  {
    WnsClientLog.a("openSDK_LOG", "OpenUi, RequestListener() onHttpStatusException", paramHttpStatusException);
    paramObject = new Message();
    ((Message)paramObject).what = -9;
    ((Message)paramObject).obj = paramHttpStatusException.getMessage();
    i.c(this.a).sendMessage((Message)paramObject);
  }
  
  public final void onIOException(IOException paramIOException, Object paramObject)
  {
    WnsClientLog.a("openSDK_LOG", "OpenUi, RequestListener() onIOException", paramIOException);
    paramObject = new Message();
    ((Message)paramObject).what = -2;
    ((Message)paramObject).obj = paramIOException.getMessage();
    i.c(this.a).sendMessage((Message)paramObject);
  }
  
  public final void onJSONException(JSONException paramJSONException, Object paramObject)
  {
    WnsClientLog.a("openSDK_LOG", "OpenUi, RequestListener() onJSONException", paramJSONException);
    paramObject = new Message();
    ((Message)paramObject).what = -4;
    ((Message)paramObject).obj = paramJSONException.getMessage();
    i.c(this.a).sendMessage((Message)paramObject);
  }
  
  public final void onMalformedURLException(MalformedURLException paramMalformedURLException, Object paramObject)
  {
    paramObject = new Message();
    ((Message)paramObject).what = -3;
    ((Message)paramObject).obj = paramMalformedURLException.getMessage();
    i.c(this.a).sendMessage((Message)paramObject);
  }
  
  public final void onNetworkUnavailableException(NetworkUnavailableException paramNetworkUnavailableException, Object paramObject)
  {
    WnsClientLog.a("openSDK_LOG", "OpenUi, RequestListener() onNetworkUnavailableException", paramNetworkUnavailableException);
    paramObject = new Message();
    ((Message)paramObject).what = -2;
    ((Message)paramObject).obj = paramNetworkUnavailableException.getMessage();
    i.c(this.a).sendMessage((Message)paramObject);
  }
  
  public final void onSocketTimeoutException(SocketTimeoutException paramSocketTimeoutException, Object paramObject)
  {
    WnsClientLog.a("openSDK_LOG", "OpenUi, RequestListener() onSocketTimeoutException", paramSocketTimeoutException);
    paramObject = new Message();
    ((Message)paramObject).what = -8;
    ((Message)paramObject).obj = paramSocketTimeoutException.getMessage();
    i.c(this.a).sendMessage((Message)paramObject);
  }
  
  public final void onUnknowException(Exception paramException, Object paramObject)
  {
    WnsClientLog.a("openSDK_LOG", "OpenUi, RequestListener() onUnknowException", paramException);
    paramObject = new Message();
    ((Message)paramObject).what = -6;
    ((Message)paramObject).obj = paramException.getMessage();
    i.c(this.a).sendMessage((Message)paramObject);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\open\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */