package com.xueqiu.android.community;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.webkit.WebView;
import com.xueqiu.android.base.util.v;

public final class k
  extends BroadcastReceiver
{
  private WebView b;
  private String c;
  private String d;
  private String e;
  private String f;
  
  public k(RewardActivity paramRewardActivity, WebView paramWebView, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this.b = paramWebView;
    this.c = paramString1;
    this.d = paramString2;
    this.e = paramString3;
    this.f = paramString4;
  }
  
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getStringExtra("state_key");
    v.a("solory", "state  : " + paramContext);
    if ("success".equals(paramContext)) {
      RewardActivity.a(this.b, this.c);
    }
    for (;;)
    {
      RewardActivity.a(this.b, this.f);
      return;
      if ("erro".equals(paramContext)) {
        RewardActivity.a(this.b, this.d);
      } else if ("cancel".equals(paramContext)) {
        RewardActivity.a(this.b, this.e);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */