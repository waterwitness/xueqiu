package com.xueqiu.android.trade.d;

import android.os.Handler;
import android.text.TextUtils;
import com.android.volley.y;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.ak;
import com.xueqiu.android.base.b.am;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.x;
import com.xueqiu.android.base.h;
import com.xueqiu.android.base.i;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.as;
import com.xueqiu.android.base.util.au;
import com.xueqiu.android.base.util.j;
import com.xueqiu.android.base.v;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.widget.f;
import com.xueqiu.android.common.widget.g;
import com.xueqiu.android.community.model.Status;
import com.xueqiu.android.stock.model.StockQuote;
import com.xueqiu.android.trade.OrderFullActivity;
import com.xueqiu.android.trade.c.e;
import com.xueqiu.android.trade.d;
import com.xueqiu.android.trade.model.BrokerAccountToken;
import com.xueqiu.android.trade.model.OrderCondition;
import com.xueqiu.android.trade.model.TradeAccount;
import com.xueqiu.android.trade.model.TradeBroker;
import com.xueqiu.android.trade.model.TradeFee;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Map;

public final class a
  implements com.xueqiu.android.trade.b.b
{
  boolean A;
  private double B;
  private com.xueqiu.android.trade.c C;
  private com.xueqiu.android.trade.view.a D;
  private double E;
  private int F;
  private Handler G;
  e a;
  com.xueqiu.android.trade.b.c b;
  com.xueqiu.android.common.b c;
  String d;
  String e;
  String f;
  boolean g;
  ai h = com.xueqiu.android.base.q.a().b();
  TradeAccount i = null;
  ArrayList<TradeAccount> j;
  String k;
  double l;
  double m;
  double n = 0.0D;
  double o = 0.0D;
  double p = 0.01D;
  int q = -1;
  double r = 100.0D;
  String s;
  String t;
  String u;
  Double v;
  String w;
  int x;
  f y;
  JsonArray z;
  
  public a(com.xueqiu.android.trade.b.c paramc, boolean paramBoolean, String paramString1, String paramString2)
  {
    this.g = paramBoolean;
    this.a = ((e)paramc);
    this.c = ((com.xueqiu.android.common.b)this.a.g());
    this.b = paramc;
    this.e = paramString1;
    this.f = paramString2;
    this.G = new Handler();
    if (this.f != null) {
      a(this.f);
    }
    this.c.a(rx.a.a.a.a(this.c, com.xueqiu.android.message.client.c.m).c(new rx.c.b() {}));
  }
  
  private int a(int paramInt1, int paramInt2)
  {
    if (paramInt2 == 1) {}
    do
    {
      return paramInt1;
      paramInt2 = paramInt1;
      if (paramInt1 < 0) {
        paramInt2 = 0;
      }
      paramInt1 = paramInt2;
    } while (paramInt2 % this.r == 0.0D);
    return (int)((int)(paramInt2 / this.r) * this.r);
  }
  
  private void a(String paramString, final double paramDouble1, double paramDouble2, final double paramDouble3)
  {
    Object localObject;
    if ("BUY".equals(this.f)) {
      localObject = "确认买入";
    }
    for (;;)
    {
      ai localai = com.xueqiu.android.base.q.a().b();
      localObject = new p(this.a)
      {
        public final void a(y paramAnonymousy)
        {
          a.this.a.z();
          String str2;
          String str3;
          if (paramDouble1 == 0.0D)
          {
            paramAnonymousy = "";
            str2 = a.this.d;
            str3 = a.this.e;
            if (!"MKT".equals(a.this.k)) {
              break label209;
            }
          }
          label209:
          for (String str1 = "市价";; str1 = String.valueOf(paramDouble3))
          {
            paramAnonymousy = String.format("股票：%s %s \n价格：%s \n数量：%s \n金额：%s \n%s", new Object[] { str2, str3, str1, Integer.valueOf((int)this.c), au.b(a.this.l), paramAnonymousy });
            a.this.y = f.a(a.this.c, new g()
            {
              public final void a(f paramAnonymous2f, int paramAnonymous2Int)
              {
                switch (paramAnonymous2Int)
                {
                case 1: 
                default: 
                  a.this.b.a(0, null);
                  return;
                case 2: 
                  if (!a.this.g) {
                    i.a().a(new SNBEvent(1517, 18));
                  }
                  if (u.a().a(a.this.i.getAid()) != null)
                  {
                    paramAnonymous2f = u.a().a(a.this.i.getAid()).getWriteToken();
                    a.this.a(a.this.i.getTid(), a.this.i.getAid(), a.this.f, a.this.t, a.this.k, a.this.s, a.2.this.b, a.2.this.c, paramAnonymous2f, a.this.u);
                    a.this.b.H_();
                    return;
                  }
                  a.a(a.this, "70005", a.this.i, new c(a.this, a.2.this.b, a.2.this.c));
                  return;
                }
                a.this.b.a(0, null);
              }
            }).a(this.d).b(paramAnonymousy).c(a.this.c.getString(2131165296)).d(a.this.c.getString(2131165361));
            a.this.y.show();
            return;
            paramAnonymousy = String.format("手续费：%s（参考）", new Object[] { au.b(paramDouble1) });
            break;
          }
        }
      };
      localai.m.a(paramString, paramDouble1, (p)localObject);
      return;
      if ("SELL".equals(this.f)) {
        localObject = "确认卖出";
      } else if ("BUY_COVER".equals(this.f)) {
        localObject = "确认卖空补回";
      } else if ("SELL_SHORT".equals(this.f)) {
        localObject = "确认卖空";
      } else {
        localObject = "确认订单";
      }
    }
  }
  
  private void a(String paramString1, final double paramDouble1, double paramDouble2, String paramString2, String paramString3)
  {
    if (as.c(this.u))
    {
      a(this.i.getTid(), 0.0D, paramDouble1, paramDouble2);
      return;
    }
    ai localai = com.xueqiu.android.base.q.a().b();
    p local3 = new p(this.a)
    {
      public final void a(y paramAnonymousy)
      {
        a.a(a.this, a.this.i.getTid(), 0.0D, paramDouble1, this.b);
      }
    };
    paramString1 = localai.m.a(paramString1, paramDouble1, paramDouble2, paramString2, paramString3, local3);
    this.a.a(paramString1);
  }
  
  private void a(final boolean paramBoolean, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, double paramDouble, String paramString6)
  {
    ai localai = com.xueqiu.android.base.q.a().b();
    p local22 = new p(this.a)
    {
      public final void a(y paramAnonymousy)
      {
        if (paramBoolean)
        {
          a.this.b.c("--");
          a.this.q = 0;
        }
      }
    };
    paramString1 = localai.m.a(paramString1, paramString2, paramString3, paramString4, paramString5, paramDouble, paramString6, local22);
    this.a.a(paramString1);
  }
  
  private void o()
  {
    if (this.i == null)
    {
      this.b.c(false);
      return;
    }
    if ((17 == this.F) || (this.i.isIB()))
    {
      this.b.c(false);
      return;
    }
    this.b.c(true);
  }
  
  public final void a() {}
  
  public final void a(int paramInt)
  {
    int i1 = 0;
    if (this.i == null) {}
    double d1;
    do
    {
      do
      {
        return;
      } while ((this.u == null) || (this.i.isIB()));
      this.x = paramInt;
      d1 = j.b(this.b.a());
      if (this.E == d1) {
        break;
      }
      this.E = d1;
    } while ((this.i == null) || (this.u == null));
    a(false, this.u, this.i.getTid(), this.i.getAid(), this.f, this.t, d1, this.k);
    return;
    SNBEvent localSNBEvent;
    if (this.g)
    {
      localSNBEvent = new SNBEvent(1505, 4);
      switch (paramInt)
      {
      }
    }
    for (;;)
    {
      i1 = a(i1, paramInt);
      c();
      this.b.b(String.valueOf(i1));
      i.a().a(localSNBEvent);
      this.b.b(paramInt);
      return;
      localSNBEvent = new SNBEvent(1517, 13);
      break;
      i1 = this.q / 1;
      localSNBEvent.addProperty("type", "1");
      continue;
      i1 = this.q / 2;
      localSNBEvent.addProperty("type", "2");
      continue;
      i1 = this.q / 3;
      localSNBEvent.addProperty("type", "3");
      continue;
      i1 = this.q / 4;
      localSNBEvent.addProperty("type", "4");
    }
  }
  
  public final void a(StockQuote paramStockQuote)
  {
    if ("MKT".equals(this.k))
    {
      this.m = paramStockQuote.getCurrent();
      c();
    }
  }
  
  public final void a(TradeAccount paramTradeAccount)
  {
    if (paramTradeAccount == null)
    {
      this.i = null;
      this.b.G_();
      o();
      this.b.a(this.i);
      if ((this.e != null) && (this.u != null)) {
        a(this.u, this.e);
      }
      return;
    }
    this.i = paramTradeAccount;
    if ((this.i.isIB()) || ("SELL_SHORT".equals(this.f))) {
      this.b.d_(false);
    }
    for (;;)
    {
      this.b.b(paramTradeAccount);
      this.b.a(paramTradeAccount.getTradeBroker().getTraderName(), paramTradeAccount.getRealAccountId(), paramTradeAccount.getTradeBroker().getTraderLogo(), 0);
      break;
      this.b.d_(true);
    }
  }
  
  public final void a(String paramString)
  {
    d();
    this.f = paramString;
    if (this.e != null)
    {
      if ("799999".equals(this.e))
      {
        this.b.a("1");
        this.b.b("1");
      }
      String str = this.e;
      paramString = null;
      if (this.i != null) {
        paramString = this.i.getTid();
      }
      com.xueqiu.android.base.q.a().b().h(paramString, str, new p(this.a)
      {
        public final void a(y paramAnonymousy)
        {
          aa.a(paramAnonymousy, true);
        }
      });
    }
  }
  
  final void a(String paramString1, String paramString2)
  {
    if (as.c(paramString1))
    {
      if (this.m == 0.0D) {
        this.m = this.b.J_();
      }
      this.b.a(String.valueOf(this.m));
      if ((this.u != null) && (this.i != null) && (this.t != null) && (this.i.getTradeBroker() != null) && (this.i.getTradeBroker().getEtype().contains(paramString1))) {
        a(true, this.u, this.i.getTid(), this.i.getAid(), this.f, this.t, j.b(this.b.a()), this.k);
      }
      return;
    }
    paramString1 = com.xueqiu.android.base.q.a().b();
    p local20 = new p(this.a)
    {
      public final void a(y paramAnonymousy) {}
    };
    paramString1.i.j(paramString2, local20);
  }
  
  public final void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, double paramDouble1, double paramDouble2, String paramString7, String paramString8)
  {
    if (("LMT".equals(this.k)) || ("AFTER_LMT".equals(this.k)) || ("PRE_LMT".equals(this.k))) {
      paramString6 = null;
    }
    for (;;)
    {
      b localb = new b(this, this.c, new c(this, paramDouble1, paramDouble2));
      paramString1 = com.xueqiu.android.base.q.a().b().m.a(paramString1, paramString2, paramString3, paramString4, paramString5, paramString6, paramDouble1, paramDouble2, paramString7, paramString8, localb);
      this.a.a(paramString1);
      return;
    }
  }
  
  public final void a(Map<String, String> paramMap, String paramString)
  {
    b localb = new b(this, this.c, new c(this, paramString, paramMap));
    paramMap = com.xueqiu.android.base.q.a().b().m.a(paramString, paramMap, localb);
    this.a.a(paramMap);
  }
  
  public final void a(boolean paramBoolean, String paramString)
  {
    if ((!paramBoolean) && (j.a(paramString)) && (this.i != null) && (this.u != null) && (this.t != null)) {
      a(false, this.u, this.i.getTid(), this.i.getAid(), this.f, this.t, Double.parseDouble(paramString), this.k);
    }
  }
  
  public final boolean a(boolean paramBoolean)
  {
    if ((!this.g) && (this.e == null)) {}
    do
    {
      do
      {
        return false;
        if (j.b(this.b.c()) != 0.0D) {
          break;
        }
      } while (!paramBoolean);
      aa.a("交易数量不可为0");
      return false;
    } while ((("LMT".equals(this.k)) || ("AFTER_LMT".equals(this.k)) || ("PRE_LMT".equals(this.k))) && (j.b(this.b.a()) == 0.0D));
    return true;
  }
  
  public final void b()
  {
    this.G.removeCallbacksAndMessages(null);
  }
  
  public final void b(int paramInt)
  {
    int i1 = (int)j.b(this.b.c());
    if (paramInt == 1) {
      paramInt = i1 + (int)this.r;
    }
    for (;;)
    {
      paramInt = a(paramInt, 0);
      this.b.b(String.valueOf(paramInt));
      c();
      do
      {
        return;
        if (paramInt == 2)
        {
          paramInt = i1 - (int)this.r;
          break;
        }
        if (paramInt != 0) {
          break label112;
        }
      } while (this.q == -1);
      this.x += 1;
      if (this.x > 3) {
        this.x = 1;
      }
      a(this.x);
      return;
      label112:
      paramInt = 0;
    }
  }
  
  public final void b(String paramString)
  {
    if (this.e != null)
    {
      StockQuote localStockQuote = new StockQuote();
      localStockQuote.setSymbol(this.e);
      this.c.startActivity(OrderFullActivity.a(this.c, localStockQuote, paramString, this.b.a(), this.b.c(), this.x));
    }
  }
  
  public final void c()
  {
    double d1 = 0.0D;
    if ((TextUtils.isEmpty(this.b.c())) || (TextUtils.isEmpty(this.b.a()))) {}
    label367:
    label378:
    label380:
    do
    {
      for (;;)
      {
        return;
        if (17 != this.F) {
          if (("LMT".equals(this.k)) || ("PRE_LMT".equals(this.k)) || ("AFTER_LMT".equals(this.k)))
          {
            this.l = (j.b(this.b.c()) * j.b(this.b.a()));
            this.b.a(this.l, false);
            if ((this.i != null) && (!this.i.isUSType()))
            {
              if ((this.v == null) || (this.v.doubleValue() - this.l >= 1000.0D)) {
                break label367;
              }
              this.b.a(true);
            }
          }
        }
        for (;;)
        {
          if (this.v == null) {
            break label378;
          }
          if (!"BUY".equals(this.f)) {
            break label380;
          }
          this.b.c(au.a(this.v.doubleValue() - this.l));
          return;
          if ("BUY".equals(this.f)) {
            if (this.n == 0.0D) {
              d1 = this.m;
            }
          }
          for (;;)
          {
            this.l = (d1 * j.b(this.b.c()));
            this.b.a(this.l, true);
            break;
            d1 = this.n;
            continue;
            if ("SELL".equals(this.f)) {
              if (this.o == 0.0D) {
                d1 = this.m;
              } else {
                d1 = this.o;
              }
            }
          }
          this.l = (j.b(this.b.c()) * 100.0D);
          this.b.a(this.l, false);
          break;
          this.b.a(false);
        }
      }
    } while (!"SELL".equals(this.f));
    this.b.c(au.a(this.v.doubleValue() + this.l));
  }
  
  public final void c(int paramInt)
  {
    double d2 = 0.0D;
    double d1;
    double d3;
    if (("LMT".equals(this.k)) || ("AFTER_LMT".equals(this.k)) || ("PRE_LMT".equals(this.k)))
    {
      d1 = this.m;
      d3 = j.b(this.b.a());
      switch (paramInt)
      {
      default: 
        if (d1 < 0.0D) {
          d1 = d2;
        }
        break;
      }
    }
    for (;;)
    {
      if ((this.i != null) && (this.u != null)) {
        a(false, this.u, this.i.getTid(), this.i.getAid(), this.f, this.t, d1, this.k);
      }
      c();
      this.b.a(String.valueOf(d1));
      return;
      d1 = this.p;
      d1 = new BigDecimal(Double.toString(d3)).add(new BigDecimal(Double.toString(d1))).doubleValue();
      break;
      d1 = this.p;
      d1 = new BigDecimal(Double.toString(d3)).subtract(new BigDecimal(Double.toString(d1))).doubleValue();
      break;
    }
  }
  
  public final void c(String paramString)
  {
    this.k = paramString;
    if ((("LMT".equals(this.k)) || ("AFTER_LMT".equals(this.k)) || ("PRE_LMT".equals(this.k))) && (this.B != 0.0D))
    {
      this.b.a(String.valueOf(this.B));
      if (!this.g) {
        break label140;
      }
      i.a().a(new SNBEvent(1505, 11));
    }
    label140:
    do
    {
      return;
      if ((this.e != null) && (this.u != null)) {
        a(this.u, this.e);
      }
      this.B = j.b(this.b.a());
      break;
      paramString = new SNBEvent(1517, 10);
      if ("LMT".equals(this.k))
      {
        paramString.addProperty("type", "1");
        i.a().a(paramString);
        return;
      }
    } while (!"MKT".equals(this.k));
    paramString.addProperty("type", "2");
    i.a().a(paramString);
  }
  
  public final void d()
  {
    this.x = 0;
    this.k = "LMT";
    this.l = 0.0D;
    this.m = 0.0D;
    this.f = "BUY";
    this.B = 0.0D;
    this.n = 0.0D;
    this.o = 0.0D;
    this.p = 0.01D;
    this.q = -1;
    this.r = 100.0D;
    this.F = -1;
    this.s = null;
    this.v = null;
    this.w = null;
  }
  
  public final void d(int paramInt)
  {
    this.F = paramInt;
    o();
  }
  
  public final void d(String paramString)
  {
    if (("LMT".equals(this.k)) || ("AFTER_LMT".equals(this.k)) || ("PRE_LMT".equals(this.k)))
    {
      if ((this.i != null) && (this.u != null)) {
        a(false, this.u, this.i.getTid(), this.i.getAid(), this.f, this.t, j.b(paramString), this.k);
      }
      c();
      this.b.a(paramString);
    }
  }
  
  public final void e()
  {
    label237:
    double d1;
    if (this.i != null)
    {
      if (this.g)
      {
        SNBEvent localSNBEvent = new SNBEvent(1505, 9);
        localSNBEvent.addProperty("tid", this.i.getTid());
        i.a().a(localSNBEvent);
        if ((!"LMT".equals(this.k)) && (!"PRE_LMT".equals(this.k)) && (!"AFTER_LMT".equals(this.k))) {
          break label237;
        }
        if ((j.a(this.b.a())) && (j.a(this.b.c())))
        {
          a(this.i.getTid(), Double.parseDouble(this.b.a()), Double.parseDouble(this.b.c()), this.f, this.e);
          this.a.y();
        }
      }
      while (!j.a(this.b.c()))
      {
        return;
        if ("BUY".equals(this.f))
        {
          i.a().a(new SNBEvent(1517, 16));
          break;
        }
        if (!"SELL".equals(this.f)) {
          break;
        }
        i.a().a(new SNBEvent(1517, 17));
        break;
      }
      if ("BUY".equals(this.f)) {
        if (this.n == 0.0D) {
          d1 = this.m;
        }
      }
    }
    for (;;)
    {
      a(this.i.getTid(), d1, Double.parseDouble(this.b.c()), this.f, this.e);
      this.a.y();
      return;
      d1 = this.n;
      continue;
      if ("SELL".equals(this.f))
      {
        if (this.o == 0.0D) {}
        for (d1 = this.m;; d1 = this.o) {
          break;
        }
        this.b.G_();
        return;
      }
      d1 = 0.0D;
    }
  }
  
  public final void e(String paramString)
  {
    this.e = paramString;
  }
  
  public final void f()
  {
    if (this.j.size() > 1)
    {
      this.D = new com.xueqiu.android.trade.view.a(this.c, this.i, this.j, new com.xueqiu.android.trade.view.b()
      {
        public final void a(TradeAccount paramAnonymousTradeAccount)
        {
          if (a.this.b == null) {}
          do
          {
            do
            {
              return;
            } while ((a.this.t == null) || (a.this.u == null));
            if (a.this.g)
            {
              a.this.i = paramAnonymousTradeAccount;
              a.a(a.this, a.this.i, a.this.j.size());
            }
          } while ((a.this.e == null) || ("799999".equals(a.this.e)));
          a.this.a(a.this.u, a.this.e);
        }
      });
      this.D.a();
    }
  }
  
  public final void g()
  {
    com.xueqiu.android.common.q.a(String.format("%s/broker/transfer?tid=%s", new Object[] { "https://xueqiu.com", this.i.getTid() }), this.c);
  }
  
  public final void h()
  {
    if ("PAMID".equals(this.i.getTid()))
    {
      com.xueqiu.android.common.q.a(String.format("%s/broker/trade-history?tid=%s", new Object[] { "https://xueqiu.com", this.i.getTid() }), this.c);
      return;
    }
    com.xueqiu.android.common.q.a(String.format("%s/broker/orders?tid=%s", new Object[] { "https://xueqiu.com", this.i.getTid() }), this.c);
  }
  
  public final void i()
  {
    this.x = 0;
  }
  
  public final void j()
  {
    if (this.g)
    {
      com.xueqiu.android.common.q.a(v.b("/broker/open/open-guide?from=orderlite"), this.c);
      return;
    }
    com.xueqiu.android.common.q.a(v.b("/broker/open/open-guide?from=order"), this.c);
  }
  
  public final void k()
  {
    final Object localObject = "买入";
    String str1 = this.f;
    int i1 = -1;
    label92:
    String str2;
    switch (str1.hashCode())
    {
    default: 
      switch (i1)
      {
      default: 
        str2 = "$" + this.d + "(" + this.e + ")$";
        str1 = this.b.a();
        str1 = "我刚刚在#雪球实盘交易#委托" + (String)localObject + str2 + "，委托" + (String)localObject + "价" + str1 + "。";
        if (!"MKT".equals(this.k)) {}
        break;
      }
      break;
    }
    for (localObject = "我刚刚在#雪球实盘交易#市价委托" + (String)localObject + str2 + "。";; localObject = str1)
    {
      localObject = f.a(this.c, new g()
      {
        public final void a(f paramAnonymousf, int paramAnonymousInt)
        {
          switch (paramAnonymousInt)
          {
          case 1: 
          default: 
            if ((a.this.c instanceof OrderFullActivity)) {
              ((OrderFullActivity)a.this.c).m();
            }
          case 2: 
            for (;;)
            {
              a.this.m();
              return;
              if (!a.this.g) {
                i.a().a(new SNBEvent(1517, 19));
              }
              paramAnonymousf = a.this;
              Object localObject = localObject;
              localObject = com.xueqiu.android.base.q.a().b().a(null, (String)localObject, "yO51t0AH4X", "stock", paramAnonymousf.e, new a.15(paramAnonymousf, paramAnonymousf.a));
              paramAnonymousf.a.a((x)localObject);
            }
          }
          if ((a.this.c instanceof OrderFullActivity)) {
            ((OrderFullActivity)a.this.c).m();
          }
          a.this.m();
        }
      }).a("分享给球友").b((String)localObject);
      ((f)localObject).g = 17;
      this.y = ((f)localObject).c(this.c.getString(2131165296)).d("确定");
      this.y.show();
      return;
      if (!str1.equals("BUY")) {
        break;
      }
      i1 = 0;
      break;
      if (!str1.equals("SELL")) {
        break;
      }
      i1 = 1;
      break;
      if (!str1.equals("BUY_COVER")) {
        break;
      }
      i1 = 2;
      break;
      if (!str1.equals("SELL_SHORT")) {
        break;
      }
      i1 = 3;
      break;
      localObject = "买入";
      break label92;
      localObject = "卖出";
      break label92;
      localObject = "卖空补回";
      break label92;
      localObject = "卖空";
      break label92;
    }
  }
  
  public final String l()
  {
    return this.k;
  }
  
  public final void m()
  {
    if ((this.u != null) && (this.i != null) && (this.f != null) && (this.t != null) && (this.k != null))
    {
      if (this.i.isFirstTrade()) {
        this.G.postDelayed(new Runnable()
        {
          public final void run()
          {
            a.a(a.this, a.this.u, a.this.i.getTid(), a.this.i.getAid(), a.this.f, a.this.t, j.b(a.this.b.a()), a.this.k);
          }
        }, 1000L);
      }
    }
    else {
      return;
    }
    a(true, this.u, this.i.getTid(), this.i.getAid(), this.f, this.t, j.b(this.b.a()), this.k);
  }
  
  public final boolean n()
  {
    return this.i == null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\d\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */