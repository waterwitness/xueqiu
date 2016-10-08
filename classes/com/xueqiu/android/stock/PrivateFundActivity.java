package com.xueqiu.android.stock;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.support.v4.view.cp;
import android.support.v7.a.a;
import android.support.v7.a.f;
import android.support.v7.a.g;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.android.volley.y;
import com.d.a.b.c.c;
import com.d.a.b.e;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.viewpagerindicator.CirclePageIndicator;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.h;
import com.xueqiu.android.base.storage.prefs.DefaultPrefs;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.common.account.LoginActivity;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.widget.FloatingActionMenu;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.common.widget.z;
import com.xueqiu.android.community.StatusDetailActivity;
import com.xueqiu.android.community.model.Status;
import com.xueqiu.android.community.model.StatusFacetCount;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.cube.model.NavDailyList;
import com.xueqiu.android.stock.model.StockQuote;
import com.xueqiu.chart.view.LineChart;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class PrivateFundActivity
  extends com.xueqiu.android.common.b
{
  private static final String j = PrivateFundActivity.class.getSimpleName();
  private static String k = "extra_income_rate";
  private static String p = "extra_income_type";
  private static int q = 0;
  private static int r = 1;
  private static int s = 10;
  private ViewPager A;
  private j B;
  private CirclePageIndicator C;
  private ViewGroup D;
  private SNBPullToRefreshListView E;
  private com.xueqiu.android.community.widget.i F;
  private FloatingActionMenu G;
  private com.xueqiu.android.community.a.ak H;
  private ImageView I;
  private LinearLayout J;
  private ImageView K;
  private TextView L;
  private TextView M;
  private TextView N;
  private ViewGroup O;
  private LineChart P;
  private TextView Q;
  private TextView R;
  private TextView S;
  private TextView T;
  private ViewGroup U;
  private JsonObject V;
  private z W;
  private com.d.a.b.d X;
  private long t = 0L;
  private i u;
  private User v;
  private StockQuote w;
  private String x = "all";
  private String[] y = { "管理费率", "业绩提成比率", "认购起点" };
  private List<k> z;
  
  public PrivateFundActivity()
  {
    e locale = com.xueqiu.android.base.util.n.a();
    locale.c = 2130838024;
    locale.b = 2130838024;
    locale.a = 2130838024;
    locale.q = new c((int)ay.a(36.0F));
    this.X = locale.b();
  }
  
  private static void b(TextView paramTextView, boolean paramBoolean)
  {
    if (paramBoolean) {
      paramTextView.setBackgroundResource(2130838463);
    }
    for (;;)
    {
      paramTextView.setPadding(5, 0, 5, 0);
      return;
      paramTextView.setBackgroundResource(2130838624);
    }
  }
  
  private void p()
  {
    if (this.D == null) {
      return;
    }
    this.D.setBackgroundColor(getResources().getColor(2131558595));
    this.D.findViewById(2131624142).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        PrivateFundActivity.this.finish();
      }
    });
    TextView localTextView = (TextView)this.D.findViewById(2131623947);
    if (this.w.isFollowing()) {
      localTextView.setText(getString(2131166549));
    }
    for (;;)
    {
      this.D.findViewById(2131623947).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          PrivateFundActivity.f(PrivateFundActivity.this);
        }
      });
      if (this.w.getSymbol() != null) {
        ((TextView)this.D.findViewById(2131625431)).setText(this.w.getName());
      }
      if (this.w.getName() == null) {
        break;
      }
      ((TextView)this.D.findViewById(2131624089)).setText(this.w.getSymbol());
      return;
      localTextView.setText(getString(2131165536));
    }
  }
  
  protected void onCreate(final Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903117);
    this.i.b().d();
    this.w = ((StockQuote)getIntent().getParcelableExtra("extra_stock"));
    if ((this.w == null) || (this.w.getSymbol() == null))
    {
      finish();
      return;
    }
    this.D = ((ViewGroup)findViewById(2131624354));
    this.E = ((SNBPullToRefreshListView)findViewById(2131624353));
    this.G = ((FloatingActionMenu)findViewById(2131624306));
    paramBundle = LayoutInflater.from(this).inflate(2130903481, (ViewGroup)this.E.getRefreshableView(), false);
    paramBundle.findViewById(2131624924).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        paramAnonymousView = new Intent(PrivateFundActivity.this, FundNvHistoryActivity.class);
        paramAnonymousView.putExtra("extra_fund_symbol", PrivateFundActivity.a(PrivateFundActivity.this).getSymbol());
        PrivateFundActivity.this.startActivity(paramAnonymousView);
        paramAnonymousView = new SNBEvent(2100, 2);
        paramAnonymousView.addProperty("symbol", PrivateFundActivity.a(PrivateFundActivity.this).getSymbol());
        com.xueqiu.android.base.i.a().a(paramAnonymousView);
      }
    });
    this.I = ((ImageView)paramBundle.findViewById(2131625561));
    this.C = ((CirclePageIndicator)paramBundle.findViewById(2131625061));
    this.A = ((ViewPager)paramBundle.findViewById(2131625060));
    this.K = ((ImageView)paramBundle.findViewById(2131625569));
    this.L = ((TextView)paramBundle.findViewById(2131625570));
    this.M = ((TextView)paramBundle.findViewById(2131625572));
    this.N = ((TextView)paramBundle.findViewById(2131625573));
    this.O = ((ViewGroup)paramBundle.findViewById(2131625568));
    this.R = ((TextView)paramBundle.findViewById(2131625564));
    this.S = ((TextView)paramBundle.findViewById(2131625567));
    this.T = ((TextView)paramBundle.findViewById(2131625565));
    this.U = ((ViewGroup)paramBundle.findViewById(2131625575));
    this.P = ((LineChart)paramBundle.findViewById(2131624884));
    this.Q = ((TextView)paramBundle.findViewById(2131624926));
    ((ListView)this.E.getRefreshableView()).addHeaderView(paramBundle);
    this.E.setPullToRefreshEnabled(false);
    this.H = new com.xueqiu.android.community.a.ak(this);
    this.F = new com.xueqiu.android.community.widget.i(this.E, new com.xueqiu.android.common.t()
    {
      private int b = 1;
      private ai c = com.xueqiu.android.base.q.a().b();
      
      public final com.android.volley.n<ArrayList<Status>> a(p<ArrayList<Status>> paramAnonymousp)
      {
        this.b = 1;
        return this.c.a(PrivateFundActivity.a(PrivateFundActivity.this).getSymbol(), PrivateFundActivity.b(PrivateFundActivity.this), this.b, PrivateFundActivity.j(), PrivateFundActivity.c(PrivateFundActivity.this), paramAnonymousp);
      }
      
      public final void a(ArrayList<Status> paramAnonymousArrayList, Throwable paramAnonymousThrowable, boolean paramAnonymousBoolean)
      {
        if (!paramAnonymousBoolean) {
          PrivateFundActivity.d(PrivateFundActivity.this).c();
        }
      }
      
      public final com.android.volley.n<ArrayList<Status>> b(p<ArrayList<Status>> paramAnonymousp)
      {
        this.b += 1;
        return this.c.a(PrivateFundActivity.a(PrivateFundActivity.this).getSymbol(), PrivateFundActivity.b(PrivateFundActivity.this), this.b, PrivateFundActivity.j(), PrivateFundActivity.c(PrivateFundActivity.this), paramAnonymousp);
      }
    });
    this.F.a(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = (Status)PrivateFundActivity.d(PrivateFundActivity.this).c.getItem(paramAnonymousInt - ((ListView)PrivateFundActivity.e(PrivateFundActivity.this).getRefreshableView()).getHeaderViewsCount());
        paramAnonymousView = new Intent(PrivateFundActivity.this.getBaseContext(), StatusDetailActivity.class);
        paramAnonymousView.putExtra("status", paramAnonymousAdapterView);
        PrivateFundActivity.this.startActivity(paramAnonymousView);
      }
    });
    this.F.a(this.H);
    this.F.a(getString(2131165851));
    this.J = ((LinearLayout)paramBundle.findViewById(2131624811));
    p();
    paramBundle = new ArrayList();
    int i = 0;
    while (i < this.J.getChildCount())
    {
      paramBundle.add((TextView)this.J.getChildAt(i).findViewById(2131624813));
      i += 1;
    }
    this.J.setTag(paramBundle);
    ((TextView)paramBundle.get(0)).setText(2131165780);
    ((TextView)paramBundle.get(1)).setText(2131165228);
    b((TextView)paramBundle.get(0), true);
    b((TextView)paramBundle.get(1), false);
    this.J.getChildAt(0).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        PrivateFundActivity.a((TextView)paramBundle.get(0), true);
        PrivateFundActivity.a((TextView)paramBundle.get(1), false);
        paramAnonymousView = PrivateFundActivity.this;
        if (PrivateFundActivity.h(PrivateFundActivity.this) == null) {}
        for (long l = 0L;; l = PrivateFundActivity.h(PrivateFundActivity.this).xueqiuId)
        {
          PrivateFundActivity.a(paramAnonymousView, "all", l);
          return;
        }
      }
    });
    this.J.getChildAt(1).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        PrivateFundActivity.a((TextView)paramBundle.get(0), false);
        PrivateFundActivity.a((TextView)paramBundle.get(1), true);
        PrivateFundActivity.a(PrivateFundActivity.this, "all", 0L);
      }
    });
    paramBundle = com.xueqiu.android.base.q.a().b();
    String str = this.w.getSymbol();
    Object localObject = new p(this)
    {
      public final void a(y paramAnonymousy) {}
    };
    paramBundle.i.a(str, "all", (p)localObject);
    paramBundle = new SNBEvent(2100, 0);
    paramBundle.addProperty("symbol", this.w.getSymbol());
    com.xueqiu.android.base.i.a().a(paramBundle);
    paramBundle = com.xueqiu.android.base.q.a().b();
    str = this.w.getSymbol();
    localObject = new p(this)
    {
      public final void a(y paramAnonymousy) {}
    };
    paramBundle.i.b(str, (p)localObject);
    str = this.w.getSymbol();
    localObject = new p(this)
    {
      public final void a(y paramAnonymousy) {}
    };
    paramBundle.i.c(str, (p)localObject);
    paramBundle.a(this.w.getSymbol(), new p(this)new com.xueqiu.android.base.b.r
    {
      public final void a(y paramAnonymousy) {}
    }, new com.xueqiu.android.base.b.r());
  }
  
  protected void onResume()
  {
    super.onResume();
    if (u.a().d)
    {
      Bundle localBundle = new Bundle();
      localBundle.putByte("extra_mode", (byte)2);
      Intent localIntent = new Intent(this, LoginActivity.class);
      localIntent.putExtras(localBundle);
      startActivity(localIntent);
      finish();
    }
    if ((this.W == null) || ((this.W != null) && (!this.W.isShowing()))) {
      com.xueqiu.android.base.q.a().b().d(new p(this)
      {
        public final void a(y paramAnonymousy)
        {
          String str = PrivateFundActivity.k();
          StringBuilder localStringBuilder = new StringBuilder("onErrorResponse error = ");
          if (paramAnonymousy != null) {}
          for (paramAnonymousy = paramAnonymousy.getMessage();; paramAnonymousy = "")
          {
            com.xueqiu.android.base.util.v.e(str, paramAnonymousy);
            com.xueqiu.android.base.b.a();
            if (!DefaultPrefs.getBoolean("private_fund_certified", false, com.xueqiu.android.base.b.d())) {
              PrivateFundActivity.g(PrivateFundActivity.this);
            }
            return;
          }
        }
      });
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\PrivateFundActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */