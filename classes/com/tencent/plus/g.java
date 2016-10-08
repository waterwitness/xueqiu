package com.tencent.plus;

import android.os.Handler;
import com.tencent.open.HttpStatusException;
import com.tencent.open.NetworkUnavailableException;
import com.tencent.tauth.IRequestListener;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import org.apache.http.conn.ConnectTimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

final class g
  implements IRequestListener
{
  g(ImageActivity paramImageActivity) {}
  
  private void a()
  {
    if (ImageActivity.m(this.a) < 2) {
      ImageActivity.n(this.a);
    }
  }
  
  public final void onComplete(JSONObject paramJSONObject, Object paramObject)
  {
    for (int i = -1;; i = j)
    {
      try
      {
        j = paramJSONObject.getInt("ret");
        if (j != 0) {
          break label73;
        }
        i = j;
        paramJSONObject = paramJSONObject.getString("nickname");
        i = j;
        ImageActivity.k(this.a).post(new a(this, paramJSONObject));
        i = j;
        this.a.a("10659", 0L);
        i = j;
      }
      catch (JSONException paramJSONObject)
      {
        for (;;)
        {
          int j;
          label73:
          paramJSONObject.printStackTrace();
        }
      }
      if (i != 0) {
        a();
      }
      return;
      i = j;
      this.a.a("10661", 0L);
    }
  }
  
  public final void onConnectTimeoutException(ConnectTimeoutException paramConnectTimeoutException, Object paramObject)
  {
    a();
  }
  
  public final void onHttpStatusException(HttpStatusException paramHttpStatusException, Object paramObject)
  {
    a();
  }
  
  public final void onIOException(IOException paramIOException, Object paramObject)
  {
    a();
  }
  
  public final void onJSONException(JSONException paramJSONException, Object paramObject)
  {
    a();
  }
  
  public final void onMalformedURLException(MalformedURLException paramMalformedURLException, Object paramObject)
  {
    a();
  }
  
  public final void onNetworkUnavailableException(NetworkUnavailableException paramNetworkUnavailableException, Object paramObject)
  {
    a();
  }
  
  public final void onSocketTimeoutException(SocketTimeoutException paramSocketTimeoutException, Object paramObject)
  {
    a();
  }
  
  public final void onUnknowException(Exception paramException, Object paramObject)
  {
    a();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\plus\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */