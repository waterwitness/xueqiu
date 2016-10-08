package com.xueqiu.android.stock;

import android.support.v4.a.i;
import android.support.v4.a.q;
import android.support.v4.a.v;

final class p
  extends v
{
  public p(StockMoreInfoActivity paramStockMoreInfoActivity, q paramq)
  {
    super(paramq);
  }
  
  public final i a(int paramInt)
  {
    return StockMoreInfoActivity.a(this.b)[(paramInt % StockMoreInfoActivity.a(this.b).length)];
  }
  
  public final int b()
  {
    return StockMoreInfoActivity.c(this.b).length;
  }
  
  public final CharSequence b(int paramInt)
  {
    return StockMoreInfoActivity.c(this.b)[(paramInt % StockMoreInfoActivity.c(this.b).length)];
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */