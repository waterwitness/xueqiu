package com.xueqiu.android.wxapi;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.content.r;
import com.tencent.mm.sdk.modelbase.BaseReq;
import com.tencent.mm.sdk.modelbase.BaseResp;
import com.tencent.mm.sdk.modelpay.PayResp;
import com.tencent.mm.sdk.openapi.IWXAPI;
import com.tencent.mm.sdk.openapi.IWXAPIEventHandler;
import com.tencent.mm.sdk.openapi.WXAPIFactory;
import com.xueqiu.android.base.util.v;

public class WXPayEntryActivity
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
    int i = paramBaseResp.errCode;
    if (((paramBaseResp instanceof PayResp)) && (paramBaseResp.getType() == 5))
    {
      paramBaseResp = new Intent("wechat_intent_pay");
      Bundle localBundle = new Bundle();
      localBundle.putInt("extra_wechat_result_code", i);
      paramBaseResp.putExtras(localBundle);
      r.a(this).a(paramBaseResp);
    }
    finish();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\wxapi\WXPayEntryActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */