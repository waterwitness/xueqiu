package com.xueqiu.android.stock.c;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.s;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.TextView;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.base.util.ag;
import com.xueqiu.android.base.util.ar;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.v;
import com.xueqiu.android.common.SingleFragmentActivity;
import com.xueqiu.android.common.account.LoginActivity;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.widget.SNBPullToRefreshListView;
import com.xueqiu.android.common.widget.z;
import com.xueqiu.android.stock.a.x;
import com.xueqiu.android.stock.a.x.1;
import com.xueqiu.android.stock.a.x.2;
import com.xueqiu.android.stock.a.x.3;
import com.xueqiu.android.stock.a.y;
import com.xueqiu.android.stock.d.a.6;
import com.xueqiu.android.stock.d.a.9;
import com.xueqiu.android.stock.m;
import com.xueqiu.android.stock.model.IndustryInStock;
import com.xueqiu.android.stock.model.StockQuote;
import com.xueqiu.android.stock.model.StockRank;
import com.xueqiu.android.tactic.TacticStoreActivity;
import com.xueqiu.android.tactic.d.g;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import rx.c.b;
import rx.j;

public class w
  extends com.xueqiu.android.base.k<com.xueqiu.android.stock.d.a>
  implements com.xueqiu.android.stock.b.c
{
  private static final String e = w.class.getSimpleName();
  private RecyclerView ak;
  private RecyclerView al;
  private ViewGroup am;
  private x an;
  private com.xueqiu.android.stock.a.u ao;
  private z ap;
  int b = 1;
  View c;
  SNBPullToRefreshListView d;
  private ar f;
  private ListView g;
  private LinearLayout h;
  
  public static w b(int paramInt)
  {
    w localw = new w();
    Bundle localBundle = new Bundle();
    localBundle.putInt("arg_page_type", paramInt);
    localw.e(localBundle);
    return localw;
  }
  
  private boolean u()
  {
    return (this.b == 3) || (this.b == 1) || (this.b == 2) || (this.b == 9);
  }
  
  public final void D_()
  {
    this.ap = new z(f());
    this.ap.a = new com.xueqiu.android.common.widget.aa()
    {
      public final void a()
      {
        w.c(w.this).dismiss();
        com.xueqiu.android.common.q.a(v.b("/S/P000275/subscribe-choice"), w.this.f());
      }
      
      public final void b()
      {
        w.c(w.this).dismiss();
        w.this.g().finish();
      }
    };
    this.ap.setOnCancelListener(new DialogInterface.OnCancelListener()
    {
      public final void onCancel(DialogInterface paramAnonymousDialogInterface)
      {
        if (w.c(w.this).isShowing()) {
          w.c(w.this).dismiss();
        }
        w.this.g().finish();
      }
    });
    this.ap.show();
  }
  
  public final void E_()
  {
    this.d.f();
  }
  
  public final void K_()
  {
    super.K_();
    if (u())
    {
      com.xueqiu.android.stock.d.a locala = (com.xueqiu.android.stock.d.a)this.a;
      if ((locala.a != null) && (!locala.a.c())) {
        locala.a.b();
      }
      locala.a = ag.c.a(new a.9(locala), 2L, 1L, TimeUnit.SECONDS);
    }
  }
  
  public final View a(final LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.a(paramLayoutInflater, paramViewGroup, paramBundle);
    if (this.c == null)
    {
      this.c = paramLayoutInflater.inflate(2130903370, paramViewGroup, false);
      this.d = ((SNBPullToRefreshListView)this.c.findViewById(2131624309));
      this.g = ((ListView)this.d.getRefreshableView());
      this.h = ((LinearLayout)paramLayoutInflater.inflate(2130903371, this.g, false));
      this.d.setOnRefreshListener(new com.xueqiu.android.common.widget.ptr.h()
      {
        public final void a()
        {
          ((com.xueqiu.android.stock.d.a)w.d(w.this)).refresh();
        }
      });
      if (u())
      {
        paramLayoutInflater = LayoutInflater.from(f()).inflate(2130903493, this.g, false);
        this.g.addHeaderView(paramLayoutInflater, null, false);
        if (this.b == 9) {
          paramLayoutInflater.findViewById(2131625597).setVisibility(8);
        }
        if (this.b == 1)
        {
          paramLayoutInflater = LayoutInflater.from(f()).inflate(2130903491, this.g, false);
          paramLayoutInflater.findViewById(2131625592).setOnClickListener(new View.OnClickListener()
          {
            public final void onClick(View paramAnonymousView)
            {
              paramAnonymousView = new Bundle();
              paramAnonymousView.putInt("quote_center_type", 1002);
              paramAnonymousView.putString("quote_center_title", "行情板块");
              w.this.a(SingleFragmentActivity.a(w.this.f(), u.class, paramAnonymousView));
              paramAnonymousView = new SNBEvent(2800, 8);
              com.xueqiu.android.base.i.a().a(paramAnonymousView);
            }
          });
          this.g.addHeaderView(paramLayoutInflater, null, false);
          paramLayoutInflater = (ViewGroup)LayoutInflater.from(f()).inflate(2130903441, this.g, false);
          this.ak = ((RecyclerView)paramLayoutInflater.findViewById(2131625423));
          paramLayoutInflater.findViewById(2131625421).setOnClickListener(new View.OnClickListener()
          {
            public final void onClick(View paramAnonymousView)
            {
              if (paramLayoutInflater.findViewById(2131625422).getVisibility() == 0)
              {
                long l = System.currentTimeMillis();
                UserPrefs.setLong(w.this.f(), "key_quotes_center_new_strategy_clear_ts", l);
                android.support.v4.content.r.a(w.this.f()).a(new Intent("com.xueqiu.android.action.UPDATE_UNREAD_COUNT"));
              }
              paramAnonymousView = new Intent(w.this.f(), TacticStoreActivity.class);
              w.this.a(paramAnonymousView);
              paramAnonymousView = new SNBEvent(2800, 10);
              com.xueqiu.android.base.i.a().a(paramAnonymousView);
            }
          });
          this.ak.setLayoutManager(new android.support.v7.widget.k(0));
          this.g.addHeaderView(paramLayoutInflater, null, false);
          paramViewGroup = (ViewGroup)LayoutInflater.from(f()).inflate(2130903440, this.g, false);
          this.g.addHeaderView(paramViewGroup, null, false);
          paramLayoutInflater = this.an;
          paramViewGroup = (ViewGroup)paramViewGroup.findViewById(2131625420);
          int j = paramViewGroup.getChildCount();
          int k = (ay.c(paramLayoutInflater.a) - (int)(com.xueqiu.android.stockchart.f.a.a(paramLayoutInflater.a, 12.0F) * 2.0F) - (int)(com.xueqiu.android.stockchart.f.a.a(paramLayoutInflater.a, 70.0F) * j)) / 6;
          int i = 0;
          if (i < j)
          {
            paramBundle = paramViewGroup.getChildAt(i);
            LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)paramBundle.getLayoutParams();
            if (i == 0) {
              localLayoutParams.setMargins(0, 0, k, 0);
            }
            for (;;)
            {
              paramBundle.setLayoutParams(localLayoutParams);
              paramBundle.setVisibility(0);
              paramBundle.setOnClickListener(new x.3(paramLayoutInflater, i));
              i += 1;
              break;
              if (i == j - 1) {
                localLayoutParams.setMargins(k, 0, 0, 0);
              } else {
                localLayoutParams.setMargins(k, 0, k, 0);
              }
            }
          }
        }
        else if (this.b == 2)
        {
          this.am = ((ViewGroup)LayoutInflater.from(f()).inflate(2130903442, this.g, false));
          this.al = ((RecyclerView)this.am.findViewById(2131625424));
          this.am.findViewById(2131625421).setOnClickListener(new View.OnClickListener()
          {
            public final void onClick(View paramAnonymousView)
            {
              com.xueqiu.android.common.q.a(v.b("/broker/specialPage?tag=us"), w.this.g());
            }
          });
          this.al.setLayoutManager(new android.support.v7.widget.k(0));
          this.g.addHeaderView(this.am, null, false);
        }
      }
      this.g.addHeaderView(this.h, null, false);
      this.d.setAdapter(this.ao);
      b("quote");
    }
    for (;;)
    {
      return this.c;
      if (this.c.getParent() != null) {
        ((ViewGroup)this.c.getParent()).removeView(this.c);
      }
    }
  }
  
  public final void a()
  {
    com.xueqiu.android.stock.a.u localu = this.ao;
    localu.a.clear();
    localu.b.clear();
    localu.c.clear();
  }
  
  public final void a(@Nullable Bundle paramBundle)
  {
    super.a(paramBundle);
    this.f = ar.a();
    if (this.r != null) {
      this.b = this.r.getInt("arg_page_type");
    }
    if (this.b == 8) {
      a(a(2131165852));
    }
    if (this.b == 9) {
      a(a(2131165763));
    }
    this.an = new x(f(), this.b);
    this.ao = new com.xueqiu.android.stock.a.u(f());
    a(rx.a.b.a.b(f(), new IntentFilter("com.xueqiu.android.action.stockColorChanged")).c(new b() {}));
  }
  
  public final void a(View paramView, @Nullable Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    if (this.b == 1)
    {
      paramView = new Intent("com.xueqiu.android.action.UPDATE_UNREAD_COUNT");
      android.support.v4.content.r.a(f()).a(paramView);
    }
  }
  
  public final void a(ArrayList<StockQuote> paramArrayList)
  {
    Object localObject = this.g.findViewById(2131625601);
    x localx = this.an;
    if ((paramArrayList == null) || (localObject == null)) {
      return;
    }
    View localView1 = ((View)localObject).findViewById(2131625595);
    View localView2 = ((View)localObject).findViewById(2131625596);
    View localView3 = ((View)localObject).findViewById(2131625597);
    int i = 0;
    label55:
    View localView4;
    StockQuote localStockQuote;
    TextView localTextView1;
    TextView localTextView2;
    if ((i < 3) && (i < paramArrayList.size()))
    {
      localView4 = new View[] { localView1, localView2, localView3 }[i];
      localStockQuote = (StockQuote)paramArrayList.get(i);
      TextView localTextView3 = (TextView)localView4.findViewById(2131625598);
      localTextView1 = (TextView)localView4.findViewById(2131625599);
      localTextView2 = (TextView)localView4.findViewById(2131625600);
      String str = localStockQuote.getName();
      localObject = str;
      if (localx.b == 2)
      {
        int j = str.lastIndexOf(com.xueqiu.android.base.r.d(2131165736));
        localObject = str;
        if (j > 0)
        {
          localObject = str;
          if (j < str.length()) {
            localObject = str.substring(0, j);
          }
        }
      }
      localTextView3.setText((CharSequence)localObject);
      localTextView1.setText(String.format(Locale.CHINA, "%.2f", new Object[] { Double.valueOf(localStockQuote.getCurrent()) }));
      if (localStockQuote.getPercentage() <= 0.0D) {
        break label357;
      }
    }
    label357:
    for (localObject = "+";; localObject = "")
    {
      localTextView2.setText(String.format(Locale.CHINA, "%s%.2f   %s%.2f%%", new Object[] { localObject, Double.valueOf(localStockQuote.getChange()), localObject, Double.valueOf(localStockQuote.getPercentage()) }));
      localTextView1.setTextColor(localx.c.a(localStockQuote.getChange()));
      localTextView2.setTextColor(localx.c.a(localStockQuote.getChange()));
      localView4.setOnClickListener(new x.2(localx, localStockQuote));
      i += 1;
      break label55;
      break;
    }
  }
  
  public final void a(ArrayList<StockRank> paramArrayList, m paramm, String paramString)
  {
    this.ao.a(paramArrayList, paramm, paramString);
  }
  
  public final void a(List<g> paramList)
  {
    x localx;
    RecyclerView localRecyclerView;
    if (this.ak != null)
    {
      localx = this.an;
      localRecyclerView = this.ak;
      if ((localRecyclerView != null) && (paramList != null)) {}
    }
    else
    {
      return;
    }
    paramList = new y(localx.a, paramList);
    localRecyclerView.setAdapter(paramList);
    paramList.a.a();
  }
  
  public final void b(String paramString)
  {
    if (this.d != null)
    {
      com.xueqiu.android.base.a.a();
      paramString = com.xueqiu.android.base.a.a(paramString);
      SNBPullToRefreshListView localSNBPullToRefreshListView = this.d;
      com.xueqiu.android.base.a.a();
      localSNBPullToRefreshListView.a(com.xueqiu.android.base.a.a(paramString, g()));
    }
  }
  
  public final void b(ArrayList<IndustryInStock> paramArrayList)
  {
    Object localObject = this.g.findViewById(2131625594);
    x localx = this.an;
    if ((paramArrayList == null) || (localObject == null)) {}
    for (;;)
    {
      return;
      View localView1 = ((View)localObject).findViewById(2131625595);
      View localView2 = ((View)localObject).findViewById(2131625596);
      View localView3 = ((View)localObject).findViewById(2131625597);
      int i = 0;
      while ((i < 3) && (i < paramArrayList.size()))
      {
        View localView4 = new View[] { localView1, localView2, localView3 }[i];
        IndustryInStock localIndustryInStock = (IndustryInStock)paramArrayList.get(i);
        localObject = (TextView)localView4.findViewById(2131624467);
        TextView localTextView1 = (TextView)localView4.findViewById(2131625590);
        TextView localTextView3 = (TextView)localView4.findViewById(2131625496);
        TextView localTextView2 = (TextView)localView4.findViewById(2131625591);
        ((TextView)localObject).setText(localIndustryInStock.getName());
        String str = String.format(Locale.CHINA, "%.2f%%", new Object[] { localIndustryInStock.getPercent() });
        localObject = str;
        if (localIndustryInStock.getPercent().doubleValue() > 0.0D) {
          localObject = "+" + str;
        }
        localTextView1.setText((CharSequence)localObject);
        localTextView3.setText(localIndustryInStock.getTopStockName());
        str = String.format(Locale.CHINA, "%.2f%%", new Object[] { localIndustryInStock.getTopStockPercent() });
        localObject = str;
        if (localIndustryInStock.getTopStockPercent().doubleValue() > 0.0D) {
          localObject = "+" + str;
        }
        localTextView2.setText(String.format(Locale.CHINA, "%.2f   %s", new Object[] { localIndustryInStock.getTopStockCurrent(), localObject }));
        localTextView1.setTextColor(localx.c.a(localIndustryInStock.getPercent().doubleValue()));
        localTextView2.setTextColor(localx.c.a(localIndustryInStock.getTopStockPercent().doubleValue()));
        localView4.setOnClickListener(new x.1(localx, localIndustryInStock));
        i += 1;
      }
    }
  }
  
  public final void b(List<com.xueqiu.android.tactic.d.c> paramList)
  {
    Object localObject;
    RecyclerView localRecyclerView;
    if ((this.al != null) && (paramList != null) && (paramList.size() > 0))
    {
      if (this.am != null) {
        this.am.setVisibility(0);
      }
      localObject = this.an;
      localRecyclerView = this.al;
      if ((localRecyclerView != null) && (paramList != null)) {}
    }
    else
    {
      return;
    }
    if (localRecyclerView.getAdapter() != null) {
      localObject = (com.xueqiu.android.stock.a.aa)localRecyclerView.getAdapter();
    }
    for (;;)
    {
      ((com.xueqiu.android.stock.a.aa)localObject).refresh(paramList);
      return;
      localObject = new com.xueqiu.android.stock.a.aa(((x)localObject).a);
      localRecyclerView.setAdapter((s)localObject);
    }
  }
  
  public final void d()
  {
    super.d();
    if (u()) {
      ((com.xueqiu.android.stock.d.a)this.a).a.b();
    }
  }
  
  public final void o()
  {
    super.o();
    if (this.b == 8)
    {
      Object localObject;
      if (com.xueqiu.android.base.u.a().d)
      {
        localObject = new Bundle();
        ((Bundle)localObject).putByte("extra_mode", (byte)2);
        ((Bundle)localObject).putBoolean("extra_need_back", true);
        Intent localIntent = new Intent(f(), LoginActivity.class);
        localIntent.putExtras((Bundle)localObject);
        a(localIntent);
        g().finish();
      }
      if ((this.ap == null) || ((this.ap != null) && (!this.ap.isShowing())))
      {
        localObject = (com.xueqiu.android.stock.d.a)this.a;
        com.xueqiu.android.base.q.a().b().d(new a.6((com.xueqiu.android.stock.d.a)localObject, ((com.xueqiu.android.stock.d.a)localObject).c));
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\c\w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */