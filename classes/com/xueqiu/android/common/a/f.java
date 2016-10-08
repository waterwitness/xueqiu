package com.xueqiu.android.common.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import java.util.List;

public final class f<T>
  extends ArrayAdapter<T>
{
  protected final int a = 2130903448;
  private LayoutInflater b;
  
  public f(Context paramContext, List<T> paramList)
  {
    super(paramContext, 2130903448, 2131624240, paramList);
    this.b = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
  }
  
  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null) {
      localView = this.b.inflate(this.a, paramViewGroup, false);
    }
    return super.getView(paramInt, localView, paramViewGroup);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\a\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */