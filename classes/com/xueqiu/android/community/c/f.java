package com.xueqiu.android.community.c;

import android.support.v4.a.i;
import android.support.v4.a.q;
import android.support.v4.a.v;
import android.support.v4.view.ViewPager;
import android.view.ViewGroup;
import com.xueqiu.android.community.model.UserGroup;
import java.util.ArrayList;

final class f
  extends v
{
  public f(c paramc, q paramq)
  {
    super(paramq);
  }
  
  public final i a(int paramInt)
  {
    if (c.u(this.b).getCurrentItem() == paramInt) {}
    for (boolean bool = true;; bool = false) {
      return d.a((UserGroup)c.h(this.b).get(paramInt), bool);
    }
  }
  
  public final Object a(ViewGroup paramViewGroup, int paramInt)
  {
    paramViewGroup = (d)super.a(paramViewGroup, paramInt);
    c.f(this.b)[paramInt] = paramViewGroup;
    return paramViewGroup;
  }
  
  public final int b()
  {
    return c.h(this.b).size();
  }
  
  public final CharSequence b(int paramInt)
  {
    return ((UserGroup)c.h(this.b).get(paramInt)).getName();
  }
  
  public final int c()
  {
    return -2;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\c\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */