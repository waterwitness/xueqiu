package com.tencent.tauth;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import org.json.JSONObject;

final class g
  extends Handler
{
  g(UploadFileToWeiyun paramUploadFileToWeiyun, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    case 1: 
    default: 
      return;
    case 0: 
      paramMessage = (JSONObject)paramMessage.obj;
      try
      {
        int i = paramMessage.getInt("ret");
        if (i != 0)
        {
          UploadFileToWeiyun.access$000(this.a).onError("server error, ret = " + i);
          return;
        }
      }
      catch (Exception paramMessage)
      {
        paramMessage.printStackTrace();
        UploadFileToWeiyun.access$000(this.a).onError("server return json error :" + paramMessage.getMessage());
        return;
      }
      paramMessage = paramMessage.getJSONObject("data");
      UploadFileToWeiyun.access$102(this.a, paramMessage.getString("file_id"));
      UploadFileToWeiyun.access$202(this.a, paramMessage.getString("csum"));
      UploadFileToWeiyun.access$302(this.a, DataConvert.string2bytes(UploadFileToWeiyun.access$200(this.a)));
      UploadFileToWeiyun.access$402(this.a, paramMessage.getInt("port"));
      UploadFileToWeiyun.access$502(this.a, paramMessage.getString("host"));
      UploadFileToWeiyun.access$600(this.a);
      return;
    case -1: 
      l = Thread.currentThread().getId();
      Log.i("weiyun_test", "uploadFileToWeiyun onError thread id = " + l);
      UploadFileToWeiyun.access$000(this.a).onError(paramMessage.obj.toString());
      return;
    case 2: 
      l = Thread.currentThread().getId();
      Log.i("weiyun_test", "uploadFileToWeiyun onUploadProgress thread id = " + l);
      UploadFileToWeiyun.access$000(this.a).onUploadProgress(Integer.parseInt((String)paramMessage.obj));
      return;
    case 3: 
      l = Thread.currentThread().getId();
      Log.i("weiyun_test", "uploadFileToWeiyun onUploadSuccess thread id = " + l);
      UploadFileToWeiyun.access$000(this.a).onUploadSuccess();
      return;
    }
    long l = Thread.currentThread().getId();
    Log.i("weiyun_test", "uploadFileToWeiyun onError thread id = " + l);
    UploadFileToWeiyun.access$000(this.a).onError((String)paramMessage.obj);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\tauth\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */