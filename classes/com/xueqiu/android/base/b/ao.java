package com.xueqiu.android.base.b;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.content.r;
import com.android.volley.y;
import com.tencent.mm.sdk.modelmsg.SendAuth.Req;
import com.tencent.mm.sdk.openapi.IWXAPI;
import com.tencent.mm.sdk.openapi.WXAPIFactory;
import com.xueqiu.android.base.q;
import com.xueqiu.android.base.util.v;
import org.json.JSONObject;

public final class ao
  implements g
{
  Activity a = null;
  public String b = null;
  public String c = null;
  public long d;
  public String e = null;
  h f = null;
  BroadcastReceiver g = new BroadcastReceiver()
  {
    public final void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      paramAnonymousContext = paramAnonymousIntent.getExtras().getString("extra_wechat_result_code");
      q.a().b().f(paramAnonymousContext, new p()
      {
        public final void a(y paramAnonymous2y) {}
      });
    }
  };
  String h;
  private IWXAPI i;
  
  public ao(Activity paramActivity, h paramh)
  {
    this.f = paramh;
    this.a = paramActivity;
    this.i = WXAPIFactory.createWXAPI(this.a, "wx8be10642d9baf61f");
    this.i.registerApp("wx8be10642d9baf61f");
    paramActivity = new IntentFilter();
    paramActivity.addAction("wechat_intent_bind");
    r.a(this.a.getApplicationContext()).a(this.g, paramActivity);
  }
  
  public final void a()
  {
    if (this.i.isWXAppInstalled())
    {
      SendAuth.Req localReq = new SendAuth.Req();
      localReq.scope = "snsapi_userinfo";
      localReq.state = "wx_bind_state";
      this.i.sendReq(localReq);
    }
  }
  
  public final void a(final i parami)
  {
    q.a().b().g(this.b, this.c, new p()
    {
      public final void a(y paramAnonymousy)
      {
        v.a("error", paramAnonymousy.getMessage());
      }
    });
  }
  
  public final boolean b()
  {
    return this.i.isWXAppInstalled();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\b\ao.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */