package com.xueqiu.android.stock;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.a.i;
import android.support.v4.view.cp;
import android.support.v7.a.f;
import android.support.v7.a.g;
import com.viewpagerindicator.TabPageIndicator;
import com.xueqiu.android.base.util.as;
import com.xueqiu.android.common.widget.SwitchSwipeEnableViewPager;
import com.xueqiu.android.community.c.k;
import com.xueqiu.android.community.c.n;
import com.xueqiu.android.stock.model.StockQuote;

public class StockMoreInfoActivity
  extends com.xueqiu.android.common.b
{
  private String[] j = null;
  private i[] k = null;
  private SwitchSwipeEnableViewPager p = null;
  private TabPageIndicator q = null;
  private StockQuote r = null;
  
  private static boolean a(StockQuote paramStockQuote)
  {
    if (paramStockQuote == null) {}
    while (((paramStockQuote.getIssueType() == null) || (!paramStockQuote.getIssueType().equals("true"))) && ((paramStockQuote.hasWarrant() == null) || (!paramStockQuote.hasWarrant().equals("1"))) && (paramStockQuote.getType() != 25) && (paramStockQuote.getType() != 32)) {
      return false;
    }
    return true;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903595);
    this.r = ((StockQuote)getIntent().getParcelableExtra("extra_stock"));
    if (this.r == null)
    {
      finish();
      return;
    }
    setTitle(this.r.getName());
    this.i.b().b(this.r.getExchange() + ":" + this.r.getSymbol());
    p localp = new p(this, c());
    StockQuote localStockQuote = this.r;
    n localn = new n();
    paramBundle = new Bundle(getIntent().getExtras());
    paramBundle.putParcelable("extra_stock", localStockQuote);
    localn.e(paramBundle);
    paramBundle = new com.xueqiu.android.community.c.a();
    Object localObject2 = new Bundle(getIntent().getExtras());
    ((Bundle)localObject2).putParcelable("extra_stock", localStockQuote);
    paramBundle.e((Bundle)localObject2);
    Object localObject1 = new com.xueqiu.android.community.c.b();
    new Bundle(getIntent().getExtras()).putParcelable("extra_stock", localStockQuote);
    ((i)localObject1).e((Bundle)localObject2);
    localObject2 = new k();
    Bundle localBundle = new Bundle(getIntent().getExtras());
    localBundle.putParcelable("extra_stock", localStockQuote);
    ((i)localObject2).e(localBundle);
    int i = localStockQuote.getType();
    this.j = getResources().getStringArray(2131492890);
    this.k = new i[] { localn, paramBundle, localObject2, localObject1 };
    localObject1 = "期权";
    if (i == 32)
    {
      paramBundle = getString(2131166147);
      switch (i)
      {
      default: 
        label330:
        if (!a(localStockQuote))
        {
          this.j = new String[] { this.j[0], this.j[1], this.j[3] };
          this.k = new i[] { this.k[0], this.k[1], this.k[3] };
        }
        break;
      }
    }
    for (;;)
    {
      this.p = ((SwitchSwipeEnableViewPager)findViewById(2131624310));
      this.p.setAdapter(localp);
      this.p.setOffscreenPageLimit(this.k.length);
      this.q = ((TabPageIndicator)findViewById(2131624326));
      this.q.setViewPager(this.p);
      this.q.setOnPageChangeListener(new cp()
      {
        public final void a(int paramAnonymousInt1, float paramAnonymousFloat, int paramAnonymousInt2)
        {
          if (((StockMoreInfoActivity.a(StockMoreInfoActivity.this)[(paramAnonymousInt1 % StockMoreInfoActivity.a(StockMoreInfoActivity.this).length)] instanceof k)) && (StockMoreInfoActivity.b(StockMoreInfoActivity.this) != null))
          {
            if (!as.b(StockMoreInfoActivity.b(StockMoreInfoActivity.this).getType())) {
              break label60;
            }
            com.xueqiu.android.base.util.b.a(StockMoreInfoActivity.this, 2131166507);
          }
          label60:
          while (!as.a(StockMoreInfoActivity.b(StockMoreInfoActivity.this).getType())) {
            return;
          }
          com.xueqiu.android.base.util.b.a(StockMoreInfoActivity.this, 2131166510);
        }
        
        public final void b(int paramAnonymousInt) {}
        
        public final void b_(int paramAnonymousInt) {}
      });
      if (this.k.length != 1) {
        break;
      }
      this.q.setVisibility(8);
      return;
      if (i == 25)
      {
        paramBundle = getString(2131166146);
        break label330;
      }
      paramBundle = (Bundle)localObject1;
      if (i != 30) {
        break label330;
      }
      this.j[2] = "涡轮";
      paramBundle = (Bundle)localObject1;
      break label330;
      if (a(localStockQuote))
      {
        if (localStockQuote.getType() == 25) {}
        for (this.j = new String[] { this.j[0], paramBundle };; this.j = new String[] { this.j[0], this.j[2] })
        {
          this.k = new i[] { this.k[0], this.k[2] };
          break;
        }
      }
      this.j = new String[] { this.j[0] };
      this.k = new i[] { localn };
      continue;
      if (a(localStockQuote))
      {
        if (localStockQuote.getType() == 32) {}
        for (this.j = new String[] { this.j[0], this.j[1], paramBundle };; this.j = new String[] { this.j[0], this.j[1], this.j[2] })
        {
          this.k = new i[] { this.k[0], this.k[1], this.k[2] };
          break;
        }
      }
      this.j = new String[] { this.j[0], this.j[1] };
      this.k = new i[] { this.k[0], this.k[1] };
    }
  }
  
  protected final Boolean w_()
  {
    if (this.p.getCurrentItem() == 0) {}
    for (boolean bool = true;; bool = false) {
      return Boolean.valueOf(bool);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\StockMoreInfoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */