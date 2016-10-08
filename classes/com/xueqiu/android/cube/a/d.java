package com.xueqiu.android.cube.a;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.graphics.Color;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.emilsjolander.components.stickylistheaders.StickyListHeadersAdapter;
import com.xueqiu.android.base.b.a.c;
import com.xueqiu.android.base.util.au;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.q;
import com.xueqiu.android.cube.model.Holding;
import com.xueqiu.android.stock.model.Stock;
import com.xueqiu.android.stock.model.StockQuote;
import com.xueqiu.android.stock.model.StockStatus;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class d
  extends BaseAdapter
  implements StickyListHeadersAdapter
{
  public List<Holding> a;
  public final Map<String, Double> b = new HashMap();
  public f c;
  public boolean d = false;
  public boolean e = false;
  public double f = 1.0D;
  public Map<String, Stock> g = new HashMap();
  public Map<String, StockQuote> h = new HashMap();
  private final SparseArray<WeakReference<TextView>> i = new SparseArray();
  private LayoutInflater j;
  private Context k;
  private boolean l = false;
  
  public d(Context paramContext)
  {
    this.k = paramContext;
    this.j = LayoutInflater.from(paramContext);
    this.a = new ArrayList();
  }
  
  private double a(int paramInt)
  {
    Holding localHolding1 = (Holding)this.a.get(paramInt);
    double d1 = 0.0D;
    if (paramInt < this.a.size())
    {
      Holding localHolding2 = (Holding)this.a.get(paramInt);
      if (localHolding2.getSegmentId() == localHolding1.getSegmentId())
      {
        StockQuote localStockQuote;
        if (this.e)
        {
          localStockQuote = (StockQuote)this.h.get(localHolding2.getStockSymbol());
          if (localStockQuote == null) {
            d1 = localHolding2.getWeight() + d1;
          }
        }
        for (;;)
        {
          paramInt += 1;
          break;
          if (this.b.containsKey(localHolding1.getStockSymbol())) {}
          for (double d2 = ((Double)this.b.get(localHolding1.getStockSymbol())).doubleValue();; d2 = localHolding1.getVolume())
          {
            d1 = localStockQuote.getCurrent() * d2 / this.f * 100.0D + d1;
            break;
          }
          d1 = ((Holding)this.a.get(paramInt)).getWeight() + d1;
        }
      }
    }
    return d1;
  }
  
  public final Double a()
  {
    int m = 0;
    Double localDouble = Double.valueOf(0.0D);
    if (m < this.a.size())
    {
      Object localObject = (Holding)this.a.get(m);
      double d1;
      if (this.b.containsKey(((Holding)localObject).getStockSymbol()))
      {
        d1 = ((Double)this.b.get(((Holding)localObject).getStockSymbol())).doubleValue();
        label77:
        localObject = (StockQuote)this.h.get(((Holding)localObject).getStockSymbol());
        if (localObject != null) {
          break label155;
        }
      }
      label155:
      for (double d2 = 1.0D;; d2 = ((StockQuote)localObject).getCurrent())
      {
        double d3 = localDouble.doubleValue();
        d1 = Double.valueOf(d1).doubleValue();
        d2 = Double.valueOf(d2).doubleValue();
        m += 1;
        localDouble = Double.valueOf(d2 * d1 + d3);
        break;
        d1 = ((Holding)localObject).getVolume();
        break label77;
      }
    }
    return localDouble;
  }
  
  public final double b()
  {
    double d2;
    if (this.e)
    {
      d2 = a().doubleValue() / this.f * 100.0D;
      return 100.0D - d2;
    }
    Iterator localIterator = this.a.iterator();
    for (double d1 = 0.0D;; d1 = ((Holding)localIterator.next()).getWeight() + d1)
    {
      d2 = d1;
      if (!localIterator.hasNext()) {
        break;
      }
    }
  }
  
  public final int getCount()
  {
    if (this.a == null) {
      return 0;
    }
    return this.a.size();
  }
  
  public final long getHeaderId(int paramInt)
  {
    if (this.l) {
      return 1L;
    }
    return ((Holding)this.a.get(paramInt)).getSegmentId();
  }
  
  public final View getHeaderView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Object localObject;
    if (this.l)
    {
      localObject = paramView;
      if (paramView == null) {
        localObject = this.j.inflate(2130903290, paramViewGroup, false);
      }
    }
    View localView;
    do
    {
      return (View)localObject;
      localView = paramView;
      if (paramView == null)
      {
        localView = this.j.inflate(2130903317, paramViewGroup, false);
        paramView = new e();
        paramView.a = localView.findViewById(2131624326);
        paramView.b = ((TextView)localView.findViewById(2131625047));
        paramView.c = ((TextView)localView.findViewById(2131625048));
        localView.setTag(paramView);
      }
      if (localView.getVisibility() != 4) {
        localView.setVisibility(0);
      }
      paramView = (e)localView.getTag();
      this.i.put(paramInt, new WeakReference(paramView.c));
      paramViewGroup = (Holding)this.a.get(paramInt);
      double d1 = a(paramInt);
      paramView.b.setText(paramViewGroup.getSegmentName());
      paramView.c.setText(String.format("%.2f%%", new Object[] { Double.valueOf(d1) }));
      localObject = localView;
    } while (paramViewGroup.getSegmentColor() == null);
    paramView.a.setBackgroundColor(Color.parseColor(paramViewGroup.getSegmentColor()));
    return localView;
  }
  
  public final Object getItem(int paramInt)
  {
    if (this.a == null) {
      return null;
    }
    return this.a.get(paramInt);
  }
  
  public final long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView;
    if (paramView != null)
    {
      localView = paramView;
      if (!(paramView instanceof com.xueqiu.android.cube.widget.e)) {}
    }
    else
    {
      localView = this.j.inflate(2130903294, paramViewGroup, false);
      paramView = new g();
      paramView.a = ((TextView)localView.findViewById(2131624097));
      paramView.b = ((TextView)localView.findViewById(2131624951));
      paramView.c = ((TextView)localView.findViewById(2131624955));
      paramView.d = localView.findViewById(2131624956);
      paramView.e = ((ImageButton)localView.findViewById(2131624957));
      paramView.j = ((LinearLayout)localView.findViewById(2131624950));
      paramView.f = localView.findViewById(2131624952);
      paramView.g = ((TextView)localView.findViewById(2131624953));
      paramView.h = ((TextView)localView.findViewById(2131624954));
      paramView.i = localView.findViewById(2131624898);
      localView.setTag(paramView);
    }
    final Object localObject1 = (Holding)getItem(paramInt);
    paramViewGroup = (StockQuote)this.h.get(((Holding)localObject1).getStockSymbol());
    g localg = (g)localView.getTag();
    localg.a.setText(((Holding)localObject1).getStockName());
    Object localObject2 = localg.b;
    double d1;
    label296:
    double d2;
    if (paramViewGroup == null)
    {
      paramView = ((Holding)localObject1).getStockSymbol();
      ((TextView)localObject2).setText(paramView);
      localg.c.setText(String.format("%.2f%%", new Object[] { Double.valueOf(au.a(((Holding)localObject1).getWeight(), 3)) }));
      if (paramViewGroup != null) {
        break label1037;
      }
      d1 = 0.0D;
      if (!this.b.containsKey(((Holding)localObject1).getStockSymbol())) {
        break label1046;
      }
      d2 = ((Double)this.b.get(((Holding)localObject1).getStockSymbol())).doubleValue();
      label335:
      d1 = d1 * d2 / this.f;
      localg.h.setText(String.format("%.2f%%", new Object[] { Double.valueOf(au.a(d1 * 100.0D, 4)) }));
      localg.e.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          new AlertDialog.Builder(d.a(d.this)).setMessage(2131166269).setNegativeButton(2131165296, null).setPositiveButton(2131165361, new DialogInterface.OnClickListener()
          {
            public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
            {
              d.a(d.this, d.1.this.a);
            }
          }).show();
        }
      });
      localView.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (d.b(d.this))
          {
            paramAnonymousView = q.a(d.a(d.this), new StockQuote(localObject1.getStockSymbol()));
            d.a(d.this).startActivity(paramAnonymousView);
            return;
          }
          d.b(d.this, localObject1);
        }
      });
      if (this.d)
      {
        localg.e.setVisibility(8);
        localg.d.setVisibility(8);
        localg.c.setPadding(0, 0, (int)ay.a(this.k, 15.0F), 0);
        localg.h.setText(String.format("%.2f%%", new Object[] { Double.valueOf(((Holding)localObject1).getWeight()) }));
        localg.g.setText(String.format("%.0f", new Object[] { Double.valueOf(((Holding)localObject1).getVolume()) }));
      }
      if (!this.e) {
        break label1092;
      }
      localg.f.setVisibility(0);
      paramView = (LinearLayout.LayoutParams)localg.f.getLayoutParams();
      if (!this.d) {
        break label1056;
      }
      paramInt = (int)ay.a(this.k, 15.0F);
      label566:
      paramView.setMargins(0, 0, paramInt, 0);
      localg.g.setVisibility(0);
      localg.g.setText(String.valueOf(Double.valueOf(d2).intValue()));
      localg.c.setVisibility(8);
      paramView = localg.d;
      if (!this.d) {
        break label1061;
      }
      paramInt = 8;
      label628:
      paramView.setVisibility(paramInt);
      paramView = (RelativeLayout.LayoutParams)localg.a.getLayoutParams();
      if (!this.d) {
        break label1066;
      }
      paramInt = 0;
      label654:
      paramView.setMargins(0, paramInt, 0, 0);
      paramView = (RelativeLayout.LayoutParams)localg.b.getLayoutParams();
      if (!this.d) {
        break label1079;
      }
      paramInt = 0;
      label683:
      paramView.setMargins(0, paramInt, 0, 0);
      localg.d.setPadding(0, 0, 0, (int)ay.a(this.k, 16.0F));
      localg.e.setPadding(0, 0, 0, (int)ay.a(this.k, 16.0F));
    }
    for (;;)
    {
      if (this.l) {
        localg.c.setVisibility(8);
      }
      paramViewGroup = null;
      paramView = paramViewGroup;
      if (this.g != null)
      {
        paramView = paramViewGroup;
        if (this.g.containsKey(String.valueOf(((Holding)localObject1).getStockId())))
        {
          localObject2 = (Stock)this.g.get(String.valueOf(((Holding)localObject1).getStockId()));
          paramView = paramViewGroup;
          if (((Stock)localObject2).getFlag() != StockStatus.LISTED) {
            paramView = ((Stock)localObject2).getFlag().description();
          }
        }
      }
      localg.j.removeAllViews();
      if (!c.a(paramView))
      {
        paramViewGroup = (TextView)this.j.inflate(2130903297, localg.j, false);
        paramViewGroup.setText(paramView);
        localg.j.addView(paramViewGroup);
      }
      paramView = ((Holding)localObject1).getStockLabel();
      if ((paramView == null) || (paramView.size() <= 0)) {
        break label1132;
      }
      paramView = paramView.iterator();
      while (paramView.hasNext())
      {
        paramViewGroup = (String)paramView.next();
        localObject1 = (TextView)this.j.inflate(2130903297, localg.j, false);
        ((TextView)localObject1).setText(paramViewGroup);
        localg.j.addView((View)localObject1);
      }
      String str = ((Holding)localObject1).getStockSymbol();
      d1 = paramViewGroup.getCurrent();
      if (paramViewGroup.getChange() > 0.0D) {}
      for (paramView = "+";; paramView = "")
      {
        paramView = String.format("%s %.2f(%s%.2f%%)", new Object[] { str, Double.valueOf(d1), paramView, Double.valueOf(paramViewGroup.getPercentage()) });
        break;
      }
      label1037:
      d1 = paramViewGroup.getCurrent();
      break label296;
      label1046:
      d2 = ((Holding)localObject1).getVolume();
      break label335;
      label1056:
      paramInt = 0;
      break label566;
      label1061:
      paramInt = 0;
      break label628;
      label1066:
      paramInt = (int)ay.a(this.k, 0.0F);
      break label654;
      label1079:
      paramInt = (int)ay.a(this.k, 1.0F);
      break label683;
      label1092:
      localg.f.setVisibility(8);
      localg.c.setVisibility(0);
      ((LinearLayout.LayoutParams)localg.b.getLayoutParams()).setMargins(0, 0, 0, 0);
    }
    label1132:
    return localView;
  }
  
  public final void notifyDataSetChanged()
  {
    super.notifyDataSetChanged();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\a\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */