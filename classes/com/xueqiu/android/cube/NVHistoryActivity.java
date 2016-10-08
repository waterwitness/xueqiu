package com.xueqiu.android.cube;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import com.android.volley.y;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.q;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.common.model.PagedList;
import com.xueqiu.android.common.widget.ptr.PullToRefreshListView;
import com.xueqiu.android.common.widget.ptr.d;
import com.xueqiu.android.common.widget.ptr.f;
import com.xueqiu.android.common.widget.ptr.h;
import com.xueqiu.android.cube.model.HistoryValue;
import java.util.ArrayList;
import java.util.List;
import rx.a;
import rx.i;

public class NVHistoryActivity
  extends com.xueqiu.android.common.b
{
  private long j;
  private String k;
  private PullToRefreshListView p;
  private View q;
  private View r;
  private o s;
  private List<HistoryValue> t = new ArrayList();
  private PagedList<HistoryValue> u;
  private int v = 0;
  private int w;
  private double x = 0.0D;
  private double y = 1.0D;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.j = getIntent().getLongExtra("extra_cube_id", -1L);
    this.k = getIntent().getStringExtra("extra_cube_symbol");
    this.w = getIntent().getIntExtra("extra_page_type", 1);
    setContentView(2130903103);
    this.p = ((PullToRefreshListView)findViewById(2131624309));
    this.r = LayoutInflater.from(this).inflate(2130903580, (ViewGroup)this.p.getRefreshableView(), false);
    this.r.findViewById(2131625836).setVisibility(0);
    this.r.setVisibility(8);
    ((ListView)this.p.getRefreshableView()).addFooterView(this.r);
    this.q = findViewById(2131624257);
    this.s = new o(this);
    paramBundle = (ListView)this.p.getRefreshableView();
    paramBundle.setDividerHeight(0);
    int i = (int)ay.a(this, 5.0F);
    paramBundle.setPadding(0, i, 0, i);
    paramBundle.setClipToPadding(false);
    paramBundle.setScrollBarStyle(33554432);
    ((ListView)this.p.getRefreshableView()).setAdapter(this.s);
    this.p.setOnRefreshListener(new h()
    {
      public final void a()
      {
        NVHistoryActivity.a(NVHistoryActivity.this, 1);
        NVHistoryActivity.b(NVHistoryActivity.this, NVHistoryActivity.h(NVHistoryActivity.this)).b(new i()
        {
          public final void a()
          {
            NVHistoryActivity.a(NVHistoryActivity.this);
            NVHistoryActivity.b(NVHistoryActivity.this).f();
          }
          
          public final void a(Throwable paramAnonymous2Throwable)
          {
            aa.a(paramAnonymous2Throwable);
            NVHistoryActivity.b(NVHistoryActivity.this).f();
          }
        });
      }
    });
    this.p.setOnLastItemVisibleListener(new f()
    {
      public final void a()
      {
        if ((NVHistoryActivity.e(NVHistoryActivity.this) != null) && (NVHistoryActivity.e(NVHistoryActivity.this).getMaxPage() > NVHistoryActivity.h(NVHistoryActivity.this)) && (NVHistoryActivity.e(NVHistoryActivity.this).getPage() >= NVHistoryActivity.h(NVHistoryActivity.this)))
        {
          NVHistoryActivity.a(NVHistoryActivity.this, NVHistoryActivity.e(NVHistoryActivity.this).getPage() + 1);
          NVHistoryActivity.b(NVHistoryActivity.this, NVHistoryActivity.h(NVHistoryActivity.this)).b(new i()
          {
            public final void a()
            {
              NVHistoryActivity.a(NVHistoryActivity.this);
            }
            
            public final void a(Throwable paramAnonymous2Throwable)
            {
              aa.a(paramAnonymous2Throwable);
            }
          });
        }
      }
    });
    this.p.setRefreshing(true);
    com.xueqiu.android.base.util.b.a(this, 2131166452);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\NVHistoryActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */