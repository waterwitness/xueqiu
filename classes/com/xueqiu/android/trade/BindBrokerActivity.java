package com.xueqiu.android.trade;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.a.ac;
import android.support.v4.a.q;
import android.view.View;
import android.widget.FrameLayout;
import com.umeng.analytics.MobclickAgent;
import com.xueqiu.android.common.b;
import com.xueqiu.android.trade.c.a;
import com.xueqiu.android.trade.model.TradeAccount;

public class BindBrokerActivity
  extends b
{
  private View j = null;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.j = new FrameLayout(this);
    this.j.setId(2131623963);
    TradeAccount localTradeAccount = (TradeAccount)getIntent().getParcelableExtra("extra_broker");
    int i = getIntent().getIntExtra("extra_intent_type", 1);
    if (paramBundle == null) {
      c().a().a(this.j.getId(), a.a(localTradeAccount, i)).d();
    }
    setContentView(this.j);
    if ((i == 1) && (localTradeAccount != null)) {
      MobclickAgent.onEvent(this, getString(2131166438, new Object[] { localTradeAccount.getTid() }));
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\BindBrokerActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */