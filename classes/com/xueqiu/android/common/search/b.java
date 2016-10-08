package com.xueqiu.android.common.search;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.xueqiu.android.base.util.as;
import com.xueqiu.android.common.a.d;
import com.xueqiu.android.stock.model.Stock;

public final class b
  extends d<Stock>
{
  private LayoutInflater e;
  
  public b(Context paramContext)
  {
    super(paramContext);
    this.e = LayoutInflater.from(paramContext);
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = this.e.inflate(2130903559, paramViewGroup, false);
      paramView = new c(this, (byte)0);
      paramView.a = ((TextView)localView.findViewById(2131624425));
      paramView.c = ((ImageView)localView.findViewById(2131625667));
      paramView.b = ((TextView)localView.findViewById(2131625550));
      localView.setTag(paramView);
    }
    paramView = (Stock)getItem(paramInt);
    paramViewGroup = (c)localView.getTag();
    paramViewGroup.a.setText(paramView.getName());
    if (paramView.getType() != null)
    {
      if (!as.c(Integer.valueOf(paramView.getType()).intValue())) {
        break label161;
      }
      paramViewGroup.c.setVisibility(0);
      paramViewGroup.c.setImageResource(2130838562);
    }
    for (;;)
    {
      paramViewGroup.b.setText(paramView.getCode());
      return localView;
      label161:
      if (as.a(Integer.valueOf(paramView.getType()).intValue()))
      {
        paramViewGroup.c.setVisibility(0);
        paramViewGroup.c.setImageResource(2130838560);
      }
      else
      {
        paramViewGroup.c.setVisibility(8);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\search\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */