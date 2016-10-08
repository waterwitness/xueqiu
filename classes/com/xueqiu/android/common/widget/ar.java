package com.xueqiu.android.common.widget;

import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.a.h;
import android.support.v4.a.i;
import android.support.v4.a.k;
import android.support.v4.view.ViewPager;
import android.support.v4.view.cp;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.viewpagerindicator.CirclePageIndicator;
import com.xueqiu.android.base.r;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.cube.b.m;
import java.util.ArrayList;
import java.util.List;

public final class ar
  extends h
{
  View ak;
  private String[] al;
  private String[] am;
  private List<i> an;
  private int ao = 0;
  private ViewPager ap = null;
  private CirclePageIndicator aq = null;
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.f.getWindow().requestFeature(1);
    this.f.getWindow().setBackgroundDrawable(new ColorDrawable(0));
    this.f.setCanceledOnTouchOutside(true);
    this.ak = paramLayoutInflater.inflate(2130903269, paramViewGroup, false);
    return this.ak;
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    this.am = r.e(2131492894);
    this.al = r.e(2131492893);
    this.ao = this.r.getInt("extra_current");
    if ((this.am == null) || (this.al == null)) {
      g().finish();
    }
    for (;;)
    {
      return;
      if (this.an == null) {
        this.an = new ArrayList();
      }
      this.an.clear();
      int i = 0;
      while (i < this.am.length)
      {
        paramBundle = this.al[i];
        String str = this.am[i];
        Bundle localBundle = new Bundle();
        m localm = new m();
        localBundle.putString("extra_message", paramBundle);
        localBundle.putString("extra_title", str);
        localBundle.putInt("extra_url", i);
        localm.e(localBundle);
        this.an.add(localm);
        i += 1;
      }
    }
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    this.ap = ((ViewPager)this.ak.findViewById(2131624310));
    this.aq = ((CirclePageIndicator)this.ak.findViewById(2131624326));
    paramView = new as(this, i());
    this.ap.setAdapter(paramView);
    this.ap.setOffscreenPageLimit(this.am.length);
    this.aq.setViewPager(this.ap);
    this.aq.setFillColor(r.a(2131558672));
    this.aq.setPageColor(r.a(2131558674));
    this.aq.setStrokeWidth(0.0F);
    this.aq.setOnPageChangeListener(new cp()
    {
      public final void a(int paramAnonymousInt1, float paramAnonymousFloat, int paramAnonymousInt2) {}
      
      public final void b(int paramAnonymousInt) {}
      
      public final void b_(int paramAnonymousInt) {}
    });
    this.aq.setCurrentItem(this.ao);
  }
  
  public final void o()
  {
    super.o();
    this.f.getWindow().setLayout((int)ay.a(270.0F), (int)ay.a(290.0F));
    this.f.getWindow().setGravity(17);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\ar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */