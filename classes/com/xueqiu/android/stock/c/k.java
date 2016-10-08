package com.xueqiu.android.stock.c;

import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.a.i;
import android.support.v7.a.f;
import android.support.v7.a.g;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.xueqiu.android.common.MainActivity;
import com.xueqiu.android.common.widget.SwitchSwipeEnableViewPager;
import rx.c.b;

public final class k
  extends com.xueqiu.android.common.c
{
  public SwitchSwipeEnableViewPager a;
  private long b;
  private View c;
  private l d;
  private View e;
  
  public static k a(long paramLong)
  {
    k localk = new k();
    Bundle localBundle = new Bundle();
    localBundle.putLong("arg_user_id", paramLong);
    localk.e(localBundle);
    return localk;
  }
  
  public final void F_()
  {
    super.F_();
  }
  
  public final View a(final LayoutInflater paramLayoutInflater, final ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramBundle = g();
    if ((paramBundle instanceof MainActivity))
    {
      paramBundle = (MainActivity)paramBundle;
      paramBundle.p = true;
      paramBundle.i.b().a(paramBundle.getResources().getDrawable(2130838624));
      paramBundle.i.b().b(paramBundle.getResources().getDrawable(2130838624));
      paramBundle.i.b().c(paramBundle.getResources().getDrawable(2130838624));
    }
    e_(true);
    if (this.e == null)
    {
      this.e = paramLayoutInflater.inflate(2130903375, paramViewGroup, false);
      this.a = ((SwitchSwipeEnableViewPager)this.e.findViewById(2131624310));
      this.a.setAdapter(this.d);
      this.c = LayoutInflater.from(f()).inflate(2130903477, null);
      paramLayoutInflater = this.c.findViewById(2131625553);
      paramViewGroup = this.c.findViewById(2131625552);
      paramLayoutInflater.setSelected(true);
      paramLayoutInflater.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramLayoutInflater.setSelected(true);
          paramViewGroup.setSelected(false);
          k.c(k.this).setCurrentItem(1);
        }
      });
      paramViewGroup.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramViewGroup.setSelected(true);
          paramLayoutInflater.setSelected(false);
          k.c(k.this).setCurrentItem(0);
        }
      });
      this.a.setCurrentItem(1);
      this.a.setSwipeEnable(false);
      w().d(true);
      w().a(false);
      w().c(false);
      w().a(this.c, new android.support.v7.a.c(-2));
      if (this.b > 0L) {
        break label320;
      }
    }
    label320:
    for (int i = 1;; i = 0)
    {
      if (i == 0) {
        w().a(true);
      }
      return this.e;
      if (this.e.getParent() == null) {
        break;
      }
      ((ViewGroup)this.e.getParent()).removeView(this.e);
      break;
    }
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    this.d = new l(this, i());
    if (this.r != null) {
      this.b = this.r.getLong("arg_user_id", -1L);
    }
    a(rx.a.b.a.b(f(), new IntentFilter("com.xueqiu.android.action.portfolioCategoryRefreshBg")).c(new b()
    {
      int a = 0;
    }));
    a(rx.a.b.a.b(f(), new IntentFilter("com.xueqiu.android.action.portfolioBeginEdit")).c(new b() {}));
    a(rx.a.b.a.b(f(), new IntentFilter("com.xueqiu.android.action.portfolioFinishEdit")).c(new b() {}));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\c\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */