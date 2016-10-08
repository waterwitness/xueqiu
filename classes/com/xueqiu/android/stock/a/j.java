package com.xueqiu.android.stock.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.xueqiu.android.common.a.d;
import com.xueqiu.android.stock.model.F10Table;
import java.util.ArrayList;

public final class j
  extends d<ArrayList<F10Table>>
{
  private LayoutInflater e;
  private Context f;
  
  public j(Context paramContext)
  {
    super(paramContext);
    this.f = paramContext;
    this.e = LayoutInflater.from(this.f);
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramView = this.e.inflate(2130903434, paramViewGroup, false);
    paramViewGroup = new k(new k(this).c);
    paramViewGroup.a = ((TextView)paramView.findViewById(2131625065));
    paramViewGroup.b = ((ViewGroup)paramView.findViewById(2131625070));
    Object localObject = (ArrayList)getItem(paramInt);
    if (((ArrayList)localObject).size() == 2)
    {
      F10Table localF10Table = (F10Table)((ArrayList)localObject).get(0);
      localObject = (F10Table)((ArrayList)localObject).get(1);
      paramViewGroup.a.setText(localF10Table.getTitle());
      if (paramViewGroup.b.getChildCount() == 0)
      {
        paramViewGroup.a(localF10Table);
        paramViewGroup.a((F10Table)localObject);
      }
    }
    return paramView;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\a\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */