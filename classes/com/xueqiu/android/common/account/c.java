package com.xueqiu.android.common.account;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import com.android.volley.y;
import com.sina.weibo.sdk.auth.WeiboAuth;
import com.sina.weibo.sdk.auth.sso.SsoHandler;
import com.tencent.mm.sdk.modelmsg.SendAuth.Req;
import com.tencent.mm.sdk.openapi.IWXAPI;
import com.tencent.mm.sdk.openapi.WXAPIFactory;
import com.tencent.tauth.Tencent;
import com.umeng.analytics.MobclickAgent;
import com.umeng.update.UmengUpdateAgent;
import com.xueqiu.android.base.a.a;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.m;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.q;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.SNBTAuthView;
import com.xueqiu.android.common.model.LoginResult;
import org.json.JSONObject;

public final class c
{
  protected SsoHandler a = null;
  f b;
  String c = "sina";
  String d = null;
  String e = null;
  long f = 0L;
  protected Tencent g = null;
  protected IWXAPI h;
  protected String i;
  BroadcastReceiver j = new BroadcastReceiver()
  {
    public final void onReceive(Context paramAnonymousContext, final Intent paramAnonymousIntent)
    {
      paramAnonymousContext = paramAnonymousIntent.getExtras().getString("extra_wechat_result_code");
      paramAnonymousIntent = q.a().b();
      paramAnonymousIntent.f(paramAnonymousContext, new p()
      {
        public final void a(y paramAnonymous2y)
        {
          aa.a(paramAnonymous2y);
        }
      });
    }
  };
  LoginActivity k;
  BroadcastReceiver l = new BroadcastReceiver()
  {
    public final void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      c.this.k.finish();
    }
  };
  private WeiboAuth m = null;
  
  public c(LoginActivity paramLoginActivity)
  {
    this.k = paramLoginActivity;
    this.b = new f(this);
    paramLoginActivity = new IntentFilter();
    paramLoginActivity.addAction("com.tencent.auth.BROWSER");
    Object localObject = this.b;
    this.k.registerReceiver((BroadcastReceiver)localObject, paramLoginActivity);
    paramLoginActivity = new IntentFilter();
    paramLoginActivity.addAction("com.xueqiu.android.intent.action.LOGGED_IN");
    com.xueqiu.android.base.b.a();
    android.support.v4.content.r.a(com.xueqiu.android.base.b.d()).a(this.l, paramLoginActivity);
    com.xueqiu.android.base.b.a();
    UmengUpdateAgent.update(com.xueqiu.android.base.b.d());
    UmengUpdateAgent.setUpdateOnlyWifi(false);
    UmengUpdateAgent.setUpdateAutoPopup(true);
    this.m = new WeiboAuth(this.k, "669111051", "http://xueqiu.com", "follow_app_official_microblog,email");
    this.a = new SsoHandler(this.k, this.m);
    com.xueqiu.android.base.b.a();
    this.g = Tencent.createInstance("100229413", com.xueqiu.android.base.b.d());
    com.xueqiu.android.base.b.a();
    this.h = WXAPIFactory.createWXAPI(com.xueqiu.android.base.b.d(), "wx8be10642d9baf61f", true);
    this.h.registerApp("wx8be10642d9baf61f");
    com.xueqiu.android.base.b.a();
    paramLoginActivity = android.support.v4.content.r.a(com.xueqiu.android.base.b.d());
    localObject = new IntentFilter();
    ((IntentFilter)localObject).addAction("wechat_intent_login");
    paramLoginActivity.a(this.j, (IntentFilter)localObject);
  }
  
  private void g()
  {
    this.k.h();
  }
  
  protected final void a()
  {
    if (!this.h.isWXAppInstalled())
    {
      aa.a(com.xueqiu.android.base.r.d(2131166586));
      return;
    }
    SendAuth.Req localReq = new SendAuth.Req();
    localReq.scope = "snsapi_userinfo";
    localReq.state = "wx_login_state";
    this.h.sendReq(localReq);
  }
  
  protected final void a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (this.a != null) {
      this.a.authorizeCallBack(paramInt1, paramInt2, paramIntent);
    }
    this.g.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  final void a(Intent paramIntent)
  {
    this.k.startActivity(paramIntent);
  }
  
  final void a(String paramString)
  {
    this.k.c_(paramString);
  }
  
  public final void b()
  {
    this.a.authorize(new d(this));
    com.xueqiu.android.base.b.a();
    MobclickAgent.onEvent(com.xueqiu.android.base.b.d(), "reg_bindWeibo");
  }
  
  public final void c()
  {
    this.a.authorize(new d(this));
  }
  
  public final void d()
  {
    if (m.a(this.k))
    {
      g();
      this.g.login(this.k, "all", new e(this));
    }
    for (;;)
    {
      com.xueqiu.android.base.b.a();
      MobclickAgent.onEvent(com.xueqiu.android.base.b.d(), "reg_bindQQ");
      return;
      Intent localIntent = new Intent(this.k, SNBTAuthView.class);
      localIntent.putExtra("client_id", "100229413");
      localIntent.putExtra("scope", "get_user_info,add_share");
      localIntent.putExtra("target", "_self");
      localIntent.putExtra("callback", "tencentauth://auth.qq.com");
      this.k.startActivity(localIntent);
    }
  }
  
  public final void e()
  {
    if (m.a(this.k))
    {
      this.g.login(this.k, "all", new e(this));
      g();
      return;
    }
    Intent localIntent = new Intent(this.k, SNBTAuthView.class);
    localIntent.putExtra("client_id", "100229413");
    localIntent.putExtra("scope", "get_user_info,add_share");
    localIntent.putExtra("target", "_self");
    localIntent.putExtra("callback", "tencentauth://auth.qq.com");
    a(localIntent);
  }
  
  public final void f()
  {
    if (this.h.isWXAppInstalled()) {
      a();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\account\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */