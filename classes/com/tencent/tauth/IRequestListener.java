package com.tencent.tauth;

import com.tencent.open.HttpStatusException;
import com.tencent.open.NetworkUnavailableException;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import org.apache.http.conn.ConnectTimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

public abstract interface IRequestListener
{
  public abstract void onComplete(JSONObject paramJSONObject, Object paramObject);
  
  public abstract void onConnectTimeoutException(ConnectTimeoutException paramConnectTimeoutException, Object paramObject);
  
  public abstract void onHttpStatusException(HttpStatusException paramHttpStatusException, Object paramObject);
  
  public abstract void onIOException(IOException paramIOException, Object paramObject);
  
  public abstract void onJSONException(JSONException paramJSONException, Object paramObject);
  
  public abstract void onMalformedURLException(MalformedURLException paramMalformedURLException, Object paramObject);
  
  public abstract void onNetworkUnavailableException(NetworkUnavailableException paramNetworkUnavailableException, Object paramObject);
  
  public abstract void onSocketTimeoutException(SocketTimeoutException paramSocketTimeoutException, Object paramObject);
  
  public abstract void onUnknowException(Exception paramException, Object paramObject);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\tauth\IRequestListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */