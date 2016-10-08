package com.xueqiu.android.stock;

import android.support.v4.a.i;
import android.support.v4.a.q;
import android.support.v4.a.v;
import java.util.List;

final class j
  extends v
{
  public j(PrivateFundActivity paramPrivateFundActivity, q paramq)
  {
    super(paramq);
  }
  
  public final i a(int paramInt)
  {
    return (i)PrivateFundActivity.u(this.b).get(paramInt % PrivateFundActivity.u(this.b).size());
  }
  
  public final int b()
  {
    return PrivateFundActivity.u(this.b).size();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */