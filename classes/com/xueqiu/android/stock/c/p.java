package com.xueqiu.android.stock.c;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.a.ac;
import android.support.v4.a.k;
import android.text.TextUtils;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.AbsListView;
import android.widget.AbsListView.LayoutParams;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.android.volley.y;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;
import com.nhaarman.listviewanimations.itemmanipulation.DynamicListView;
import com.nhaarman.listviewanimations.itemmanipulation.dragdrop.n;
import com.nhaarman.listviewanimations.itemmanipulation.dragdrop.o;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.ak;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.ag;
import com.xueqiu.android.base.util.as;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.m;
import com.xueqiu.android.common.d;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.widget.l;
import com.xueqiu.android.common.widget.x;
import com.xueqiu.android.cube.CubeActivity;
import com.xueqiu.android.cube.CubeTopListActivity;
import com.xueqiu.android.cube.model.Cube;
import com.xueqiu.android.stock.a.t;
import com.xueqiu.android.stock.model.Portfolio;
import com.xueqiu.android.stock.model.PortfolioStock;
import com.xueqiu.android.stock.model.StockQuote;
import com.xueqiu.android.trade.c.j;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import rx.c.f;
import rx.c.g;

public final class p
  extends com.xueqiu.android.common.c
  implements d, l
{
  View a;
  private long ak;
  private FrameLayout al;
  private View am;
  private String[] an = { "name", "type", "symbol", "flag", "current", "change", "percentage", "marketCapital", "tick_size" };
  private int ao = 0;
  private r ap = null;
  private boolean aq = false;
  private boolean ar = false;
  private int as = 0;
  private j at;
  private t au = new t()
  {
    private long b = 300L;
    private long c = 0L;
    
    public final void a()
    {
      if (p.h(p.this) != null)
      {
        p.a(p.this, ((s)p.h(p.this).getTag()).b);
        p.i(p.this).a(p.e(p.this).g, p.e(p.this).h, p.e(p.this).f);
      }
    }
    
    public final void a(final int paramAnonymousInt)
    {
      if ((paramAnonymousInt < 0) || (paramAnonymousInt >= p.e(p.this).a.size())) {
        return;
      }
      String str = ((PortfolioStock)p.e(p.this).a.get(paramAnonymousInt)).getCode();
      p.this.x().d(str, new com.xueqiu.android.base.b.p(p.this)
      {
        public final void a(y paramAnonymous2y)
        {
          com.xueqiu.android.base.util.aa.a(paramAnonymous2y);
        }
      });
    }
    
    public final void b(int paramAnonymousInt)
    {
      long l = System.currentTimeMillis();
      if ((paramAnonymousInt > 0) && (l - this.c >= this.b))
      {
        PortfolioStock localPortfolioStock = p.e(p.this).b(paramAnonymousInt);
        DynamicListView localDynamicListView = p.d(p.this);
        if (localDynamicListView.c == null) {
          throw new IllegalStateException("Adapter should implement Insertable!");
        }
        localDynamicListView.c.a(Arrays.asList(new Pair[] { new Pair(Integer.valueOf(0), localPortfolioStock) }));
        p.g(p.this);
      }
      this.c = l;
    }
  };
  x b;
  DynamicListView c;
  Portfolio d;
  com.xueqiu.android.stock.a.q e;
  q f = null;
  boolean g = false;
  private int h;
  
  private void H()
  {
    if (this.aq) {
      return;
    }
    if (this.al.findViewById(2131624020) == null)
    {
      this.b = new x(f());
      this.b.setId(2131624020);
      this.b.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
      localObject1 = (ListView)this.b.getRefreshableView();
      ((ListView)localObject1).setPadding(0, (int)ay.a(10.0F), 0, 0);
      ((ListView)localObject1).setClipToPadding(false);
      ((ListView)localObject1).setSelector(com.xueqiu.android.base.r.b(2130772176, g().getTheme()));
      ((ListView)localObject1).setDivider(null);
      this.al.addView(this.b);
      this.b.setOnRefreshListener(new com.xueqiu.android.common.widget.ptr.h()
      {
        public final void a()
        {
          p.a(p.this, p.c(p.this));
        }
      });
      b("portfolio");
      this.c = ((DynamicListView)this.b.getRefreshableView());
      if ((this.h == 2) && (this.r.getInt("arg_position") == 0))
      {
        localObject1 = new FrameLayout(g());
        ((FrameLayout)localObject1).setId(2131624021);
        this.c.addHeaderView((View)localObject1);
        ((FrameLayout)localObject1).setLayoutParams(new AbsListView.LayoutParams(-1, -2));
      }
      this.a = LayoutInflater.from(f()).inflate(2130903478, this.c, false);
      localObject1 = this.a;
      localObject2 = new s((byte)0);
      View localView = this.a;
      ((s)localObject2).a = ((Button)localView.findViewById(2131625554));
      ((s)localObject2).b = ((Button)localView.findViewById(2131625555));
      ((View)localObject1).setTag(localObject2);
      this.c.addHeaderView(this.a);
      this.am = LayoutInflater.from(f()).inflate(2130903575, this.c, false);
      this.am.setMinimumHeight(0);
      this.am.getLayoutParams().height = ((int)ay.a(f(), 1280.0F));
      localObject1 = (TextView)this.am.findViewById(2131625833);
      if (this.h == 1)
      {
        this.am.findViewById(2131625832).setVisibility(0);
        ((TextView)localObject1).setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            com.xueqiu.android.common.q.a(com.xueqiu.android.base.v.b("/5171159182/41278800"), p.this.f());
          }
        });
      }
      for (;;)
      {
        this.c.addFooterView(this.am);
        if (this.e == null)
        {
          this.e = new com.xueqiu.android.stock.a.q(f());
          this.e.j = this.h;
          this.e.e = this.au;
          this.e.a();
        }
        this.c.setAdapter(this.e);
        this.c.setOnScrollListener(new AbsListView.OnScrollListener()
        {
          public final void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
          
          public final void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt)
          {
            p.a(p.this, paramAnonymousInt);
          }
        });
        this.c.setOnItemClickListener(new AdapterView.OnItemClickListener()
        {
          public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
          {
            int i = p.d(p.this).getHeaderViewsCount();
            paramAnonymousAdapterView = (PortfolioStock)p.e(p.this).getItem(paramAnonymousInt - i);
            StockQuote localStockQuote;
            if (paramAnonymousAdapterView != null)
            {
              localStockQuote = (StockQuote)p.e(p.this).c.get(paramAnonymousAdapterView.getCode());
              if (localStockQuote != null)
              {
                if (p.f(p.this) != 1) {
                  break label134;
                }
                paramAnonymousView = com.xueqiu.android.base.util.q.a(p.this.f(), CubeActivity.class, "extra_cube_symbol", localStockQuote.getSymbol());
                paramAnonymousAdapterView = new SNBEvent(1400, 7);
              }
            }
            for (;;)
            {
              paramAnonymousAdapterView.addProperty("symbol", localStockQuote.getSymbol());
              com.xueqiu.android.base.i.a().a(paramAnonymousAdapterView);
              p.this.a(paramAnonymousView);
              return;
              label134:
              paramAnonymousAdapterView = new SNBEvent(1200, 2);
              paramAnonymousView = com.xueqiu.android.base.util.q.a(p.this.g(), localStockQuote);
            }
          }
        });
        if (!J()) {
          break label617;
        }
        localObject1 = this.c;
        if (Build.VERSION.SDK_INT >= 14) {
          break;
        }
        throw new UnsupportedOperationException("Drag and drop is only supported API levels 14 and up!");
        this.am.findViewById(2131625832).setVisibility(8);
      }
      ((DynamicListView)localObject1).a = new com.nhaarman.listviewanimations.itemmanipulation.dragdrop.a((DynamicListView)localObject1);
      this.c.setDraggableManager(new o());
      if (this.h == 2) {
        this.c.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener()
        {
          public final boolean onItemLongClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
          {
            int i = p.d(p.this).getHeaderViewsCount();
            if ((paramAnonymousInt - i >= p.e(p.this).getCount()) || (paramAnonymousInt - i < 0)) {
              return true;
            }
            final Object localObject = (PortfolioStock)p.e(p.this).getItem(paramAnonymousInt - i);
            paramAnonymousAdapterView = p.this.a(2131166428);
            paramAnonymousView = p.this.a(2131166431);
            AlertDialog.Builder localBuilder = new AlertDialog.Builder(p.this.f());
            localObject = new DialogInterface.OnClickListener()
            {
              public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
              {
                paramAnonymous2DialogInterface = (StockQuote)p.e(p.this).c.get(localObject.getCode());
                if (!as.g(paramAnonymous2DialogInterface.getType()))
                {
                  com.xueqiu.android.base.util.aa.a(2131166313);
                  return;
                }
                boolean bool = true;
                if (paramAnonymous2Int == 0) {
                  bool = false;
                }
                p.a(p.this, paramAnonymous2DialogInterface.getSymbol(), bool);
              }
            };
            localBuilder.setItems(new String[] { paramAnonymousAdapterView, paramAnonymousView }, (DialogInterface.OnClickListener)localObject).show().setCanceledOnTouchOutside(true);
            return true;
          }
        });
      }
      this.c.setOnItemMovedListener(new n()
      {
        public final void a()
        {
          p.g(p.this);
        }
      });
      label617:
      if (this.a != null)
      {
        localObject1 = (s)this.a.getTag();
        if (this.ap != null)
        {
          this.e.g = this.ap.E();
          this.e.h = this.ap.F();
          this.e.f = this.ap.G();
        }
        a(((s)localObject1).b);
        ((s)localObject1).b.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            paramAnonymousView = p.e(p.this);
            paramAnonymousView.g = 0;
            paramAnonymousView.h = com.xueqiu.android.stock.a.q.a(paramAnonymousView.h);
            if (p.i(p.this) != null) {
              p.i(p.this).a(p.e(p.this).g, p.e(p.this).h, p.e(p.this).f);
            }
            if (p.f(p.this) == 2)
            {
              com.xueqiu.android.base.i.a().a(new SNBEvent(1200, 9));
              return;
            }
            com.xueqiu.android.base.i.a().a(new SNBEvent(1400, 6));
          }
        });
        b(((s)localObject1).a);
        ((s)localObject1).a.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            paramAnonymousView = p.e(p.this);
            paramAnonymousView.h = 0;
            paramAnonymousView.g = com.xueqiu.android.stock.a.q.a(paramAnonymousView.g);
            if (p.i(p.this) != null) {
              p.i(p.this).a(p.e(p.this).g, p.e(p.this).h, p.e(p.this).f);
            }
            if (p.f(p.this) == 2)
            {
              com.xueqiu.android.base.i.a().a(new SNBEvent(1200, 8));
              return;
            }
            com.xueqiu.android.base.i.a().a(new SNBEvent(1400, 5));
          }
        });
      }
    }
    Object localObject1 = (List)m.a().fromJson(UserPrefs.getString(f(), u(), ""), new TypeToken() {}.getType());
    Object localObject2 = (Map)m.a().fromJson(UserPrefs.getString(f(), C(), ""), new TypeToken() {}.getType());
    if ((localObject1 != null) && (localObject2 != null))
    {
      this.e.a((List)localObject1);
      this.e.c.putAll((Map)localObject2);
      I();
      this.e.notifyDataSetChanged();
    }
    a(this.d);
  }
  
  private void I()
  {
    if (!j()) {}
    while ((this.am == null) || (this.c == null) || (this.T == null)) {
      return;
    }
    int i = this.T.getHeight();
    int j = (int)ay.a(f(), this.e.getCount() * 50);
    j = i - ((int)ay.a(f(), 10.0F) + (this.b.getTop() + this.a.getHeight() + 1)) - j;
    if (this.h == 1)
    {
      i = j;
      if (j < ay.a(40.0F)) {
        i = (int)ay.a(40.0F);
      }
      this.am.getLayoutParams().height = i;
      if (this.e.getCount() != 0) {
        break label356;
      }
      if (this.h != 1) {
        break label329;
      }
      i = 2131165501;
      label164:
      if ((this.h != 2) || (this.d.getType() != 3)) {
        break label337;
      }
      i = 2131165502;
    }
    for (;;)
    {
      ImageView localImageView = (ImageView)this.am.findViewById(2131624093);
      TextView localTextView1 = (TextView)this.am.findViewById(2131624334);
      if ((this.h == 1) && (this.d.getType() != 4))
      {
        TextView localTextView2 = (TextView)this.am.findViewById(2131625831);
        localTextView2.setVisibility(0);
        localTextView2.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            paramAnonymousView = new Intent(p.this.f(), CubeTopListActivity.class);
            p.this.f().startActivity(paramAnonymousView);
          }
        });
      }
      localImageView.setVisibility(0);
      localTextView1.setVisibility(0);
      localImageView.setImageDrawable(com.xueqiu.android.base.r.b(2130772089, g()));
      localTextView1.setText(i);
      this.am.setBackgroundColor(com.xueqiu.android.base.r.a(2130771999, g()));
      return;
      i = j;
      if (j >= 0) {
        break;
      }
      i = 0;
      break;
      label329:
      i = 2131165505;
      break label164;
      label337:
      if (this.d.getType() == 4)
      {
        i = 2131165503;
        continue;
        label356:
        this.am.findViewById(2131624093).setVisibility(8);
        this.am.findViewById(2131624334).setVisibility(8);
        this.am.findViewById(2131625831).setVisibility(8);
        this.am.setBackgroundColor(com.xueqiu.android.base.r.a(2130772035, g()));
        return;
      }
    }
  }
  
  private boolean J()
  {
    return this.ak <= 0L;
  }
  
  public static p a(int paramInt1, long paramLong, Portfolio paramPortfolio, boolean paramBoolean, int paramInt2)
  {
    p localp = new p();
    Bundle localBundle = new Bundle();
    localBundle.putInt("arg_category", paramInt1);
    localBundle.putLong("arg_user_id", paramLong);
    localBundle.putParcelable("arg_portfolio", paramPortfolio);
    localBundle.putBoolean("arg_is_first_show", paramBoolean);
    localBundle.putInt("arg_position", paramInt2);
    localp.e(localBundle);
    return localp;
  }
  
  private void a(Portfolio paramPortfolio)
  {
    if (paramPortfolio.getType() == 4)
    {
      paramPortfolio = x();
      if (J()) {
        u.a();
      }
      for (l = UserLogonDataPrefs.getLogonUserId();; l = this.ak)
      {
        localObject = new com.xueqiu.android.base.b.p(this)
        {
          public final void a(y paramAnonymousy)
          {
            if (!p.this.j()) {
              return;
            }
            p.k(p.this).f();
            com.xueqiu.android.base.util.aa.a(paramAnonymousy);
            p.k(p.this).a(paramAnonymousy);
          }
        };
        paramPortfolio.l.c(l, (com.xueqiu.android.base.b.p)localObject);
        return;
      }
    }
    if (paramPortfolio.getType() == 3)
    {
      paramPortfolio = x();
      localObject = new com.xueqiu.android.base.b.p(this)
      {
        public final void a(y paramAnonymousy)
        {
          if (!p.this.j()) {
            return;
          }
          p.k(p.this).f();
          com.xueqiu.android.base.util.aa.a(paramAnonymousy);
          p.k(p.this).a(paramAnonymousy);
        }
      };
      paramPortfolio.i.b((com.xueqiu.android.base.b.p)localObject);
      return;
    }
    ai localai = x();
    long l = this.ak;
    if (paramPortfolio.getType() == 2) {}
    for (Object localObject = Integer.valueOf(paramPortfolio.getId());; localObject = null)
    {
      int i = this.h;
      int j = paramPortfolio.getType();
      paramPortfolio = new com.xueqiu.android.base.b.p(this)
      {
        public final void a(y paramAnonymousy)
        {
          if (!p.this.j()) {}
          do
          {
            return;
            p.k(p.this).f();
            com.xueqiu.android.base.util.aa.a(paramAnonymousy);
          } while (p.e(p.this).getCount() != 0);
          com.xueqiu.android.stock.a.q localq = p.e(p.this);
          if (localq.b != null) {
            localq.b.clear();
          }
          if (localq.a != null) {
            localq.a.clear();
          }
          localq.c.clear();
          p.e(p.this).notifyDataSetChanged();
          p.j(p.this);
          p.k(p.this).a(paramAnonymousy);
        }
      };
      localai.i.a(l, (Integer)localObject, i, j, paramPortfolio);
      return;
    }
  }
  
  private void a(final List<PortfolioStock> paramList)
  {
    if ((paramList == null) || (paramList.size() == 0)) {}
    for (;;)
    {
      return;
      Object localObject;
      if (this.h == 2)
      {
        paramList = rx.a.a(paramList);
        localObject = paramList.a(new f() {}).c(new f() {});
        rx.a.a(rx.a.a(paramList.a(new f() {}).c(new f() {}), ((rx.a)localObject).a(new rx.d.a.aa())).a(50).b(new f() {}), ((rx.a)localObject).b(20).i().b(new f() {})).a(new g() {}).a(new rx.c.b()new rx.c.b {}, new rx.c.b() {});
        return;
      }
      if (paramList.size() != 0)
      {
        localObject = new ArrayList();
        paramList = paramList.iterator();
        while (paramList.hasNext()) {
          ((List)localObject).add(((PortfolioStock)paramList.next()).getCode());
        }
        this.as = 0;
        final int j = (int)Math.ceil(((List)localObject).size() / 200.0F);
        paramList = new HashMap();
        int i = 0;
        while (i < j)
        {
          int k = i * 200;
          List localList = ((List)localObject).subList(k, Math.min(k + 200, ((List)localObject).size()));
          ai localai = x();
          com.xueqiu.android.base.b.p local14 = new com.xueqiu.android.base.b.p(this)
          {
            public final void a(y paramAnonymousy)
            {
              if (!p.this.j()) {}
              do
              {
                return;
                p.m(p.this);
                com.xueqiu.android.base.util.aa.a(paramAnonymousy);
              } while (p.e(p.this).getCount() != 0);
              p.k(p.this).a(paramAnonymousy);
            }
          };
          localai.l.a(localList, local14);
          i += 1;
        }
      }
    }
  }
  
  public final void B_()
  {
    if ((this.b == null) || (this.b.j())) {
      return;
    }
    this.b.m();
  }
  
  final String C()
  {
    return String.format("%s_%d_%d", new Object[] { "key_portfolio_stock_quote", Integer.valueOf(this.h), Integer.valueOf(this.d.getType()) });
  }
  
  public final void C_()
  {
    if (!this.aq) {
      ag.d.a(new rx.c.a()
      {
        public final void a()
        {
          if (p.this.g() != null)
          {
            p.a(p.this);
            p.b(p.this);
          }
        }
      }, 100L, TimeUnit.MILLISECONDS);
    }
  }
  
  public final List<PortfolioStock> D()
  {
    if ((this.e == null) || (this.e.getCount() == 0)) {
      return Collections.emptyList();
    }
    int i = this.c.getHeaderViewsCount();
    int j = this.c.getFirstVisiblePosition() - i;
    int k = this.c.getLastVisiblePosition() - i + 1;
    i = j;
    if (j < 0) {
      i = 0;
    }
    j = k;
    if (k >= this.e.getCount()) {
      j = this.e.getCount();
    }
    if (i >= j) {
      return this.e.a;
    }
    return this.e.a.subList(i, j);
  }
  
  final void E()
  {
    if (this.a != null)
    {
      b(((s)this.a.getTag()).a);
      a(((s)this.a.getTag()).b);
    }
  }
  
  public final void F()
  {
    this.g = true;
    this.b.setPullToRefreshEnabled(false);
    this.e.i = true;
    this.e.h = 0;
    this.e.g = 0;
    this.e.b();
    E();
    this.e.notifyDataSetChanged();
    this.f.D();
    Intent localIntent = new Intent("com.xueqiu.android.action.switchTabHostEnabled");
    localIntent.putExtra("extra_bool", false);
    android.support.v4.content.r.a(f()).a(localIntent);
    ag.d.a(new rx.c.a()
    {
      public final void a()
      {
        p.this.e_(true);
        p.this.g().invalidateOptionsMenu();
      }
    });
  }
  
  public final boolean G()
  {
    return (!this.g) && (this.e != null) && (this.d.getType() != 3);
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    if (this.al == null)
    {
      this.al = new FrameLayout(f());
      this.al.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
    }
    for (;;)
    {
      return this.al;
      if (this.al.getParent() != null) {
        ((ViewGroup)this.al.getParent()).removeView(this.al);
      }
    }
  }
  
  public final void a(Context paramContext)
  {
    super.a(paramContext);
    this.f = ((q)this.F);
    this.ap = ((r)this.F);
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    if (this.r != null)
    {
      this.h = this.r.getInt("arg_category", 2);
      this.ak = this.r.getLong("arg_user_id", -1L);
      this.d = ((Portfolio)this.r.getParcelable("arg_portfolio"));
      this.ar = this.r.getBoolean("arg_is_first_show");
    }
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    if ((this.ar) && (!this.aq))
    {
      H();
      this.aq = true;
      this.ar = false;
    }
  }
  
  final void a(Button paramButton)
  {
    if (this.e.i)
    {
      paramButton.setEnabled(false);
      paramButton.setText(2131165484);
      paramButton.setCompoundDrawablesWithIntrinsicBounds(null, null, null, null);
      return;
    }
    paramButton.setEnabled(true);
    int i;
    label64:
    Drawable localDrawable;
    if (this.e.f == 1) {
      if (this.h == 2)
      {
        i = 2131166142;
        paramButton.setText(i);
        if (this.e.h <= 0) {
          break label148;
        }
        localDrawable = com.xueqiu.android.base.util.a.a(h(), 2130837628);
      }
    }
    for (;;)
    {
      paramButton.setCompoundDrawablesWithIntrinsicBounds(null, null, localDrawable, null);
      return;
      i = 2131165394;
      break;
      if (this.e.f == 0)
      {
        if (this.h == 2) {}
        for (i = 2131166143;; i = 2131165395)
        {
          paramButton.setText(i);
          break;
        }
      }
      paramButton.setText(2131165731);
      break label64;
      label148:
      if (this.e.h < 0) {
        localDrawable = com.xueqiu.android.base.util.a.a(h(), 2130837617);
      } else {
        localDrawable = null;
      }
    }
  }
  
  public final void a(Map<String, JsonArray> paramMap)
  {
    com.xueqiu.android.base.util.v.a("PortfolioItemFragment", String.format("get quotes:%d", new Object[] { Integer.valueOf(paramMap.size()) }));
    if (this.e != null)
    {
      com.xueqiu.android.stock.a.q localq = this.e;
      Iterator localIterator = paramMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        StockQuote localStockQuote = (StockQuote)localq.c.get(str);
        JsonArray localJsonArray = (JsonArray)paramMap.get(str);
        if (localStockQuote != null)
        {
          double d1 = localJsonArray.get(0).getAsDouble();
          double d2 = localStockQuote.getCurrent();
          int i;
          if ((d2 != 0.0D) && (d1 != 0.0D) && (d2 != d1)) {
            if (d1 > d2) {
              i = 0;
            }
          }
          for (;;)
          {
            localq.k.put(str, Integer.valueOf(i));
            localStockQuote.setCurrent(d1);
            localStockQuote.setChange(localJsonArray.get(1).getAsDouble());
            localStockQuote.setPercentage(localJsonArray.get(2).getAsDouble());
            break;
            i = 1;
            continue;
            i = 2;
          }
        }
      }
      if (this.ao == 0)
      {
        this.e.b();
        this.e.notifyDataSetChanged();
      }
    }
  }
  
  final void b(Button paramButton)
  {
    if (this.e.i)
    {
      paramButton.setEnabled(false);
      paramButton.setText(2131166320);
      paramButton.setCompoundDrawablesWithIntrinsicBounds(null, null, null, null);
      return;
    }
    paramButton.setEnabled(true);
    int i;
    Drawable localDrawable;
    if (this.h == 2)
    {
      i = 2131165449;
      paramButton.setText(i);
      if (this.e.g <= 0) {
        break label90;
      }
      localDrawable = com.xueqiu.android.base.util.a.a(h(), 2130837628);
    }
    for (;;)
    {
      paramButton.setCompoundDrawablesWithIntrinsicBounds(null, null, localDrawable, null);
      return;
      i = 2131165412;
      break;
      label90:
      if (this.e.g < 0) {
        localDrawable = com.xueqiu.android.base.util.a.a(h(), 2130837617);
      } else {
        localDrawable = null;
      }
    }
  }
  
  public final void b(String paramString)
  {
    if (this.b != null)
    {
      com.xueqiu.android.base.a.a();
      paramString = com.xueqiu.android.base.a.a(paramString);
      x localx = this.b;
      com.xueqiu.android.base.a.a();
      localx.a(com.xueqiu.android.base.a.a(paramString, g()));
    }
  }
  
  public final void c_(boolean paramBoolean)
  {
    if (this.at != null) {
      this.at.c_(paramBoolean);
    }
  }
  
  public final void o()
  {
    super.o();
    ac localac;
    if (this.al.findViewById(2131624021) != null)
    {
      boolean bool = TextUtils.equals("1", PreferenceManager.getDefaultSharedPreferences(g()).getString(com.xueqiu.android.base.r.d(2131166409), "0"));
      android.support.v4.a.q localq = i();
      localac = localq.a();
      if (!bool) {
        break label146;
      }
      this.al.findViewById(2131624021).setVisibility(0);
      this.at = ((j)localq.a("tag_position_card"));
      if (this.at == null)
      {
        this.at = new j();
        localac.b(2131624021, this.at, "tag_position_card");
        if (((com.xueqiu.android.common.b)g()).n) {
          localac.d();
        }
      }
    }
    for (;;)
    {
      this.e.notifyDataSetChanged();
      return;
      label146:
      if (this.at != null)
      {
        localac.b(this.at);
        if (((com.xueqiu.android.common.b)g()).n) {
          localac.d();
        }
      }
      this.at = null;
      this.al.findViewById(2131624021).setVisibility(8);
    }
  }
  
  final String u()
  {
    return String.format("%s_%d_%d", new Object[] { "key_portfolio_stocks", Integer.valueOf(this.h), Integer.valueOf(this.d.getType()) });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\c\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */