package com.tencent.tauth;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import org.json.JSONObject;

final class a
  extends Handler
{
  a(DownloadFileFromWeiyun paramDownloadFileFromWeiyun, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public final void handleMessage(Message paramMessage)
  {
    int i;
    switch (paramMessage.what)
    {
    default: 
      return;
    case 0: 
      paramMessage = (JSONObject)paramMessage.obj;
      for (;;)
      {
        try
        {
          i = paramMessage.getInt("ret");
          if (i != 0)
          {
            DownloadFileFromWeiyun.access$000(this.a).onError("server error, ret = " + i);
            return;
          }
        }
        catch (Exception paramMessage)
        {
          paramMessage.printStackTrace();
          DownloadFileFromWeiyun.access$000(this.a).onDownloadStart();
          DownloadFileFromWeiyun.access$800(this.a);
          return;
        }
        paramMessage = paramMessage.getJSONObject("data");
        DownloadFileFromWeiyun.access$102(this.a, paramMessage.getString("dl_encrypt_url"));
        DownloadFileFromWeiyun.access$202(this.a, paramMessage.getString("dl_cookie_name"));
        DownloadFileFromWeiyun.access$302(this.a, paramMessage.getString("dl_cookie_value"));
        DownloadFileFromWeiyun.access$402(this.a, paramMessage.getInt("dl_svr_port"));
        DownloadFileFromWeiyun.access$502(this.a, paramMessage.getString("dl_svr_host"));
        if ((DownloadFileFromWeiyun.access$600(this.a) != null) && (DownloadFileFromWeiyun.access$600(this.a).length() > 0)) {
          DownloadFileFromWeiyun.access$702(this.a, paramMessage.getString("dl_thumb_size"));
        }
      }
    case 1: 
      DownloadFileFromWeiyun.access$000(this.a).onDownloadSuccess(DownloadFileFromWeiyun.access$900(this.a) + '/' + DownloadFileFromWeiyun.access$1000(this.a));
      return;
    case 2: 
      i = Integer.parseInt((String)paramMessage.obj);
      DownloadFileFromWeiyun.access$000(this.a).onDownloadProgress(i);
      return;
    }
    DownloadFileFromWeiyun.access$000(this.a).onError((String)paramMessage.obj);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\tauth\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */