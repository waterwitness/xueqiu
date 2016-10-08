package com.xueqiu.android.stock.c;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.a.k;
import android.support.v4.view.cp;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.viewpagerindicator.TabPageIndicator;
import com.xueqiu.android.common.d;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.search.USearchActivity;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.common.widget.SwitchSwipeEnableViewPager;
import com.xueqiu.android.message.RecentTalkActivity;

public class u
  extends com.xueqiu.android.common.e
  implements d
{
  private static final String b = u.class.getSimpleName();
  private TabPageIndicator ak;
  private View al;
  private int c = 1000;
  private String d = "行情";
  private android.support.v4.a.i[] e;
  private String[] f;
  private SwitchSwipeEnableViewPager g;
  private android.support.v4.a.v h;
  
  protected final Boolean B()
  {
    if (this.g.getCurrentItem() == 0) {}
    for (boolean bool = true;; bool = false) {
      return Boolean.valueOf(bool);
    }
  }
  
  public final void B_()
  {
    w localw;
    if ((this.c == 1000) && (this.h != null))
    {
      localw = (w)this.h.a(this.g.getCurrentItem());
      if ((localw != null) && (localw.d != null) && (!localw.d.j())) {}
    }
    else
    {
      return;
    }
    localw.d.m();
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    if (this.al == null)
    {
      this.al = paramLayoutInflater.inflate(2130903369, paramViewGroup, false);
      this.g = ((SwitchSwipeEnableViewPager)this.al.findViewById(2131624310));
      this.ak = ((TabPageIndicator)this.al.findViewById(2131624326));
      this.h = new v(this, i());
      this.g.setAdapter(this.h);
      this.ak.setViewPager(this.g);
      this.ak.setOnPageChangeListener(new cp()
      {
        public final void a(int paramAnonymousInt1, float paramAnonymousFloat, int paramAnonymousInt2) {}
        
        public final void b(int paramAnonymousInt) {}
        
        public final void b_(int paramAnonymousInt)
        {
          if ((u.c(u.this) == 1000) || (u.c(u.this) == 1002)) {
            if (u.c(u.this) != 1002) {
              break label140;
            }
          }
          label140:
          for (int i = 7;; i = 2)
          {
            Object localObject = new SNBEvent(2800, i);
            ((SNBEvent)localObject).addProperty("name", u.b(u.this)[paramAnonymousInt]);
            com.xueqiu.android.base.i.a().a((SNBEvent)localObject);
            if ((u.c(u.this) == 1000) && ((u.a(u.this)[paramAnonymousInt] instanceof w)))
            {
              localObject = (w)u.a(u.this)[paramAnonymousInt];
              if ((localObject != null) && (((w)localObject).j())) {
                ((w)localObject).b(u.d(u.this));
              }
            }
            return;
          }
        }
      });
    }
    for (;;)
    {
      return this.al;
      if (this.al.getParent() != null) {
        ((ViewGroup)this.al.getParent()).removeView(this.al);
      }
    }
  }
  
  public final void a(@Nullable Bundle paramBundle)
  {
    super.a(paramBundle);
    this.a = "quote";
    if (this.r != null)
    {
      this.c = this.r.getInt("quote_center_type", 1000);
      this.d = this.r.getString("quote_center_title", "行情");
    }
    a(this.d);
    if (this.c == 1000)
    {
      this.e = new android.support.v4.a.i[] { w.b(1), w.b(2), w.b(3), w.b(7) };
      this.f = h().getStringArray(2131492888);
      paramBundle = new SNBEvent(2800, 2);
      paramBundle.addProperty("name", this.f[0]);
      com.xueqiu.android.base.i.a().a(paramBundle);
    }
    do
    {
      return;
      if (this.c == 1001)
      {
        this.e = new android.support.v4.a.i[] { com.xueqiu.android.stock.e.b(1), w.b(5) };
        this.f = h().getStringArray(2131492889);
        return;
      }
    } while (this.c != 1002);
    this.e = new android.support.v4.a.i[] { h.b("SW2014"), h.b("BD1105"), h.b("BD1102") };
    this.f = h().getStringArray(2131492887);
    paramBundle = new SNBEvent(2800, 7);
    paramBundle.addProperty("name", this.f[0]);
    com.xueqiu.android.base.i.a().a(paramBundle);
  }
  
  public final void a(View paramView, @Nullable Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    if ((this.c == 1001) || (this.c == 1002))
    {
      this.al.findViewById(2131625233).setVisibility(8);
      if ((g().getIntent() != null) && (g().getIntent().getStringExtra("extra_exchange_type") != null))
      {
        paramView = g().getIntent().getStringExtra("extra_exchange_type");
        if (!paramView.equals("CN")) {
          break label156;
        }
        this.g.setCurrentItem(0);
      }
    }
    for (;;)
    {
      b(this.a);
      return;
      paramView = this.al.findViewById(2131625233);
      paramView.findViewById(2131625128).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          paramAnonymousView = new Intent(u.this.g(), RecentTalkActivity.class);
          u.this.a(paramAnonymousView);
        }
      });
      paramView.findViewById(2131623956).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          u.this.a(new Intent(u.this.f(), USearchActivity.class), 2130968592, 2130968584);
        }
      });
      break;
      label156:
      if ((paramView.equals("US")) && (this.h.b() >= 2)) {
        this.g.setCurrentItem(1);
      } else if ((paramView.equals("HK")) && (this.h.b() >= 3)) {
        this.g.setCurrentItem(2);
      } else if ((paramView.equals("AH")) && (this.h.b() >= 4)) {
        this.g.setCurrentItem(3);
      }
    }
  }
  
  public final void a(boolean paramBoolean)
  {
    Object localObject;
    if ((this.c == 1000) && (this.h != null))
    {
      localObject = (w)this.h.a(0);
      if ((localObject != null) && (((w)localObject).c != null) && (((w)localObject).b == 1))
      {
        localObject = ((w)localObject).c.findViewById(2131625422);
        if (localObject != null)
        {
          if (!paramBoolean) {
            break label73;
          }
          ((View)localObject).setVisibility(0);
        }
      }
    }
    return;
    label73:
    ((View)localObject).setVisibility(8);
  }
  
  protected final void b(String paramString)
  {
    super.b(paramString);
    if (TextUtils.isEmpty(this.a)) {}
    w localw;
    do
    {
      do
      {
        return;
      } while ((!this.a.equals(paramString)) || (this.g == null) || (this.e == null) || (this.g.getCurrentItem() < 0) || (this.g.getCurrentItem() >= this.e.length) || (!(this.e[this.g.getCurrentItem()] instanceof w)));
      localw = (w)this.e[this.g.getCurrentItem()];
    } while ((localw == null) || (!localw.j()));
    localw.b(paramString);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\c\u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */