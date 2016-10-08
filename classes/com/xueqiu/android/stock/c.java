package com.xueqiu.android.stock;

import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.xueqiu.android.cube.model.HistoryValue;
import java.util.List;

final class c
  extends BaseAdapter
{
  c(FundNvHistoryActivity paramFundNvHistoryActivity) {}
  
  public final int getCount()
  {
    return FundNvHistoryActivity.a(this.a).size();
  }
  
  public final Object getItem(int paramInt)
  {
    return FundNvHistoryActivity.a(this.a).get(paramInt);
  }
  
  public final long getItemId(int paramInt)
  {
    return 0L;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = this.a.getLayoutInflater().inflate(2130903302, paramViewGroup, false);
      localView.setTag(new d(this, localView));
    }
    paramView = (HistoryValue)FundNvHistoryActivity.a(this.a).get(paramInt);
    d locald = (d)localView.getTag();
    locald.c.setText(paramView.getDate());
    locald.d.setText(String.format("%.4f", new Object[] { Double.valueOf(paramView.getValue()) }));
    float f = Double.valueOf(paramView.getValue() / FundNvHistoryActivity.b(this.a)).floatValue();
    locald.b.getLayoutParams().width = Math.round(f * (paramViewGroup.getWidth() - this.a.getResources().getDimension(2131230876) * 2.0F));
    locald.a.setBackgroundColor(this.a.getResources().getColor(2131558536));
    return localView;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */