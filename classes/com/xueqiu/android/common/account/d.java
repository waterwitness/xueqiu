package com.xueqiu.android.common.account;

import android.os.Bundle;
import com.sina.weibo.sdk.auth.WeiboAuthListener;
import com.sina.weibo.sdk.exception.WeiboException;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.v;

final class d
  implements WeiboAuthListener
{
  d(c paramc) {}
  
  public final void onCancel() {}
  
  public final void onComplete(Bundle paramBundle)
  {
    this.a.e = paramBundle.getString("access_token");
    this.a.d = paramBundle.getString("uid");
    try
    {
      this.a.f = Long.parseLong(paramBundle.getString("expires_in"));
      v.e("OAuth", this.a.e + "&" + this.a.d + "&" + this.a.f + "  " + paramBundle);
      this.a.c = "sina";
      c.a(this.a);
      return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      for (;;) {}
    }
  }
  
  public final void onWeiboException(WeiboException paramWeiboException)
  {
    aa.a("Auth exception : " + paramWeiboException.getMessage());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\account\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */