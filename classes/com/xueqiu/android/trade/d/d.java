package com.xueqiu.android.trade.d;

import android.content.Context;
import android.os.Handler;
import com.android.volley.y;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;
import com.snowballfinance.messageplatform.a.z;
import com.xueqiu.android.base.a.a;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.r;
import com.xueqiu.android.base.b.x;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.stock.model.StockQuote;
import java.text.ParseException;
import java.util.Map;

public final class d
  implements com.xueqiu.android.trade.b.e
{
  com.xueqiu.android.trade.b.f a;
  Handler b = new Handler();
  Context c;
  StockQuote d;
  e e = new e(this, (byte)0);
  private x f = null;
  
  public d(Context paramContext, com.xueqiu.android.trade.b.f paramf)
  {
    this.a = paramf;
    this.c = paramContext;
  }
  
  public final void a() {}
  
  public final void a(JsonArray paramJsonArray)
  {
    if (this.d == null) {
      return;
    }
    if ((paramJsonArray.get(0) != null) && (!paramJsonArray.get(1).toString().equals("null"))) {
      this.d.setCurrent(paramJsonArray.get(0).getAsDouble());
    }
    if ((paramJsonArray.get(1) != null) && (!paramJsonArray.get(1).toString().equals("null"))) {
      this.d.setChange(paramJsonArray.get(1).getAsDouble());
    }
    if ((paramJsonArray.get(2) != null) && (!paramJsonArray.get(2).toString().equals("null"))) {
      this.d.setPercentage(paramJsonArray.get(2).getAsDouble());
    }
    if ((paramJsonArray.get(3) != null) && (!paramJsonArray.get(3).toString().equals("null")))
    {
      paramJsonArray = paramJsonArray.get(3).getAsString();
      if ((paramJsonArray == null) || (paramJsonArray.length() <= 25)) {}
    }
    try
    {
      this.d.setUpdateTime(com.xueqiu.android.base.util.h.b(paramJsonArray));
      this.a.a(this.d);
      return;
    }
    catch (ParseException paramJsonArray)
    {
      for (;;)
      {
        aa.a(paramJsonArray);
      }
    }
  }
  
  public final void a(StockQuote paramStockQuote)
  {
    this.d = paramStockQuote;
    this.b.removeCallbacks(this.e);
    if (this.d != null) {
      this.b.post(this.e);
    }
  }
  
  public final void a(final String paramString)
  {
    r localr = new r();
    com.xueqiu.android.base.q.a().b().a(paramString, new p((com.xueqiu.android.common.b)this.a)
    {
      public final void a(y paramAnonymousy)
      {
        StockQuote localStockQuote = new StockQuote();
        localStockQuote.setSymbol(paramString);
        localStockQuote.setName(paramString);
        com.xueqiu.android.stockchart.e.h localh = new com.xueqiu.android.stockchart.e.h();
        localh.b = localStockQuote.getSymbol();
        localh.a = localStockQuote.getName();
        d.this.a.a(localStockQuote, localh);
        d.this.a.l();
        if (!(paramAnonymousy instanceof a)) {
          aa.a(paramAnonymousy);
        }
      }
    }, localr);
  }
  
  public final void b()
  {
    this.b.removeCallbacks(this.e);
  }
  
  public final void c()
  {
    this.b.removeCallbacks(this.e);
  }
  
  public final void d()
  {
    a(this.d);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\d\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */