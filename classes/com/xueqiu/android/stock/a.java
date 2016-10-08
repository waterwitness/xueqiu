package com.xueqiu.android.stock;

import android.support.v4.a.i;
import android.support.v4.a.q;
import android.support.v4.a.v;

final class a
  extends v
{
  public a(F10Activity paramF10Activity, q paramq)
  {
    super(paramq);
  }
  
  public final i a(int paramInt)
  {
    return F10Activity.a(this.b)[(paramInt % F10Activity.a(this.b).length)];
  }
  
  public final int b()
  {
    return F10Activity.b(this.b).length;
  }
  
  public final CharSequence b(int paramInt)
  {
    return F10Activity.b(this.b)[(paramInt % F10Activity.b(this.b).length)];
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */