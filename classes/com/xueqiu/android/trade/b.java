package com.xueqiu.android.trade;

import com.xueqiu.android.base.h;
import com.xueqiu.android.base.i;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.stockchart.b.a;

final class b
  implements a
{
  private b(OrderFullActivity paramOrderFullActivity) {}
  
  public final void a() {}
  
  public final void a(int paramInt)
  {
    if (paramInt == 2)
    {
      localSNBEvent = new SNBEvent(1517, 6);
      i.a().a(localSNBEvent);
      return;
    }
    SNBEvent localSNBEvent = new SNBEvent(1517, 7);
    i.a().a(localSNBEvent);
  }
  
  public final void a(String paramString) {}
  
  public final void a(String paramString1, String paramString2, int paramInt) {}
  
  public final void b(String paramString) {}
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */