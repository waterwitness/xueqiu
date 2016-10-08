package com.tencent.plus;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.util.Log;
import com.tencent.open.HttpStatusException;
import com.tencent.open.NetworkUnavailableException;
import com.tencent.tauth.IRequestListener;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import org.apache.http.conn.ConnectTimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

final class h
  implements IRequestListener
{
  h(ImageActivity paramImageActivity) {}
  
  private void a(int paramInt)
  {
    ImageActivity.k(this.a).post(new l(this));
    if (paramInt == -2) {
      ImageActivity.b(this.a, "网络有问题呢，检查一下网络再重试吧：）", 1);
    }
    for (;;)
    {
      this.a.a("10660", 0L);
      Log.i("ImageActivity", "setAvatar failure, errorCode: " + paramInt);
      return;
      ImageActivity.b(this.a, "设置出错了，请重新登录再尝试下呢：）", 1);
    }
  }
  
  public final void onComplete(JSONObject paramJSONObject, Object paramObject)
  {
    ImageActivity.k(this.a).post(new m(this));
    try
    {
      i = paramJSONObject.getInt("ret");
      if (i == 0)
      {
        ImageActivity.b(this.a, "设置成功", 0);
        this.a.a("10658", 0L);
        paramObject = this.a;
        if ((ImageActivity.l(this.a) != null) && (!"".equals(ImageActivity.l(this.a))))
        {
          Intent localIntent = new Intent();
          localIntent.setClassName((Context)paramObject, ImageActivity.l(this.a));
          if (((Activity)paramObject).getPackageManager().resolveActivity(localIntent, 0) != null) {
            ((Activity)paramObject).startActivity(localIntent);
          }
        }
        ImageActivity.a(this.a, 0, paramJSONObject.toString(), null, null);
        ImageActivity.j(this.a);
        return;
      }
    }
    catch (JSONException paramObject)
    {
      int i;
      for (;;)
      {
        ((JSONException)paramObject).printStackTrace();
        i = -1;
      }
      a(i);
    }
  }
  
  public final void onConnectTimeoutException(ConnectTimeoutException paramConnectTimeoutException, Object paramObject)
  {
    a(-2);
  }
  
  public final void onHttpStatusException(HttpStatusException paramHttpStatusException, Object paramObject)
  {
    a(-2);
  }
  
  public final void onIOException(IOException paramIOException, Object paramObject)
  {
    paramIOException.printStackTrace();
    a(-2);
  }
  
  public final void onJSONException(JSONException paramJSONException, Object paramObject)
  {
    paramJSONException.printStackTrace();
    a(-1);
  }
  
  public final void onMalformedURLException(MalformedURLException paramMalformedURLException, Object paramObject)
  {
    paramMalformedURLException.printStackTrace();
    a(0);
  }
  
  public final void onNetworkUnavailableException(NetworkUnavailableException paramNetworkUnavailableException, Object paramObject)
  {
    a(-2);
  }
  
  public final void onSocketTimeoutException(SocketTimeoutException paramSocketTimeoutException, Object paramObject)
  {
    a(-2);
  }
  
  public final void onUnknowException(Exception paramException, Object paramObject)
  {
    a(1);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\plus\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */