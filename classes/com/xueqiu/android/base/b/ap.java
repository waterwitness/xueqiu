package com.xueqiu.android.base.b;

import android.app.Activity;
import android.content.Intent;
import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.auth.WeiboAuth;
import com.sina.weibo.sdk.auth.sso.SsoHandler;
import com.sina.weibo.sdk.exception.WeiboException;
import com.sina.weibo.sdk.net.RequestListener;
import com.sina.weibo.sdk.openapi.UsersAPI;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.v;
import org.json.JSONException;
import org.json.JSONObject;

public final class ap
  implements g
{
  Activity a = null;
  public String b = null;
  public String c = null;
  public long d;
  public String e = null;
  h f = null;
  private WeiboAuth g = null;
  private SsoHandler h = null;
  
  public ap(Activity paramActivity, h paramh)
  {
    this.a = paramActivity;
    this.f = paramh;
    this.g = new WeiboAuth(this.a, "669111051", "http://xueqiu.com", "follow_app_official_microblog,email");
    this.h = new SsoHandler(this.a, this.g);
  }
  
  public final void a()
  {
    this.h.authorize(new aq(this));
  }
  
  public final void a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (this.h != null) {
      this.h.authorizeCallBack(paramInt1, paramInt2, paramIntent);
    }
  }
  
  public final void a(final i parami)
  {
    new UsersAPI(new Oauth2AccessToken(this.b, String.valueOf(this.d))).show(Long.parseLong(this.c), new RequestListener()
    {
      public final void onComplete(String paramAnonymousString)
      {
        try
        {
          paramAnonymousString = new JSONObject(paramAnonymousString);
          if ((paramAnonymousString.has("screen_name")) && (paramAnonymousString.has("profile_image_url")))
          {
            ap.this.e = paramAnonymousString.getString("screen_name");
            ap.this.a.runOnUiThread(new Runnable()
            {
              public final void run()
              {
                ap.1.this.a.a();
              }
            });
          }
          return;
        }
        catch (JSONException paramAnonymousString)
        {
          aa.a(paramAnonymousString);
        }
      }
      
      public final void onWeiboException(WeiboException paramAnonymousWeiboException)
      {
        v.e("WeiBoAuthorize", "request weibo user info failed" + paramAnonymousWeiboException.getMessage());
      }
    });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\b\ap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */