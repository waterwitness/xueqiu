package com.xueqiu.android.stock.c;

import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.a.k;
import android.support.v4.view.cp;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.volley.y;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.reflect.TypeToken;
import com.snowballfinance.messageplatform.a.z;
import com.viewpagerindicator.TabPageIndicator;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.ag;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.m;
import com.xueqiu.android.common.MainActivity;
import com.xueqiu.android.common.ManageGroupInfoActivity;
import com.xueqiu.android.common.d;
import com.xueqiu.android.common.e;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.widget.SwitchSwipeEnableViewPager;
import com.xueqiu.android.common.widget.x;
import com.xueqiu.android.message.client.MessageService;
import com.xueqiu.android.stock.model.Portfolio;
import com.xueqiu.android.stock.model.PortfolioStock;
import com.xueqiu.android.stock.model.StockQuote;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import rx.c.f;
import rx.j;

public final class n
  extends e
  implements d, q, r
{
  private MessageService ak;
  private j al;
  private boolean am = false;
  private int an = -1;
  private int ao = 0;
  private int ap = 0;
  private int aq = 0;
  private View ar;
  private View as;
  private ServiceConnection at = new ServiceConnection()
  {
    public final void onServiceConnected(ComponentName paramAnonymousComponentName, IBinder paramAnonymousIBinder)
    {
      n.a(n.this, (MessageService)((com.xueqiu.android.message.client.b)paramAnonymousIBinder).a);
    }
    
    public final void onServiceDisconnected(ComponentName paramAnonymousComponentName)
    {
      n.a(n.this, null);
    }
  };
  private int b;
  private long c;
  private List<Portfolio> d;
  private TabPageIndicator e = null;
  private SwitchSwipeEnableViewPager f = null;
  private p[] g = null;
  private o h = null;
  
  private String H()
  {
    return String.format("%s_%d", new Object[] { "key_selected_portfolio", Integer.valueOf(this.b) });
  }
  
  private String I()
  {
    return String.format("%s_%d", new Object[] { "key_portfolios", Integer.valueOf(this.b) });
  }
  
  private String J()
  {
    return String.format("%s_%d", new Object[] { "portfolio_sort", Integer.valueOf(this.b) });
  }
  
  private void K()
  {
    this.am = false;
    Object localObject = O();
    boolean bool = this.am;
    if (((p)localObject).g != bool) {
      ((p)localObject).g = bool;
    }
    if (bool)
    {
      ((p)localObject).F();
      localObject = com.xueqiu.android.base.r.b(2130772110, g());
      ((ImageView)this.T.findViewById(2131625859)).setImageDrawable((Drawable)localObject);
      this.T.findViewById(2131625250).setVisibility(0);
      this.T.findViewById(2131623956).setVisibility(0);
      if (this.b != 1) {
        break label245;
      }
      this.T.findViewById(2131625217).setVisibility(0);
      ((TextView)this.T.findViewById(2131624097)).setText(a(2131165388));
    }
    for (;;)
    {
      this.f.setSwipeEnable(true);
      this.e.setSelectEnable(true);
      return;
      ((p)localObject).g = false;
      ((p)localObject).b.setPullToRefreshEnabled(true);
      ((p)localObject).c.b = null;
      ((p)localObject).e.i = false;
      ((p)localObject).e.notifyDataSetChanged();
      ((p)localObject).E();
      ((p)localObject).g().invalidateOptionsMenu();
      if (((p)localObject).G()) {
        ((p)localObject).f.C();
      }
      Intent localIntent = new Intent("com.xueqiu.android.action.switchTabHostEnabled");
      localIntent.putExtra("extra_bool", true);
      android.support.v4.content.r.a(((p)localObject).f()).a(localIntent);
      break;
      label245:
      ((TextView)this.T.findViewById(2131624097)).setText(a(2131165451));
    }
  }
  
  private void L()
  {
    x().a(this.c, null, this.b, new com.xueqiu.android.base.b.p(this)
    {
      public final void a(y paramAnonymousy)
      {
        if (!n.this.j()) {}
      }
    });
  }
  
  private void M()
  {
    if ((!j()) || (!k()) || (!com.xueqiu.android.base.b.a().c)) {}
    while ((O() == null) || (!O().G()) || (O().D() == null) || (O().D().size() == 0)) {
      return;
    }
    Object localObject1 = O().D();
    final Object localObject2 = O().e.c;
    localObject1 = rx.a.a((Iterable)localObject1).c(new f() {});
    localObject2 = rx.a.a(((rx.a)localObject1).a(new f() {}).c(new f() {}), ((rx.a)localObject1).a(new f() {}).c(new f() {})).d();
    localObject1 = ((rx.a)localObject2).a(50).b(new f() {});
    localObject2 = ((rx.a)localObject2).a(50).b(new f() {});
    ((rx.a)localObject1).a(rx.a.d.a.a()).a(new rx.c.b()new rx.c.b {}, new rx.c.b() {});
  }
  
  private boolean N()
  {
    return this.c <= 0L;
  }
  
  private p O()
  {
    if ((this.g == null) || (this.f.getCurrentItem() >= this.g.length)) {
      return null;
    }
    return this.g[this.f.getCurrentItem()];
  }
  
  public static n a(int paramInt, long paramLong)
  {
    n localn = new n();
    Bundle localBundle = new Bundle();
    localBundle.putInt("arg_category", paramInt);
    localBundle.putLong("arg_user_id", paramLong);
    localn.e(localBundle);
    return localn;
  }
  
  private static List<Portfolio> b(List<Portfolio> paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      Portfolio localPortfolio = (Portfolio)localIterator.next();
      String str = localPortfolio.getName();
      if (str.equals("只看美股")) {
        localPortfolio.setName("美股");
      } else if (str.equals("只看沪深")) {
        localPortfolio.setName("沪深");
      } else if (str.equals("只看港股")) {
        localPortfolio.setName("港股");
      } else if (str.equals("我的持仓")) {
        localPortfolio.setName("持仓");
      } else if (str.equals("我的组合")) {
        localPortfolio.setName("我的");
      } else if (str.equals("他的组合")) {
        localPortfolio.setName("他的");
      }
    }
    return paramList;
  }
  
  private static boolean b(Portfolio paramPortfolio1, Portfolio paramPortfolio2)
  {
    if ((paramPortfolio1.getType() == 2) && (paramPortfolio2.getType() == paramPortfolio1.getType())) {
      if ((paramPortfolio1.getId() != paramPortfolio2.getId()) || (!paramPortfolio1.getName().equals(paramPortfolio2.getName()))) {}
    }
    while (paramPortfolio1.getType() == paramPortfolio2.getType())
    {
      return true;
      return false;
    }
    return false;
  }
  
  public final void B_()
  {
    if (O() != null) {
      O().B_();
    }
  }
  
  public final void C()
  {
    if ((this.al != null) && (!this.al.c())) {
      this.al.b();
    }
    this.al = ag.c.a(new rx.c.a()
    {
      public final void a()
      {
        n.s(n.this);
      }
    }, 1L, 1L, TimeUnit.SECONDS);
    a(this.al);
  }
  
  public final void D()
  {
    if ((this.al != null) && (!this.al.c())) {
      this.al.b();
    }
  }
  
  public final int E()
  {
    return this.ao;
  }
  
  public final int F()
  {
    return this.ap;
  }
  
  public final void F_()
  {
    super.F_();
    D();
  }
  
  public final int G()
  {
    return this.aq;
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    int j = 0;
    e_(true);
    int i;
    if (this.ar == null)
    {
      this.ar = paramLayoutInflater.inflate(2130903374, paramViewGroup, false);
      if (!N())
      {
        this.ar.findViewById(2131625249).setVisibility(8);
        this.ar.findViewById(2131625859).setVisibility(8);
        this.e = ((TabPageIndicator)this.ar.findViewById(2131624326));
        this.f = ((SwitchSwipeEnableViewPager)this.ar.findViewById(2131624310));
        this.as = this.ar.findViewById(2131624327);
        this.e.getViewTreeObserver().addOnScrollChangedListener(new ViewTreeObserver.OnScrollChangedListener()
        {
          public final void onScrollChanged()
          {
            boolean bool = n.h(n.this).canScrollHorizontally(1);
            if ((n.i(n.this).getVisibility() == 0) && (!bool)) {
              n.i(n.this).setVisibility(4);
            }
            while ((n.i(n.this).getVisibility() != 4) || (!bool)) {
              return;
            }
            n.i(n.this).setVisibility(0);
          }
        });
        b(this.a);
        if (this.d == null) {
          this.d = new ArrayList();
        }
        this.g = new p[this.d.size()];
        if (i().d() != null)
        {
          paramLayoutInflater = (p[])i().d().toArray(new p[0]);
          i = 0;
        }
      }
      else
      {
        for (;;)
        {
          if (i >= this.d.size()) {
            break label317;
          }
          paramViewGroup = (Portfolio)this.d.get(i);
          int k = paramLayoutInflater.length;
          j = 0;
          for (;;)
          {
            if (j < k)
            {
              paramBundle = paramLayoutInflater[j];
              if ((paramBundle != null) && (b(paramViewGroup, paramBundle.d))) {
                this.g[i] = paramBundle;
              }
              j += 1;
              continue;
              this.ar.findViewById(2131625859).setOnClickListener(new View.OnClickListener()
              {
                public final void onClick(View paramAnonymousView)
                {
                  if (!n.e(n.this))
                  {
                    n.f(n.this);
                    return;
                  }
                  n.g(n.this);
                }
              });
              break;
            }
          }
          i += 1;
        }
      }
      label317:
      if (this.h == null) {
        this.h = new o(this, i());
      }
      this.f.setAdapter(this.h);
      this.f.a(new cp()
      {
        public final void a(int paramAnonymousInt1, float paramAnonymousFloat, int paramAnonymousInt2) {}
        
        public final void b(int paramAnonymousInt) {}
        
        public final void b_(int paramAnonymousInt)
        {
          Object localObject2 = n.j(n.this)[paramAnonymousInt];
          Object localObject1 = localObject2;
          if (localObject2 == null) {
            localObject1 = (p)n.k(n.this).a(paramAnonymousInt);
          }
          ((p)localObject1).C_();
          ((p)localObject1).b(n.l(n.this));
          localObject2 = (Portfolio)n.m(n.this).get(paramAnonymousInt);
          if (n.a(n.this) == 1)
          {
            localObject1 = new SNBEvent(1400, 3);
            if (localObject2 != null) {
              break label123;
            }
          }
          label123:
          for (localObject2 = "";; localObject2 = ((Portfolio)localObject2).getName())
          {
            ((SNBEvent)localObject1).addProperty("group_name", (String)localObject2);
            com.xueqiu.android.base.i.a().a((SNBEvent)localObject1);
            return;
            localObject1 = new SNBEvent(1200, 1);
            break;
          }
        }
      });
      this.e.setViewPager(this.f);
      this.f.setOffscreenPageLimit(this.d.size());
      this.h.d();
      if ((N()) && (this.an != -1) && (this.d.size() > this.an))
      {
        this.f.setCurrentItem(this.an);
        this.an = -1;
      }
      i = 1;
    }
    for (;;)
    {
      if ((i != 0) || (this.d == null) || (this.d.size() == 0)) {
        L();
      }
      return this.ar;
      i = j;
      if (this.ar.getParent() != null)
      {
        ((ViewGroup)this.ar.getParent()).removeView(this.ar);
        i = j;
      }
    }
  }
  
  public final void a(int paramInt1, int paramInt2, int paramInt3)
  {
    this.ao = paramInt1;
    this.ap = paramInt2;
    this.aq = paramInt3;
    if (this.g != null)
    {
      p[] arrayOfp = this.g;
      paramInt2 = arrayOfp.length;
      paramInt1 = 0;
      while (paramInt1 < paramInt2)
      {
        p localp = arrayOfp[paramInt1];
        paramInt3 = this.ao;
        int i = this.ap;
        int j = this.aq;
        if (localp.e != null)
        {
          localp.e.g = paramInt3;
          localp.e.h = i;
          localp.e.f = j;
          localp.e.b();
          localp.e.notifyDataSetChanged();
          localp.a(((s)localp.a.getTag()).b);
          localp.b(((s)localp.a.getTag()).a);
        }
        paramInt1 += 1;
      }
    }
  }
  
  public final void a(Context paramContext)
  {
    super.a(paramContext);
    if (u()) {
      M();
    }
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    this.a = "portfolio";
    if (this.r != null)
    {
      this.b = this.r.getInt("arg_category", 2);
      this.c = this.r.getLong("arg_user_id", -1L);
    }
    if (N())
    {
      this.d = ((List)m.a().fromJson(UserPrefs.getString(f(), I(), ""), new TypeToken() {}.getType()));
      if ((this.d != null) && (this.d.size() > 0)) {
        this.d = b(this.d);
      }
      this.an = UserPrefs.getInt(f(), H(), 0);
      if (N())
      {
        paramBundle = UserPrefs.getString(g(), J(), null);
        if (paramBundle != null)
        {
          paramBundle = paramBundle.split("\\|");
          if (paramBundle.length == 3)
          {
            this.ao = Integer.parseInt(paramBundle[0]);
            this.ap = Integer.parseInt(paramBundle[1]);
            this.aq = Integer.parseInt(paramBundle[2]);
          }
        }
      }
    }
    for (;;)
    {
      a(rx.a.b.a.b(f(), new IntentFilter("com.xueqiu.android.action.refreshPortfolio")).c(new rx.c.b() {}));
      a(rx.a.b.a.a(f(), new IntentFilter("android.intent.action.SCREEN_OFF")).c(new rx.c.b() {}));
      a(rx.a.b.a.a(f(), new IntentFilter("android.intent.action.SCREEN_ON")).c(new rx.c.b() {}));
      a(rx.a.b.a.b(f(), new IntentFilter("com.xueqiu.android.action.stockColorChanged")).c(new rx.c.b() {}));
      a(rx.a.b.a.b(f(), new IntentFilter("com.xueqiu.android.intent.action.USER_OFFLINE")).c(new rx.c.b() {}));
      f().bindService(new Intent(f(), MessageService.class), this.at, 1);
      return;
      this.d = new ArrayList();
    }
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    if ((g() instanceof MainActivity)) {
      ay.a(((MainActivity)g()).j(), (ImageView)c(2131624523));
    }
  }
  
  protected final void b(String paramString)
  {
    super.b(paramString);
    if (TextUtils.isEmpty(this.a)) {}
    p localp;
    do
    {
      do
      {
        return;
      } while ((!this.a.equals(paramString)) || (this.f == null) || (this.g == null) || (this.f.getCurrentItem() < 0) || (this.f.getCurrentItem() >= this.g.length));
      localp = this.g[this.f.getCurrentItem()];
    } while ((localp == null) || (!localp.j()));
    localp.b(paramString);
  }
  
  public final void c_(boolean paramBoolean)
  {
    super.c_(paramBoolean);
    if ((this.g == null) || (this.g.length <= 0)) {}
    for (;;)
    {
      return;
      p[] arrayOfp = this.g;
      int j = arrayOfp.length;
      int i = 0;
      while (i < j)
      {
        arrayOfp[i].c_(paramBoolean);
        i += 1;
      }
    }
  }
  
  public final void d()
  {
    super.d();
    D();
  }
  
  public final void e()
  {
    super.e();
    D();
  }
  
  public final void o()
  {
    super.o();
    M();
    if (u()) {
      C();
    }
  }
  
  public final void q()
  {
    f().unbindService(this.at);
    if (this.f != null) {
      this.f.a();
    }
    super.q();
  }
  
  public final boolean u()
  {
    return (j()) && (N()) && (this.b == 2);
  }
  
  public final boolean y_()
  {
    if (this.am)
    {
      K();
      return true;
    }
    return super.y_();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\c\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */