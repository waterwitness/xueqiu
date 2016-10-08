package com.xueqiu.android.cube.widget;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.List;

public final class c
  extends BaseAdapter
{
  int a = 0;
  private List<d> b;
  private LayoutInflater c;
  private int d;
  private int e;
  
  private c(Context paramContext, List<d> paramList)
  {
    this.c = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    this.b = paramList;
    this.d = 2130903585;
    this.e = paramList.size();
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
    return paramInt;
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null) {
      localView = this.c.inflate(this.d, paramViewGroup, false);
    }
    paramView = (TextView)localView.findViewById(2131625841);
    paramView.setText(((d)this.b.get(paramInt)).toString());
    if (paramInt == this.a) {
      paramView.setTextColor(localView.getResources().getColor(2131558418));
    }
    while (paramInt == this.e - 1)
    {
      localView.findViewById(2131625842).setVisibility(0);
      return localView;
      paramView.setTextColor(localView.getResources().getColor(2131558417));
    }
    localView.findViewById(2131625842).setVisibility(8);
    return localView;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\cube\widget\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */