package com.xueqiu.android.stock.a;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.BaseAdapter;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.nhaarman.listviewanimations.a.c;
import com.xueqiu.android.base.b;
import com.xueqiu.android.base.h;
import com.xueqiu.android.base.i;
import com.xueqiu.android.base.util.as;
import com.xueqiu.android.base.util.au;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.widget.AutoResizeTextView;
import com.xueqiu.android.stock.model.PortfolioStock;
import com.xueqiu.android.stock.model.StockQuote;
import com.xueqiu.android.stock.model.StockStatus;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public final class q
  extends BaseAdapter
  implements c<PortfolioStock>, com.nhaarman.listviewanimations.a.f
{
  public List<PortfolioStock> a;
  public List<PortfolioStock> b;
  public Map<String, StockQuote> c = new ConcurrentHashMap();
  public Set<String> d = new HashSet();
  public t e;
  public int f = 0;
  public int g = 0;
  public int h = 0;
  public boolean i = false;
  public int j = 2;
  public Map<String, Integer> k = new HashMap();
  private Context l;
  private LayoutInflater m;
  private int n = 0;
  private int o = 0;
  private int p = 0;
  private int q = 0;
  private int r = 0;
  
  public q(Context paramContext)
  {
    this.m = LayoutInflater.from(paramContext);
    this.l = paramContext;
    a();
  }
  
  public static int a(int paramInt)
  {
    if (paramInt >= 0) {
      return paramInt - 1;
    }
    return 1;
  }
  
  public final void a()
  {
    String str = PreferenceManager.getDefaultSharedPreferences(this.l).getString(this.l.getString(2131165678), this.l.getString(2131166576));
    this.r = 2130838419;
    if (str.equals(this.l.getString(2131166576)))
    {
      this.n = 2130838420;
      this.o = 2130838421;
      this.p = 2130837727;
      this.q = 2130837729;
      b.a();
      if (b.i())
      {
        this.p = 2130837728;
        this.q = 2130837730;
      }
    }
    do
    {
      return;
      this.n = 2130838421;
      this.o = 2130838420;
      this.p = 2130837729;
      this.q = 2130837727;
      b.a();
    } while (!b.i());
    this.p = 2130837730;
    this.q = 2130837728;
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    PortfolioStock localPortfolioStock = (PortfolioStock)this.a.set(paramInt1, this.a.get(paramInt2));
    notifyDataSetChanged();
    this.a.set(paramInt2, localPortfolioStock);
  }
  
  public final void a(List<PortfolioStock> paramList)
  {
    this.b = null;
    this.a = paramList;
  }
  
  public final PortfolioStock b(int paramInt)
  {
    if ((this.a != null) && (this.a.size() > paramInt)) {
      return (PortfolioStock)this.a.remove(paramInt);
    }
    return null;
  }
  
  public final void b()
  {
    if (this.b == null)
    {
      if (this.a == null) {
        return;
      }
      this.b = new ArrayList(this.a);
    }
    if (this.h != 0)
    {
      Collections.sort(this.a, new Comparator() {});
      return;
    }
    if (this.g != 0)
    {
      Collections.sort(this.a, new Comparator() {});
      return;
    }
    this.a = new ArrayList(this.b);
    this.b = null;
  }
  
  public final int getCount()
  {
    if ((this.a == null) || (this.a.size() == 0)) {
      return 0;
    }
    return this.a.size();
  }
  
  public final Object getItem(int paramInt)
  {
    if ((this.a != null) && (this.a.size() > 0)) {
      return this.a.get(paramInt);
    }
    return null;
  }
  
  public final long getItemId(int paramInt)
  {
    if ((this.a != null) && (this.a.size() > paramInt))
    {
      if ((paramInt < 0) || (paramInt >= this.a.size())) {
        return paramInt;
      }
      return this.a.get(paramInt).hashCode();
    }
    return 0L;
  }
  
  public final int getItemViewType(int paramInt)
  {
    int i1 = 0;
    paramInt = i1;
    if (this.a != null)
    {
      paramInt = i1;
      if (this.a.size() > 0)
      {
        paramInt = i1;
        if (this.i) {
          paramInt = 1;
        }
      }
    }
    return paramInt;
  }
  
  public final View getView(final int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int i1 = getItemViewType(paramInt);
    View localView;
    Object localObject1;
    s locals;
    if (i1 == 0)
    {
      localView = paramView;
      if (paramView == null)
      {
        localView = this.m.inflate(2130903470, paramViewGroup, false);
        paramView = new s(this, (byte)0);
        paramView.a = ((TextView)localView.findViewById(2131625535));
        paramView.b = ((ImageView)localView.findViewById(2131624919));
        paramView.c = ((TextView)localView.findViewById(2131625538));
        paramView.d = ((TextView)localView.findViewById(2131625539));
        paramView.e = ((AutoResizeTextView)localView.findViewById(2131625541));
        paramView.f = ((AutoResizeTextView)localView.findViewById(2131625542));
        paramView.g = localView.findViewById(2131625540);
        paramView.h = ((ImageView)localView.findViewById(2131625537));
        paramView.i = localView.findViewById(2131624443);
        paramView.j = localView.findViewById(2131625534);
        paramView.k = ((ImageView)localView.findViewById(2131625536));
        localView.setTag(paramView);
        paramView.g.setOnClickListener(new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            q.a(q.this, q.b(q.this, q.a(q.this)));
            if (q.b(q.this) != 0) {
              q.this.b();
            }
            if (q.c(q.this) != null) {
              q.c(q.this).a();
            }
            if (q.d(q.this) == 2) {
              i.a().a(new SNBEvent(1200, 5));
            }
            q.this.notifyDataSetChanged();
          }
        });
      }
      paramViewGroup = (PortfolioStock)this.a.get(paramInt);
      localObject1 = (StockQuote)this.c.get(paramViewGroup.getCode());
      locals = (s)localView.getTag();
      locals.c.setText(paramViewGroup.getCode());
      if (localObject1 == null)
      {
        locals.d.setText("0.0");
        locals.e.setBackgroundResource(this.r);
        locals.e.setText("0.0");
        locals.f.setVisibility(8);
        locals.a.setText(paramViewGroup.getStockName());
      }
    }
    label413:
    label554:
    label661:
    label732:
    label832:
    label850:
    label954:
    label962:
    label972:
    label979:
    label1002:
    label1069:
    label1176:
    label1194:
    label1326:
    label1338:
    label1349:
    label1801:
    do
    {
      return localView;
      if ((as.a(((StockQuote)localObject1).getType())) && (!this.d.contains(paramViewGroup.getCode()))) {
        locals.c.setText(String.format("%s 延时", new Object[] { paramViewGroup.getCode() }));
      }
      final Object localObject2 = locals.d;
      if (this.j == 2)
      {
        paramView = as.a(((StockQuote)localObject1).getTickSize(), ((StockQuote)localObject1).getCurrent());
        ((TextView)localObject2).setText(paramView);
        locals.e.setTextSize(1, 16.0F);
        locals.f.setVisibility(8);
        if (((StockQuote)localObject1).getFlag() != StockStatus.SUSPEND.value()) {
          break label554;
        }
        locals.f.setBackgroundResource(this.r);
        locals.f.setText(2131165460);
        locals.f.setVisibility(0);
      }
      for (;;)
      {
        if (this.j == 2)
        {
          if (as.c(((StockQuote)localObject1).getType()))
          {
            locals.h.setVisibility(0);
            locals.h.setImageResource(2130838562);
            break;
            paramView = String.format("%.4f", new Object[] { Double.valueOf(((StockQuote)localObject1).getNetValue()) });
            break label413;
            if (((StockQuote)localObject1).getFlag() == StockStatus.DELIST.value())
            {
              locals.f.setBackgroundResource(this.r);
              locals.f.setText(2131165456);
              locals.f.setVisibility(0);
              continue;
            }
            locals.e.setGravity(21);
            Object localObject3;
            double d1;
            if (((this.j == 2) && (((StockQuote)localObject1).getChange() > 0.0D)) || ((this.j == 1) && (((StockQuote)localObject1).getDailyGain() > 0.0D)))
            {
              locals.e.setBackgroundResource(this.n);
              paramView = ((StockQuote)localObject1).getSymbol();
              if ((this.j == 2) && (this.k.containsKey(paramView)) && (((Integer)this.k.get(paramView)).intValue() != 2))
              {
                if (((Integer)this.k.get(paramView)).intValue() != 0) {
                  break label954;
                }
                paramInt = this.p;
                locals.j.setBackgroundResource(paramInt);
                localObject2 = locals.j;
                localObject3 = new AlphaAnimation(0.0F, 1.0F);
                ((AlphaAnimation)localObject3).setDuration(400L);
                ((AlphaAnimation)localObject3).setStartOffset(0L);
                ((AlphaAnimation)localObject3).setAnimationListener(new Animation.AnimationListener()
                {
                  public final void onAnimationEnd(Animation paramAnonymousAnimation)
                  {
                    paramAnonymousAnimation = new AlphaAnimation(1.0F, 0.0F);
                    paramAnonymousAnimation.setDuration(600L);
                    paramAnonymousAnimation.setStartOffset(0L);
                    localObject2.startAnimation(paramAnonymousAnimation);
                  }
                  
                  public final void onAnimationRepeat(Animation paramAnonymousAnimation) {}
                  
                  public final void onAnimationStart(Animation paramAnonymousAnimation) {}
                });
                ((View)localObject2).startAnimation((Animation)localObject3);
                this.k.put(paramView, Integer.valueOf(2));
              }
              if (this.f != 0) {
                break label979;
              }
              if (this.j != 2) {
                break label962;
              }
              d1 = ((StockQuote)localObject1).getPercentage();
              localObject2 = locals.e;
              if (d1 <= 0.0D) {
                break label972;
              }
              paramView = "+";
              ((AutoResizeTextView)localObject2).setText(String.format("%s%.2f%%", new Object[] { paramView, Double.valueOf(d1) }));
            }
            for (;;)
            {
              locals.e.b();
              break;
              if (((this.j == 2) && (((StockQuote)localObject1).getChange() < 0.0D)) || ((this.j == 1) && (((StockQuote)localObject1).getDailyGain() < 0.0D)))
              {
                locals.e.setBackgroundResource(this.o);
                break label661;
              }
              locals.e.setBackgroundResource(this.r);
              break label661;
              paramInt = this.q;
              break label732;
              d1 = ((StockQuote)localObject1).getDailyGain();
              break label832;
              paramView = "";
              break label850;
              if (this.f == 1)
              {
                if (this.j == 2)
                {
                  d1 = ((StockQuote)localObject1).getChange();
                  localObject2 = as.a(((StockQuote)localObject1).getTickSize(), d1);
                  localObject3 = locals.e;
                  if (d1 <= 0.0D) {
                    break label1069;
                  }
                }
                for (paramView = "+";; paramView = "")
                {
                  ((AutoResizeTextView)localObject3).setText(String.format("%s%s", new Object[] { paramView, localObject2 }));
                  break;
                  d1 = ((StockQuote)localObject1).getDailyGain();
                  break label1002;
                }
              }
              locals.e.setText(au.a(((StockQuote)localObject1).getMarketCapital()));
            }
          }
          if (as.a(((StockQuote)localObject1).getType()))
          {
            locals.h.setVisibility(0);
            locals.h.setImageResource(2130838560);
            break;
          }
          locals.h.setVisibility(8);
          break;
        }
      }
      if ("us".equalsIgnoreCase(((StockQuote)localObject1).getMarket()))
      {
        locals.h.setVisibility(0);
        locals.h.setImageResource(2130838562);
        if (((StockQuote)localObject1).getBadgesExist()) {
          break label1326;
        }
        locals.b.setVisibility(8);
        if (!com.xueqiu.android.base.util.f.a(((StockQuote)localObject1).getSymbol())) {
          break label1338;
        }
        locals.k.setVisibility(0);
      }
      for (;;)
      {
        if ((((StockQuote)localObject1).getClosedAt() == null) || (((StockQuote)localObject1).getClosedAt().equals(new Date(0L)))) {
          break label1349;
        }
        locals.f.setBackgroundResource(this.r);
        locals.f.setText(2131165455);
        locals.f.setVisibility(0);
        break;
        if ("hk".equalsIgnoreCase(((StockQuote)localObject1).getMarket()))
        {
          locals.h.setVisibility(0);
          locals.h.setImageResource(2130838560);
          break label1176;
        }
        locals.h.setVisibility(8);
        break label1176;
        locals.b.setVisibility(0);
        break label1194;
        locals.k.setVisibility(8);
      }
      break;
      if (i1 == 1)
      {
        localView = paramView;
        if (paramView == null)
        {
          localView = this.m.inflate(2130903471, paramViewGroup, false);
          paramView = new r(this, (byte)0);
          paramView.a = ((ImageButton)localView.findViewById(2131625543));
          paramView.b = ((TextView)localView.findViewById(2131625535));
          paramView.c = ((TextView)localView.findViewById(2131625538));
          paramView.d = ((ImageButton)localView.findViewById(2131624079));
          paramView.e = ((ImageView)localView.findViewById(2131625544));
          paramView.f = ((ImageView)localView.findViewById(2131625536));
          paramView.g = localView.findViewById(2131624443);
          localView.setTag(paramView);
        }
        paramView = (PortfolioStock)this.a.get(paramInt);
        paramViewGroup = (StockQuote)this.c.get(paramView.getCode());
        localObject1 = (r)localView.getTag();
        ((r)localObject1).b.setText(paramView.getStockName());
        ((r)localObject1).c.setText(paramView.getCode());
        if (this.j == 2) {
          if (paramViewGroup == null) {
            ((r)localObject1).e.setVisibility(8);
          }
        }
        for (;;)
        {
          ((r)localObject1).d.setOnClickListener(new View.OnClickListener()
          {
            public final void onClick(View paramAnonymousView)
            {
              if (q.c(q.this) != null) {
                q.c(q.this).b(paramInt);
              }
            }
          });
          ((r)localObject1).a.setOnClickListener(new View.OnClickListener()
          {
            public final void onClick(View paramAnonymousView)
            {
              new AlertDialog.Builder(q.e(q.this)).setTitle(2131166282).setNegativeButton(2131165296, null).setPositiveButton(2131165361, new DialogInterface.OnClickListener()
              {
                public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
                {
                  if (q.c(q.this) != null) {
                    q.c(q.this).a(q.3.this.a);
                  }
                }
              }).show();
            }
          });
          return localView;
          if (as.c(paramViewGroup.getType()))
          {
            ((r)localObject1).e.setVisibility(0);
            ((r)localObject1).e.setImageResource(2130838562);
          }
          else if (as.a(paramViewGroup.getType()))
          {
            ((r)localObject1).e.setVisibility(0);
            ((r)localObject1).e.setImageResource(2130838560);
          }
          else
          {
            ((r)localObject1).e.setVisibility(8);
            continue;
            if ("us".equalsIgnoreCase(paramViewGroup.getMarket()))
            {
              ((r)localObject1).e.setVisibility(0);
              ((r)localObject1).e.setImageResource(2130838562);
            }
            for (;;)
            {
              if (!com.xueqiu.android.base.util.f.a(paramViewGroup.getSymbol())) {
                break label1801;
              }
              ((r)localObject1).f.setVisibility(0);
              break;
              if ("hk".equalsIgnoreCase(paramViewGroup.getMarket()))
              {
                ((r)localObject1).e.setVisibility(0);
                ((r)localObject1).e.setImageResource(2130838560);
              }
              else
              {
                ((r)localObject1).e.setVisibility(8);
              }
            }
            ((r)localObject1).f.setVisibility(8);
          }
        }
      }
      localView = paramView;
    } while (paramView != null);
    return this.m.inflate(2130903472, paramViewGroup, false);
  }
  
  public final int getViewTypeCount()
  {
    return 2;
  }
  
  public final boolean hasStableIds()
  {
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\a\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */