package com.xueqiu.android.stock;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.view.cp;
import android.support.v7.a.f;
import android.support.v7.a.g;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.widget.TextView;
import com.viewpagerindicator.TabPageIndicator;
import com.xueqiu.android.base.h;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.widget.SwitchSwipeEnableViewPager;
import com.xueqiu.android.common.widget.l;
import com.xueqiu.android.stock.c.e;
import com.xueqiu.android.stock.model.StockQuote;

public class F10Activity
  extends com.xueqiu.android.common.b
  implements q
{
  private android.support.v4.a.i[] j = null;
  private String[] k = null;
  private SwitchSwipeEnableViewPager p = null;
  private TabPageIndicator q = null;
  private String r;
  private int s;
  private StockQuote t;
  private ViewGroup u;
  private boolean v = false;
  
  public final void j()
  {
    this.v = true;
    this.p.setSwipeEnable(false);
  }
  
  public final void k()
  {
    this.v = false;
    this.p.setSwipeEnable(true);
  }
  
  protected void onCreate(final Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.r = getIntent().getStringExtra("extra_symbol");
    this.s = getIntent().getIntExtra("extra_page", 0);
    this.t = ((StockQuote)getIntent().getParcelableExtra("extra_stock"));
    setContentView(2130903107);
    this.i.b().d();
    if (this.t != null)
    {
      this.u = ((ViewGroup)findViewById(2131624354));
      this.u.findViewById(2131624142).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          F10Activity.this.finish();
        }
      });
      this.u.findViewById(2131623947).setVisibility(8);
      ((TextView)this.u.findViewById(2131625431)).setText(this.t.getName());
      ((TextView)this.u.findViewById(2131624089)).setText(String.format("%s:%s", new Object[] { this.t.getExchange(), this.t.getCode() }));
    }
    paramBundle = new SNBEvent(1601, 1);
    paramBundle.addProperty("symbol", this.r);
    com.xueqiu.android.base.i.a().a(paramBundle);
    this.k = getResources().getStringArray(2131492876);
    this.j = new android.support.v4.a.i[] { com.xueqiu.android.stock.c.b.a(this.r, 0), e.b(this.r), com.xueqiu.android.stock.c.b.a(this.r, 2), com.xueqiu.android.stock.c.b.a(this.r, 3), com.xueqiu.android.stock.c.b.a(this.r, 4), com.xueqiu.android.stock.c.b.a(this.r, 5) };
    paramBundle = new a(this, c());
    this.p = ((SwitchSwipeEnableViewPager)findViewById(2131624310));
    this.p.setAdapter(paramBundle);
    this.p.setOffscreenPageLimit(this.j.length);
    this.q = ((TabPageIndicator)findViewById(2131624326));
    this.q.setViewPager(this.p);
    paramBundle = findViewById(2131624327);
    this.q.getViewTreeObserver().addOnScrollChangedListener(new ViewTreeObserver.OnScrollChangedListener()
    {
      public final void onScrollChanged()
      {
        boolean bool = F10Activity.c(F10Activity.this).canScrollHorizontally(1);
        if ((paramBundle.getVisibility() == 0) && (!bool)) {
          paramBundle.setVisibility(4);
        }
        while ((paramBundle.getVisibility() != 4) || (!bool)) {
          return;
        }
        paramBundle.setVisibility(0);
      }
    });
    this.q.setOnPageChangeListener(new cp()
    {
      public final void a(int paramAnonymousInt1, float paramAnonymousFloat, int paramAnonymousInt2) {}
      
      public final void b(int paramAnonymousInt) {}
      
      public final void b_(int paramAnonymousInt)
      {
        ((l)F10Activity.a(F10Activity.this)[paramAnonymousInt]).C_();
        ((com.xueqiu.android.stock.c.b)F10Activity.a(F10Activity.this)[paramAnonymousInt]).u();
        SNBEvent localSNBEvent = new SNBEvent(1601, 2);
        localSNBEvent.addProperty("symbol", F10Activity.d(F10Activity.this));
        localSNBEvent.addProperty("name", F10Activity.b(F10Activity.this)[paramAnonymousInt]);
        com.xueqiu.android.base.i.a().a(localSNBEvent);
      }
    });
    this.q.setCurrentItem(this.s);
    ((com.xueqiu.android.stock.c.b)this.j[this.s]).u();
  }
  
  protected final Boolean w_()
  {
    if (this.p.getCurrentItem() == 0) {}
    for (boolean bool = true;; bool = false) {
      return Boolean.valueOf(bool);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\F10Activity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */