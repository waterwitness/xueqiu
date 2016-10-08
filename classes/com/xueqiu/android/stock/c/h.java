package com.xueqiu.android.stock.c;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import android.widget.TextView;
import com.android.volley.n;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.ak;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.x;
import com.xueqiu.android.common.c;
import com.xueqiu.android.common.r;
import com.xueqiu.android.common.t;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.stock.StockRankMoreListActivity;
import com.xueqiu.android.stock.model.IndustryInStock;
import java.util.ArrayList;

public final class h
  extends c
  implements t<IndustryInStock>
{
  public static final String a = null;
  private View b;
  private r<IndustryInStock> c = null;
  private i d = null;
  private String e;
  private int f = 1;
  
  public static h b(String paramString)
  {
    h localh = new h();
    Bundle localBundle = new Bundle();
    localBundle.putString("arg_page_type", paramString);
    localh.e(localBundle);
    return localh;
  }
  
  private x<ArrayList<IndustryInStock>> c(p<ArrayList<IndustryInStock>> paramp)
  {
    ai localai = x();
    int i = this.f;
    String str = this.e;
    return localai.i.a(i, 50, str, null, paramp);
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.b = paramLayoutInflater.inflate(2130903496, paramViewGroup, false);
    return this.b;
  }
  
  public final n<ArrayList<IndustryInStock>> a(p<ArrayList<IndustryInStock>> paramp)
  {
    this.f = 1;
    return c(paramp);
  }
  
  public final void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    if (this.r != null) {
      this.e = this.r.getString("arg_page_type", a);
    }
    a("板块行情");
  }
  
  public final void a(View paramView, @Nullable Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    this.d = new i(this, f());
    this.c = new r((SNBPullToRefreshListView)this.b.findViewById(2131624301), this);
    this.c.a(this.d);
    this.c.a(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = (IndustryInStock)h.b(h.this).getItem(paramAnonymousInt - h.a(h.this).d().getHeaderViewsCount());
        paramAnonymousView = new Intent(h.this.f(), StockRankMoreListActivity.class);
        paramAnonymousView.putExtra("extra_rank_type", 61);
        paramAnonymousView.putExtra("extra_industry", paramAnonymousAdapterView);
        h.this.a(paramAnonymousView);
      }
    });
    paramView = a(2131165332).split(",");
    ((TextView)c(2131625581)).setText(paramView[0]);
    ((TextView)c(2131625582)).setText(paramView[1]);
    ((TextView)c(2131625583)).setText(paramView[2]);
    this.c.a(true);
  }
  
  public final void a(ArrayList<IndustryInStock> paramArrayList, Throwable paramThrowable, boolean paramBoolean)
  {
    paramThrowable = paramArrayList;
    if (paramArrayList == null) {
      paramThrowable = new ArrayList();
    }
    if ((!paramBoolean) && (paramThrowable.size() > 0)) {
      this.c.c();
    }
  }
  
  public final n<ArrayList<IndustryInStock>> b(p<ArrayList<IndustryInStock>> paramp)
  {
    this.f += 1;
    return c(paramp);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\c\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */