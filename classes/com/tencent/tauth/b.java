package com.tencent.tauth;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.tencent.open.HttpStatusException;
import com.tencent.open.NetworkUnavailableException;
import java.io.IOException;
import java.net.MalformedURLException;
import org.json.JSONException;

final class b
  extends Thread
{
  b(DownloadFileFromWeiyun paramDownloadFileFromWeiyun) {}
  
  public final void run()
  {
    Object localObject = new Bundle();
    ((Bundle)localObject).putString("oauth_consumer_key", "222222");
    ((Bundle)localObject).putString("file_id", DownloadFileFromWeiyun.access$1100(this.a));
    ((Bundle)localObject).putString("access_token", DownloadFileFromWeiyun.access$1200(this.a).getAccessToken());
    ((Bundle)localObject).putString("openid", DownloadFileFromWeiyun.access$1200(this.a).getOpenId());
    ((Bundle)localObject).putString("format", "json");
    if ((DownloadFileFromWeiyun.access$600(this.a) != null) && (DownloadFileFromWeiyun.access$600(this.a).length() > 0)) {
      ((Bundle)localObject).putString("thumb", DownloadFileFromWeiyun.access$600(this.a));
    }
    try
    {
      localObject = DownloadFileFromWeiyun.access$1200(this.a).request(DownloadFileFromWeiyun.access$1300(this.a), (Bundle)localObject, "GET");
      Message localMessage6 = DownloadFileFromWeiyun.access$1400(this.a).obtainMessage();
      localMessage6.what = 0;
      localMessage6.obj = localObject;
      DownloadFileFromWeiyun.access$1400(this.a).sendMessage(localMessage6);
      return;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      localMalformedURLException.printStackTrace();
      Message localMessage1 = DownloadFileFromWeiyun.access$1400(this.a).obtainMessage();
      localMessage1.what = 3;
      localMessage1.obj = "getUploadPermission MalformedURLException";
      DownloadFileFromWeiyun.access$1400(this.a).sendMessage(localMessage1);
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
      Message localMessage2 = DownloadFileFromWeiyun.access$1400(this.a).obtainMessage();
      localMessage2.what = 3;
      localMessage2.obj = "getUploadPermission IOException";
      DownloadFileFromWeiyun.access$1400(this.a).sendMessage(localMessage2);
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
      Message localMessage3 = DownloadFileFromWeiyun.access$1400(this.a).obtainMessage();
      localMessage3.what = 3;
      localMessage3.obj = "getUploadPermission JSONException";
      DownloadFileFromWeiyun.access$1400(this.a).sendMessage(localMessage3);
      return;
    }
    catch (NetworkUnavailableException localNetworkUnavailableException)
    {
      localNetworkUnavailableException.printStackTrace();
      Message localMessage4 = DownloadFileFromWeiyun.access$1400(this.a).obtainMessage();
      localMessage4.what = 3;
      localMessage4.obj = "getUploadPermission NetworkUnavailableException";
      DownloadFileFromWeiyun.access$1400(this.a).sendMessage(localMessage4);
      return;
    }
    catch (HttpStatusException localHttpStatusException)
    {
      localHttpStatusException.printStackTrace();
      Message localMessage5 = DownloadFileFromWeiyun.access$1400(this.a).obtainMessage();
      localMessage5.what = 3;
      localMessage5.obj = "getUploadPermission HttpStatusException";
      DownloadFileFromWeiyun.access$1400(this.a).sendMessage(localMessage5);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\tauth\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */