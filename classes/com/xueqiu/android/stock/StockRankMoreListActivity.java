package com.xueqiu.android.stock;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.TextView;
import com.android.volley.n;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.ak;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.x;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.a.d;
import com.xueqiu.android.common.model.parser.Parser;
import com.xueqiu.android.common.r;
import com.xueqiu.android.common.t;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.stock.a.af;
import com.xueqiu.android.stock.model.IndustryInStock;
import com.xueqiu.android.stock.model.OldPortFolio;
import com.xueqiu.android.stock.model.StockQuote;
import java.util.ArrayList;
import org.json.JSONArray;

public class StockRankMoreListActivity
  extends com.xueqiu.android.common.b
  implements t<OldPortFolio>
{
  private int j = 1;
  private r<OldPortFolio> k = null;
  private af p = null;
  private int q;
  private int r;
  private int s;
  private IndustryInStock t = null;
  
  private x<ArrayList<OldPortFolio>> c(p<ArrayList<OldPortFolio>> paramp)
  {
    int i;
    int m;
    if ((this.q == 31) || (this.q == 32) || (this.q == 34) || (this.q == 33))
    {
      localObject1 = "percent";
      if (this.r == 12) {
        localObject1 = "pe_ttm";
      }
      localObject2 = com.xueqiu.android.base.q.a().b();
      i = this.s;
      m = this.r;
      int n = this.j;
      return ((ai)localObject2).i.a(i, m, n, (String)localObject1, "desc", paramp);
    }
    Object localObject3;
    if (this.q == 61)
    {
      if (this.t == null)
      {
        paramp.a(new ArrayList());
        return null;
      }
      localObject1 = com.xueqiu.android.base.q.a().b();
      localObject2 = this.t.getCode();
      localObject3 = this.t.getIndClass();
      return ((ai)localObject1).i.c((String)localObject2, (String)localObject3, paramp);
    }
    if ((this.q == 74) || (this.q == 75) || (this.q == 76) || (this.q == 77))
    {
      localObject2 = com.xueqiu.android.base.q.a().b();
      switch (this.q)
      {
      default: 
        localObject1 = "growth_rate_month1";
      }
      for (;;)
      {
        i = this.j;
        return ((ai)localObject2).i.a("desc", (String)localObject1, i, paramp);
        localObject1 = "growth_rate_month1";
        continue;
        localObject1 = "growth_rate_month3";
        continue;
        localObject1 = "growth_rate_month6";
        continue;
        localObject1 = "growth_rate_year";
      }
    }
    Object localObject4;
    ai localai;
    Object localObject5;
    switch (this.q)
    {
    default: 
      return null;
    case 1: 
    case 2: 
    case 11: 
    case 12: 
    case 21: 
    case 22: 
      switch (this.q)
      {
      default: 
        i = 11;
      }
      for (;;)
      {
        localObject1 = com.xueqiu.android.base.q.a().b();
        m = this.j;
        localObject2 = new Parser()
        {
          public final ArrayList parse(JSONArray paramAnonymousJSONArray)
          {
            return null;
          }
        };
        return ((ai)localObject1).i.a(paramp, i, m, (Parser)localObject2);
        i = 12;
        continue;
        i = 22;
        continue;
        i = 13;
        continue;
        i = 23;
        continue;
        i = 11;
        continue;
        i = 21;
      }
    case 3: 
    case 4: 
    case 5: 
    case 6: 
    case 13: 
    case 14: 
    case 15: 
    case 16: 
    case 23: 
    case 24: 
    case 71: 
    case 72: 
      localObject3 = "percent";
      localObject4 = new String[4];
      localObject4[0] = "symbol";
      localObject4[1] = "name";
      localObject4[2] = "current";
      localObject4[3] = "percent";
      switch (this.q)
      {
      default: 
        localObject1 = "sha";
        localObject2 = "desc";
      }
      for (;;)
      {
        localai = com.xueqiu.android.base.q.a().b();
        i = this.j;
        localObject5 = new Parser()
        {
          public final ArrayList parse(JSONArray paramAnonymousJSONArray)
          {
            return null;
          }
        };
        return localai.i.a(paramp, (String)localObject1, (String)localObject3, (String)localObject2, (String[])localObject4, i, (Parser)localObject5);
        localObject1 = "sh_sz";
        localObject2 = "desc";
        continue;
        localObject1 = "sh_sz";
        localObject2 = "asc";
        continue;
        localObject1 = "sh_sz";
        localObject2 = "desc";
        localObject3 = "amount";
        localObject4 = new String[5];
        localObject4[0] = "symbol";
        localObject4[1] = "name";
        localObject4[2] = "current";
        localObject4[3] = "percent";
        localObject4[4] = "amount";
        continue;
        localObject1 = "sh_sz";
        localObject2 = "desc";
        localObject3 = "turnover_rate";
        localObject4 = new String[5];
        localObject4[0] = "symbol";
        localObject4[1] = "name";
        localObject4[2] = "current";
        localObject4[3] = "percent";
        localObject4[4] = "turnover_rate";
        continue;
        localObject1 = "hk";
        localObject2 = "desc";
        continue;
        localObject1 = "hk";
        localObject2 = "asc";
        continue;
        localObject1 = "us_china";
        localObject2 = "desc";
        continue;
        localObject1 = "us_china";
        localObject2 = "asc";
        continue;
        localObject1 = "us_star";
        localObject2 = "desc";
        continue;
        localObject1 = "us_star";
        localObject2 = "asc";
        continue;
        localObject1 = "hgt";
        localObject2 = "desc";
        continue;
        localObject1 = "ggt";
        localObject2 = "desc";
      }
    case 10: 
    case 17: 
    case 41: 
    case 42: 
    case 43: 
    case 44: 
      localObject2 = getIntent().getStringExtra("extra_etf_industry");
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = "";
      }
      localObject2 = "";
      localObject3 = "CN";
      switch (this.q)
      {
      default: 
        localObject1 = ak.g[0];
      }
      for (;;)
      {
        com.xueqiu.android.base.q.a().b().a(paramp, (String)localObject3, (String)localObject2, (String)localObject1, "desc", "percent", 60, this.j, new Parser()
        {
          public final ArrayList parse(JSONArray paramAnonymousJSONArray)
          {
            return null;
          }
        });
        localObject1 = ak.h[0];
        continue;
        localObject1 = ak.h[1];
        continue;
        localObject1 = ak.h[2];
        continue;
        localObject2 = "雪球";
        continue;
        localObject2 = "ETF";
        localObject3 = "US";
      }
    case 8: 
    case 9: 
    case 180: 
    case 190: 
      switch (this.q)
      {
      default: 
        localObject1 = "";
        localObject2 = "ipo_preview";
        localObject3 = new String[4];
        localObject3[0] = "symbol";
        localObject3[1] = "name";
        localObject3[2] = "ipo_date";
        localObject3[3] = "iss_price";
        localObject4 = "ipo_date";
      }
      for (;;)
      {
        localai = com.xueqiu.android.base.q.a().b();
        i = this.j;
        localObject5 = new Parser()
        {
          public final ArrayList parse(JSONArray paramAnonymousJSONArray)
          {
            return null;
          }
        };
        return localai.i.a(paramp, (String)localObject1, (String)localObject2, (String[])localObject3, "desc", (String)localObject4, i, (Parser)localObject5);
        localObject1 = "";
        localObject2 = "ipo_preview";
        localObject3 = new String[4];
        localObject3[0] = "symbol";
        localObject3[1] = "name";
        localObject3[2] = "onl_subbegdate";
        localObject3[3] = "iss_price";
        localObject4 = "onl_subbegdate";
        continue;
        localObject1 = "ipo_listed";
        localObject2 = "income";
        localObject3 = new String[4];
        localObject3[0] = "symbol";
        localObject3[1] = "name";
        localObject3[2] = "current";
        localObject3[3] = "iss_price";
        localObject4 = "ipo_date";
        continue;
        localObject1 = "us";
        localObject2 = "ipo_preview";
        localObject3 = new String[4];
        localObject3[0] = "symbol";
        localObject3[1] = "company_name";
        localObject3[2] = "ipo_date";
        localObject3[3] = "price_range";
        localObject4 = "ipo_date";
        continue;
        localObject1 = "us";
        localObject2 = "ipo_listed";
        localObject3 = new String[4];
        localObject3[0] = "symbol";
        localObject3[1] = "name";
        localObject3[2] = "current";
        localObject3[3] = "ipo_price";
        localObject4 = "ipo_date";
      }
    }
    Object localObject2 = "desc";
    Object localObject1 = "61";
    if ((this.q == 84) || (this.q == 82) || (this.q == 19)) {
      localObject2 = "asc";
    }
    if ((this.q == 84) || (this.q == 83)) {}
    for (localObject1 = "62";; localObject1 = "0,1,2,3") {
      do
      {
        localObject3 = com.xueqiu.android.base.q.a().b();
        i = this.j;
        localObject4 = new Parser()
        {
          public final ArrayList parse(JSONArray paramAnonymousJSONArray)
          {
            return null;
          }
        };
        return ((ai)localObject3).i.a(paramp, (String)localObject1, (String)localObject2, "percent", i, (Parser)localObject4);
      } while ((this.q != 19) && (this.q != 18));
    }
  }
  
  public final n<ArrayList<OldPortFolio>> a(p<ArrayList<OldPortFolio>> paramp)
  {
    this.j = 1;
    return c(paramp);
  }
  
  public final void a(ArrayList<OldPortFolio> paramArrayList, Throwable paramThrowable, boolean paramBoolean)
  {
    ArrayList<OldPortFolio> localArrayList = paramArrayList;
    if (paramArrayList == null)
    {
      aa.a(paramThrowable);
      paramArrayList = new ArrayList();
      this.j -= 1;
      localArrayList = paramArrayList;
      if (this.j <= 0)
      {
        this.j = 1;
        localArrayList = paramArrayList;
      }
    }
    if ((!paramBoolean) && (localArrayList.size() > 0)) {
      this.k.c();
    }
  }
  
  public final n<ArrayList<OldPortFolio>> b(p<ArrayList<OldPortFolio>> paramp)
  {
    this.j += 1;
    return c(paramp);
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
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903496);
    this.q = getIntent().getIntExtra("extra_rank_type", 1);
    this.r = getIntent().getIntExtra("extra_fund_type_id", 0);
    this.s = getIntent().getIntExtra("extra_fund_parent_type_id", 1);
    if (this.q == 61)
    {
      this.t = ((IndustryInStock)getIntent().getParcelableExtra("extra_industry"));
      setTitle(this.t.getName());
      this.p = new af(this, this.q);
      this.k = new r((SNBPullToRefreshListView)findViewById(2131624301), this);
      this.k.a(this.p);
      this.k.a(new AdapterView.OnItemClickListener()
      {
        public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          paramAnonymousAdapterView = (OldPortFolio)StockRankMoreListActivity.a(StockRankMoreListActivity.this).c.a().get(paramAnonymousInt - 1);
          paramAnonymousAdapterView = new StockQuote(paramAnonymousAdapterView.getName(), paramAnonymousAdapterView.getSymbol());
          paramAnonymousAdapterView = com.xueqiu.android.base.util.q.a(StockRankMoreListActivity.this, paramAnonymousAdapterView);
          StockRankMoreListActivity.this.startActivity(paramAnonymousAdapterView);
        }
      });
      if ((this.q == 1) || (this.q == 2) || (this.q == 21) || (this.q == 22) || (this.q == 11) || (this.q == 12) || (this.q == 24) || (this.q == 23) || (this.q == 61)) {
        this.k.b(false);
      }
      if ((this.q != 31) && (this.q != 33) && (this.q != 32) && (this.q != 34)) {
        break label371;
      }
    }
    label371:
    for (paramBundle = e.a(this.q, this, this.r);; paramBundle = l.a(this.q, null, this))
    {
      ((TextView)findViewById(2131625581)).setText(paramBundle.c);
      ((TextView)findViewById(2131625582)).setText(paramBundle.d);
      ((TextView)findViewById(2131625583)).setText(paramBundle.e);
      this.k.a(true);
      return;
      setTitle(getIntent().getCharSequenceExtra("extra_rank_title"));
      break;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\StockRankMoreListActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */