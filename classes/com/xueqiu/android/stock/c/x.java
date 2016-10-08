package com.xueqiu.android.stock.c;

import android.annotation.SuppressLint;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.a.ac;
import android.support.v4.a.k;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.volley.n;
import com.android.volley.o;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.umeng.analytics.MobclickAgent;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.f;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.ag;
import com.xueqiu.android.base.util.ap;
import com.xueqiu.android.base.util.as;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.a.d;
import com.xueqiu.android.common.model.ClientInfo;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.widget.FloatingActionMenu;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.common.widget.aj;
import com.xueqiu.android.common.widget.an;
import com.xueqiu.android.common.widget.j;
import com.xueqiu.android.community.StatusDetailActivity;
import com.xueqiu.android.community.WriteStatusActivity;
import com.xueqiu.android.community.model.HomeTimelineStatusGroup;
import com.xueqiu.android.community.model.Status;
import com.xueqiu.android.stock.F10Activity;
import com.xueqiu.android.stock.StockDetailActivity;
import com.xueqiu.android.stock.StockRemindingActivity;
import com.xueqiu.android.stock.model.AHStockQuote;
import com.xueqiu.android.stock.model.StockQuote;
import com.xueqiu.android.trade.TakingPositionActivity;
import com.xueqiu.android.trade.c.e;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;

@SuppressLint({"SetJavaScriptEnabled"})
public class x
  extends com.xueqiu.android.common.c
  implements com.xueqiu.android.common.widget.l, com.xueqiu.android.community.l
{
  public static final String a = x.class.getSimpleName();
  private boolean aA = true;
  private int aB;
  private com.xueqiu.android.community.a.ak aC;
  private int aD = -1;
  private int aE = -1;
  private com.xueqiu.android.common.t<Status> aF = new com.xueqiu.android.common.t()
  {
    private com.xueqiu.android.base.b.x<ArrayList<Status>> c(p<ArrayList<Status>> paramAnonymousp)
    {
      com.xueqiu.android.base.b.x localx = null;
      ai localai = com.xueqiu.android.base.q.a().b();
      String str = x.f(x.this).getSymbol();
      y localy = x.d(x.this, x.x(x.this));
      int i = x.h(x.this).f;
      if (x.x(x.this) == 1) {
        localx = localai.a(null, x.f(x.this).getSymbol(), "all", localy.a, i, null, paramAnonymousp);
      }
      do
      {
        return localx;
        if (x.x(x.this) == 0) {
          return localai.a(null, str, "all", localy.a, i, "alpha", paramAnonymousp);
        }
        if (x.x(x.this) == 2) {
          return localai.a(str, x.this.a(2131166132), localy.a, i, paramAnonymousp);
        }
        if (x.x(x.this) == 3) {
          return localai.a(str, x.this.a(2131166133), localy.a, i, paramAnonymousp);
        }
      } while (x.x(x.this) != 4);
      return localai.a(str, x.this.a(2131166136), localy.a, i, paramAnonymousp);
    }
    
    public final n<ArrayList<Status>> a(p<ArrayList<Status>> paramAnonymousp)
    {
      if (x.x(x.this) == 5)
      {
        paramAnonymousp.a(new ArrayList());
        return null;
      }
      x.d(x.this, x.x(x.this)).a = 1;
      return c(paramAnonymousp);
    }
    
    public final void a(ArrayList<Status> paramAnonymousArrayList, Throwable paramAnonymousThrowable, boolean paramAnonymousBoolean)
    {
      if ((x.this.g() == null) || (x.this.T == null)) {
        return;
      }
      if ((paramAnonymousArrayList instanceof HomeTimelineStatusGroup)) {
        ap.a((HomeTimelineStatusGroup)paramAnonymousArrayList, x.B(x.this));
      }
      y localy = x.d(x.this, x.x(x.this));
      if ((paramAnonymousArrayList == null) || (paramAnonymousThrowable != null))
      {
        if (localy != null)
        {
          localy.a -= 1;
          if (localy.a <= 0) {
            localy.a = 1;
          }
        }
        aa.a(paramAnonymousThrowable);
        label101:
        if ((localy == null) || (localy.a != 1)) {
          break label166;
        }
        x.C(x.this);
        if ((paramAnonymousArrayList == null) || (paramAnonymousArrayList.size() <= 0)) {
          break label168;
        }
      }
      label166:
      label168:
      for (paramAnonymousBoolean = true;; paramAnonymousBoolean = false)
      {
        x.b(x.this, paramAnonymousBoolean);
        return;
        if ((paramAnonymousBoolean) || (paramAnonymousArrayList.size() == 0)) {
          break label101;
        }
        x.h(x.this).c();
        break label101;
        break;
      }
    }
    
    public final n<ArrayList<Status>> b(p<ArrayList<Status>> paramAnonymousp)
    {
      y localy = x.d(x.this, x.x(x.this));
      localy.a += 1;
      return c(paramAnonymousp);
    }
  };
  private j aG = new j()
  {
    public final boolean a(int paramAnonymousInt)
    {
      if (((paramAnonymousInt == 1) || (paramAnonymousInt == 6) || (paramAnonymousInt == 7) || (paramAnonymousInt == 4)) && (u.a().d))
      {
        if ((paramAnonymousInt == 6) || (paramAnonymousInt == 7))
        {
          com.xueqiu.android.base.b.a();
          com.xueqiu.android.base.util.b.a(com.xueqiu.android.base.b.d(), 2131166437);
        }
        com.xueqiu.android.base.t.a(x.this.g(), false);
        return false;
      }
      Object localObject1;
      if ((paramAnonymousInt == 1) && (!TextUtils.isEmpty(x.f(x.this).getName())))
      {
        localObject1 = new Intent(x.this.g(), WriteStatusActivity.class);
        ((Intent)localObject1).putExtra("extra_write_type", 3);
        ((Intent)localObject1).putExtra("extra_auto_add_text", "$" + x.f(x.this).getName() + "(" + x.f(x.this).getSymbol() + ")$");
        ((Intent)localObject1).putExtra("extra_card_type", "stock");
        ((Intent)localObject1).putExtra("extra_card_param", x.f(x.this).getSymbol());
        x.this.a((Intent)localObject1);
        localObject1 = new SNBEvent(1600, 16);
        ((SNBEvent)localObject1).addProperty("symbol", x.f(x.this).getSymbol());
        ((SNBEvent)localObject1).addProperty("type", String.valueOf(x.i(x.this)));
        com.xueqiu.android.base.i.a().a((SNBEvent)localObject1);
        return true;
      }
      if (paramAnonymousInt == 2)
      {
        localObject1 = new Intent(x.this.g(), StockRemindingActivity.class);
        ((Intent)localObject1).putExtra("extra_stock_info", x.f(x.this));
        x.this.a((Intent)localObject1);
        localObject1 = new SNBEvent(1600, 17);
        ((SNBEvent)localObject1).addProperty("symbol", x.f(x.this).getSymbol());
        ((SNBEvent)localObject1).addProperty("type", String.valueOf(x.i(x.this)));
        com.xueqiu.android.base.i.a().a((SNBEvent)localObject1);
        return true;
      }
      Object localObject2;
      if (paramAnonymousInt == 3)
      {
        localObject1 = new Intent(x.this.g(), TakingPositionActivity.class);
        localObject2 = new Bundle();
        ((Bundle)localObject2).putParcelable("extra_stock", x.f(x.this));
        ((Intent)localObject1).putExtras((Bundle)localObject2);
        x.this.a((Intent)localObject1);
        return true;
      }
      if (paramAnonymousInt == 6)
      {
        x.c(x.this, false);
        return true;
      }
      if (paramAnonymousInt == 7)
      {
        x.c(x.this, true);
        return true;
      }
      if (paramAnonymousInt == 4)
      {
        com.xueqiu.android.base.util.l.a((com.xueqiu.android.common.b)x.this.g(), 2, x.f(x.this).getSymbol());
        return true;
      }
      if (paramAnonymousInt == 5)
      {
        x localx = x.this;
        an localan;
        String str2;
        Object localObject3;
        String str1;
        Object localObject4;
        if ((!com.xueqiu.android.base.g.a().c.isMonkeyTestVersion()) && (localx.b != null))
        {
          localan = new an();
          localObject1 = localx.b.getSymbol();
          paramAnonymousInt = localx.b.getType();
          str2 = String.format("%s/S/%s", new Object[] { "https://xueqiu.com", localObject1 });
          localObject1 = "$" + localx.b.getName() + " (" + localx.b.getSymbol() + ")$";
          switch (paramAnonymousInt)
          {
          default: 
            localObject3 = localx.h().getString(2131166548, new Object[] { localObject1 }) + str2;
            localObject2 = localx.h().getString(2131166557, new Object[] { localObject1 });
            localan.c = ((String)localObject3);
            str1 = "";
            localObject4 = localObject1;
            localObject3 = localObject1;
          }
        }
        for (;;)
        {
          localan.l.put("wx_content_type", str1);
          localan.l.put("wx_friend_content", localObject2);
          localan.k.put("wx_title", localObject4);
          localan.k.put("wx_friend_title", localObject3);
          localan.b = ((String)localObject1);
          localan.d = str2;
          localan.f = BitmapFactory.decodeResource(localx.h(), 2130837614);
          localan.i = 3;
          aj.a(localx.g(), localan, null);
          return true;
          localObject4 = (String)localObject1 + "\n" + localx.h().getString(2131166160, new Object[] { localx.b.getCurrent(), localx.b.getChange(), Double.valueOf(localx.b.getPercentage()) });
          str1 = localx.h().getString(2131166152, new Object[] { Double.valueOf(localx.b.getCurrent()), Double.valueOf(localx.b.getPercentage()) }) + localx.a(2131166153) + str2;
          localObject3 = localx.b.getName() + "    " + localx.b.getSymbol();
          localObject2 = localx.h().getString(2131166159, new Object[] { localx.b.getCurrent(), localx.b.getChange(), localx.b.getPercentage(), com.xueqiu.android.base.util.h.a(new Date(System.currentTimeMillis()), "MM-dd HH:mm:ss") });
          localan.c = ((String)localObject1 + str1);
        }
      }
      if (paramAnonymousInt == 2131623947)
      {
        if (x.f(x.this).isFollowing()) {
          new AlertDialog.Builder(x.this.g()).setMessage(x.this.a(2131165366, new Object[] { x.f(x.this).getName() })).setNegativeButton(2131165296, null).setPositiveButton(2131165361, new DialogInterface.OnClickListener()
          {
            public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
            {
              x.g(x.this);
            }
          }).show();
        }
        for (;;)
        {
          return true;
          x.g(x.this);
        }
      }
      if (paramAnonymousInt == 8)
      {
        com.xueqiu.android.common.q.a(String.format("%s/S/%s/preipo", new Object[] { "https://xueqiu.com", x.f(x.this).getSymbol() }), x.this.f());
        localObject1 = new SNBEvent(1600, 22);
        ((SNBEvent)localObject1).addProperty("symbol", x.f(x.this).getSymbol());
        ((SNBEvent)localObject1).addProperty("type", String.valueOf(x.i(x.this)));
        com.xueqiu.android.base.i.a().a((SNBEvent)localObject1);
        return true;
      }
      if (paramAnonymousInt == 10) {
        com.xueqiu.android.common.q.a(String.format("https://fund.xueqiu.com/ads/redirect?exchange=DJ&symbol=%s&source=xueqiu&refer=stock", new Object[] { x.f(x.this).getSymbol() }), x.this.f());
      }
      while (paramAnonymousInt == 16908332)
      {
        x.this.y_();
        return true;
        if (paramAnonymousInt == 11)
        {
          localObject1 = x.this.g().getLayoutInflater().inflate(2130903456, null);
          new AlertDialog.Builder(x.this.g()).setView((View)localObject1).setCancelable(true).setNegativeButton(null, null).show();
          return true;
        }
      }
      com.xueqiu.android.base.b.a();
      MobclickAgent.onEvent(com.xueqiu.android.base.b.d(), "stock_detail_post");
      return false;
    }
  };
  private y ak = new y((byte)0);
  private y al = new y((byte)0);
  private y am = new y((byte)0);
  private com.xueqiu.android.community.widget.i an = null;
  private String ao = null;
  private FrameLayout ap = null;
  private volatile boolean aq = false;
  private ViewGroup ar = null;
  private View as;
  private e at = null;
  private RelativeLayout au = null;
  private boolean av = false;
  private com.xueqiu.android.common.widget.i aw;
  private boolean ax = true;
  private boolean ay = false;
  private boolean az = false;
  StockQuote b = null;
  public t c = null;
  public boolean d = false;
  private int e = -1;
  private int f = -1;
  private y g = new y((byte)0);
  private y h = new y((byte)0);
  
  private void C()
  {
    this.ap.addView(LayoutInflater.from(f()).inflate(2130903373, this.ap, false));
  }
  
  private void D()
  {
    G();
    com.xueqiu.android.base.b.a();
    this.ao = PreferenceManager.getDefaultSharedPreferences(com.xueqiu.android.base.b.d()).getString(a(2131165678), a(2131166576));
    SNBPullToRefreshListView localSNBPullToRefreshListView = (SNBPullToRefreshListView)c(2131625246);
    Object localObject1 = new FrameLayout(f());
    ((FrameLayout)localObject1).setId(2131624026);
    Object localObject2 = i().a();
    this.c = ((t)i().a("quote_fragment_tag"));
    if (this.c == null)
    {
      StockQuote localStockQuote = this.b;
      t localt = new t();
      Bundle localBundle = new Bundle();
      localBundle.putParcelable("extra_portfolio", localStockQuote);
      localt.e(localBundle);
      this.c = localt;
      ((ac)localObject2).a(((FrameLayout)localObject1).getId(), this.c, "quote_fragment_tag");
      if (!(g() instanceof com.xueqiu.android.common.b)) {
        break label562;
      }
      if (((com.xueqiu.android.common.b)g()).n) {
        ((ac)localObject2).d();
      }
    }
    for (;;)
    {
      this.au = ((RelativeLayout)c(2131625247));
      this.at = ((e)i().a("order_fragment_tag"));
      if (this.at == null)
      {
        localObject2 = new Bundle();
        ((Bundle)localObject2).putString("arg_scode", this.b.getCode());
        ((Bundle)localObject2).putString("arg_stock_name", this.b.getName());
        ((Bundle)localObject2).putString("arg_symbol", this.b.getSymbol());
        ((Bundle)localObject2).putInt("arg_type", this.b.getType());
        ((Bundle)localObject2).putBoolean("arg_is_lite", true);
        this.at = e.g((Bundle)localObject2);
        this.at.ak = new com.xueqiu.android.trade.a()
        {
          public final void a()
          {
            if (x.this.f() == null) {}
            while (x.e(x.this) == null) {
              return;
            }
            Animation localAnimation = AnimationUtils.loadAnimation(x.this.f(), 2130968594);
            x.e(x.this).startAnimation(localAnimation);
            x.e(x.this).setVisibility(0);
          }
          
          public final void a(boolean paramAnonymousBoolean1, boolean paramAnonymousBoolean2)
          {
            if (x.this.f() == null) {
              return;
            }
            if ((!x.f(x.this).isFollowing()) && (paramAnonymousBoolean1)) {
              x.g(x.this);
            }
            if (paramAnonymousBoolean2)
            {
              Animation localAnimation = AnimationUtils.loadAnimation(x.this.f(), 2130968595);
              x.e(x.this).startAnimation(localAnimation);
            }
            x.e(x.this).setVisibility(8);
          }
        };
        i().a().a(2131625248, this.at, "order_fragment_tag").d();
      }
      localObject2 = (ListView)localSNBPullToRefreshListView.getRefreshableView();
      ((ListView)localObject2).addHeaderView((View)localObject1, null, false);
      this.as = View.inflate(g(), 2130903461, null);
      localObject1 = (LinearLayout)this.as.findViewById(2131625484);
      ((LinearLayout)localObject1).setVisibility(0);
      a((ViewGroup)localObject1);
      ((ListView)localObject2).addHeaderView(this.as, null, false);
      this.an = new com.xueqiu.android.community.widget.i(localSNBPullToRefreshListView, this.aF);
      this.an.f = 10;
      this.an.a(new AdapterView.OnItemClickListener()
      {
        public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          paramAnonymousAdapterView = (Status)x.h(x.this).c.getItem(paramAnonymousInt - x.h(x.this).d().getHeaderViewsCount());
          if (paramAnonymousAdapterView.getType().equals("normal"))
          {
            paramAnonymousView = new Intent(x.this.g(), StatusDetailActivity.class);
            paramAnonymousView.putExtra("extra_be_from_stock", x.f(x.this).getSymbol());
            paramAnonymousView.putExtra("status", paramAnonymousAdapterView);
            x.this.a(paramAnonymousView, 1);
          }
          paramAnonymousView = new SNBEvent(1600, 11);
          paramAnonymousView.addProperty("symbol", x.f(x.this).getSymbol());
          paramAnonymousView.addProperty("status_id", String.valueOf(paramAnonymousAdapterView.getStatusId()));
          paramAnonymousView.addProperty("type", String.valueOf(x.i(x.this)));
          com.xueqiu.android.base.i.a().a(paramAnonymousView);
          if (paramAnonymousAdapterView.getMark() == 2) {}
          try
          {
            paramAnonymousView = new SNBEvent(1600, 26);
            paramAnonymousView.addProperty("ad_id", String.valueOf(paramAnonymousAdapterView.getPromotionId()));
            com.xueqiu.android.base.i.a().a(paramAnonymousView);
            return;
          }
          catch (Exception paramAnonymousAdapterView)
          {
            paramAnonymousAdapterView.printStackTrace();
          }
        }
      });
      c(2131624214);
      this.an.a(new AbsListView.OnScrollListener()
      {
        public final void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
        {
          x.a(x.this, paramAnonymousInt1, paramAnonymousAbsListView);
          paramAnonymousAbsListView = (LinearLayout)x.j(x.this);
          if (paramAnonymousAbsListView == null) {}
          do
          {
            return;
            if ((paramAnonymousInt1 >= 2) && (paramAnonymousAbsListView.getVisibility() == 8))
            {
              paramAnonymousAbsListView.setVisibility(0);
              x.a(x.this, paramAnonymousAbsListView);
              return;
            }
          } while ((paramAnonymousInt1 > 1) || (paramAnonymousAbsListView.getVisibility() != 0));
          paramAnonymousAbsListView.setVisibility(8);
          x.a(x.this, (ViewGroup)x.h(x.this).d().findViewById(2131625484));
        }
        
        public final void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt) {}
      });
      this.aC = new com.xueqiu.android.community.a.ak(g());
      this.aC.i = a;
      this.aC.g = this;
      this.an.a(this.aC);
      this.an.a.setOnPullToRefreshEventListener(new com.xueqiu.android.common.widget.ptr.g()
      {
        public final void a()
        {
          x.this.u();
        }
      });
      this.ar.findViewById(2131623947).setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (x.f(x.this) == null) {
            return;
          }
          paramAnonymousView = new SNBEvent(1600, 2);
          paramAnonymousView.addProperty("symbol", x.f(x.this).getSymbol());
          paramAnonymousView.addProperty("type", String.valueOf(x.i(x.this)));
          com.xueqiu.android.base.i.a().a(paramAnonymousView);
          x.f(x.this).isFollowing();
          if (x.f(x.this).isFollowing())
          {
            new AlertDialog.Builder(x.this.g()).setMessage(x.this.a(2131165366, new Object[] { x.f(x.this).getName() })).setNegativeButton(2131165296, null).setPositiveButton(2131165361, new DialogInterface.OnClickListener()
            {
              public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
              {
                x.g(x.this);
              }
            }).show();
            return;
          }
          x.g(x.this);
        }
      });
      u();
      return;
      label562:
      ((ac)localObject2).d();
    }
  }
  
  private void E()
  {
    TextView localTextView3 = (TextView)this.ar.findViewById(2131624089);
    TextView localTextView1 = (TextView)this.ar.findViewById(2131625432);
    TextView localTextView2 = (TextView)this.ar.findViewById(2131625433);
    if (!this.av)
    {
      if (!TextUtils.isEmpty(this.b.getCode())) {
        localTextView3.setText(String.format("%s:%s", new Object[] { this.b.getExchange(), this.b.getCode() }));
      }
      if (!TextUtils.isEmpty(this.b.getIssueType()))
      {
        str1 = "";
        if ("1".equals(this.b.getIssueType()))
        {
          str1 = a(2131165592);
          if (!TextUtils.isEmpty(str1))
          {
            localTextView1.setText(str1);
            localTextView1.setVisibility(0);
          }
        }
      }
      for (;;)
      {
        if ((TextUtils.isEmpty(this.b.getRedeemType())) || (!this.b.getRedeemType().equals("T"))) {
          break label254;
        }
        localTextView2.setVisibility(0);
        return;
        if ("2".equals(this.b.getIssueType()))
        {
          str1 = a(2131165572);
          break;
        }
        if (!"3".equals(this.b.getIssueType())) {
          break;
        }
        str1 = a(2131166069);
        break;
        localTextView1.setVisibility(8);
      }
      label254:
      localTextView2.setVisibility(8);
      return;
    }
    String str2 = as.a(this.b.getCurrent(), this.b.getType());
    if (this.b.getChange() > 0.0D) {}
    for (String str1 = "+";; str1 = "")
    {
      localTextView3.setText(String.format("%s(%s %s)", new Object[] { str2, String.format("%s%s", new Object[] { str1, as.a(this.b.getChange(), this.b.getType()) }), String.format("%.2f%%", new Object[] { Double.valueOf(this.b.getPercentage()) }) }));
      localTextView2.setVisibility(8);
      localTextView1.setVisibility(8);
      return;
    }
  }
  
  private void F()
  {
    if ((this.f != -1) && (this.f != 5)) {
      b(this.f).b = new ArrayList(this.an.c.a());
    }
  }
  
  private void G()
  {
    int i = this.b.getType();
    TypedArray localTypedArray = g().getTheme().obtainStyledAttributes(new int[] { 2130772150, 2130772156, 2130772152, 2130772153 });
    FloatingActionMenu localFloatingActionMenu = (FloatingActionMenu)c(2131624214);
    if (as.g(i)) {
      if ((this.b.getFlag() == 0) && (this.b.getType() == 11))
      {
        localFloatingActionMenu.a(8, a(2131166429), "", 2130837698);
        localFloatingActionMenu.a(1, a(2131165948), localTypedArray.getResourceId(0, 0));
      }
    }
    for (;;)
    {
      this.aw = localFloatingActionMenu.a(0, localTypedArray.getResourceId(2, 0));
      if (as.g(i))
      {
        this.aw.a(5, a(2131166070));
        this.aw.a(3, a(2131166200));
      }
      if (this.az)
      {
        this.aw.a(5, a(2131166070));
        if (i == 18) {
          this.aw.a(3, a(2131166200));
        }
      }
      this.aw.a(2, a(2131166151));
      if (this.b.isFollowing()) {
        this.aw.a(4, a(2131166558));
      }
      if (i == 30) {
        this.aw.a(11, a(2131165474));
      }
      localFloatingActionMenu.setOnMenuItemSelectedListener(this.aG);
      return;
      if (17 != i)
      {
        localFloatingActionMenu.a(6, a(2131166428), "", true);
        localFloatingActionMenu.a(7, a(2131166431), "", true, 2130837698);
        break;
      }
      localFloatingActionMenu.a(7, a(2131166430), "", 2130837698);
      break;
      if (this.az)
      {
        localFloatingActionMenu.a(10, a(2131165477), "", 2130837698);
        localFloatingActionMenu.a(1, a(2131165948), localTypedArray.getResourceId(0, 0));
      }
      else
      {
        localFloatingActionMenu.a(1, a(2131165948), localTypedArray.getResourceId(0, 0));
        localFloatingActionMenu.a(5, a(2131166070), localTypedArray.getResourceId(1, 0));
      }
    }
  }
  
  private void H()
  {
    this.an.d().findViewById(2131625485).setVisibility(0);
  }
  
  private void I()
  {
    this.an.d().findViewById(2131625485).setVisibility(8);
  }
  
  public static x a(StockQuote paramStockQuote)
  {
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("extra_stock", paramStockQuote);
    return g(localBundle);
  }
  
  public static x a(StockQuote paramStockQuote, String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("extra_stock", paramStockQuote);
    localBundle.putString("extra_from_broker", paramString);
    return g(localBundle);
  }
  
  private void a(final ViewGroup paramViewGroup)
  {
    View.OnClickListener local3 = new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        if ((x.e(x.this) != null) && (x.e(x.this).getVisibility() != 8)) {
          x.p(x.this).f(true);
        }
        int j = -1;
        int i = 0;
        while (i < paramViewGroup.getChildCount())
        {
          if (paramViewGroup.getChildAt(i).isSelected()) {
            j = i;
          }
          paramViewGroup.getChildAt(i).setSelected(false);
          i += 1;
        }
        int k = paramViewGroup.indexOfChild(paramAnonymousView);
        paramAnonymousView.setSelected(true);
        if (k == 4) {}
        for (i = 0;; i = 8)
        {
          Object localObject = x.v(x.this).findViewById(2131625604);
          ((View)localObject).setVisibility(i);
          ((View)localObject).setOnClickListener(new View.OnClickListener()
          {
            public final void onClick(View paramAnonymous2View)
            {
              com.xueqiu.android.common.q.a("http://xueqiu.com/5351390332", x.this.f());
            }
          });
          x.b(x.this, j);
          x.c(x.this, k);
          if (!x.w(x.this))
          {
            localObject = new SNBEvent(1600, 10);
            ((SNBEvent)localObject).addProperty("symbol", x.f(x.this).getSymbol());
            ((SNBEvent)localObject).addProperty("name", ((TextView)paramAnonymousView).getText().toString());
            ((SNBEvent)localObject).addProperty("type", String.valueOf(x.i(x.this)));
            com.xueqiu.android.base.i.a().a((SNBEvent)localObject);
            UserPrefs.setInt(x.this.f(), "stock_tab_selected", x.x(x.this));
          }
          x.y(x.this);
          if (j != k) {
            break;
          }
          if (k != 5)
          {
            x.z(x.this);
            x.h(x.this).a(false);
          }
          return;
        }
        x.A(x.this);
      }
    };
    int i = 0;
    if (i < paramViewGroup.getChildCount())
    {
      paramViewGroup.getChildAt(i).setOnClickListener(local3);
      View localView = paramViewGroup.getChildAt(i);
      if (i == this.e) {}
      for (boolean bool = true;; bool = false)
      {
        localView.setSelected(bool);
        i += 1;
        break;
      }
    }
  }
  
  private void a(boolean paramBoolean)
  {
    ListView localListView = this.an.d();
    if (localListView.getAdapter() != null)
    {
      this.aD = localListView.getFirstVisiblePosition();
      localObject = localListView.getChildAt(0);
      if (localObject != null) {
        this.aE = ((View)localObject).getTop();
      }
      if (this.aD >= 2)
      {
        this.aD = 2;
        this.aE = 0;
      }
    }
    Object localObject = new com.xueqiu.android.community.a.ak(g());
    ((com.xueqiu.android.community.a.ak)localObject).g = this;
    this.an.a((d)localObject);
    if ((this.e != 5) && (!paramBoolean))
    {
      localObject = new ArrayList(b(this.e).b);
      this.an.c.a((ArrayList)localObject);
    }
    if (this.f == 5)
    {
      localObject = c(2131625452);
      if (localObject != null) {
        ((View)localObject).setVisibility(8);
      }
      this.an.b(true);
    }
    if ((this.aD != -1) || (this.aE != -1)) {
      localListView.setSelectionFromTop(this.aD, this.aE);
    }
  }
  
  private y b(int paramInt)
  {
    if (paramInt == 1) {
      return this.h;
    }
    if (paramInt == 0) {
      return this.g;
    }
    if (paramInt == 2) {
      return this.al;
    }
    if (paramInt == 3) {
      return this.ak;
    }
    if (paramInt == 4) {
      return this.am;
    }
    return null;
  }
  
  private static x g(Bundle paramBundle)
  {
    x localx = new x();
    localx.e(paramBundle);
    return localx;
  }
  
  public final void C_()
  {
    this.d = true;
    if ((this.T != null) && (!this.aq))
    {
      C();
      D();
      this.aq = true;
    }
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.ar = ((ViewGroup)g().findViewById(2131624354));
    super.a(paramLayoutInflater, paramViewGroup, paramBundle);
    e_(true);
    this.ap = new FrameLayout(f());
    this.ap.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    return this.ap;
  }
  
  public final void a(long paramLong)
  {
    SNBEvent localSNBEvent = new SNBEvent(1600, 12);
    localSNBEvent.addProperty("symbol", this.b.getSymbol());
    localSNBEvent.addProperty("status_id", String.valueOf(paramLong));
    localSNBEvent.addProperty("type", String.valueOf(this.aB));
    com.xueqiu.android.base.i.a().a(localSNBEvent);
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    this.b = ((StockQuote)this.r.getParcelable("extra_stock"));
  }
  
  public final void a(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    if (this.b != null) {
      if (!this.b.isFollowing()) {
        break label38;
      }
    }
    label38:
    for (int i = 2131166549;; i = 2131165536)
    {
      android.support.v4.view.ak.a(paramMenu.add(0, 2131623947, 0, i), 2);
      return;
    }
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    paramView = (StockDetailActivity)g();
    paramBundle = this.b.getSymbol();
    if ((!paramView.p) && (paramView.j.size() != 1) && (!paramBundle.equals(((StockQuote)paramView.j.get(paramView.k)).getSymbol()))) {}
    for (int i = 1; i != 0; i = 0)
    {
      ag.d.a(new rx.c.a()
      {
        public final void a()
        {
          if ((!x.a(x.this)) && (x.this.j()))
          {
            x.b(x.this);
            x.c(x.this);
            x.d(x.this);
          }
        }
      }, 2000L, TimeUnit.MILLISECONDS);
      return;
    }
    C();
    D();
    this.aq = true;
  }
  
  public final void a(JsonArray paramJsonArray)
  {
    if ((paramJsonArray.get(0) != null) && (!paramJsonArray.get(1).toString().equals("null"))) {
      this.b.setCurrent(paramJsonArray.get(0).getAsDouble());
    }
    if ((paramJsonArray.get(1) != null) && (!paramJsonArray.get(1).toString().equals("null"))) {
      this.b.setChange(paramJsonArray.get(1).getAsDouble());
    }
    if ((paramJsonArray.get(2) != null) && (!paramJsonArray.get(2).toString().equals("null"))) {
      this.b.setPercentage(paramJsonArray.get(2).getAsDouble());
    }
    if ((paramJsonArray.get(3) != null) && (!paramJsonArray.get(3).toString().equals("null")))
    {
      paramJsonArray = paramJsonArray.get(3).getAsString();
      if ((paramJsonArray == null) || (paramJsonArray.length() <= 25)) {}
    }
    try
    {
      this.b.setUpdateTime(com.xueqiu.android.base.util.h.b(paramJsonArray));
      if (this.c != null)
      {
        paramJsonArray = this.c;
        paramJsonArray.a = this.b;
        paramJsonArray.u();
        i = Integer.valueOf(paramJsonArray.a.getType()).intValue();
        if ((i == 20) || (i == 18))
        {
          i = 1;
          if (i == 0)
          {
            paramJsonArray.h.setText(as.a(paramJsonArray.a.getCurrent(), paramJsonArray.a.getType()));
            paramJsonArray.C();
          }
          if (paramJsonArray.d != null) {
            paramJsonArray.d.a((float)paramJsonArray.a.getCurrent(), paramJsonArray.a.getUpdateTime().getTimeInMillis());
          }
          if (paramJsonArray.e != null) {
            paramJsonArray.e.a((float)paramJsonArray.a.getCurrent(), paramJsonArray.a.getUpdateTime().getTimeInMillis());
          }
          v.c("StockDetailView", "QuoteFragment updatePrice" + paramJsonArray.a.getSymbol());
        }
      }
      else
      {
        if (this.at != null) {
          this.at.a(this.b);
        }
        if (this.av) {
          E();
        }
        return;
      }
    }
    catch (ParseException paramJsonArray)
    {
      for (;;)
      {
        aa.a(paramJsonArray);
        continue;
        int i = 0;
      }
    }
  }
  
  public final void a(String paramString)
  {
    SNBEvent localSNBEvent = new SNBEvent(1300, 23);
    localSNBEvent.addProperty("card_id", paramString);
    com.xueqiu.android.base.i.a().a(localSNBEvent);
  }
  
  public final void a(String paramString, long paramLong, int paramInt)
  {
    SNBEvent localSNBEvent = new SNBEvent(1300, 25);
    localSNBEvent.addProperty("card_id", paramString);
    localSNBEvent.addProperty("user_id", String.valueOf(paramLong));
    localSNBEvent.addProperty("pos", String.valueOf(paramInt));
    com.xueqiu.android.base.i.a().a(localSNBEvent);
  }
  
  public final void a(String paramString1, String paramString2, String paramString3, int paramInt)
  {
    SNBEvent localSNBEvent = new SNBEvent(1300, 24);
    localSNBEvent.addProperty("card_id", paramString1);
    localSNBEvent.addProperty("recommend_id", paramString2);
    localSNBEvent.addProperty("card_type", paramString3);
    localSNBEvent.addProperty("pos", String.valueOf(paramInt));
    com.xueqiu.android.base.i.a().a(localSNBEvent);
  }
  
  public final boolean a(MenuItem paramMenuItem)
  {
    if (this.aG != null) {
      return this.aG.a(paramMenuItem.getItemId());
    }
    return false;
  }
  
  public final void b(long paramLong)
  {
    SNBEvent localSNBEvent = new SNBEvent(1600, 13);
    localSNBEvent.addProperty("symbol", this.b.getSymbol());
    localSNBEvent.addProperty("status_id", String.valueOf(paramLong));
    localSNBEvent.addProperty("type", String.valueOf(this.aB));
    com.xueqiu.android.base.i.a().a(localSNBEvent);
  }
  
  public final void q()
  {
    super.q();
  }
  
  public final void u()
  {
    com.xueqiu.android.base.b.r localr = new com.xueqiu.android.base.b.r();
    localr.c = o.c;
    a(x().a(this.b.getSymbol(), new p(this)
    {
      public final void a(com.android.volley.y paramAnonymousy)
      {
        aa.a(paramAnonymousy);
      }
    }, localr));
  }
  
  public final boolean y_()
  {
    boolean bool = true;
    if (this.au == null) {
      bool = super.y_();
    }
    while ((this.at != null) && (this.at.y_())) {
      return bool;
    }
    if (this.au.getVisibility() == 0)
    {
      this.at.f(true);
      return true;
    }
    return super.y_();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\c\x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */