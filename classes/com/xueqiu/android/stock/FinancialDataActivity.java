package com.xueqiu.android.stock;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.view.cp;
import android.util.AttributeSet;
import android.view.View;
import com.viewpagerindicator.TabPageIndicator;
import com.xueqiu.android.base.h;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.widget.SwitchSwipeEnableViewPager;
import com.xueqiu.android.common.widget.l;
import com.xueqiu.android.stock.c.c;

public class FinancialDataActivity
  extends com.xueqiu.android.common.b
  implements q
{
  private String j;
  private String k;
  private android.support.v4.a.i[] p = null;
  private String[] q = null;
  private SwitchSwipeEnableViewPager r = null;
  private TabPageIndicator s = null;
  private boolean t = false;
  
  public final void j()
  {
    this.t = true;
  }
  
  public final void k()
  {
    this.t = false;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.j = getIntent().getStringExtra("extra_symbol");
    this.k = getIntent().getStringExtra("extra_page_name");
    paramBundle = null;
    if (this.k.equals("XJLLB"))
    {
      setTitle("现金流量表");
      paramBundle = new SNBEvent(1601, 5);
    }
    if (this.k.equals("GSLRB"))
    {
      setTitle("利润表");
      paramBundle = new SNBEvent(1601, 3);
    }
    if (this.k.equals("ZCFZB"))
    {
      setTitle("资产负债表");
      paramBundle = new SNBEvent(1601, 6);
    }
    if (paramBundle != null)
    {
      paramBundle.addProperty("symbol", this.j);
      com.xueqiu.android.base.i.a().a(paramBundle);
    }
    setContentView(2130903108);
    this.q = getResources().getStringArray(2131492878);
    this.p = new android.support.v4.a.i[] { c.a(this.j, this.k, false), c.a(this.j, this.k, true) };
    paramBundle = new b(this, c());
    this.r = ((SwitchSwipeEnableViewPager)findViewById(2131624310));
    this.r.setAdapter(paramBundle);
    this.r.setOffscreenPageLimit(this.p.length);
    this.r.setSwipeEnable(false);
    this.s = ((TabPageIndicator)findViewById(2131624326));
    this.s.setViewPager(this.r);
    this.s.setOnPageChangeListener(new cp()
    {
      public final void a(int paramAnonymousInt1, float paramAnonymousFloat, int paramAnonymousInt2) {}
      
      public final void b(int paramAnonymousInt) {}
      
      public final void b_(int paramAnonymousInt)
      {
        ((l)FinancialDataActivity.a(FinancialDataActivity.this)[paramAnonymousInt]).C_();
        ((c)FinancialDataActivity.a(FinancialDataActivity.this)[paramAnonymousInt]).a = true;
      }
    });
    this.s.setCurrentItem(0);
    ((c)this.p[0]).a = true;
  }
  
  public View onCreateView(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    return super.onCreateView(paramView, paramString, paramContext, paramAttributeSet);
  }
  
  protected final Boolean w_()
  {
    if (this.t) {
      return Boolean.valueOf(false);
    }
    return Boolean.valueOf(true);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\FinancialDataActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */