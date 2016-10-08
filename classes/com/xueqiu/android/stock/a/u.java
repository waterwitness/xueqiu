package com.xueqiu.android.stock.a;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import com.xueqiu.android.base.i;
import com.xueqiu.android.base.r;
import com.xueqiu.android.base.util.ar;
import com.xueqiu.android.base.util.q;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.stock.BondBuyBackActivity;
import com.xueqiu.android.stock.FundRankActivity;
import com.xueqiu.android.stock.HgtAhStockRankMoreListActivity;
import com.xueqiu.android.stock.StockRankMoreListActivity;
import com.xueqiu.android.stock.USETFRankActivity;
import com.xueqiu.android.stock.c.ab;
import com.xueqiu.android.stock.m;
import com.xueqiu.android.stock.model.AHStockQuote;
import com.xueqiu.android.stock.model.OldPortFolio;
import com.xueqiu.android.stock.model.StockQuote;
import com.xueqiu.android.stock.model.StockRank;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class u
  extends com.xueqiu.android.common.a.h
{
  public ar d = ar.a();
  private LayoutInflater e;
  private Context f = null;
  private String g;
  private SparseArray<String> h;
  
  public u(Context paramContext)
  {
    this.f = paramContext;
    this.e = LayoutInflater.from(paramContext);
    a();
    this.h = new SparseArray();
  }
  
  public final void a()
  {
    this.g = PreferenceManager.getDefaultSharedPreferences(this.f).getString(this.f.getString(2131165678), this.f.getString(2131166576));
  }
  
  public final void a(ArrayList<StockRank> paramArrayList, m paramm, String paramString)
  {
    this.c.add(Integer.valueOf(this.a.size()));
    this.h.put(this.a.size(), paramString);
    this.a.add(paramm);
    this.a.addAll(paramArrayList);
    this.b.add(paramString);
    notifyDataSetChanged();
  }
  
  public final View getHeaderView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = this.e.inflate(2130903487, paramViewGroup, false);
      paramView = new v();
      paramView.a = ((TextView)localView.findViewById(2131624240));
      localView.setTag(paramView);
    }
    paramInt = getSectionForPosition(paramInt);
    paramViewGroup = (String)this.b.get(paramInt);
    paramView = (v)localView.getTag();
    paramView.a.setText(paramViewGroup);
    paramViewGroup = this.a.iterator();
    for (;;)
    {
      if (paramViewGroup.hasNext())
      {
        Object localObject = paramViewGroup.next();
        if ((localObject instanceof StockRank))
        {
          paramInt = ((StockRank)localObject).getRankType();
          if ((paramInt == 51) || (paramInt == 44)) {
            paramInt = 1;
          }
        }
      }
    }
    for (;;)
    {
      if (paramInt != 0)
      {
        paramView.a.setEnabled(false);
        paramView.a.setCompoundDrawablesWithIntrinsicBounds(null, null, null, null);
        return localView;
        paramInt = 0;
      }
      else
      {
        paramView.a.setEnabled(true);
        paramView.a.setCompoundDrawablesWithIntrinsicBounds(0, 0, 2130837620, 0);
        return localView;
        paramInt = 1;
      }
    }
  }
  
  public final int getItemViewType(int paramInt)
  {
    int i = getSectionForPosition(paramInt);
    if ((i != -1) && (paramInt == ((Integer)this.c.get(i)).intValue()))
    {
      m localm = (m)getItem(paramInt);
      if (localm.g == 73) {
        return 3;
      }
      if (localm.g == 44) {
        return 5;
      }
      return 1;
    }
    paramInt = ((StockRank)getItem(paramInt)).getRankType();
    if (paramInt == 73) {
      return 2;
    }
    if (paramInt == 44) {
      return 4;
    }
    return 0;
  }
  
  public final View getView(final int paramInt, final View paramView, final ViewGroup paramViewGroup)
  {
    int j = 0;
    int k = getItemViewType(paramInt);
    View localView;
    if (paramView != null)
    {
      localView = paramView;
      if (paramView.getTag() != null) {}
    }
    else
    {
      if (k != 1) {
        break label310;
      }
      localView = this.e.inflate(2130903495, paramViewGroup, false);
      localView.setTag(w.a(localView, false));
    }
    final String str;
    if ((k == 1) || (k == 3) || (k == 5))
    {
      paramView = (w)localView.getTag();
      paramViewGroup = (m)this.a.get(paramInt);
      str = (String)this.h.get(paramInt);
      i = j;
      if (!str.equals(r.d(2131165269))) {
        if (!str.equals(r.d(2131165267))) {
          break label597;
        }
      }
    }
    label310:
    label597:
    for (int i = j;; i = 1)
    {
      if (i == 0) {
        paramView.a.setCompoundDrawables(null, null, null, null);
      }
      paramView.a.setText(str);
      paramView.b.setText(paramViewGroup.c);
      paramView.c.setText(paramViewGroup.d);
      paramView.d.setText(paramViewGroup.e);
      if (k == 3) {
        paramView.e.setText(((m)this.a.get(paramInt)).f);
      }
      if (i != 0) {
        paramView.a.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            int i = paramViewGroup.g;
            paramAnonymousView = u.a(u.this, i) + str;
            Object localObject1;
            if (i == 73) {
              localObject1 = new Intent(u.a(u.this), HgtAhStockRankMoreListActivity.class);
            }
            for (;;)
            {
              u.a(u.this).startActivity((Intent)localObject1);
              localObject1 = new SNBEvent(2800, 5);
              ((SNBEvent)localObject1).addProperty("board_name", paramAnonymousView);
              i.a().a((SNBEvent)localObject1);
              return;
              if (i == 44)
              {
                localObject1 = new Intent(u.a(u.this), BondBuyBackActivity.class);
              }
              else
              {
                Object localObject2;
                if (i == 17)
                {
                  if ((paramViewGroup instanceof ab))
                  {
                    localObject2 = (ab)paramViewGroup;
                    paramAnonymousView = u.a(u.this, i) + str;
                    localObject1 = new Intent(u.a(u.this), StockRankMoreListActivity.class);
                    ((Intent)localObject1).putExtra("extra_rank_type", i);
                    ((Intent)localObject1).putExtra("extra_rank_title", paramAnonymousView);
                    ((Intent)localObject1).putExtra("extra_etf_industry", ((ab)localObject2).a);
                  }
                  else
                  {
                    localObject1 = new Intent(u.a(u.this), USETFRankActivity.class);
                  }
                }
                else if ((paramViewGroup instanceof com.xueqiu.android.stock.f))
                {
                  if (i == 33)
                  {
                    localObject1 = new Intent(u.a(u.this), FundRankActivity.class);
                    ((Intent)localObject1).putExtra("extra_fund_type_id", 13);
                    ((Intent)localObject1).putExtra("extra_rank_title", str);
                  }
                  else
                  {
                    localObject2 = (com.xueqiu.android.stock.f)paramViewGroup;
                    localObject1 = new Intent(u.a(u.this), StockRankMoreListActivity.class);
                    ((Intent)localObject1).putExtra("extra_rank_type", i);
                    ((Intent)localObject1).putExtra("extra_rank_title", str);
                    ((Intent)localObject1).putExtra("extra_fund_type_id", ((com.xueqiu.android.stock.f)localObject2).a);
                    if (((com.xueqiu.android.stock.f)localObject2).b != 0) {
                      ((Intent)localObject1).putExtra("extra_fund_parent_type_id", ((com.xueqiu.android.stock.f)localObject2).b);
                    }
                  }
                }
                else
                {
                  paramAnonymousView = u.a(u.this, i) + str;
                  localObject1 = new Intent(u.a(u.this), StockRankMoreListActivity.class);
                  ((Intent)localObject1).putExtra("extra_rank_type", i);
                  ((Intent)localObject1).putExtra("extra_rank_title", paramAnonymousView);
                }
              }
            }
          }
        });
      }
      for (;;)
      {
        if (isEnabled(paramInt))
        {
          paramView = (String)this.h.get(getSectionForPosition(paramInt));
          localView.setOnClickListener(new View.OnClickListener()
          {
            public final void onClick(View paramAnonymousView)
            {
              if (this.a == 180) {}
              for (;;)
              {
                return;
                Object localObject1 = u.b(u.this).get(paramInt);
                if ((localObject1 instanceof StockRank))
                {
                  Object localObject2 = ((StockRank)localObject1).getPortFolio();
                  paramAnonymousView = null;
                  if (localObject2 != null) {
                    paramAnonymousView = new StockQuote(((OldPortFolio)localObject2).getName(), ((OldPortFolio)localObject2).getSymbol());
                  }
                  while (paramAnonymousView != null)
                  {
                    localObject1 = q.a(u.a(u.this), paramAnonymousView);
                    u.a(u.this).startActivity((Intent)localObject1);
                    localObject1 = u.a(u.this, this.a) + paramView;
                    localObject2 = new SNBEvent(2800, 4);
                    ((SNBEvent)localObject2).addProperty("board_name", (String)localObject1);
                    ((SNBEvent)localObject2).addProperty("symbol", paramAnonymousView.getSymbol());
                    i.a().a((SNBEvent)localObject2);
                    return;
                    localObject1 = ((StockRank)localObject1).getAhStockQuote();
                    if (localObject1 != null) {
                      paramAnonymousView = new StockQuote(((AHStockQuote)localObject1).getNameHk(), ((AHStockQuote)localObject1).getSymbolHk());
                    }
                  }
                }
              }
            }
          });
        }
        return localView;
        if (k == 3)
        {
          localView = this.e.inflate(2130903489, paramViewGroup, false);
          localView.setTag(w.a(localView, true));
          break;
        }
        if (k == 5)
        {
          localView = this.e.inflate(2130903486, paramViewGroup, false);
          localView.setTag(w.a(localView, true));
          break;
        }
        if (k == 2)
        {
          localView = this.e.inflate(2130903488, paramViewGroup, false);
          localView.setTag(g.a(localView));
          break;
        }
        if (k == 4)
        {
          localView = this.e.inflate(2130903485, paramViewGroup, false);
          localView.setTag(c.a(localView));
          break;
        }
        localView = this.e.inflate(2130903494, paramViewGroup, false);
        localView.setTag(ag.a(localView));
        break;
        if (k == 2)
        {
          paramView = (g)localView.getTag();
          f.a(((StockRank)this.a.get(paramInt)).getAhStockQuote(), paramView);
        }
        else if (k == 4)
        {
          paramView = (c)localView.getTag();
          b.a(((StockRank)this.a.get(paramInt)).getPortFolio(), paramView);
        }
        else
        {
          paramView = (ag)localView.getTag();
          paramViewGroup = (StockRank)this.a.get(paramInt);
          af.a(paramViewGroup.getPortFolio(), paramViewGroup.getRankType(), paramView, this.f, this.g, this.d);
        }
      }
    }
  }
  
  public final int getViewTypeCount()
  {
    return 6;
  }
  
  public final boolean isEnabled(int paramInt)
  {
    return (getItemViewType(paramInt) == 0) || (getItemViewType(paramInt) == 2) || (getItemViewType(paramInt) == 4);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\a\u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */