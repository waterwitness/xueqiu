package com.xueqiu.android.stock.c;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.xueqiu.android.base.util.ar;
import com.xueqiu.android.common.a.d;
import com.xueqiu.android.stock.model.IndustryInStock;
import java.util.Locale;

public final class i
  extends d<IndustryInStock>
{
  private ar f;
  private LayoutInflater g;
  
  public i(h paramh, Context paramContext)
  {
    super(paramContext);
    this.g = LayoutInflater.from(paramContext);
    this.f = ar.a();
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
      localView = this.g.inflate(2130903465, paramViewGroup, false);
      paramView = new j();
      paramView.a = ((TextView)localView.findViewById(2131624467));
      paramView.b = ((TextView)localView.findViewById(2131625495));
      paramView.c = ((TextView)localView.findViewById(2131625496));
      localView.setTag(paramView);
    }
    j localj = (j)localView.getTag();
    paramView = (IndustryInStock)getItem(paramInt);
    localj.a.setText(paramView.getName());
    localj.c.setText(paramView.getTopStockName());
    Double localDouble = paramView.getPercent();
    localj.b.setTextColor(this.f.a(localDouble.doubleValue()));
    paramViewGroup = String.format(Locale.CHINA, "%.2f%%", new Object[] { localDouble });
    paramView = paramViewGroup;
    if (localDouble.doubleValue() > 0.0D) {
      paramView = "+" + paramViewGroup;
    }
    localj.b.setText(paramView);
    return localView;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\c\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */