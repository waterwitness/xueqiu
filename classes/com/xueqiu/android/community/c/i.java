package com.xueqiu.android.community.c;

import android.support.v4.a.q;
import android.support.v4.a.v;
import android.view.ViewGroup;

final class i
  extends v
{
  public i(g paramg, q paramq)
  {
    super(paramq);
  }
  
  public final android.support.v4.a.i a(int paramInt)
  {
    return g.a(this.b, paramInt);
  }
  
  public final Object a(ViewGroup paramViewGroup, int paramInt)
  {
    paramViewGroup = (android.support.v4.a.i)super.a(paramViewGroup, paramInt);
    g.a(this.b)[paramInt] = paramViewGroup;
    android.support.v4.a.i locali = g.a(this.b)[g.b(this.b).getCurrentItem()];
    if ((locali instanceof h)) {
      ((h)locali).a = true;
    }
    return paramViewGroup;
  }
  
  public final int b()
  {
    return g.c(this.b).length;
  }
  
  public final CharSequence b(int paramInt)
  {
    return g.c(this.b)[(paramInt % g.c(this.b).length)];
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\c\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */