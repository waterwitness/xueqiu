package com.xueqiu.android.trade.c;

import android.support.v4.a.i;
import android.support.v4.a.q;
import android.support.v4.a.v;
import android.view.ViewGroup;
import com.xueqiu.android.trade.model.TradeAccount;
import java.util.ArrayList;
import java.util.List;

final class k
  extends v
{
  List<TradeAccount> b = null;
  
  public k(q paramq, List<TradeAccount> paramList)
  {
    super(paramList);
    List localList;
    this.b = localList;
  }
  
  public final i a(int paramInt)
  {
    return l.a((TradeAccount)this.b.get(paramInt), j.a(this.c, paramInt));
  }
  
  public final Object a(ViewGroup paramViewGroup, int paramInt)
  {
    paramViewGroup = (l)super.a(paramViewGroup, paramInt);
    if (paramInt >= j.d(this.c).size()) {
      j.d(this.c).add(paramViewGroup);
    }
    for (;;)
    {
      paramViewGroup.a = j.a(this.c, paramInt);
      paramViewGroup.b = ((TradeAccount)this.b.get(paramInt));
      if (paramViewGroup.x)
      {
        paramViewGroup.u();
        paramViewGroup.C();
        paramViewGroup.D();
        paramViewGroup.F();
      }
      if (j.a(this.c, paramInt)) {
        j.a(this.c, paramViewGroup);
      }
      return paramViewGroup;
      j.d(this.c).set(paramInt, paramViewGroup);
    }
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


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\c\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */