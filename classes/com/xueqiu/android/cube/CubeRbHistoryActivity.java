package com.xueqiu.android.cube;

import android.annotation.TargetApi;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ExpandableListView;
import android.widget.ExpandableListView.OnChildClickListener;
import android.widget.ExpandableListView.OnGroupClickListener;
import com.android.volley.y;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.au;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.common.model.PagedList;
import com.xueqiu.android.common.widget.ptr.PullToRefreshExpandableListView;
import com.xueqiu.android.common.widget.ptr.d;
import com.xueqiu.android.common.widget.ptr.f;
import com.xueqiu.android.common.widget.ptr.h;
import com.xueqiu.android.cube.a.n;
import com.xueqiu.android.cube.model.Rebalancing;
import com.xueqiu.android.cube.model.RebalancingHistory;
import com.xueqiu.android.stock.model.StockQuote;
import java.util.List;
import rx.a;
import rx.i;

public class CubeRbHistoryActivity
  extends com.xueqiu.android.common.b
{
  private PullToRefreshExpandableListView j;
  private n k;
  private View p;
  private View q;
  private PagedList<Rebalancing> r;
  private long s;
  private String t;
  private int u;
  private boolean v = false;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.s = getIntent().getLongExtra("extra_id", 0L);
    this.t = getIntent().getStringExtra("extra_symbol");
    this.u = getIntent().getIntExtra("extra_page_type", 1);
    setContentView(2130903104);
    this.j = ((PullToRefreshExpandableListView)findViewById(2131624309));
    this.p = LayoutInflater.from(this).inflate(2130903580, (ViewGroup)this.j.getRefreshableView(), false);
    this.p.findViewById(2131625836).setVisibility(0);
    this.p.setVisibility(8);
    this.q = findViewById(2131624257);
    ((ExpandableListView)this.j.getRefreshableView()).addFooterView(this.p);
    this.k = new n(this);
    this.k.b = getIntent().getBooleanExtra("extra_sell_flag", false);
    if (this.u == 2) {
      this.k.c = true;
    }
    ((ExpandableListView)this.j.getRefreshableView()).setAdapter(this.k);
    ((ExpandableListView)this.j.getRefreshableView()).setOnChildClickListener(new ExpandableListView.OnChildClickListener()
    {
      public final boolean onChildClick(ExpandableListView paramAnonymousExpandableListView, View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2, long paramAnonymousLong)
      {
        paramAnonymousExpandableListView = (Rebalancing)CubeRbHistoryActivity.a(CubeRbHistoryActivity.this).a.get(paramAnonymousInt1);
        if ((!au.a(paramAnonymousExpandableListView.getComment())) && (paramAnonymousInt2 == 0)) {
          return true;
        }
        if (!au.a(paramAnonymousExpandableListView.getComment())) {}
        for (paramAnonymousExpandableListView = (RebalancingHistory)paramAnonymousExpandableListView.getRebalancingHistories().get(paramAnonymousInt2 - 1);; paramAnonymousExpandableListView = (RebalancingHistory)paramAnonymousExpandableListView.getRebalancingHistories().get(paramAnonymousInt2))
        {
          paramAnonymousExpandableListView = com.xueqiu.android.base.util.q.a(CubeRbHistoryActivity.this.getBaseContext(), new StockQuote(paramAnonymousExpandableListView.getStockName(), paramAnonymousExpandableListView.getStockSymbol()));
          CubeRbHistoryActivity.this.startActivity(paramAnonymousExpandableListView);
          return true;
        }
      }
    });
    this.j.setOnLastItemVisibleListener(new f()
    {
      public final void a()
      {
        if ((CubeRbHistoryActivity.b(CubeRbHistoryActivity.this) != null) && (CubeRbHistoryActivity.b(CubeRbHistoryActivity.this).getMaxPage() != CubeRbHistoryActivity.b(CubeRbHistoryActivity.this).getPage())) {
          CubeRbHistoryActivity.a(CubeRbHistoryActivity.this, CubeRbHistoryActivity.b(CubeRbHistoryActivity.this).getPage() + 1).b(new i()
          {
            public final void a() {}
            
            public final void a(Throwable paramAnonymous2Throwable)
            {
              aa.a(paramAnonymous2Throwable);
            }
          });
        }
      }
    });
    this.j.setOnRefreshListener(new h()
    {
      public final void a()
      {
        CubeRbHistoryActivity.a(CubeRbHistoryActivity.this, 1).b(new i()
        {
          public final void a()
          {
            CubeRbHistoryActivity.d(CubeRbHistoryActivity.this).f();
          }
          
          public final void a(Throwable paramAnonymous2Throwable)
          {
            aa.a(paramAnonymous2Throwable);
            CubeRbHistoryActivity.d(CubeRbHistoryActivity.this).f();
          }
        });
      }
    });
    ((ExpandableListView)this.j.getRefreshableView()).setOnGroupClickListener(new ExpandableListView.OnGroupClickListener()
    {
      public final boolean onGroupClick(ExpandableListView paramAnonymousExpandableListView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        return true;
      }
    });
    ((ExpandableListView)this.j.getRefreshableView()).setGroupIndicator(null);
    this.j.setRefreshing(true);
    com.xueqiu.android.base.util.b.a(this, 2131166464);
  }
  
  @TargetApi(18)
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    int i = getResources().getDisplayMetrics().widthPixels;
    if (Build.VERSION.SDK_INT < 18)
    {
      ((ExpandableListView)this.j.getRefreshableView()).setIndicatorBounds(i - (int)ay.a(this, 43.0F), i - (int)ay.a(this, 0.0F));
      return;
    }
    ((ExpandableListView)this.j.getRefreshableView()).setIndicatorBoundsRelative(i - (int)ay.a(this, 43.0F), i - (int)ay.a(this, 0.0F));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\CubeRbHistoryActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */