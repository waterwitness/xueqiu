package com.xueqiu.android.trade.c;

import android.support.v4.a.q;
import android.support.v4.a.v;
import android.view.ViewGroup;
import com.xueqiu.android.trade.model.PerformanceGroup;
import java.util.ArrayList;

final class h
  extends v
{
  public h(g paramg, q paramq)
  {
    super(paramq);
  }
  
  public final android.support.v4.a.i a(int paramInt)
  {
    return i.a((PerformanceGroup)g.d(this.b).get(paramInt), paramInt, g.d(this.b).size());
  }
  
  public final Object a(ViewGroup paramViewGroup, int paramInt)
  {
    paramViewGroup = (i)super.a(paramViewGroup, paramInt);
    g.b(this.b)[paramInt] = paramViewGroup;
    return paramViewGroup;
  }
  
  public final int b()
  {
    return g.d(this.b).size();
  }
  
  public final int c()
  {
    return -2;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\c\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */