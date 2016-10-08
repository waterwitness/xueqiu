package com.xueqiu.android.stock;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.a.ac;
import android.support.v4.a.q;
import android.widget.FrameLayout;

public class FundRankActivity
  extends com.xueqiu.android.common.b
{
  protected final void e()
  {
    com.xueqiu.android.base.b.a();
    if (com.xueqiu.android.base.b.i())
    {
      setTheme(2131361881);
      return;
    }
    super.e();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setTitle(getIntent().getStringExtra("extra_rank_title"));
    int i = getIntent().getIntExtra("extra_fund_type_id", 1);
    FrameLayout localFrameLayout = new FrameLayout(this);
    localFrameLayout.setId(2131623963);
    if (paramBundle == null) {
      c().a().a(localFrameLayout.getId(), e.b(i)).d();
    }
    setContentView(localFrameLayout);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\FundRankActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */