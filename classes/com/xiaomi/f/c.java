package com.xiaomi.f;

import com.xiaomi.e.t;
import com.xiaomi.push.d.b;
import com.xiaomi.push.service.bd;
import java.util.List;

final class c
  extends com.xiaomi.push.service.f
{
  c(a parama)
  {
    super(4);
  }
  
  public final void a()
  {
    a locala = this.a;
    bd localbd = locala.b;
    for (;;)
    {
      synchronized (localbd.o)
      {
        localbd.o.remove(locala);
        if ((locala.f) && (locala.e != 11))
        {
          ??? = h.a.b();
          switch (b.a[locala.d.ordinal()])
          {
          default: 
            if (??? != null)
            {
              ((b)???).e = locala.c.c();
              ((b)???).h = locala.b.b;
              ((b)???).c = 1;
            }
            break;
          }
        }
      }
      try
      {
        ((b)???).a((byte)Integer.parseInt(locala.b.h));
        label146:
        h.a.a((b)???);
        return;
        localObject3 = finally;
        throw ((Throwable)localObject3);
        if (locala.e == 17)
        {
          ((b)???).b = com.xiaomi.push.d.a.H.ac;
          continue;
        }
        if (locala.e == 21) {
          ((b)???).b = com.xiaomi.push.d.a.O.ac;
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
        try
        {
          Object localObject5 = h.a.d.c;
          d.a((Exception)localObject5);
          Object localObject4 = localObject5;
          if ((localObject5 instanceof t))
          {
            localObject4 = localObject5;
            if (((t)localObject5).a != null) {
              localObject4 = ((t)localObject5).a;
            }
          }
          e locale = new e();
          localObject5 = ((Throwable)localObject4).getMessage();
          if (((Throwable)localObject4).getCause() != null) {
            localObject5 = ((Throwable)localObject4).getCause().getMessage();
          }
          int i = com.xiaomi.e.d.a((Throwable)localObject4);
          localObject4 = localObject4.getClass().getSimpleName() + ":" + (String)localObject5;
          switch (i)
          {
          }
          for (;;)
          {
            locale.a = com.xiaomi.push.d.a.L;
            for (;;)
            {
              if ((locale.a == com.xiaomi.push.d.a.K) || (locale.a == com.xiaomi.push.d.a.L) || (locale.a == com.xiaomi.push.d.a.N)) {
                locale.b = ((String)localObject4);
              }
              ((b)???).b = locale.a.ac;
              ((b)???).g = locale.b;
              break;
              locale.a = com.xiaomi.push.d.a.H;
              continue;
              locale.a = com.xiaomi.push.d.a.I;
              continue;
              locale.a = com.xiaomi.push.d.a.J;
              continue;
              locale.a = com.xiaomi.push.d.a.K;
              continue;
              locale.a = com.xiaomi.push.d.a.N;
              if (((String)localObject5).startsWith("Terminal binding condition encountered: item-not-found")) {
                locale.a = com.xiaomi.push.d.a.M;
              }
            }
            break;
            ((b)???).b = com.xiaomi.push.d.a.D.ac;
            break;
            localNumberFormatException = localNumberFormatException;
            break label146;
          }
        }
        catch (NullPointerException localNullPointerException)
        {
          Object localObject2 = null;
        }
      }
    }
  }
  
  public final String b()
  {
    return "Handling bind stats";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\f\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */