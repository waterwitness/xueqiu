package com.sleepycat.b.i.c.b;

import com.sleepycat.b.bn;
import com.sleepycat.b.i.e.t;
import com.sleepycat.b.i.h.l;
import com.sleepycat.b.i.h.p;
import com.sleepycat.b.p.ai;
import java.io.PrintStream;

public final class ao
{
  private static ap a = ap.a;
  private static long b = 0L;
  
  public static ag a(aa paramaa, ac paramac)
  {
    switch (2.a[a.ordinal()])
    {
    default: 
      throw com.sleepycat.b.aa.c("unknown type passed to makeReplica: " + a);
    case 1: 
      return new ag(paramaa, paramac);
    }
    new ag(paramaa, paramac)
    {
      protected final void b()
      {
        long l1 = System.currentTimeMillis();
        long l2 = 0L;
        for (;;)
        {
          long l3 = l2 + 1L;
          this.e.a(this.c.a());
          l2 = l3;
          if (ao.a() > 0L)
          {
            l2 = l3;
            if (l3 % ao.a() == 0L)
            {
              ai localai = this.e.a(bn.a);
              l2 = localai.c(l.c);
              long l4 = localai.c(l.d);
              l1 = System.currentTimeMillis() - l1;
              long l5 = l2 / l1;
              System.out.println(" Bytes Read: " + l2 + " Messages Read: " + l4 + " BytesPerMSec: " + l5 + " MS: " + l1);
              l1 = System.currentTimeMillis();
              l2 = l3;
            }
          }
        }
      }
    };
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\b\ao.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */