package com.xueqiu.android.community.a;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.xueqiu.android.base.r;
import com.xueqiu.android.base.util.ar;
import com.xueqiu.android.base.util.au;
import com.xueqiu.android.common.a.d;
import com.xueqiu.android.community.model.SimpleFund;
import java.util.Locale;

public final class m
  extends d<SimpleFund>
{
  private ar e = ar.a();
  
  public m(Context paramContext)
  {
    super(paramContext, 2130903439);
    this.e.a = r.a(2131558668);
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramViewGroup = super.getView(paramInt, paramView, paramViewGroup);
    SimpleFund localSimpleFund;
    if (paramViewGroup.getTag() == null)
    {
      paramView = new n();
      paramView.a = ((TextView)paramViewGroup.findViewById(2131625413));
      paramView.f = ((TextView)paramViewGroup.findViewById(2131625414));
      paramView.b = ((TextView)paramViewGroup.findViewById(2131625416));
      paramView.c = ((TextView)paramViewGroup.findViewById(2131625417));
      paramView.d = ((TextView)paramViewGroup.findViewById(2131625418));
      paramView.e = ((TextView)paramViewGroup.findViewById(2131625419));
      paramViewGroup.setTag(paramView);
      localSimpleFund = (SimpleFund)getItem(paramInt);
      double d = localSimpleFund.getRate() * 100.0D;
      paramInt = this.e.a(d);
      paramView.f.setTextColor(paramInt);
      paramView.a.setTextColor(paramInt);
      paramView.a.setText(String.format(Locale.CHINA, "%.2f", new Object[] { Double.valueOf(d) }));
      paramView.d.setText(localSimpleFund.getName());
      if (!au.a(localSimpleFund.getStrutType())) {
        break label257;
      }
      paramView.b.setVisibility(8);
      label212:
      if (!au.a(localSimpleFund.getStrategy())) {
        break label280;
      }
      paramView.c.setVisibility(8);
    }
    for (;;)
    {
      paramView.e.setText(localSimpleFund.getManager());
      return paramViewGroup;
      paramView = (n)paramViewGroup.getTag();
      break;
      label257:
      paramView.b.setVisibility(0);
      paramView.b.setText(localSimpleFund.getStrutType());
      break label212;
      label280:
      paramView.c.setVisibility(0);
      paramView.c.setText(localSimpleFund.getStrategy());
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\a\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */