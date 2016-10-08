package com.xueqiu.android.cube;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.support.v4.view.cp;
import android.support.v7.a.a;
import android.support.v7.a.f;
import android.support.v7.a.g;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.TextView;
import com.android.volley.n;
import com.android.volley.y;
import com.google.gson.JsonObject;
import com.viewpagerindicator.CirclePageIndicator;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.c;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.a.d;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.t;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.cube.a.u;
import com.xueqiu.android.cube.model.Cube;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CubeTopListActivity
  extends b
{
  private int A = 3;
  private List<android.support.v4.a.i> j;
  private CirclePageIndicator k;
  private ViewPager p;
  private h q;
  private com.xueqiu.android.common.r<Cube> r;
  private SNBPullToRefreshListView s;
  private u t;
  private ArrayList<k> u;
  private List<l> v;
  private l w;
  private TextView x;
  private TextView y;
  private int z = 0;
  
  private k a(l paraml1, l paraml2)
  {
    if (this.u == null) {
      this.u = new ArrayList();
    }
    Object localObject = this.u.iterator();
    while (((Iterator)localObject).hasNext())
    {
      k localk = (k)((Iterator)localObject).next();
      if ((localk.a.equals(paraml1)) && (localk.b.equals(paraml2))) {
        return localk;
      }
    }
    localObject = new k(this, (byte)0);
    ((k)localObject).a = paraml1;
    ((k)localObject).b = paraml2;
    ((k)localObject).c = 1;
    ((k)localObject).d = new ArrayList();
    this.u.add(localObject);
    return (k)localObject;
  }
  
  private void a(final ViewGroup paramViewGroup)
  {
    View.OnClickListener local6 = new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        int i = paramViewGroup.indexOfChild(paramAnonymousView);
        paramViewGroup.getChildAt(CubeTopListActivity.b(CubeTopListActivity.this)).setSelected(false);
        paramViewGroup.getChildAt(i).setSelected(true);
        if (i == CubeTopListActivity.b(CubeTopListActivity.this)) {
          return;
        }
        CubeTopListActivity.a(CubeTopListActivity.this, CubeTopListActivity.e(CubeTopListActivity.this).c.a());
        CubeTopListActivity.a(CubeTopListActivity.this, i);
        CubeTopListActivity.i(CubeTopListActivity.this);
        paramAnonymousView = new SNBEvent(1410, 1);
        paramAnonymousView.addProperty("period", ((l)CubeTopListActivity.c(CubeTopListActivity.this).get(CubeTopListActivity.b(CubeTopListActivity.this))).value);
        com.xueqiu.android.base.i.a().a(paramAnonymousView);
      }
    };
    int i = 0;
    if (i < paramViewGroup.getChildCount())
    {
      paramViewGroup.getChildAt(i).setOnClickListener(local6);
      View localView = paramViewGroup.getChildAt(i);
      if (i == this.z) {}
      for (boolean bool = true;; bool = false)
      {
        localView.setSelected(bool);
        i += 1;
        break;
      }
    }
  }
  
  private void a(LinearLayout paramLinearLayout)
  {
    if ((this.v == null) || (this.v.size() == 0)) {
      paramLinearLayout.setVisibility(8);
    }
    do
    {
      return;
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2, 1.0F);
      int i = 0;
      while (i < this.v.size())
      {
        TextView localTextView = (TextView)View.inflate(this, 2130903324, null);
        localTextView.setText(((l)this.v.get(i)).name);
        paramLinearLayout.addView(localTextView, localLayoutParams);
        i += 1;
      }
    } while (paramLinearLayout.getChildAt(this.z) == null);
    paramLinearLayout.getChildAt(this.z).setSelected(true);
  }
  
  private void j()
  {
    this.j = new ArrayList();
    Object localObject = new j();
    this.j.add(localObject);
    localObject = new i();
    this.j.add(localObject);
    this.w = new l(this, "沪深", "cn");
    this.v = new ArrayList();
    this.v.add(new l(this, "最近一年的", "3"));
    this.v.add(new l(this, "最近6个月", "2"));
    this.v.add(new l(this, "最近3个月", "1"));
    localObject = (LinearLayout)findViewById(2131625059);
    a((LinearLayout)localObject);
    int i = 0;
    for (;;)
    {
      if (i < this.v.size())
      {
        if (((l)this.v.get(i)).value.equals(String.valueOf(this.A)))
        {
          ((LinearLayout)localObject).getChildAt(i).setSelected(true);
          this.z = i;
        }
      }
      else {
        return;
      }
      i += 1;
    }
  }
  
  private void k()
  {
    ai localai = com.xueqiu.android.base.q.a().b();
    int i = Integer.parseInt(((l)this.v.get(this.z)).value);
    String str = this.w.value;
    p local7 = new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy);
      }
    };
    localai.l.a("list_overall", i, str, local7);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903106);
    paramBundle = new ColorDrawable(com.xueqiu.android.base.r.a(2131558704));
    this.i.b().c(16);
    this.i.b().a(2130903320);
    this.x = ((TextView)this.i.b().a().findViewById(2131625052));
    this.y = ((TextView)this.i.b().a().findViewById(2131625053));
    this.i.b().a().findViewById(2131625051).setOnClickListener(new View.OnClickListener()
    {
      public final void onClick(View paramAnonymousView)
      {
        CubeTopListActivity.this.onBackPressed();
      }
    });
    this.i.b().a(paramBundle);
    j();
    this.s = ((SNBPullToRefreshListView)findViewById(2131624322));
    paramBundle = LayoutInflater.from(this).inflate(2130903325, (ViewGroup)this.s.getRefreshableView(), false);
    paramBundle.setBackgroundColor(com.xueqiu.android.base.r.a(2131558704));
    this.k = ((CirclePageIndicator)paramBundle.findViewById(2131625061));
    this.p = ((ViewPager)paramBundle.findViewById(2131625060));
    this.p.setOffscreenPageLimit(this.j.size());
    this.q = new h(this, c());
    this.p.setAdapter(this.q);
    this.k.setViewPager(this.p);
    this.k.setOnPageChangeListener(new cp()
    {
      public final void a(int paramAnonymousInt1, float paramAnonymousFloat, int paramAnonymousInt2)
      {
        if (paramAnonymousFloat > 0.0F) {
          CubeTopListActivity.this.m = false;
        }
      }
      
      public final void b(int paramAnonymousInt)
      {
        CubeTopListActivity.this.m = true;
      }
      
      public final void b_(int paramAnonymousInt)
      {
        CubeTopListActivity.this.m = true;
        com.xueqiu.android.base.i.a().a(new SNBEvent(1410, 2));
      }
    });
    ((ListView)this.s.getRefreshableView()).addHeaderView(paramBundle);
    paramBundle = View.inflate(this, 2130903323, null);
    paramBundle.setVisibility(0);
    LinearLayout localLinearLayout = (LinearLayout)paramBundle.findViewById(2131625059);
    a(localLinearLayout);
    a(localLinearLayout);
    ((ListView)this.s.getRefreshableView()).addHeaderView(paramBundle);
    this.r = new com.xueqiu.android.common.r(this.s, new t()
    {
      public final n<ArrayList<Cube>> a(p<ArrayList<Cube>> paramAnonymousp)
      {
        CubeTopListActivity.this.h();
        CubeTopListActivity.a(CubeTopListActivity.this);
        CubeTopListActivity.a(CubeTopListActivity.this, (l)CubeTopListActivity.c(CubeTopListActivity.this).get(CubeTopListActivity.b(CubeTopListActivity.this)), CubeTopListActivity.d(CubeTopListActivity.this)).c = 1;
        return CubeTopListActivity.a(CubeTopListActivity.this, paramAnonymousp);
      }
      
      public final void a(ArrayList<Cube> paramAnonymousArrayList, Throwable paramAnonymousThrowable, boolean paramAnonymousBoolean)
      {
        CubeTopListActivity.this.i();
        if ((paramAnonymousArrayList == null) && (paramAnonymousThrowable != null))
        {
          paramAnonymousThrowable = CubeTopListActivity.a(CubeTopListActivity.this, (l)CubeTopListActivity.c(CubeTopListActivity.this).get(CubeTopListActivity.b(CubeTopListActivity.this)), CubeTopListActivity.d(CubeTopListActivity.this));
          paramAnonymousThrowable.c -= 1;
        }
        if ((!paramAnonymousBoolean) && (paramAnonymousArrayList != null) && (paramAnonymousArrayList.size() != 0)) {
          CubeTopListActivity.e(CubeTopListActivity.this).c();
        }
      }
      
      public final n<ArrayList<Cube>> b(p<ArrayList<Cube>> paramAnonymousp)
      {
        Object localObject = CubeTopListActivity.a(CubeTopListActivity.this, (l)CubeTopListActivity.c(CubeTopListActivity.this).get(CubeTopListActivity.b(CubeTopListActivity.this)), CubeTopListActivity.d(CubeTopListActivity.this));
        ((k)localObject).c += 1;
        int i = CubeTopListActivity.a(CubeTopListActivity.this, (l)CubeTopListActivity.c(CubeTopListActivity.this).get(CubeTopListActivity.b(CubeTopListActivity.this)), CubeTopListActivity.d(CubeTopListActivity.this)).c;
        localObject = new SNBEvent(1410, 3);
        ((SNBEvent)localObject).addProperty("page_num", String.valueOf(i));
        com.xueqiu.android.base.i.a().a((SNBEvent)localObject);
        return CubeTopListActivity.a(CubeTopListActivity.this, paramAnonymousp);
      }
    });
    this.s.setOnScrollListener(new AbsListView.OnScrollListener()
    {
      public final void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
      {
        paramAnonymousAbsListView = CubeTopListActivity.this.findViewById(2131624323);
        if ((paramAnonymousInt1 >= 2) && (paramAnonymousAbsListView.getVisibility() == 8))
        {
          CubeTopListActivity.a(CubeTopListActivity.this, (LinearLayout)paramAnonymousAbsListView.findViewById(2131625059));
          CubeTopListActivity.f(CubeTopListActivity.this).setText(2131166323);
          paramAnonymousAbsListView.setVisibility(0);
        }
        while ((paramAnonymousInt1 > 1) || (paramAnonymousAbsListView.getVisibility() != 0)) {
          return;
        }
        CubeTopListActivity.a(CubeTopListActivity.this, (LinearLayout)((ListView)CubeTopListActivity.g(CubeTopListActivity.this).getRefreshableView()).findViewById(2131625059));
        CubeTopListActivity.f(CubeTopListActivity.this).setText("");
        paramAnonymousAbsListView.setVisibility(8);
      }
      
      public final void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt) {}
    });
    this.r.c(false);
    ((ListView)this.s.getRefreshableView()).setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousInt -= ((ListView)CubeTopListActivity.g(CubeTopListActivity.this).getRefreshableView()).getHeaderViewsCount();
        paramAnonymousAdapterView = (Cube)CubeTopListActivity.h(CubeTopListActivity.this).a().get(paramAnonymousInt);
        if (paramAnonymousAdapterView == null) {
          return;
        }
        paramAnonymousView = new Intent(CubeTopListActivity.this.getBaseContext(), CubeActivity.class);
        paramAnonymousView.putExtra("extra_cube_symbol", paramAnonymousAdapterView.getSymbol());
        CubeTopListActivity.this.startActivity(paramAnonymousView);
        paramAnonymousView = new SNBEvent(1410, 4);
        paramAnonymousView.addProperty("symbol", paramAnonymousAdapterView.getSymbol());
        paramAnonymousView.addProperty("rank", String.valueOf(paramAnonymousInt));
        com.xueqiu.android.base.i.a().a(paramAnonymousView);
      }
    });
    this.t = new u(this);
    this.r.a(this.t);
    this.r.a(false);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\CubeTopListActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */