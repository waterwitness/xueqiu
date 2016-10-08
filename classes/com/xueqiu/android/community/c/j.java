package com.xueqiu.android.community.c;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.android.volley.n;
import com.android.volley.y;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.aj;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.i;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.ag;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.common.a.d;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.r;
import com.xueqiu.android.common.t;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.community.a.g;
import com.xueqiu.android.community.model.LiveNews;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.concurrent.TimeUnit;

public final class j
  extends com.xueqiu.android.common.c
  implements t<LiveNews>
{
  private r<LiveNews> a = null;
  private g b = null;
  private Calendar c = null;
  private TextView d = null;
  private TextView e = null;
  private rx.j f = null;
  private boolean g = true;
  
  private n<ArrayList<LiveNews>> a(boolean paramBoolean, p<ArrayList<LiveNews>> paramp)
  {
    long l2 = 0L;
    Object localObject = this.a.c.a();
    long l1;
    if (((ArrayList)localObject).size() != 0) {
      if (!paramBoolean) {
        l1 = ((LiveNews)((ArrayList)localObject).get(0)).getId();
      }
    }
    for (;;)
    {
      if (paramBoolean)
      {
        localObject = new SNBEvent(1901, 3);
        i.a().a((SNBEvent)localObject);
      }
      return com.xueqiu.android.base.q.a().b().g.b(l1, l2, paramp);
      l2 = ((LiveNews)((ArrayList)localObject).get(((ArrayList)localObject).size() - 1)).getId();
      l1 = 0L;
      continue;
      l1 = 0L;
    }
  }
  
  private void b(int paramInt)
  {
    if (w().a() == null) {
      return;
    }
    ImageView localImageView = (ImageView)w().a().findViewById(2131624523);
    if (paramInt > 0)
    {
      localImageView.setVisibility(0);
      String str;
      if (paramInt == 0) {
        str = "";
      }
      for (;;)
      {
        localImageView.setImageDrawable(ay.a(str, h(), ay.a(10.0F)));
        return;
        if (paramInt >= 100) {
          str = "99+";
        } else {
          str = String.valueOf(paramInt);
        }
      }
    }
    localImageView.setVisibility(8);
  }
  
  public static j u()
  {
    return new j();
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903340, paramViewGroup, false);
  }
  
  public final n<ArrayList<LiveNews>> a(p<ArrayList<LiveNews>> paramp)
  {
    return a(false, paramp);
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    e_(true);
    this.d = ((TextView)c(2131624470));
    this.e = ((TextView)c(2131625142));
    paramBundle = new android.support.v7.a.c(21, (byte)0);
    View localView = View.inflate(f(), 2130903172, null);
    w().a(localView, paramBundle);
    w().d(true);
    localView.findViewById(2131624522).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        j.a(j.this).a.m();
        paramAnonymousView = new SNBEvent(1901, 2);
        i.a().a(paramAnonymousView);
      }
    });
    this.a = new r((SNBPullToRefreshListView)paramView.findViewById(2131624309), this);
    if (this.b == null) {
      this.b = new g(g());
    }
    this.a.a(this.b);
    this.a.a(new AbsListView.OnScrollListener()
    {
      public final void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        j.a(j.this, paramAnonymousInt1);
      }
      
      public final void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt)
      {
        if ((!j.b(j.this)) && (paramAnonymousInt == 0) && (paramAnonymousAbsListView.getLastVisiblePosition() == j.c(j.this).getCount())) {
          Toast.makeText(j.this.f(), "没有更多了", 0).show();
        }
      }
    });
    this.a.a(true);
    this.f = ag.d.a(new rx.c.a()
    {
      public final void a()
      {
        if (j.c(j.this).getCount() == 0) {
          return;
        }
        long l = ((LiveNews)j.c(j.this).getItem(0)).getId();
        ai localai = j.this.x();
        p local1 = new p(j.this)
        {
          public final void a(y paramAnonymous2y)
          {
            aa.a(paramAnonymous2y);
          }
        };
        localai.g.f(l, local1);
      }
    }, 5L, 5L, TimeUnit.SECONDS);
  }
  
  public final void a(ArrayList<LiveNews> paramArrayList, Throwable paramThrowable, boolean paramBoolean)
  {
    if ((g() == null) || (paramArrayList == null)) {}
    do
    {
      return;
      if (paramArrayList.size() < 20) {
        this.g = false;
      }
      if (paramThrowable != null)
      {
        aa.a(paramThrowable);
        return;
      }
    } while (paramBoolean);
    b(0);
  }
  
  public final n<ArrayList<LiveNews>> b(p<ArrayList<LiveNews>> paramp)
  {
    return a(true, paramp);
  }
  
  public final void q()
  {
    super.q();
    this.f.b();
    this.f = null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\c\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */