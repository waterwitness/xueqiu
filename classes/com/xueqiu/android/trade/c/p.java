package com.xueqiu.android.trade.c;

import android.support.v4.a.i;
import android.support.v4.a.q;
import android.support.v4.a.v;
import android.support.v4.view.ViewPager;
import android.view.ViewGroup;
import com.xueqiu.android.trade.model.TradeAccount;
import java.util.List;

final class p
  extends v
{
  List<TradeAccount> b = null;
  
  public p(o paramo, q paramq)
  {
    super(paramq);
  }
  
  public final i a(int paramInt)
  {
    TradeAccount localTradeAccount = (TradeAccount)this.b.get(paramInt);
    if (o.b(this.c).getCurrentItem() == paramInt) {}
    for (boolean bool = true;; bool = false) {
      return s.a(localTradeAccount, bool);
    }
  }
  
  public final Object a(ViewGroup paramViewGroup, int paramInt)
  {
    paramViewGroup = (s)super.a(paramViewGroup, paramInt);
    o.g(this.c)[paramInt] = paramViewGroup;
    return paramViewGroup;
  }
  
  public final int b()
  {
    return this.b.size();
  }
  
  public final int c()
  {
    return -2;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\c\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */