package com.xueqiu.android.stock.c;

import android.support.v4.a.i;
import android.support.v4.a.q;
import android.support.v4.a.v;
import android.view.ViewGroup;
import com.xueqiu.android.common.widget.SwitchSwipeEnableViewPager;
import com.xueqiu.android.stock.model.Portfolio;
import java.util.List;

final class o
  extends v
{
  public o(n paramn, q paramq)
  {
    super(paramq);
  }
  
  public final i a(int paramInt)
  {
    if (n.n(this.b).getCurrentItem() == paramInt) {}
    for (boolean bool = true;; bool = false) {
      return p.a(n.a(this.b), n.t(this.b), (Portfolio)n.m(this.b).get(paramInt), bool, paramInt);
    }
  }
  
  public final Object a(ViewGroup paramViewGroup, int paramInt)
  {
    paramViewGroup = (p)super.a(paramViewGroup, paramInt);
    n.j(this.b)[paramInt] = paramViewGroup;
    return paramViewGroup;
  }
  
  public final int b()
  {
    return n.m(this.b).size();
  }
  
  public final CharSequence b(int paramInt)
  {
    return ((Portfolio)n.m(this.b).get(paramInt)).getName();
  }
  
  public final int c()
  {
    return -2;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\c\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */