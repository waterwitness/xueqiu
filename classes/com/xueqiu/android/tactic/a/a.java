package com.xueqiu.android.tactic.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.xueqiu.android.common.a.d;
import com.xueqiu.android.tactic.d.g;
import java.util.ArrayList;
import java.util.Locale;

public final class a
  extends d<com.xueqiu.android.tactic.d.h>
{
  private LayoutInflater e;
  
  public a(Context paramContext)
  {
    super(paramContext);
    this.e = LayoutInflater.from(paramContext);
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = this.e.inflate(2130903512, paramViewGroup, false);
      paramView = new b(this);
      paramView.a = localView.findViewById(2131625634);
      paramView.b = ((TextView)localView.findViewById(2131625635));
      paramView.c = ((TextView)localView.findViewById(2131625636));
      paramView.d = ((LinearLayout)localView.findViewById(2131625629));
      paramView.e = ((TextView)localView.findViewById(2131625630));
      localView.setTag(paramView);
    }
    paramView = (com.xueqiu.android.tactic.d.h)getItem(paramInt);
    paramViewGroup = (b)localView.getTag();
    paramViewGroup.b.setText(paramView.product.title);
    paramViewGroup.c.setText(com.xueqiu.android.base.util.h.a(paramView.createdAt, "yyyy-MM-dd HH:mm"));
    if ((paramView.stocks == null) || (paramView.stocks.size() == 0)) {
      return localView;
    }
    Object localObject;
    if (paramView.stockTotal > 3)
    {
      localObject = String.format(Locale.CHINA, "查看全部%d只股票", new Object[] { Integer.valueOf(paramView.stockTotal) });
      paramViewGroup.e.setText((CharSequence)localObject);
      paramViewGroup.e.setVisibility(0);
      paramViewGroup.e.setOnClickListener(new b.1(paramViewGroup, paramView));
    }
    for (;;)
    {
      paramViewGroup.d.removeAllViews();
      paramInt = 0;
      while (paramInt < paramView.stocks.size())
      {
        localObject = new f(paramViewGroup.f.c);
        ((f)localObject).e = false;
        ((f)localObject).a(paramView.stocks);
        paramViewGroup.d.addView(((f)localObject).getView(paramInt, null, paramViewGroup.d));
        paramInt += 1;
      }
      paramViewGroup.e.setVisibility(8);
    }
    paramViewGroup.a.setOnClickListener(new b.2(paramViewGroup, paramView));
    return localView;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\tactic\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */