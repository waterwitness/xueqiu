package com.xueqiu.android.common.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SimpleAdapter;
import java.util.List;
import java.util.Map;

public final class g
  extends SimpleAdapter
{
  protected final int a;
  private LayoutInflater b;
  
  public g(Context paramContext, List<? extends Map<String, ?>> paramList, int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    super(paramContext, paramList, paramInt, paramArrayOfString, paramArrayOfInt);
    this.a = paramInt;
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


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\a\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */