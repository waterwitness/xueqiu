package com.xueqiu.android.community.c;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.a.i;
import android.support.v7.a.a;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import com.android.volley.n;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.as;
import com.xueqiu.android.base.util.q;
import com.xueqiu.android.common.c;
import com.xueqiu.android.common.r;
import com.xueqiu.android.common.t;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.cube.widget.CubeFilterHeaderView;
import com.xueqiu.android.cube.widget.b;
import com.xueqiu.android.stock.a.l;
import com.xueqiu.android.stock.model.StockOption;
import com.xueqiu.android.stock.model.StockQuote;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

public final class k
  extends c
{
  private String a;
  private StockQuote ak = null;
  private String b = null;
  private r<StockOption> c;
  private SNBPullToRefreshListView d;
  private l e;
  private Map<String, String> f = null;
  private Map<String, String> g = null;
  private CubeFilterHeaderView h = null;
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.a(paramLayoutInflater, paramViewGroup, paramBundle);
    return paramLayoutInflater.inflate(2130903459, paramViewGroup, false);
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    this.ak = ((StockQuote)this.r.getParcelable("extra_stock"));
    if (this.ak != null)
    {
      if ((this.ak.getType() == 25) || (this.ak.getType() == 32))
      {
        this.a = this.ak.getKzzStockSymbol();
        this.b = this.ak.getSymbol();
      }
    }
    else
    {
      this.e = new l(f(), this.ak.getType());
      this.d = ((SNBPullToRefreshListView)c(2131624309));
      paramView = LayoutInflater.from(f()).inflate(2130903475, (ViewGroup)this.d.getRefreshableView(), false);
      ((ListView)this.d.getRefreshableView()).addHeaderView(paramView);
      this.c = new r(this.d, new t()
      {
        int a = 1;
        
        public final n<ArrayList<StockOption>> a(p<ArrayList<StockOption>> paramAnonymousp)
        {
          this.a = 1;
          return k.a(k.this, this.a, paramAnonymousp);
        }
        
        public final void a(ArrayList<StockOption> paramAnonymousArrayList, Throwable paramAnonymousThrowable, boolean paramAnonymousBoolean)
        {
          if (paramAnonymousArrayList == null) {
            aa.a(paramAnonymousThrowable);
          }
          if (!paramAnonymousBoolean) {
            k.a(k.this).c();
          }
          k.a(k.this, paramAnonymousArrayList);
        }
        
        public final n<ArrayList<StockOption>> b(p<ArrayList<StockOption>> paramAnonymousp)
        {
          this.a += 1;
          return k.a(k.this, this.a, paramAnonymousp);
        }
      });
      this.c.a(this.e);
      this.c.a(new AdapterView.OnItemClickListener()
      {
        public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          paramAnonymousAdapterView = (StockOption)k.b(k.this).getItem(paramAnonymousInt - k.a(k.this).d().getHeaderViewsCount());
          paramAnonymousAdapterView = new StockQuote(paramAnonymousAdapterView.getName(), paramAnonymousAdapterView.getSymbol());
          paramAnonymousAdapterView.setType(25);
          paramAnonymousAdapterView = q.a(k.this.f(), paramAnonymousAdapterView);
          k.this.a(paramAnonymousAdapterView);
        }
      });
      if (this.ak != null)
      {
        this.f = new LinkedHashMap();
        if ((!as.a(this.ak.getType())) && (32 != this.ak.getType())) {
          break label666;
        }
        paramView = new String[5];
        paramView[0] = "全部类型";
        paramView[1] = "认购";
        paramView[2] = "认沽";
        paramView[3] = "熊证";
        paramView[4] = "牛证";
        this.f.put(paramView[0], null);
        this.f.put(paramView[1], "C");
        this.f.put(paramView[2], "P");
        this.f.put(paramView[3], "PB");
        this.f.put(paramView[4], "CB");
      }
    }
    for (;;)
    {
      paramView = new String[5];
      paramView[0] = "全部日期";
      paramView[1] = "本月到期";
      paramView[2] = "最近3个月到期";
      paramView[3] = "最近6个月到期";
      paramView[4] = "最近12个月到期";
      this.g = new LinkedHashMap();
      this.g.put(paramView[0], null);
      this.g.put(paramView[1], "0");
      this.g.put(paramView[2], "3");
      this.g.put(paramView[3], "6");
      this.g.put(paramView[4], "12");
      paramView = new HashMap();
      paramView.put("bond_type", this.f);
      paramView.put("due_date", this.g);
      this.h = new CubeFilterHeaderView(w().e());
      paramBundle = new ArrayList();
      paramBundle.add(Integer.valueOf(0));
      paramBundle.add(Integer.valueOf(2));
      this.h.a(paramView, paramBundle);
      this.h.setOnFilterChangedListener(new b()
      {
        public final void a() {}
        
        public final void a(Map paramAnonymousMap)
        {
          k.a(k.this).a(true);
        }
      });
      paramBundle = new LinearLayout.LayoutParams(-1, -2);
      paramView = (LinearLayout)c(2131624117);
      paramView.addView(this.h, 0, paramBundle);
      paramBundle = new LinearLayout.LayoutParams(-1, 1);
      View localView = new View(f());
      localView.setBackgroundColor(h().getColor(2131558698));
      localView.setLayoutParams(paramBundle);
      paramView.addView(localView, 1, paramBundle);
      this.c.a(true);
      return;
      this.a = this.ak.getSymbol();
      break;
      label666:
      paramView = new String[3];
      paramView[0] = "全部类型";
      paramView[1] = "认购";
      paramView[2] = "认沽";
      this.f.put(paramView[0], null);
      this.f.put(paramView[1], "C");
      this.f.put(paramView[2], "P");
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\c\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */