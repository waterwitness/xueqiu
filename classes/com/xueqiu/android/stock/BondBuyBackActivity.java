package com.xueqiu.android.stock;

import android.os.Bundle;
import android.support.v4.a.ac;
import android.support.v4.a.q;
import android.widget.FrameLayout;
import com.xueqiu.android.stock.c.a;

public class BondBuyBackActivity
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
    setTitle(2131165877);
    FrameLayout localFrameLayout = new FrameLayout(this);
    localFrameLayout.setId(2131623963);
    if (paramBundle == null) {
      c().a().a(localFrameLayout.getId(), a.u()).d();
    }
    setContentView(localFrameLayout);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\BondBuyBackActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */