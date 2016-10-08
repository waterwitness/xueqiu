package com.xueqiu.android.cube;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ListView;
import android.widget.TextView;
import com.android.volley.y;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.r;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.widget.ptr.PullToRefreshListView;
import com.xueqiu.android.common.widget.ptr.d;
import com.xueqiu.android.common.widget.ptr.h;
import com.xueqiu.android.cube.model.StockGain;
import java.util.ArrayList;
import java.util.List;
import rx.a;
import rx.i;

public class StockGainAnalysisActivity
  extends com.xueqiu.android.common.b
{
  private PullToRefreshListView j;
  private TextView k;
  private q p;
  private ArrayList<StockGain> q = new ArrayList();
  private TextView r;
  private View s;
  private String t;
  private double u;
  private double v = 1.0D;
  private int w = 0;
  private int x = 1;
  private int y = 1;
  private boolean z = true;
  
  private void a(TextView paramTextView, double paramDouble)
  {
    if (this.z)
    {
      if (paramDouble <= 0.0D)
      {
        if (paramDouble == 0.0D)
        {
          paramTextView.setTextColor(r.a(2131558682));
          return;
        }
        paramTextView.setTextColor(r.a(2131558680));
      }
    }
    else
    {
      if (paramDouble > 0.0D)
      {
        paramTextView.setTextColor(r.a(2131558680));
        return;
      }
      if (paramDouble == 0.0D)
      {
        paramTextView.setTextColor(r.a(2131558682));
        return;
      }
    }
    paramTextView.setTextColor(r.a(2131558684));
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903103);
    setTitle(getString(2131165433));
    this.u = getIntent().getDoubleExtra("extra_cube_unit_value", 0.0D);
    this.t = getIntent().getStringExtra("extra_cube_symbol");
    if (this.t == null)
    {
      finish();
      return;
    }
    this.z = PreferenceManager.getDefaultSharedPreferences(this).getString(getString(2131165678), getString(2131165920)).equals(getString(2131166577));
    this.j = ((PullToRefreshListView)findViewById(2131624309));
    paramBundle = LayoutInflater.from(this).inflate(2130903316, (ViewGroup)this.j.getRefreshableView(), false);
    this.r = ((TextView)paramBundle.findViewById(2131625046));
    this.r.setText(String.format("%.4f", new Object[] { Double.valueOf(this.u) }));
    a(this.r, this.u - 1.0D);
    ((ListView)this.j.getRefreshableView()).addHeaderView(paramBundle);
    this.s = LayoutInflater.from(this).inflate(2130903580, (ViewGroup)this.j.getRefreshableView(), false);
    this.s.findViewById(2131625836).setVisibility(0);
    this.s.setVisibility(8);
    this.k = ((TextView)findViewById(2131624257));
    this.k.setText(2131166145);
    ((ListView)this.j.getRefreshableView()).addFooterView(this.s);
    this.j.setPullToRefreshEnabled(false);
    this.p = new q(this, (byte)0);
    this.j.setOnRefreshListener(new h()
    {
      public final void a()
      {
        StockGainAnalysisActivity.a(StockGainAnalysisActivity.this, 1);
        StockGainAnalysisActivity.b(StockGainAnalysisActivity.this, StockGainAnalysisActivity.e(StockGainAnalysisActivity.this)).b(new rx.c.f() {}).b(new i()
        {
          public final void a()
          {
            StockGainAnalysisActivity.a(StockGainAnalysisActivity.this);
            StockGainAnalysisActivity.b(StockGainAnalysisActivity.this).f();
          }
          
          public final void a(Throwable paramAnonymous2Throwable)
          {
            StockGainAnalysisActivity.b(StockGainAnalysisActivity.this).f();
            aa.a(paramAnonymous2Throwable);
          }
        });
      }
    });
    this.j.setOnLastItemVisibleListener(new com.xueqiu.android.common.widget.ptr.f()
    {
      public final void a()
      {
        if ((StockGainAnalysisActivity.e(StockGainAnalysisActivity.this) < StockGainAnalysisActivity.f(StockGainAnalysisActivity.this)) && (StockGainAnalysisActivity.e(StockGainAnalysisActivity.this) <= StockGainAnalysisActivity.g(StockGainAnalysisActivity.this)))
        {
          v.a("pageID", "-->" + StockGainAnalysisActivity.e(StockGainAnalysisActivity.this));
          StockGainAnalysisActivity.a(StockGainAnalysisActivity.this, StockGainAnalysisActivity.g(StockGainAnalysisActivity.this) + 1);
          StockGainAnalysisActivity.b(StockGainAnalysisActivity.this, StockGainAnalysisActivity.e(StockGainAnalysisActivity.this)).b(new rx.c.f() {}).b(new i()
          {
            public final void a()
            {
              StockGainAnalysisActivity.a(StockGainAnalysisActivity.this);
            }
            
            public final void a(Throwable paramAnonymous2Throwable)
            {
              StockGainAnalysisActivity.b(StockGainAnalysisActivity.this).f();
              aa.a(paramAnonymous2Throwable);
            }
          });
        }
      }
    });
    ((ListView)this.j.getRefreshableView()).setAdapter(this.p);
    this.j.setOnScrollListener(new AbsListView.OnScrollListener()
    {
      public final void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        if (StockGainAnalysisActivity.d(StockGainAnalysisActivity.this).c < 0)
        {
          StockGainAnalysisActivity.d(StockGainAnalysisActivity.this).c = ((ListView)StockGainAnalysisActivity.b(StockGainAnalysisActivity.this).getRefreshableView()).getLastVisiblePosition();
          StockGainAnalysisActivity.d(StockGainAnalysisActivity.this).b = false;
        }
      }
      
      public final void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt) {}
    });
    this.j.setRefreshing(true);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\StockGainAnalysisActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */