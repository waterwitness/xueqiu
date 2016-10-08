package com.xueqiu.android.stock;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.a.ac;
import android.support.v4.a.i;
import android.support.v4.a.q;
import android.view.View;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.xueqiu.android.common.b;
import com.xueqiu.android.stock.c.z;
import com.xueqiu.android.stock.model.StockQuote;

public class StockRemindingActivity
  extends b
{
  private StockQuote j;
  
  public void onBackPressed()
  {
    z localz = (z)c().a("remind_fragment");
    if (localz.a.canGoBack()) {
      localz.a.goBack();
    }
    for (int i = 0;; i = 1)
    {
      if (i != 0) {
        super.onBackPressed();
      }
      return;
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.j = ((StockQuote)getIntent().getParcelableExtra("extra_stock_info"));
    Object localObject = new FrameLayout(this);
    ((FrameLayout)localObject).setId(3);
    setContentView((View)localObject, new FrameLayout.LayoutParams(-1, -1));
    if (paramBundle == null)
    {
      paramBundle = new z();
      localObject = new Bundle();
      ((Bundle)localObject).putParcelable("extra_stock_info", this.j);
      paramBundle.e((Bundle)localObject);
      c().a().a(3, paramBundle, "remind_fragment").d();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\StockRemindingActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */