package com.xueqiu.android.stock;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.a.ac;
import android.support.v4.a.q;
import android.support.v4.view.ViewPager;
import android.widget.FrameLayout;
import com.xueqiu.android.common.b;
import com.xueqiu.android.stock.c.k;

public class PortfolioCategoryActivity
  extends b
{
  private long j;
  private k k;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FrameLayout localFrameLayout = new FrameLayout(this);
    localFrameLayout.setId(2131623963);
    this.j = getIntent().getLongExtra("extra_user_id", -1L);
    if (paramBundle == null)
    {
      this.k = k.a(this.j);
      c().a().a(localFrameLayout.getId(), this.k).d();
    }
    setContentView(localFrameLayout);
  }
  
  protected final Boolean w_()
  {
    if ((this.k != null) && (this.k.a != null) && (this.k.a.getCurrentItem() == 0)) {}
    for (boolean bool = true;; bool = false) {
      return Boolean.valueOf(bool);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\PortfolioCategoryActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */