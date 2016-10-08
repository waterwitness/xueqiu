package com.xueqiu.android.trade.a;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.xueqiu.android.base.util.h;
import com.xueqiu.android.trade.model.TradeAccount;
import com.xueqiu.android.trade.model.Transaction;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class e
  extends BaseAdapter
{
  public List<Transaction> a = new ArrayList();
  public TradeAccount b;
  private Context c;
  private List<f> d = new ArrayList();
  
  public e(Context paramContext)
  {
    this.c = paramContext;
  }
  
  public static List<f> a(List<Transaction> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    Transaction localTransaction;
    for (paramList = null; localIterator.hasNext(); paramList = localTransaction)
    {
      localTransaction = (Transaction)localIterator.next();
      if ((paramList == null) || (!h.a(paramList.getCtimestamp(), localTransaction.getCtimestamp())))
      {
        paramList = new f();
        paramList.b = h.c(localTransaction.getCtimestamp());
        localArrayList.add(paramList);
      }
      paramList = new f();
      paramList.a = localTransaction;
      localArrayList.add(paramList);
    }
    return localArrayList;
  }
  
  public final int getCount()
  {
    if (this.d == null) {
      return 0;
    }
    return this.d.size();
  }
  
  public final Object getItem(int paramInt)
  {
    return ((f)this.d.get(paramInt)).a;
  }
  
  public final long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public final int getItemViewType(int paramInt)
  {
    if (getItem(paramInt) == null) {
      return 1;
    }
    return 0;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Object localObject = (f)this.d.get(paramInt);
    View localView;
    if (getItemViewType(paramInt) == 1)
    {
      localView = paramView;
      if (paramView == null) {
        localView = LayoutInflater.from(this.c).inflate(2130903532, paramViewGroup, false);
      }
      ((TextView)localView.findViewById(2131625676)).setText(((f)localObject).b);
      return localView;
    }
    if (paramView == null)
    {
      localView = LayoutInflater.from(this.c).inflate(2130903531, paramViewGroup, false);
      paramViewGroup = new g(localView);
      localView.setTag(paramViewGroup);
      localObject = ((f)this.d.get(paramInt)).a;
      paramViewGroup.a.setText(((Transaction)localObject).getSname());
      if (!TextUtils.isEmpty(((Transaction)localObject).getTradeName())) {
        break label361;
      }
      TextView localTextView = paramViewGroup.b;
      paramView = ((Transaction)localObject).getAction();
      if (!"BUY".equals(paramView)) {
        break label310;
      }
      paramView = "买入";
      label169:
      localTextView.setText(paramView);
      label175:
      paramViewGroup.c.setText(String.format("%.2f", new Object[] { Double.valueOf(((Transaction)localObject).getCprice()) }));
      paramViewGroup.d.setText(((Transaction)localObject).getCamount());
      paramViewGroup.e.setText(((Transaction)localObject).getBusinessBalance());
      paramViewGroup.g.setText(h.d(((Transaction)localObject).getCtime()));
      if ((this.b == null) || (!this.b.isFirstTrade())) {
        break label376;
      }
      paramViewGroup.h.setVisibility(4);
    }
    for (;;)
    {
      if (paramInt != getCount() - 1) {
        break label402;
      }
      paramViewGroup.i.setVisibility(8);
      paramViewGroup.j.setVisibility(0);
      return localView;
      paramViewGroup = (g)paramView.getTag();
      localView = paramView;
      break;
      label310:
      if ("SELL".equals(paramView))
      {
        paramView = "卖出";
        break label169;
      }
      if ("SELL_SHORT".equals(paramView))
      {
        paramView = "卖空";
        break label169;
      }
      if ("BUY_COVER".equals(paramView))
      {
        paramView = "补回";
        break label169;
      }
      paramView = "";
      break label169;
      label361:
      paramViewGroup.b.setText(((Transaction)localObject).getTradeName());
      break label175;
      label376:
      paramViewGroup.h.setVisibility(0);
      paramViewGroup.h.setText(h.e(((Transaction)localObject).getCtime()));
    }
    label402:
    paramViewGroup.i.setVisibility(0);
    paramViewGroup.j.setVisibility(8);
    return localView;
  }
  
  public final int getViewTypeCount()
  {
    return 2;
  }
  
  public final void refresh(List<f> paramList)
  {
    this.d = paramList;
    notifyDataSetChanged();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\a\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */