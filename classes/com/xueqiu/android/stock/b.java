package com.xueqiu.android.stock;

import android.support.v4.a.i;
import android.support.v4.a.q;
import android.support.v4.a.v;

final class b
  extends v
{
  public b(FinancialDataActivity paramFinancialDataActivity, q paramq)
  {
    super(paramq);
  }
  
  public final i a(int paramInt)
  {
    return FinancialDataActivity.a(this.b)[(paramInt % FinancialDataActivity.a(this.b).length)];
  }
  
  public final int b()
  {
    return FinancialDataActivity.b(this.b).length;
  }
  
  public final CharSequence b(int paramInt)
  {
    return FinancialDataActivity.b(this.b)[(paramInt % FinancialDataActivity.b(this.b).length)];
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */