package com.xueqiu.android.stock.a;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.xueqiu.android.common.a.d;
import com.xueqiu.android.stock.model.OldPortFolio;
import java.util.Locale;

public final class b
  extends d<OldPortFolio>
{
  private LayoutInflater e;
  
  public static void a(OldPortFolio paramOldPortFolio, c paramc)
  {
    paramc.a.setText(paramOldPortFolio.getName());
    paramc.b.setText(paramOldPortFolio.getSymbol());
    paramc.c.setText(String.format(Locale.CHINA, "%.2f%%", new Object[] { Double.valueOf(paramOldPortFolio.getCurrent()) }));
    paramc.d.setText(String.format(Locale.CHINA, "%.2f", new Object[] { Double.valueOf(paramOldPortFolio.getNetProfit()) }));
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
      localView = this.e.inflate(2130903486, paramViewGroup, false);
      localView.setTag(c.a(localView));
    }
    paramView = (c)localView.getTag();
    a((OldPortFolio)getItem(paramInt), paramView);
    return localView;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\a\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */