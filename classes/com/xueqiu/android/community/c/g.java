package com.xueqiu.android.community.c;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.a.q;
import android.support.v4.view.cp;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.viewpagerindicator.TabPageIndicator;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.c;
import com.xueqiu.android.common.widget.SwitchSwipeEnableViewPager;
import com.xueqiu.android.common.widget.l;
import java.util.List;

public final class g
  extends c
{
  public SwitchSwipeEnableViewPager a = null;
  private android.support.v4.a.i[] b = null;
  private String[] c = null;
  private TabPageIndicator d = null;
  private int e = 0;
  
  private void u()
  {
    this.b = new h[this.c.length];
    int i = 0;
    while (i < this.c.length)
    {
      h localh = new h();
      Bundle localBundle = new Bundle();
      localBundle.putInt("view_which", i);
      localh.e(localBundle);
      this.b[i] = localh;
      i += 1;
    }
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903595, paramViewGroup, false);
    v.a("TodayTopic", "onCreateView");
    return paramLayoutInflater;
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    this.c = h().getStringArray(2131492892);
    u();
    this.e = this.r.getInt("view_which", 0);
    v.a("TodayTopic", "onCreate fragment");
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    v.a("TodayTopic", "onViewCreated");
    paramView = new i(this, i());
    this.a = ((SwitchSwipeEnableViewPager)c(2131624310));
    this.a.setAdapter(paramView);
    this.a.setOffscreenPageLimit(this.c.length);
    if ((paramBundle != null) && (i().d() != null)) {
      this.b = ((android.support.v4.a.i[])i().d().toArray(new android.support.v4.a.i[0]));
    }
    this.d = ((TabPageIndicator)c(2131624326));
    this.d.setViewPager(this.a);
    this.d.setOnPageChangeListener(new cp()
    {
      public final void a(int paramAnonymousInt1, float paramAnonymousFloat, int paramAnonymousInt2) {}
      
      public final void b(int paramAnonymousInt) {}
      
      public final void b_(int paramAnonymousInt)
      {
        ((l)g.a(g.this)[paramAnonymousInt]).C_();
      }
    });
    this.d.setCurrentItem(this.e);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\c\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */