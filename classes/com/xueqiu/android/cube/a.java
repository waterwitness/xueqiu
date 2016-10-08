package com.xueqiu.android.cube;

import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageButton;
import android.widget.TextView;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.stock.model.Stock;
import com.xueqiu.android.stock.model.StockStatus;
import java.util.List;
import java.util.Set;

final class a
  extends BaseAdapter
{
  private List<Stock> b;
  
  public a(List<Stock> paramList)
  {
    List localList;
    this.b = localList;
  }
  
  public final int getCount()
  {
    return this.b.size();
  }
  
  public final Object getItem(int paramInt)
  {
    return this.b.get(paramInt);
  }
  
  public final long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public final View getView(int paramInt, View paramView, final ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null) {
      localView = this.a.getLayoutInflater().inflate(2130903449, paramViewGroup, false);
    }
    if (localView.getTag() == null)
    {
      paramView = new b(this);
      paramView.a = localView;
      paramView.b = ((TextView)localView.findViewById(2131624939));
      paramView.c = ((TextView)localView.findViewById(2131624951));
      paramView.d = ((TextView)localView.findViewById(2131625428));
      paramView.e = ((ImageButton)localView.findViewById(2131625429));
      localView.setTag(paramView);
    }
    paramView = (b)localView.getTag();
    paramViewGroup = (Stock)this.b.get(paramInt);
    paramView.b.setText(paramViewGroup.getName());
    paramView.c.setText(paramViewGroup.getCode());
    if (paramViewGroup.getFlag() == StockStatus.LISTED)
    {
      paramView.d.setVisibility(8);
      if (!AddStockActivity.b(this.a).contains(paramViewGroup.getCode())) {
        break label259;
      }
      paramView.e.setSelected(true);
    }
    for (;;)
    {
      paramView.e.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          if (AddStockActivity.b(a.this.a).size() >= 20)
          {
            aa.a(2131166230);
            return;
          }
          a.a(a.this, paramViewGroup);
        }
      });
      paramView.a.setOnClickListener(new View.OnClickListener()
      {
        public final void onClick(View paramAnonymousView)
        {
          a.a(a.this, paramViewGroup);
        }
      });
      return localView;
      paramView.d.setVisibility(0);
      paramView.d.setText(paramViewGroup.getFlag().description());
      break;
      label259:
      paramView.e.setSelected(false);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */