package com.xueqiu.android.stock.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.xueqiu.android.base.util.ar;
import com.xueqiu.android.base.util.as;
import com.xueqiu.android.common.a.d;
import com.xueqiu.android.stock.model.StockOption;

public final class l
  extends d<StockOption>
{
  private LayoutInflater e;
  private int f = 11;
  
  public l(Context paramContext, int paramInt)
  {
    super(paramContext);
    this.f = paramInt;
    this.e = LayoutInflater.from(paramContext);
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView;
    if (paramView != null)
    {
      localView = paramView;
      if (paramView.getTag() != null) {}
    }
    else
    {
      localView = this.e.inflate(2130903476, paramViewGroup, false);
      new m();
      paramView = new m();
      paramView.a = ((TextView)localView.findViewById(2131624425));
      paramView.b = ((TextView)localView.findViewById(2131625550));
      paramView.c = ((TextView)localView.findViewById(2131625548));
      paramView.d = ((TextView)localView.findViewById(2131625495));
      paramView.e = ((TextView)localView.findViewById(2131625549));
      paramView.f = ((TextView)localView.findViewById(2131625551));
      localView.setTag(paramView);
    }
    paramViewGroup = (m)localView.getTag();
    StockOption localStockOption = (StockOption)getItem(paramInt);
    int i = this.f;
    paramViewGroup.a.setText(localStockOption.getName());
    paramViewGroup.b.setText(localStockOption.getSymbol());
    if (as.a(i)) {
      if (paramInt >= 20)
      {
        paramViewGroup.f.setVisibility(0);
        paramViewGroup.c.setText(String.format("%.3f", new Object[] { Double.valueOf(localStockOption.getCurrent()) }));
        label231:
        if (localStockOption.getVolume() < 10000.0D) {
          break label395;
        }
      }
    }
    label395:
    for (paramView = String.format("%.2f万", new Object[] { Double.valueOf(localStockOption.getVolume() / 10000.0D) });; paramView = String.format("%.0f", new Object[] { Double.valueOf(localStockOption.getVolume()) }))
    {
      paramViewGroup.e.setText(paramView);
      paramInt = ar.a().a(localStockOption.getPercent());
      paramViewGroup.c.setTextColor(paramInt);
      paramViewGroup.d.setTextColor(paramInt);
      if (localStockOption.getPercent() <= 0.0D) {
        break label419;
      }
      paramViewGroup.d.setText(String.format("%+.2f%%", new Object[] { Double.valueOf(localStockOption.getPercent()) }));
      return localView;
      paramViewGroup.f.setVisibility(8);
      break;
      paramViewGroup.f.setVisibility(8);
      paramViewGroup.c.setText(String.format("%.4f", new Object[] { Double.valueOf(localStockOption.getCurrent()) }));
      break label231;
    }
    label419:
    paramViewGroup.d.setText(String.format("%.2f%%", new Object[] { Double.valueOf(localStockOption.getPercent()) }));
    return localView;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\a\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */