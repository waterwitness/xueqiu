package com.xueqiu.android.trade.d;

import com.android.volley.y;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.am;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.c;
import com.xueqiu.android.trade.b.n;
import com.xueqiu.android.trade.b.o;
import com.xueqiu.android.trade.model.TradeNotification;
import java.util.ArrayList;

public final class h
  implements n
{
  o a;
  
  public h(o paramo)
  {
    this.a = paramo;
  }
  
  public final void a() {}
  
  public final void a(long paramLong)
  {
    p local1 = new p((c)this.a)
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy);
        h.this.a.c();
      }
    };
    if (paramLong > 0L)
    {
      com.xueqiu.android.base.q.a().b().m.a(paramLong, local1);
      return;
    }
    com.xueqiu.android.base.q.a().b().m.a(-1L, local1);
  }
  
  public final void b() {}
  
  public final void c()
  {
    a(-1L);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\d\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */