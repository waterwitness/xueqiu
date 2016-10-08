package com.xueqiu.android.trade;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.support.v4.a.ac;
import android.support.v7.a.g;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.volley.y;
import com.google.gson.JsonElement;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.j;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.base.util.as;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.v;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.search.StockSearchActivity;
import com.xueqiu.android.common.widget.IndicatorTabLayout;
import com.xueqiu.android.common.widget.o;
import com.xueqiu.android.common.widget.ptr.PullToRefreshScrollView;
import com.xueqiu.android.message.client.MessageService;
import com.xueqiu.android.stock.model.Stock;
import com.xueqiu.android.stock.model.StockQuote;
import com.xueqiu.android.trade.a.m;
import com.xueqiu.android.trade.b.k;
import com.xueqiu.android.trade.c.r;
import com.xueqiu.android.trade.model.TradeAccount;
import com.xueqiu.android.trade.model.TradeBroker;
import com.xueqiu.android.trade.view.EdgeScrollView;
import com.xueqiu.android.trade.view.d;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Map;

public class OrderFullActivity
  extends j<com.xueqiu.android.trade.b.e>
  implements View.OnClickListener, o, com.xueqiu.android.common.widget.ptr.h, com.xueqiu.android.stockchart.a.b, com.xueqiu.android.stockchart.c.b, com.xueqiu.android.trade.b.f, com.xueqiu.android.trade.c.f, r, com.xueqiu.android.trade.view.b, com.xueqiu.android.trade.view.c
{
  private ImageView A;
  private View B;
  private PullToRefreshScrollView C;
  private StockQuote D = null;
  private String E;
  private com.xueqiu.android.stockchart.e.h F = null;
  private com.xueqiu.android.stockchart.d.c G;
  private com.xueqiu.android.stockchart.d.b H;
  private com.xueqiu.android.trade.view.a I;
  private MessageService J = null;
  private Handler K = new Handler();
  private ServiceConnection L = new ServiceConnection()
  {
    public final void onServiceConnected(ComponentName paramAnonymousComponentName, IBinder paramAnonymousIBinder)
    {
      OrderFullActivity.a(OrderFullActivity.this, (MessageService)((com.xueqiu.android.message.client.b)paramAnonymousIBinder).a);
    }
    
    public final void onServiceDisconnected(ComponentName paramAnonymousComponentName)
    {
      OrderFullActivity.a(OrderFullActivity.this, null);
    }
  };
  public com.xueqiu.android.trade.c.e p;
  public ArrayList<TradeAccount> q;
  public TradeAccount r;
  private com.xueqiu.android.trade.c.q s;
  private IndicatorTabLayout t;
  private View u;
  private View v;
  private TextView w;
  private View x;
  private EdgeScrollView y;
  private TextView z;
  
  public static Intent a(Context paramContext, StockQuote paramStockQuote, String paramString1, String paramString2, String paramString3, int paramInt)
  {
    paramContext = new Intent(paramContext, OrderFullActivity.class);
    paramContext.putExtra("extra_stock", paramStockQuote);
    paramContext.putExtra("extra_trans_type", paramString1);
    paramContext.putExtra("extra_price", paramString2);
    paramContext.putExtra("extra_amount", paramString3);
    paramContext.putExtra("extra_position_type", paramInt);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, TradeAccount paramTradeAccount, String paramString)
  {
    paramContext = new Intent(paramContext, OrderFullActivity.class);
    paramContext.putExtra("extra_trade_account", paramTradeAccount);
    paramContext.putExtra("extra_trans_type", paramString);
    return paramContext;
  }
  
  private void a(Stock paramStock)
  {
    if (TextUtils.equals(paramStock.getCode(), "799999"))
    {
      c("登记指定 799999");
      this.q = UserPrefs.getTradableBrokers();
      StockQuote localStockQuote = new StockQuote();
      localStockQuote.setSymbol(paramStock.getCode());
      this.p.b(localStockQuote);
      q();
      return;
    }
    if (TextUtils.isEmpty(paramStock.getCode()))
    {
      c("");
      paramStock = this.p;
      paramStock.u();
      paramStock.d.setText("--");
      paramStock.h.setVisibility(0);
      paramStock.g.setText("--");
      paramStock.f.setVisibility(0);
      paramStock.e.setText("--");
      paramStock.C();
      paramStock.an = null;
      this.q = UserPrefs.getTradableBrokers();
      q();
      return;
    }
    h();
    ((com.xueqiu.android.trade.b.e)this.j).a(paramStock.getCode());
  }
  
  private void b(TradeAccount paramTradeAccount)
  {
    if ((paramTradeAccount != null) && (paramTradeAccount.isFirstTrade()))
    {
      findViewById(2131625732).setVisibility(0);
      findViewById(2131625731).setVisibility(0);
      findViewById(2131625729).setVisibility(8);
      return;
    }
    if (this.t.getCurrentItem() > 1) {
      this.t.a(0);
    }
    findViewById(2131625732).setVisibility(8);
    findViewById(2131625731).setVisibility(8);
    findViewById(2131625729).setVisibility(0);
  }
  
  private void c(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      this.z.setText("");
      this.A.setVisibility(4);
      this.B.setVisibility(8);
      return;
    }
    this.z.setText(paramString);
    this.A.setVisibility(0);
    this.B.setVisibility(0);
  }
  
  private void q()
  {
    com.xueqiu.android.stockchart.e.h localh = new com.xueqiu.android.stockchart.e.h();
    if ((this.r != null) && (this.r.isUSType())) {
      localh.b("0");
    }
    for (;;)
    {
      this.G.ao = localh;
      this.G.a(null);
      this.G.v();
      return;
      localh.b("11");
    }
  }
  
  private boolean r()
  {
    Animation localAnimation = this.v.getAnimation();
    return (localAnimation != null) && (!localAnimation.hasEnded());
  }
  
  public final void a()
  {
    this.p.refresh();
    this.s.refresh();
  }
  
  public final void a(StockQuote paramStockQuote)
  {
    if (this.G != null) {
      this.G.a((float)paramStockQuote.getCurrent(), paramStockQuote.getUpdateTime().getTimeInMillis());
    }
    if (this.H != null) {
      this.H.a((float)paramStockQuote.getCurrent(), paramStockQuote.getUpdateTime().getTimeInMillis());
    }
    this.p.a(paramStockQuote);
  }
  
  public final void a(StockQuote paramStockQuote, com.xueqiu.android.stockchart.e.h paramh)
  {
    i();
    this.F = paramh;
    c(paramStockQuote.getName() + " " + paramStockQuote.getSymbol());
    this.G.a(paramStockQuote.getSymbol());
    this.G.ao = paramh;
    this.G.v();
    this.G.x();
    this.p.a(paramStockQuote);
    if (this.D == null) {
      this.p.a(String.valueOf(paramStockQuote.getCurrent()));
    }
    for (;;)
    {
      this.D = paramStockQuote;
      this.p.b(paramStockQuote);
      ((com.xueqiu.android.trade.b.e)this.j).a(paramStockQuote);
      return;
      if ((paramStockQuote.getSymbol() != null) && (!paramStockQuote.getSymbol().equals(this.D.getSymbol()))) {
        this.p.a(String.valueOf(paramStockQuote.getCurrent()));
      }
    }
  }
  
  public final void a(TradeAccount paramTradeAccount)
  {
    int i;
    if (((this.r == null) && (paramTradeAccount != null)) || ((paramTradeAccount != null) && (!TextUtils.equals(paramTradeAccount.getTid(), this.r.getTid()))))
    {
      i = 1;
      this.r = paramTradeAccount;
      if ((this.r == null) || (i == 0)) {
        break label60;
      }
      o();
    }
    label60:
    while (this.r != null)
    {
      return;
      i = 0;
      break;
    }
    this.w.setText("绑定券商");
  }
  
  public final void a(String paramString)
  {
    this.p.a(paramString);
    paramString = new SNBEvent(1517, 8);
    com.xueqiu.android.base.i.a().a(paramString);
  }
  
  public final void a(String paramString1, String paramString2, Map<String, String> paramMap, final com.xueqiu.android.stockchart.c.a<JsonElement> parama)
  {
    parama = new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        if (parama != null) {
          parama.a(paramAnonymousy);
        }
      }
    };
    com.xueqiu.android.base.q.a().b().a(paramString1, paramString2, paramMap, parama);
  }
  
  public final void b(int paramInt)
  {
    int i = (int)(ay.d(this) - ay.a(200.0F));
    this.y.scrollBy(0, paramInt - i);
  }
  
  public final void b(String paramString)
  {
    Stock localStock = new Stock();
    localStock.setCode(paramString);
    a(localStock);
  }
  
  public final void b(String paramString1, String paramString2, Map<String, String> paramMap, final com.xueqiu.android.stockchart.c.a<JsonElement> parama)
  {
    parama = new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        if (parama != null) {
          parama.a(paramAnonymousy);
        }
      }
    };
    com.xueqiu.android.base.q.a().b().b(paramString1, paramString2, paramMap, parama);
  }
  
  public final void b_(String paramString)
  {
    if (TextUtils.equals(paramString, getString(2131166428)))
    {
      this.E = "BUY";
      this.p.f("BUY");
      paramString = new SNBEvent(1517, 3);
      com.xueqiu.android.base.i.a().a(paramString);
    }
    do
    {
      return;
      if (TextUtils.equals(paramString, getString(2131166431)))
      {
        this.E = "SELL";
        this.p.f("SELL");
        paramString = new SNBEvent(1517, 4);
        com.xueqiu.android.base.i.a().a(paramString);
        return;
      }
      if (TextUtils.equals(paramString, getString(2131166427)))
      {
        this.E = "BUY_COVER";
        this.p.f("BUY_COVER");
        paramString = new SNBEvent(1517, 25);
        com.xueqiu.android.base.i.a().a(paramString);
        return;
      }
    } while (!TextUtils.equals(paramString, getString(2131166432)));
    this.E = "SELL_SHORT";
    this.p.f("SELL_SHORT");
    paramString = new SNBEvent(1517, 24);
    com.xueqiu.android.base.i.a().a(paramString);
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getKeyCode() == 4) && (paramKeyEvent.getAction() == 1))
    {
      if (getResources().getConfiguration().orientation == 2) {}
      for (int i = 1; i != 0; i = 0)
      {
        setRequestedOrientation(1);
        return true;
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
  
  public final void j()
  {
    if (this.r == null) {
      this.w.setText("绑定券商");
    }
    while ((this.q != null) && (this.q.size() == 1))
    {
      this.x.setVisibility(8);
      return;
      this.w.setText(this.r.getTradeBroker().getTraderName() + "(" + this.r.getRealAccountId() + ")");
    }
    this.x.setVisibility(0);
  }
  
  public final void k()
  {
    if (r()) {
      this.v.clearAnimation();
    }
    this.C.f();
  }
  
  public final void l()
  {
    this.B.setVisibility(8);
  }
  
  public final void m()
  {
    Object localObject = this.s;
    ((com.xueqiu.android.trade.c.q)localObject).a(((com.xueqiu.android.trade.c.q)localObject).e);
    ((k)((com.xueqiu.android.trade.c.q)localObject).a).a("");
    ((com.xueqiu.android.trade.c.q)localObject).c.a(1);
    localObject = findViewById(2131625412);
    this.y.requestChildFocus((View)localObject, (View)localObject);
    localObject = this.s;
    int[] arrayOfInt = new int[2];
    ((com.xueqiu.android.trade.c.q)localObject).c.getLocationOnScreen(arrayOfInt);
    int i = arrayOfInt[1];
    int j = (int)(ay.d(this) - ay.a(134.0F));
    this.y.scrollBy(0, i - j);
  }
  
  public final void n()
  {
    com.xueqiu.android.trade.c.q localq = this.s;
    int i = localq.c.getCurrentItem();
    if ((i == 1) && (localq.e.a())) {
      ((k)localq.a).a(((k)localq.a).f());
    }
    while ((i != 2) || (!localq.f.a())) {
      return;
    }
    ((k)localq.a).b(((k)localq.a).g());
  }
  
  public final void o()
  {
    j();
    if (this.r != null) {
      UserPrefs.setCurrentTradeAccountTid(this.r.getTid());
    }
    Object localObject = this.s;
    TradeAccount localTradeAccount = this.r;
    if (localTradeAccount == null) {
      ((com.xueqiu.android.trade.c.q)localObject).ao = null;
    }
    for (;;)
    {
      localObject = this.p;
      localTradeAccount = this.r;
      if (((com.xueqiu.android.trade.c.e)localObject).j()) {
        ((com.xueqiu.android.trade.b.b)((com.xueqiu.android.trade.c.e)localObject).a).a(localTradeAccount);
      }
      b(this.r);
      if (this.r != null)
      {
        localObject = new SNBEvent(1517, 2);
        ((SNBEvent)localObject).addProperty("to_tid", this.r.getTid());
        com.xueqiu.android.base.i.a().a((SNBEvent)localObject);
      }
      return;
      ((com.xueqiu.android.trade.c.q)localObject).ao = localTradeAccount;
      ((com.xueqiu.android.trade.c.q)localObject).al = new m(((com.xueqiu.android.trade.c.q)localObject).g(), localTradeAccount.isUSType());
      ((com.xueqiu.android.trade.c.q)localObject).am = new com.xueqiu.android.trade.a.h(((com.xueqiu.android.trade.c.q)localObject).g());
      ((com.xueqiu.android.trade.c.q)localObject).an = new com.xueqiu.android.trade.a.e(((com.xueqiu.android.trade.c.q)localObject).g());
      ((com.xueqiu.android.trade.c.q)localObject).am.b = ((com.xueqiu.android.trade.a.i)localObject);
      ((com.xueqiu.android.trade.c.q)localObject).an.b = localTradeAccount;
      ((com.xueqiu.android.trade.c.q)localObject).g.a(false);
      ((com.xueqiu.android.trade.c.q)localObject).h.a(false);
      ((com.xueqiu.android.trade.c.q)localObject).ak.a(false);
      ((com.xueqiu.android.trade.c.q)localObject).d.setAdapter(((com.xueqiu.android.trade.c.q)localObject).al);
      ((com.xueqiu.android.trade.c.q)localObject).e.setAdapter(((com.xueqiu.android.trade.c.q)localObject).am);
      ((com.xueqiu.android.trade.c.q)localObject).f.setAdapter(((com.xueqiu.android.trade.c.q)localObject).an);
      ((com.xueqiu.android.trade.c.q)localObject).d.a("加载中…");
      ((com.xueqiu.android.trade.c.q)localObject).e.a("加载中…");
      ((com.xueqiu.android.trade.c.q)localObject).f.a("加载中…");
      ((k)((com.xueqiu.android.trade.c.q)localObject).a).a(localTradeAccount);
      ((com.xueqiu.android.trade.c.q)localObject).refresh();
    }
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt2 == -1) && (paramInt1 == 100)) {
      a((Stock)paramIntent.getParcelableExtra("extra_stock"));
    }
  }
  
  public void onBackPressed()
  {
    if (this.I != null)
    {
      com.xueqiu.android.trade.view.a locala = this.I;
      if ((locala.d != null) && (locala.d.isShowing())) {
        locala.d.dismiss();
      }
      for (int i = 1; i != 0; i = 0) {
        return;
      }
    }
    super.onBackPressed();
  }
  
  public void onClick(View paramView)
  {
    if (this.u == paramView) {
      finish();
    }
    do
    {
      do
      {
        do
        {
          return;
          if (this.v != paramView) {
            break;
          }
        } while ((this.r == null) || (r()));
        paramView = AnimationUtils.loadAnimation(this, 2130968600);
        this.v.startAnimation(paramView);
        a();
        return;
        if (this.w != paramView) {
          break;
        }
        if ((this.q == null) || (this.q.size() == 0))
        {
          com.xueqiu.android.common.q.a(v.b("/broker/config"), this);
          finish();
          return;
        }
      } while ((this.q == null) || (this.q.size() == 1));
      if (this.r != null) {
        this.I = new com.xueqiu.android.trade.view.a(this, this.r, this.q, this);
      }
      this.I.a();
      return;
      if (this.z == paramView)
      {
        paramView = new Intent(this, StockSearchActivity.class);
        Bundle localBundle = new Bundle();
        if (this.r != null) {
          localBundle.putString("market_type", this.r.getTradeBroker().getEtype());
        }
        int i = this.t.getCurrentItem();
        if ((i == 0) || (i == 3)) {
          localBundle.putString("extra_view_color", "view_color_blue");
        }
        for (;;)
        {
          paramView.putExtras(localBundle);
          a(paramView, 100, 2130968585, 2130968585);
          paramView = new SNBEvent(1517, 9);
          com.xueqiu.android.base.i.a().a(paramView);
          return;
          localBundle.putString("extra_view_color", "view_color_yellow");
        }
      }
    } while (this.A != paramView);
    a(new Stock());
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    this.K.post(new Runnable()
    {
      public final void run()
      {
        OrderFullActivity.a(OrderFullActivity.this).a(OrderFullActivity.a(OrderFullActivity.this).getCurrentItem());
      }
    });
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null) {
      return;
    }
    setContentView(2130903113);
    this.i.b().d();
    this.t = ((IndicatorTabLayout)findViewById(2131625727));
    this.z = ((TextView)findViewById(2131625409));
    this.A = ((ImageView)findViewById(2131625410));
    this.B = findViewById(2131625407);
    this.C = ((PullToRefreshScrollView)findViewById(2131624339));
    this.y = ((EdgeScrollView)this.C.getRefreshableView());
    this.C.setOnRefreshListener(this);
    this.y.setOnReachEdgeListener(this);
    this.t.setOnTabChangeListener(this);
    this.z.setOnClickListener(this);
    this.A.setOnClickListener(this);
    this.D = ((StockQuote)getIntent().getParcelableExtra("extra_stock"));
    if (this.D != null)
    {
      paramBundle = as.e(this.D.getSymbol());
      this.q = UserPrefs.getTradableBrokers(paramBundle);
      this.r = UserPrefs.getCurrentExchangeBroker(paramBundle);
      this.E = getIntent().getStringExtra("extra_trans_type");
      if (TextUtils.isEmpty(this.E)) {
        this.E = "BUY";
      }
      this.u = findViewById(2131625733);
      this.w = ((TextView)findViewById(2131625734));
      this.x = findViewById(2131625735);
      this.v = findViewById(2131625736);
      j();
      this.u.setOnClickListener(this);
      this.w.setOnClickListener(this);
      this.v.setOnClickListener(this);
      this.G = ((com.xueqiu.android.stockchart.d.c)c().a("small_chart_fragment_tag"));
      if (this.G == null)
      {
        this.G = new com.xueqiu.android.stockchart.d.c();
        this.F = new com.xueqiu.android.stockchart.e.h();
        if ((this.r == null) || (!this.r.isUSType())) {
          break label766;
        }
        this.F.b("0");
        label376:
        this.G.ao = this.F;
        this.G.e = this;
        this.G.am = this;
        this.G.al = new b(this, (byte)0);
        paramBundle = c().a();
        paramBundle.a(2131625407, this.G, "small_chart_fragment_tag");
        if (this.n) {
          paramBundle.d();
        }
      }
      this.s = com.xueqiu.android.trade.c.q.a(this.r);
      this.s.b = this;
      paramBundle = new Bundle();
      if (!TextUtils.equals(this.E, "BUY")) {
        break label779;
      }
      paramBundle.putString("arg_direction", "BUY");
      label504:
      paramBundle.putString("arg_price", getIntent().getStringExtra("extra_price"));
      paramBundle.putString("arg_amount", getIntent().getStringExtra("extra_amount"));
      paramBundle.putBoolean("arg_is_lite", false);
      if ((this.D != null) && (this.D.getSymbol() != null)) {
        paramBundle.putString("arg_symbol", this.D.getSymbol());
      }
      paramBundle.putParcelable("arg_tradeaccount", this.r);
      this.p = com.xueqiu.android.trade.c.e.g(paramBundle);
      this.p.al = this;
      paramBundle = c().a();
      paramBundle.a(2131625412, this.s);
      paramBundle.a(2131625411, this.p);
      paramBundle.d();
      bindService(new Intent(this, MessageService.class), this.L, 1);
      paramBundle = new SNBEvent(1517, 1);
      if (this.r != null) {
        paramBundle.addProperty("tid", this.r.getTid());
      }
      com.xueqiu.android.base.i.a().a(paramBundle);
      paramBundle = this.t;
      if (!TextUtils.equals(this.E, "BUY")) {
        break label792;
      }
    }
    label766:
    label779:
    label792:
    for (int i = 0;; i = 1)
    {
      paramBundle.a(i);
      b(this.r);
      return;
      c("");
      this.q = UserPrefs.getTradableBrokers();
      this.r = ((TradeAccount)getIntent().getParcelableExtra("extra_trade_account"));
      break;
      this.F.b("11");
      break label376;
      paramBundle.putString("arg_direction", "SELL");
      break label504;
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    try
    {
      if (this.L != null) {
        unbindService(this.L);
      }
      ((com.xueqiu.android.trade.b.e)this.j).b();
      return;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  protected void onPause()
  {
    super.onPause();
    ((com.xueqiu.android.trade.b.e)this.j).c();
  }
  
  protected void onRestart()
  {
    super.onRestart();
    ((com.xueqiu.android.trade.b.e)this.j).d();
    this.s.refresh();
  }
  
  protected void onStart()
  {
    super.onStart();
    if ((!this.k) && (this.D != null)) {
      ((com.xueqiu.android.trade.b.e)this.j).a(this.D.getSymbol());
    }
  }
  
  protected void onStop()
  {
    if (this.v != null) {
      this.v.clearAnimation();
    }
    super.onStop();
  }
  
  public final MessageService p()
  {
    return this.J;
  }
  
  public void setRequestedOrientation(int paramInt)
  {
    super.setRequestedOrientation(paramInt);
    if (paramInt == 0)
    {
      this.H = new com.xueqiu.android.stockchart.d.b();
      this.H.ao = this.F;
      this.H.a(this.F.b);
      this.H.e = this;
      this.H.aq = this.G.aq;
      this.H.ar = this.G.ar;
      this.H.ax = this.G.ax;
      this.H.ay = this.G.ay;
      this.H.am = this;
      this.H.as = "big";
      localObject = c().a();
      ((ac)localObject).a(2131624338, this.H);
      if (this.n) {
        ((ac)localObject).d();
      }
      findViewById(2131624338).setVisibility(0);
      localObject = new SNBEvent(1517, 5);
      com.xueqiu.android.base.i.a().a((SNBEvent)localObject);
    }
    while ((paramInt != 1) || (this.H == null)) {
      return;
    }
    Object localObject = this.H.aq;
    findViewById(2131624338).setVisibility(8);
    localObject = c().a();
    ((ac)localObject).b(this.H);
    if (this.n) {
      ((ac)localObject).d();
    }
    this.H = null;
  }
  
  public final void x_()
  {
    if (this.H == null) {
      super.x_();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\OrderFullActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */