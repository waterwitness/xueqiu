package com.xueqiu.android.common;

import android.support.v4.view.bd;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

public final class p
  extends bd
{
  public p(n paramn) {}
  
  public final Object a(ViewGroup paramViewGroup, int paramInt)
  {
    paramViewGroup.addView((View)n.b(this.b).get(paramInt));
    return n.b(this.b).get(paramInt);
  }
  
  public final void a(ViewGroup paramViewGroup, int paramInt, Object paramObject) {}
  
  public final boolean a(View paramView, Object paramObject)
  {
    return paramObject == paramView;
  }
  
  public final int b()
  {
    return n.b(this.b).size();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */