package com.xueqiu.android.stock;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.support.v4.a.ac;
import android.support.v4.a.k;
import android.support.v4.view.bd;
import android.support.v4.view.cp;
import android.support.v7.a.g;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ListView;
import com.android.volley.y;
import com.google.gson.JsonArray;
import com.google.gson.reflect.TypeToken;
import com.snowballfinance.messageplatform.a.z;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.ag;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.common.widget.SwitchSwipeEnableViewPager;
import com.xueqiu.android.message.client.MessageService;
import com.xueqiu.android.stock.c.t;
import com.xueqiu.android.stock.c.t.1;
import com.xueqiu.android.stock.model.StockQuote;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class StockDetailActivity
  extends com.xueqiu.android.common.b
  implements com.xueqiu.android.stockchart.a.a, com.xueqiu.android.stockchart.a.c
{
  public List<StockQuote> j = null;
  public int k;
  public boolean p = false;
  private SwitchSwipeEnableViewPager q = null;
  private List<com.xueqiu.android.common.c> r = new ArrayList();
  private Handler s = new Handler(Looper.getMainLooper());
  private boolean t = false;
  private MessageService u = null;
  private ViewGroup v = null;
  private boolean w = false;
  private com.xueqiu.android.base.b.x x = null;
  private Runnable y = new Runnable()
  {
    public final void run()
    {
      v.c("StockDetailView", "尝试刷新一次" + StockDetailActivity.d(StockDetailActivity.this).getSymbol());
      if (30 == StockDetailActivity.d(StockDetailActivity.this).getType()) {
        return;
      }
      if (StockDetailActivity.e(StockDetailActivity.this)) {
        if ((StockDetailActivity.f(StockDetailActivity.this)) || (StockDetailActivity.g(StockDetailActivity.this) == null) || (!StockDetailActivity.g(StockDetailActivity.this).a())) {
          StockDetailActivity.h(StockDetailActivity.this);
        }
      }
      for (int i = 1000;; i = 120000)
      {
        StockDetailActivity.c(StockDetailActivity.this, i);
        return;
        StockDetailActivity.a(StockDetailActivity.this, StockDetailActivity.d(StockDetailActivity.this).getSymbol());
        break;
      }
    }
  };
  private ServiceConnection z = new ServiceConnection()
  {
    public final void onServiceConnected(ComponentName paramAnonymousComponentName, IBinder paramAnonymousIBinder)
    {
      StockDetailActivity.a(StockDetailActivity.this, (MessageService)((com.xueqiu.android.message.client.b)paramAnonymousIBinder).a);
    }
    
    public final void onServiceDisconnected(ComponentName paramAnonymousComponentName)
    {
      StockDetailActivity.a(StockDetailActivity.this, null);
    }
  };
  
  private android.support.v4.a.i b(int paramInt)
  {
    if (this.r.size() > paramInt)
    {
      localObject = (com.xueqiu.android.common.c)this.r.get(paramInt);
      if (localObject != null) {
        return (android.support.v4.a.i)localObject;
      }
    }
    while (paramInt >= this.r.size()) {
      this.r.add(null);
    }
    Object localObject = getIntent().getStringExtra("extra_from_broker");
    if (!com.xueqiu.android.base.b.a.c.a((CharSequence)localObject)) {}
    for (localObject = com.xueqiu.android.stock.c.x.a((StockQuote)this.j.get(paramInt), (String)localObject);; localObject = com.xueqiu.android.stock.c.x.a((StockQuote)this.j.get(paramInt)))
    {
      this.r.set(paramInt, localObject);
      return (android.support.v4.a.i)localObject;
    }
  }
  
  private void c(int paramInt)
  {
    this.s.removeCallbacks(this.y);
    this.s.postDelayed(this.y, paramInt);
  }
  
  private StockQuote j()
  {
    return (StockQuote)this.j.get(this.q.getCurrentItem());
  }
  
  private com.xueqiu.android.stock.c.x k()
  {
    return (com.xueqiu.android.stock.c.x)b(this.q.getCurrentItem());
  }
  
  public final void a(float paramFloat1, float paramFloat2)
  {
    ((ListView)((SNBPullToRefreshListView)findViewById(2131625246)).getRefreshableView()).requestDisallowInterceptTouchEvent(true);
  }
  
  public final void b(float paramFloat1, float paramFloat2)
  {
    this.q.setSwipeEnable(false);
  }
  
  public final void c(float paramFloat1, float paramFloat2)
  {
    ((ListView)((SNBPullToRefreshListView)findViewById(2131625246)).getRefreshableView()).requestDisallowInterceptTouchEvent(false);
  }
  
  public final void d(float paramFloat1, float paramFloat2)
  {
    this.w = true;
    ((ListView)((SNBPullToRefreshListView)findViewById(2131625246)).getRefreshableView()).requestDisallowInterceptTouchEvent(true);
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getKeyCode() == 4) && (paramKeyEvent.getAction() == 1))
    {
      int i;
      if (getResources().getConfiguration().orientation == 2)
      {
        i = 1;
        if (i == 0) {
          break label48;
        }
        setRequestedOrientation(1);
      }
      label48:
      while ((k() != null) && (k().y_()))
      {
        return true;
        i = 0;
        break;
      }
    }
    return super.dispatchKeyEvent(paramKeyEvent);
  }
  
  protected final void e()
  {
    com.xueqiu.android.base.b.a();
    if (com.xueqiu.android.base.b.i())
    {
      setTheme(2131361881);
      return;
    }
    super.e();
  }
  
  public final void e(float paramFloat1, float paramFloat2) {}
  
  public final void f(float paramFloat1, float paramFloat2)
  {
    this.w = false;
    ((ListView)((SNBPullToRefreshListView)findViewById(2131625246)).getRefreshableView()).requestDisallowInterceptTouchEvent(false);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903115);
    this.i.b().d();
    paramBundle = (StockQuote)getIntent().getParcelableExtra("extra_stock");
    if ((paramBundle == null) || (paramBundle.getSymbol() == null))
    {
      finish();
      return;
    }
    this.j = new ArrayList();
    this.j.add(paramBundle);
    this.k = getIntent().getIntExtra("extra_current_index", 0);
    Object localObject = new o(this, c());
    this.q = ((SwitchSwipeEnableViewPager)findViewById(2131624310));
    this.q.setAdapter((bd)localObject);
    this.q.setOffscreenPageLimit(1);
    localObject = new cp()
    {
      public final void a(int paramAnonymousInt1, float paramAnonymousFloat, int paramAnonymousInt2) {}
      
      public final void b(int paramAnonymousInt) {}
      
      public final void b_(int paramAnonymousInt)
      {
        android.support.v4.a.i locali = StockDetailActivity.a(StockDetailActivity.this, paramAnonymousInt);
        if (locali != null) {
          ((com.xueqiu.android.stock.c.x)locali).C_();
        }
        if (paramAnonymousInt != StockDetailActivity.a(StockDetailActivity.this))
        {
          locali = StockDetailActivity.a(StockDetailActivity.this, StockDetailActivity.a(StockDetailActivity.this));
          if (locali != null) {
            ((com.xueqiu.android.stock.c.x)locali).d = false;
          }
          StockDetailActivity.b(StockDetailActivity.this, paramAnonymousInt);
          StockDetailActivity.b(StockDetailActivity.this);
        }
        StockDetailActivity.c(StockDetailActivity.this, 1500);
      }
    };
    this.q.setOnPageChangeListener((cp)localObject);
    this.q.setCurrentItem(this.k);
    if (this.k == 0) {
      ag.d.a(new rx.c.a()
      {
        public final void a()
        {
          android.support.v4.a.i locali = StockDetailActivity.a(StockDetailActivity.this, 0);
          if (locali != null) {
            ((com.xueqiu.android.stock.c.x)locali).C_();
          }
        }
      });
    }
    this.v = ((ViewGroup)findViewById(2131624354));
    this.v.findViewById(2131624142).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        StockDetailActivity.this.finish();
      }
    });
    bindService(new Intent(this, MessageService.class), this.z, 1);
    localObject = new SNBEvent(1600, 1);
    ((SNBEvent)localObject).addProperty("symbol", paramBundle.getSymbol());
    com.xueqiu.android.base.i.a().a((SNBEvent)localObject);
  }
  
  protected void onDestroy()
  {
    if (this.u != null) {
      unbindService(this.z);
    }
    super.onDestroy();
  }
  
  public void onResume()
  {
    c(1000);
    super.onResume();
  }
  
  public void onStop()
  {
    this.s.removeCallbacks(this.y);
    super.onStop();
  }
  
  public void setRequestedOrientation(int paramInt)
  {
    super.setRequestedOrientation(paramInt);
    int i = this.q.getCurrentItem();
    Object localObject1 = (com.xueqiu.android.stock.c.x)((o)this.q.getAdapter()).a(this.q, i);
    if (paramInt == 0)
    {
      this.v.setVisibility(8);
      this.q.setSwipeEnable(false);
      localObject1 = ((com.xueqiu.android.stock.c.x)localObject1).c;
      if (((t)localObject1).f == null) {
        aa.a("加载中，请稍后！");
      }
    }
    do
    {
      do
      {
        return;
        localObject2 = new SNBEvent(1602, 3);
        ((SNBEvent)localObject2).addProperty("symbol", ((t)localObject1).a.getSymbol());
        com.xueqiu.android.base.i.a().a((SNBEvent)localObject2);
        ((t)localObject1).e = new com.xueqiu.android.stockchart.d.b();
        ((t)localObject1).e.ao = ((t)localObject1).f;
        ((t)localObject1).e.a(((t)localObject1).f.b);
        ((t)localObject1).e.e = ((com.xueqiu.android.stockchart.c.b)localObject1);
        ((t)localObject1).e.aq = ((t)localObject1).d.aq;
        ((t)localObject1).e.ar = ((t)localObject1).d.ar;
        ((t)localObject1).e.ax = ((t)localObject1).d.ax;
        ((t)localObject1).e.ay = ((t)localObject1).d.ay;
        ((t)localObject1).e.al = ((t)localObject1).am;
        ((t)localObject1).e.am = ((t)localObject1).an;
        ((t)localObject1).e.as = "big";
        localObject2 = ((t)localObject1).g().c().a();
        ((ac)localObject2).a(2131624341, ((t)localObject1).e);
        if (((com.xueqiu.android.common.b)((t)localObject1).g()).n) {
          ((ac)localObject2).d();
        }
        ((t)localObject1).g().findViewById(2131624341).setVisibility(0);
        return;
      } while (paramInt != 1);
      this.v.setVisibility(0);
      this.q.setSwipeEnable(true);
      localObject1 = ((com.xueqiu.android.stock.c.x)localObject1).c;
    } while (((t)localObject1).e == null);
    Object localObject2 = ((t)localObject1).e.aq;
    ((t)localObject1).g().findViewById(2131624341).setVisibility(8);
    ac localac = ((t)localObject1).g().c().a();
    localac.b(((t)localObject1).e);
    if (((com.xueqiu.android.common.b)((t)localObject1).g()).n) {
      localac.d();
    }
    new Handler(Looper.getMainLooper()).postDelayed(new t.1((t)localObject1, (String)localObject2), 200L);
  }
  
  protected final Boolean w_()
  {
    boolean bool = false;
    if ((this.q != null) && (this.q.getCurrentItem() != 0)) {
      return Boolean.valueOf(false);
    }
    if (this.w) {
      return Boolean.valueOf(false);
    }
    if (getResources().getConfiguration().orientation != 2) {
      bool = true;
    }
    return Boolean.valueOf(bool);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\StockDetailActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */