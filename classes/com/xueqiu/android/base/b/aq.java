package com.xueqiu.android.base.b;

import android.app.Activity;
import android.os.Bundle;
import com.sina.weibo.sdk.auth.WeiboAuthListener;
import com.sina.weibo.sdk.exception.WeiboException;
import com.xueqiu.android.base.util.aa;

final class aq
  implements WeiboAuthListener
{
  aq(ap paramap) {}
  
  public final void onCancel() {}
  
  public final void onComplete(Bundle paramBundle)
  {
    this.a.b = paramBundle.getString("access_token");
    this.a.c = paramBundle.getString("uid");
    try
    {
      this.a.d = Long.parseLong(paramBundle.getString("expires_in"));
      this.a.a.runOnUiThread(new Runnable()
      {
        public final void run()
        {
          aq.this.a.f.a();
        }
      });
      return;
    }
    catch (NumberFormatException paramBundle)
    {
      for (;;) {}
    }
  }
  
  public final void onWeiboException(WeiboException paramWeiboException)
  {
    aa.b("Auth exception : " + paramWeiboException.getMessage());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\b\aq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */