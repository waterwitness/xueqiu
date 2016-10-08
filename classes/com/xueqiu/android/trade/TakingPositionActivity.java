package com.xueqiu.android.trade;

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
import com.xueqiu.android.stock.model.StockQuote;
import com.xueqiu.android.trade.c.m;

public class TakingPositionActivity
  extends b
{
  private StockQuote j;
  private String k;
  
  public void onBackPressed()
  {
    m localm = (m)c().a("tag_fragment");
    if (localm.a.canGoBack()) {
      localm.a.goBack();
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
    this.k = getIntent().getStringExtra("extra_url");
    Object localObject = getIntent().getExtras();
    if (localObject != null) {
      this.j = ((StockQuote)((Bundle)localObject).getParcelable("extra_stock"));
    }
    localObject = new FrameLayout(this);
    ((FrameLayout)localObject).setId(2131623960);
    setContentView((View)localObject, new FrameLayout.LayoutParams(-1, -1));
    if (paramBundle == null)
    {
      m localm = new m();
      localObject = getIntent().getExtras();
      paramBundle = (Bundle)localObject;
      if (localObject == null) {
        paramBundle = new Bundle();
      }
      paramBundle.putParcelable("arg_stock", this.j);
      paramBundle.putString("arg_url", this.k);
      localm.e(paramBundle);
      c().a().a(2131623960, localm, "tag_fragment").d();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\TakingPositionActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */