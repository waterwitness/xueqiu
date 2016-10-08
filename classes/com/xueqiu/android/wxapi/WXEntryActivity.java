package com.xueqiu.android.wxapi;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.content.r;
import com.tencent.mm.sdk.modelbase.BaseReq;
import com.tencent.mm.sdk.modelbase.BaseResp;
import com.tencent.mm.sdk.modelmsg.SendAuth.Resp;
import com.tencent.mm.sdk.openapi.IWXAPI;
import com.tencent.mm.sdk.openapi.IWXAPIEventHandler;
import com.tencent.mm.sdk.openapi.WXAPIFactory;
import com.xueqiu.android.base.util.v;

public class WXEntryActivity
  extends Activity
  implements IWXAPIEventHandler
{
  private IWXAPI a;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.a = WXAPIFactory.createWXAPI(this, "wx8be10642d9baf61f", true);
    this.a.registerApp("wx8be10642d9baf61f");
    this.a.handleIntent(getIntent(), this);
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
    this.a.handleIntent(paramIntent, this);
  }
  
  public void onReq(BaseReq paramBaseReq) {}
  
  public void onResp(BaseResp paramBaseResp)
  {
    v.a("weixin", "onResp");
    Object localObject;
    Bundle localBundle;
    if ((paramBaseResp.errCode == 0) && ((paramBaseResp instanceof SendAuth.Resp)))
    {
      localObject = (SendAuth.Resp)paramBaseResp;
      paramBaseResp = ((SendAuth.Resp)localObject).code;
      localObject = ((SendAuth.Resp)localObject).state;
      if (!"wx_login_state".equals(localObject)) {
        break label90;
      }
      localObject = new Intent("wechat_intent_login");
      localBundle = new Bundle();
      localBundle.putString("extra_wechat_result_code", paramBaseResp);
      ((Intent)localObject).putExtras(localBundle);
      r.a(this).a((Intent)localObject);
    }
    for (;;)
    {
      finish();
      return;
      label90:
      if ("wx_bind_state".equals(localObject))
      {
        localObject = new Intent("wechat_intent_bind");
        localBundle = new Bundle();
        localBundle.putString("extra_wechat_result_code", paramBaseResp);
        ((Intent)localObject).putExtras(localBundle);
        r.a(this).a((Intent)localObject);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\wxapi\WXEntryActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */