package com.tencent.open;

import android.os.Handler;
import android.os.Message;
import com.tencent.record.debug.WnsClientLog;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import org.json.JSONException;
import org.json.JSONObject;

final class v
  extends Handler
{
  v(i parami) {}
  
  public final void handleMessage(Message paramMessage)
  {
    WnsClientLog.b("openSDK_LOG", "OpenUi, handleMessage msg.what = " + paramMessage.what);
    if (paramMessage.what == 0) {
      try
      {
        i = Integer.parseInt(((JSONObject)paramMessage.obj).getString("ret"));
        if (i == 0)
        {
          i.b(this.a).onComplete((JSONObject)paramMessage.obj);
          return;
        }
      }
      catch (JSONException localJSONException)
      {
        for (;;)
        {
          localJSONException.printStackTrace();
          i.a(this.a);
          int i = 0;
        }
        i.a(this.a);
        return;
      }
    }
    i.b(this.a).onError(new UiError(paramMessage.what, (String)paramMessage.obj, null));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\open\v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */