package com.xueqiu.android.common.a;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.xueqiu.android.common.model.SearchHots;
import java.util.List;

public final class i
  extends BaseAdapter
{
  public List<SearchHots> a;
  private Context b;
  
  public i(Context paramContext)
  {
    this.b = paramContext;
  }
  
  public final int getCount()
  {
    if (this.a != null) {
      return this.a.size();
    }
    return 0;
  }
  
  public final Object getItem(int paramInt)
  {
    if (this.a != null) {
      return (SearchHots)this.a.get(paramInt);
    }
    return null;
  }
  
  public final long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (this.a == null) {
      return null;
    }
    label114:
    int i;
    if (paramView == null)
    {
      paramViewGroup = LayoutInflater.from(this.b).inflate(2130903260, paramViewGroup, false);
      paramView = new j((byte)0);
      paramView.a = ((RelativeLayout)paramViewGroup.findViewById(2131624806));
      paramView.b = ((TextView)paramViewGroup.findViewById(2131624807));
      paramView.c = ((TextView)paramViewGroup.findViewById(2131624808));
      paramView.d = paramViewGroup.findViewById(2131624443);
      paramViewGroup.setTag(paramView);
      if (paramInt != 0) {
        break label205;
      }
      paramView.b.setBackgroundColor(this.b.getResources().getColor(2131558615));
      paramView.b.setText(String.valueOf(paramInt + 1));
      paramView.c.setText(((SearchHots)this.a.get(paramInt)).getKey());
      if (getCount() % 3 != 0) {
        break label281;
      }
      i = getCount() / 3 - 1;
      label169:
      if (paramInt < i * 3) {
        break label292;
      }
      paramView.d.setVisibility(8);
    }
    for (;;)
    {
      return paramViewGroup;
      j localj = (j)paramView.getTag();
      paramViewGroup = paramView;
      paramView = localj;
      break;
      label205:
      if (paramInt == 1)
      {
        paramView.b.setBackgroundColor(this.b.getResources().getColor(2131558616));
        break label114;
      }
      if (paramInt == 2)
      {
        paramView.b.setBackgroundColor(this.b.getResources().getColor(2131558617));
        break label114;
      }
      paramView.b.setBackgroundColor(this.b.getResources().getColor(2131558698));
      break label114;
      label281:
      i = getCount() / 3;
      break label169;
      label292:
      paramView.d.setVisibility(0);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\a\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */