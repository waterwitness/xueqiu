package com.tencent.open;

import android.content.Context;
import android.os.Bundle;
import com.tencent.record.debug.WnsClientLog;
import com.tencent.tauth.IRequestListener;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import org.apache.http.conn.ConnectTimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

final class p
  extends Thread
{
  p(OpenApi paramOpenApi, Context paramContext, String paramString1, Bundle paramBundle, String paramString2, IRequestListener paramIRequestListener, Object paramObject) {}
  
  public final void run()
  {
    try
    {
      JSONObject localJSONObject = this.g.a(this.a, this.b, this.c, this.d);
      if (this.e != null)
      {
        this.e.onComplete(localJSONObject, this.f);
        WnsClientLog.b("openSDK_LOG", "OpenApi onComplete");
      }
      return;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      while (this.e == null) {}
      this.e.onMalformedURLException(localMalformedURLException, this.f);
      WnsClientLog.a("openSDK_LOG", "OpenApi requestAsync MalformedURLException", localMalformedURLException);
      return;
    }
    catch (ConnectTimeoutException localConnectTimeoutException)
    {
      while (this.e == null) {}
      this.e.onConnectTimeoutException(localConnectTimeoutException, this.f);
      WnsClientLog.a("openSDK_LOG", "OpenApi requestAsync onConnectTimeoutException", localConnectTimeoutException);
      return;
    }
    catch (SocketTimeoutException localSocketTimeoutException)
    {
      while (this.e == null) {}
      this.e.onSocketTimeoutException(localSocketTimeoutException, this.f);
      WnsClientLog.a("openSDK_LOG", "OpenApi requestAsync onSocketTimeoutException", localSocketTimeoutException);
      return;
    }
    catch (NetworkUnavailableException localNetworkUnavailableException)
    {
      while (this.e == null) {}
      this.e.onNetworkUnavailableException(localNetworkUnavailableException, this.f);
      WnsClientLog.a("openSDK_LOG", "OpenApi requestAsync onNetworkUnavailableException", localNetworkUnavailableException);
      return;
    }
    catch (HttpStatusException localHttpStatusException)
    {
      while (this.e == null) {}
      this.e.onHttpStatusException(localHttpStatusException, this.f);
      WnsClientLog.a("openSDK_LOG", "OpenApi requestAsync onHttpStatusException", localHttpStatusException);
      return;
    }
    catch (IOException localIOException)
    {
      while (this.e == null) {}
      this.e.onIOException(localIOException, this.f);
      WnsClientLog.a("openSDK_LOG", "OpenApi requestAsync IOException", localIOException);
      return;
    }
    catch (JSONException localJSONException)
    {
      while (this.e == null) {}
      this.e.onJSONException(localJSONException, this.f);
      WnsClientLog.a("openSDK_LOG", "OpenApi requestAsync JSONException", localJSONException);
      return;
    }
    catch (Exception localException)
    {
      while (this.e == null) {}
      this.e.onUnknowException(localException, this.f);
      WnsClientLog.a("openSDK_LOG", "OpenApi requestAsync onUnknowException", localException);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\open\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */