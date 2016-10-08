package com.xueqiu.android.trade.c;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.view.ViewPager;
import android.support.v4.view.cp;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.viewpagerindicator.CirclePageIndicator;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.trade.model.TradeAccount;
import com.xueqiu.android.trade.model.TradeBroker;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class j
  extends com.xueqiu.android.common.c
  implements cp
{
  private View a;
  private CirclePageIndicator b;
  private ViewPager c;
  private ArrayList<l> d = null;
  private k e;
  private l f;
  private ArrayList<TradeAccount> g;
  
  private static int b(List<TradeAccount> paramList)
  {
    String str = UserPrefs.getCurrentTradeAccountTid();
    if (paramList.size() != 0)
    {
      int i = 0;
      while (i < paramList.size())
      {
        if (TextUtils.equals(((TradeAccount)paramList.get(i)).getTid(), str)) {
          return i;
        }
        i += 1;
      }
    }
    return 0;
  }
  
  private static void c(List<TradeAccount> paramList)
  {
    Object localObject;
    if (paramList.size() != 0)
    {
      localObject = paramList.iterator();
      int j = 0;
      int i = 0;
      for (;;)
      {
        m = j;
        k = i;
        if (!((Iterator)localObject).hasNext()) {
          break;
        }
        if (!((TradeAccount)((Iterator)localObject).next()).isUSType()) {
          i = 1;
        } else {
          j = 1;
        }
      }
    }
    int m = 0;
    int k = 0;
    TradeAccount localTradeAccount;
    if (k == 0)
    {
      localObject = new TradeBroker();
      ((TradeBroker)localObject).setTraderName("平安证券");
      ((TradeBroker)localObject).setTraderLogo("http://assets.imedao.com/images/broker-logo/PINGAN.png");
      localTradeAccount = new TradeAccount();
      localTradeAccount.setTid("PAMID");
      localTradeAccount.setTradeBroker((TradeBroker)localObject);
      localTradeAccount.setCreateByMyself(true);
      paramList.add(localTradeAccount);
    }
    if (m == 0)
    {
      localObject = new TradeBroker();
      ((TradeBroker)localObject).setTraderName("第一证券");
      ((TradeBroker)localObject).setTraderLogo("https://assets.imedao.com/images/broker-logo/DYZQ.png");
      localTradeAccount = new TradeAccount();
      localTradeAccount.setTid("DYZQ");
      localTradeAccount.setTradeBroker((TradeBroker)localObject);
      localTradeAccount.setCreateByMyself(true);
      paramList.add(localTradeAccount);
    }
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.a = paramLayoutInflater.inflate(2130903367, paramViewGroup, false);
    this.b = ((CirclePageIndicator)this.a.findViewById(2131625222));
    this.c = ((ViewPager)this.a.findViewById(2131625221));
    this.g = UserPrefs.getBoundBrokers();
    c(this.g);
    if (this.c.getAdapter() == null)
    {
      this.e = new k(this, i(), this.g);
      this.c.setAdapter(this.e);
      this.b.setViewPager(this.c);
      this.b.setRadius(6.0F);
      this.b.setCentered(true);
    }
    return this.a;
  }
  
  public final void a(int paramInt1, float paramFloat, int paramInt2) {}
  
  public final void a(@Nullable Bundle paramBundle)
  {
    super.a(paramBundle);
    ((com.xueqiu.android.common.b)g()).a(rx.a.a.a.a(g(), com.xueqiu.android.message.client.c.m).c(new rx.c.b() {}));
  }
  
  public final void b(int paramInt) {}
  
  public final void b_(int paramInt)
  {
    if (this.d.size() > paramInt)
    {
      l locall1 = (l)this.d.get(paramInt);
      if (this.f != null)
      {
        l locall2 = this.f;
        locall2.a = false;
        if (locall2.c != null)
        {
          locall2.c.b();
          locall2.c = null;
        }
      }
      if ((locall1 != null) && (locall1.j()))
      {
        locall1.C_();
        this.f = locall1;
        if (!locall1.E().isCreateByMyself()) {
          UserPrefs.setCurrentTradeAccountTid(locall1.E().getTid());
        }
      }
    }
  }
  
  public final void c_(boolean paramBoolean)
  {
    if ((this.d == null) || (this.d.size() <= 0)) {}
    for (;;)
    {
      return;
      Iterator localIterator;
      l locall;
      if (paramBoolean)
      {
        localIterator = this.d.iterator();
        while (localIterator.hasNext())
        {
          locall = (l)localIterator.next();
          locall.c_(true);
          locall.p();
        }
      }
      else
      {
        localIterator = this.d.iterator();
        while (localIterator.hasNext())
        {
          locall = (l)localIterator.next();
          locall.c_(false);
          locall.o();
        }
      }
    }
  }
  
  public final void o()
  {
    super.o();
    this.g = UserPrefs.getBoundBrokers();
    c(this.g);
    this.d = new ArrayList();
    if (this.e != null)
    {
      this.e.b = this.g;
      this.e.d();
    }
    int i = b(this.g);
    this.b.setOnPageChangeListener(this);
    if (this.c != null) {
      this.c.setCurrentItem(i);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\c\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */