package com.xueqiu.android.trade.c;

import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.xueqiu.android.base.util.ag;
import com.xueqiu.android.base.v;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.widget.IndicatorTabLayout;
import com.xueqiu.android.common.widget.f;
import com.xueqiu.android.common.widget.g;
import com.xueqiu.android.common.widget.o;
import com.xueqiu.android.trade.OrderFullActivity;
import com.xueqiu.android.trade.a.m;
import com.xueqiu.android.trade.a.n;
import com.xueqiu.android.trade.b.l;
import com.xueqiu.android.trade.model.TradeAccount;
import com.xueqiu.android.trade.model.TradePosition;
import com.xueqiu.android.trade.model.Transaction;
import com.xueqiu.android.trade.model.TrustDeed;
import com.xueqiu.android.trade.view.d;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import rx.c.a;

public final class q
  extends com.xueqiu.android.base.k<com.xueqiu.android.trade.b.k>
  implements AdapterView.OnItemClickListener, o, com.xueqiu.android.trade.a.i, n, l
{
  public com.xueqiu.android.trade.view.e ak;
  public m al;
  public com.xueqiu.android.trade.a.h am;
  public com.xueqiu.android.trade.a.e an;
  public TradeAccount ao;
  private final int ap = 20;
  private FrameLayout aq;
  private Handler ar = new Handler();
  public r b;
  public IndicatorTabLayout c;
  public d d;
  public d e;
  public d f;
  public com.xueqiu.android.trade.view.e g;
  public com.xueqiu.android.trade.view.e h;
  
  public static q a(TradeAccount paramTradeAccount)
  {
    q localq = new q();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("extra_trade_account", paramTradeAccount);
    localq.e(localBundle);
    return localq;
  }
  
  private void c(final List<Transaction> paramList, final boolean paramBoolean)
  {
    ag.c.a(new a()
    {
      public final void a()
      {
        final List localList = q.a(q.this).a;
        if (paramBoolean) {
          localList.clear();
        }
        localList.addAll(paramList);
        Collections.sort(localList);
        q.a(q.this);
        localList = com.xueqiu.android.trade.a.e.a(localList);
        ag.d.a(new a()
        {
          public final void a()
          {
            q.a(q.this).refresh(localList);
          }
        });
      }
    });
  }
  
  public final void L_()
  {
    if ((g() instanceof OrderFullActivity))
    {
      Object localObject = (OrderFullActivity)g();
      if (((OrderFullActivity)localObject).p != null)
      {
        localObject = ((OrderFullActivity)localObject).p;
        if (((e)localObject).a != null) {
          ((com.xueqiu.android.trade.b.b)((e)localObject).a).m();
        }
      }
    }
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.ao = ((TradeAccount)this.r.getParcelable("extra_trade_account"));
    return paramLayoutInflater.inflate(2130903384, paramViewGroup, false);
  }
  
  public final void a()
  {
    com.xueqiu.android.common.q.a(v.b("/broker/order") + "?tid=" + this.ao.getTid(), g());
  }
  
  public final void a(View paramView)
  {
    if (paramView == this.d)
    {
      this.g.setVisibility(0);
      this.h.setVisibility(8);
      this.ak.setVisibility(8);
      return;
    }
    if (paramView == this.e)
    {
      this.g.setVisibility(8);
      this.h.setVisibility(0);
      this.ak.setVisibility(8);
      return;
    }
    this.g.setVisibility(8);
    this.h.setVisibility(8);
    this.ak.setVisibility(0);
  }
  
  public final void a(View paramView, @Nullable Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    this.c = ((IndicatorTabLayout)paramView.findViewById(2131625271));
    this.aq = ((FrameLayout)paramView.findViewById(2131625273));
    this.g = new com.xueqiu.android.trade.view.e(g());
    this.h = new com.xueqiu.android.trade.view.e(g());
    this.ak = new com.xueqiu.android.trade.view.e(g());
    this.d = this.g.getListView();
    this.e = this.h.getListView();
    this.f = this.ak.getListView();
    this.g.setEmptyText("暂无股票持仓");
    this.h.setEmptyText("暂无委托记录");
    this.ak.setEmptyText("暂无成交记录");
    this.h.setTitle(3);
    this.ak.setTitle(4);
    this.g.setTitle(5);
    this.aq.addView(this.g);
    this.aq.addView(this.h);
    this.aq.addView(this.ak);
    this.d.setOnItemClickListener(this);
    paramView = g();
    if ((this.ao != null) && (this.ao.isUSType())) {}
    for (boolean bool = true;; bool = false)
    {
      this.al = new m(paramView, bool);
      this.am = new com.xueqiu.android.trade.a.h(g());
      this.an = new com.xueqiu.android.trade.a.e(g());
      this.d.setAdapter(this.al);
      this.e.setAdapter(this.am);
      this.f.setAdapter(this.an);
      this.an.b = this.ao;
      this.al.g = this;
      this.am.b = this;
      a(this.d);
      this.c.setOnTabChangeListener(this);
      this.c.a(0);
      ((com.xueqiu.android.trade.b.k)this.a).c();
      return;
    }
  }
  
  public final void a(final TrustDeed paramTrustDeed)
  {
    f localf = f.a((com.xueqiu.android.common.b)g(), new g()
    {
      public final void a(f paramAnonymousf, int paramAnonymousInt)
      {
        switch (paramAnonymousInt)
        {
        case 1: 
        default: 
          return;
        case 0: 
          paramAnonymousf.dismiss();
          return;
        }
        paramAnonymousf.dismiss();
        q.this.y();
        ((com.xueqiu.android.trade.b.k)q.c(q.this)).a(paramTrustDeed);
      }
    });
    localf.a("撤销委托单");
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("股票：");
    localStringBuilder.append(paramTrustDeed.getSname());
    localStringBuilder.append(" ");
    localStringBuilder.append(paramTrustDeed.getScode());
    localStringBuilder.append("\n");
    localStringBuilder.append("价格：");
    localStringBuilder.append(paramTrustDeed.getPrice());
    localStringBuilder.append("\n");
    localStringBuilder.append("数量：");
    localStringBuilder.append(paramTrustDeed.getAmount());
    localf.b(localStringBuilder.toString());
    localf.setCancelable(true);
    localf.c(a(2131165296));
    localf.d(a(2131165361));
    localf.show();
  }
  
  public final void a(ArrayList<Object> paramArrayList)
  {
    this.g.a(true);
    this.al.a(paramArrayList);
    if ((paramArrayList != null) && (paramArrayList.size() != 0)) {
      this.g.a.setVisibility(8);
    }
    for (;;)
    {
      if ((paramArrayList == null) || (paramArrayList.size() < 20)) {
        this.d.a("");
      }
      return;
      this.g.a.setVisibility(0);
    }
  }
  
  public final void a(List<TrustDeed> paramList, boolean paramBoolean)
  {
    this.h.a(true);
    if (paramBoolean)
    {
      com.xueqiu.android.trade.a.h localh = this.am;
      if (paramList != null)
      {
        localh.a.addAll(paramList);
        localh.notifyDataSetChanged();
      }
    }
    for (;;)
    {
      this.e.a = false;
      if ((paramList.size() < 20) || (!((com.xueqiu.android.trade.b.k)this.a).d())) {
        this.e.a("无更多记录");
      }
      return;
      this.e.b = true;
      this.am.refresh(paramList);
    }
  }
  
  public final void b(List<Transaction> paramList, boolean paramBoolean)
  {
    this.ak.a(true);
    if (paramBoolean) {
      c(paramList, false);
    }
    for (;;)
    {
      this.f.a = false;
      if ((paramList.size() < 20) || (!((com.xueqiu.android.trade.b.k)this.a).e()))
      {
        if ((this.ao != null) && (!this.ao.isFirstTrade())) {
          break;
        }
        this.f.a("无更多记录");
      }
      return;
      this.f.b = true;
      c(paramList, true);
    }
    if (this.ao.isIB())
    {
      this.f.a("今日无更多记录");
      return;
    }
    this.f.a("6个月内无更多记录");
  }
  
  public final void b_(String paramString)
  {
    if (TextUtils.equals(paramString, a(2131166394)))
    {
      ((com.xueqiu.android.trade.b.k)this.a).c();
      a(this.d);
      paramString = new SNBEvent(1517, 21);
      com.xueqiu.android.base.i.a().a(paramString);
      return;
    }
    if (TextUtils.equals(paramString, a(2131166390)))
    {
      ((com.xueqiu.android.trade.b.k)this.a).a("");
      a(this.e);
      paramString = new SNBEvent(1517, 20);
      com.xueqiu.android.base.i.a().a(paramString);
      return;
    }
    ((com.xueqiu.android.trade.b.k)this.a).b("");
    a(this.f);
    paramString = new SNBEvent(1517, 23);
    com.xueqiu.android.base.i.a().a(paramString);
  }
  
  public final void c()
  {
    this.b.k();
  }
  
  public final void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    this.ar.post(new Runnable()
    {
      public final void run()
      {
        q.b(q.this).a(q.b(q.this).getCurrentItem());
      }
    });
  }
  
  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (this.b != null)
    {
      paramAdapterView = ((ListView)paramAdapterView).getAdapter().getItem(paramInt);
      if ((paramAdapterView != null) && ((paramAdapterView instanceof TradePosition)))
      {
        paramAdapterView = ((TradePosition)paramAdapterView).getSymbol();
        this.b.b(paramAdapterView);
        paramAdapterView = new SNBEvent(1517, 22);
        com.xueqiu.android.base.i.a().a(paramAdapterView);
      }
    }
  }
  
  public final void q()
  {
    super.q();
    this.ar.removeCallbacksAndMessages(null);
  }
  
  public final void refresh()
  {
    int i = this.c.getCurrentItem();
    if (i == 0) {
      ((com.xueqiu.android.trade.b.k)this.a).c();
    }
    do
    {
      return;
      if (i == 1)
      {
        ((com.xueqiu.android.trade.b.k)this.a).a("");
        return;
      }
    } while (i != 2);
    ((com.xueqiu.android.trade.b.k)this.a).b("");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\c\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */