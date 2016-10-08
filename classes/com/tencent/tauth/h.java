package com.tencent.tauth;

import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import com.tencent.open.HttpStatusException;
import com.tencent.open.NetworkUnavailableException;
import java.io.IOException;
import java.net.MalformedURLException;
import org.json.JSONException;

final class h
  extends Thread
{
  h(UploadFileToWeiyun paramUploadFileToWeiyun) {}
  
  public final void run()
  {
    Object localObject1 = Uri.parse(UploadFileToWeiyun.access$700(this.a));
    localObject1 = SystemClock.elapsedRealtime() + "__" + ((Uri)localObject1).getLastPathSegment();
    Object localObject2 = new Bundle();
    ((Bundle)localObject2).putString("access_token", UploadFileToWeiyun.access$800(this.a).getAccessToken());
    ((Bundle)localObject2).putString("oauth_consumer_key", "222222");
    ((Bundle)localObject2).putString("openid", UploadFileToWeiyun.access$800(this.a).getOpenId());
    ((Bundle)localObject2).putString("format", "json");
    ((Bundle)localObject2).putString("sha", this.a.str_file_key);
    ((Bundle)localObject2).putString("md5", UploadFileToWeiyun.access$900(this.a));
    ((Bundle)localObject2).putString("size", UploadFileToWeiyun.access$1000(this.a));
    ((Bundle)localObject2).putString("name", (String)localObject1);
    ((Bundle)localObject2).putString("upload_type", "control");
    Log.i("weiyun_test", "uploadFileToWeiyun getUploadPermission parames = " + ((Bundle)localObject2).toString());
    try
    {
      localObject1 = UploadFileToWeiyun.access$800(this.a).request(UploadFileToWeiyun.access$1100(this.a), (Bundle)localObject2, "GET");
      localObject2 = UploadFileToWeiyun.access$1200(this.a).obtainMessage();
      ((Message)localObject2).what = 0;
      ((Message)localObject2).obj = localObject1;
      UploadFileToWeiyun.access$1200(this.a).sendMessage((Message)localObject2);
      return;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      localMalformedURLException.printStackTrace();
      Message localMessage1 = UploadFileToWeiyun.access$1200(this.a).obtainMessage();
      localMessage1.what = -1;
      localMessage1.obj = "getUploadPermission MalformedURLException";
      UploadFileToWeiyun.access$1200(this.a).sendMessage(localMessage1);
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
      Message localMessage2 = UploadFileToWeiyun.access$1200(this.a).obtainMessage();
      localMessage2.what = -1;
      localMessage2.obj = "getUploadPermission IOException";
      UploadFileToWeiyun.access$1200(this.a).sendMessage(localMessage2);
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
      Message localMessage3 = UploadFileToWeiyun.access$1200(this.a).obtainMessage();
      localMessage3.what = -1;
      localMessage3.obj = "getUploadPermission JSONException";
      UploadFileToWeiyun.access$1200(this.a).sendMessage(localMessage3);
      return;
    }
    catch (NetworkUnavailableException localNetworkUnavailableException)
    {
      localNetworkUnavailableException.printStackTrace();
      Message localMessage4 = UploadFileToWeiyun.access$1200(this.a).obtainMessage();
      localMessage4.what = -1;
      localMessage4.obj = "getUploadPermission NetworkUnavailableException";
      UploadFileToWeiyun.access$1200(this.a).sendMessage(localMessage4);
      return;
    }
    catch (HttpStatusException localHttpStatusException)
    {
      localHttpStatusException.printStackTrace();
      Message localMessage5 = UploadFileToWeiyun.access$1200(this.a).obtainMessage();
      localMessage5.what = -1;
      localMessage5.obj = "getUploadPermission HttpStatusException";
      UploadFileToWeiyun.access$1200(this.a).sendMessage(localMessage5);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\tauth\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */