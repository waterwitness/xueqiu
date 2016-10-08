package com.xueqiu.android.community;

import android.os.Handler;
import android.os.Message;
import android.webkit.JavascriptInterface;
import com.alipay.sdk.app.c;

final class j
{
  j(RechargeActivity paramRechargeActivity) {}
  
  @JavascriptInterface
  public final void payByAlipay(final String paramString1, String paramString2)
  {
    new Thread(new Runnable()
    {
      public final void run()
      {
        String str = new c(j.this.a).a(paramString1);
        Message localMessage = new Message();
        localMessage.what = 1;
        localMessage.obj = str;
        RechargeActivity.a(j.this.a).sendMessage(localMessage);
      }
    }).start();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */