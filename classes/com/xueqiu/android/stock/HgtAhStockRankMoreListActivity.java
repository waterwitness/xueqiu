package com.xueqiu.android.stock;

import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.TextView;
import com.android.volley.n;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.ak;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.a.d;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.r;
import com.xueqiu.android.common.t;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.stock.a.f;
import com.xueqiu.android.stock.model.AHStockQuote;
import com.xueqiu.android.stock.model.StockQuote;
import java.util.ArrayList;

public class HgtAhStockRankMoreListActivity
  extends b
  implements t<AHStockQuote>
{
  private int j = 1;
  private r<AHStockQuote> k = null;
  private f p = null;
  
  private n<ArrayList<AHStockQuote>> c(p<ArrayList<AHStockQuote>> paramp)
  {
    ai localai = com.xueqiu.android.base.q.a().b();
    int i = this.j;
    return localai.i.b("price_ratio", "desc", i, paramp);
  }
  
  public final n<ArrayList<AHStockQuote>> a(p<ArrayList<AHStockQuote>> paramp)
  {
    this.j = 1;
    return c(paramp);
  }
  
  public final void a(ArrayList<AHStockQuote> paramArrayList, Throwable paramThrowable, boolean paramBoolean)
  {
    ArrayList<AHStockQuote> localArrayList = paramArrayList;
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
  
  public final n<ArrayList<AHStockQuote>> b(p<ArrayList<AHStockQuote>> paramp)
  {
    this.j += 1;
    return c(paramp);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903484);
    setTitle(2131165888);
    this.p = new f(this);
    this.k = new r((SNBPullToRefreshListView)findViewById(2131624301), this);
    this.k.a(this.p);
    this.k.a(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = (AHStockQuote)HgtAhStockRankMoreListActivity.a(HgtAhStockRankMoreListActivity.this).c.getItem(paramAnonymousInt - 1);
        paramAnonymousAdapterView = new StockQuote(paramAnonymousAdapterView.getNameHk(), paramAnonymousAdapterView.getSymbolHk());
        paramAnonymousAdapterView = com.xueqiu.android.base.util.q.a(HgtAhStockRankMoreListActivity.this, paramAnonymousAdapterView);
        HgtAhStockRankMoreListActivity.this.startActivity(paramAnonymousAdapterView);
      }
    });
    paramBundle = l.a(73, null, this);
    ((TextView)findViewById(2131625581)).setText(paramBundle.c);
    ((TextView)findViewById(2131625582)).setText(paramBundle.d);
    ((TextView)findViewById(2131625583)).setText(paramBundle.e);
    ((TextView)findViewById(2131625584)).setText(paramBundle.f);
    this.k.a(true);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\HgtAhStockRankMoreListActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */