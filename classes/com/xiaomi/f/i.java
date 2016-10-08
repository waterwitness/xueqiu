package com.xiaomi.f;

import com.xiaomi.push.b.d;
import com.xiaomi.push.service.u;

final class i
  extends u
{
  i(g paramg) {}
  
  public final void a(d paramd)
  {
    int i = 604800000;
    g localg;
    int j;
    if (paramd.e)
    {
      localg = h.a;
      j = paramd.f;
      if (j > 0)
      {
        localg.a = true;
        j *= 1000;
        if (j <= 604800000) {
          break label75;
        }
      }
    }
    for (;;)
    {
      if (localg.b != i)
      {
        localg.b = i;
        if (localg.c == 0L) {
          localg.c = System.currentTimeMillis();
        }
      }
      return;
      label75:
      i = j;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\f\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */