package com.xueqiu.android.trade.a;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.xueqiu.android.base.util.ar;
import com.xueqiu.android.base.util.as;
import com.xueqiu.android.base.util.at;
import com.xueqiu.android.base.util.au;
import com.xueqiu.android.stock.model.StockIncome;

public final class c
  extends com.xueqiu.android.common.a.d<StockIncome>
{
  public ar e = null;
  
  public c(Context paramContext)
  {
    super(paramContext, 2130903539);
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = super.getView(paramInt, paramView, paramViewGroup);
    if (localView.getTag() == null)
    {
      paramView = new d();
      paramView.a = ((TextView)localView.findViewById(2131625666));
      paramView.b = ((TextView)localView.findViewById(2131625668));
      paramView.c = ((TextView)localView.findViewById(2131625669));
      paramView.d = ((TextView)localView.findViewById(2131625670));
      paramView.e = ((TextView)localView.findViewById(2131625671));
      paramView.f = ((TextView)localView.findViewById(2131625672));
      paramView.g = ((TextView)localView.findViewById(2131625673));
      paramView.h = ((TextView)localView.findViewById(2131625674));
      paramView.i = ((ImageView)localView.findViewById(2131625667));
      paramView.j = localView.findViewById(2131624443);
      localView.setTag(paramView);
      StockIncome localStockIncome = (StockIncome)getItem(paramInt);
      paramView.a.setText(localStockIncome.getName());
      paramView.b.setText(localStockIncome.getSymbol());
      paramView.c.setText(au.b(localStockIncome.getMarketValue()));
      paramView.d.setText(String.valueOf(localStockIncome.getShares()));
      Object localObject = String.valueOf(localStockIncome.getCurrent());
      paramViewGroup = (ViewGroup)localObject;
      if (localStockIncome.getSymbol() != null)
      {
        at localat = as.a(localStockIncome.getSymbol());
        if (!localat.c.equals("基金"))
        {
          paramViewGroup = (ViewGroup)localObject;
          if (!localat.c.equals("沪B")) {}
        }
        else
        {
          paramViewGroup = String.format("%.3f", new Object[] { Float.valueOf(localStockIncome.getCurrent()) });
        }
      }
      paramView.e.setText(String.valueOf(paramViewGroup));
      paramView.f.setText(String.valueOf(localStockIncome.getAvgPrice()));
      paramView.g.setTextColor(this.e.a(localStockIncome.getFloatAmount()));
      paramView.h.setTextColor(this.e.a(localStockIncome.getFloatAmount()));
      localObject = paramView.g;
      float f = localStockIncome.getFloatAmount();
      if (f <= 0.0F) {
        break label520;
      }
      paramViewGroup = "+";
      label403:
      ((TextView)localObject).setText(String.format("%s%s", new Object[] { paramViewGroup, au.b(f) }));
      localObject = paramView.h;
      f = localStockIncome.getFloatRate();
      if (f <= 0.0F) {
        break label526;
      }
      paramViewGroup = "+";
      label453:
      ((TextView)localObject).setText(String.format("%s%.2f%%", new Object[] { paramViewGroup, Float.valueOf(f * 100.0F) }));
      paramView = paramView.j;
      if (paramInt != getCount() - 1) {
        break label532;
      }
    }
    label520:
    label526:
    label532:
    for (paramInt = 8;; paramInt = 0)
    {
      paramView.setVisibility(paramInt);
      return localView;
      paramView = (d)localView.getTag();
      break;
      paramViewGroup = "";
      break label403;
      paramViewGroup = "";
      break label453;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\a\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */