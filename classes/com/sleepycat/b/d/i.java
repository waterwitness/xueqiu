package com.sleepycat.b.d;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.h;
import com.sleepycat.b.c.p;
import java.util.HashMap;
import java.util.Map;

public class i
  extends b
{
  public i(ad paramad)
  {
    super(paramad);
  }
  
  final n a()
  {
    return new j(this.a);
  }
  
  final d d()
  {
    new d()
    {
      final Map<h, com.sleepycat.b.c.i> a = new HashMap();
      int b = 0;
      
      static
      {
        if (!i.class.desiredAssertionStatus()) {}
        for (boolean bool = true;; bool = false)
        {
          c = bool;
          return;
        }
      }
      
      public final com.sleepycat.b.c.i a(ad paramAnonymousad, h paramAnonymoush)
      {
        if ((!c) && (paramAnonymousad != i.this.a)) {
          throw new AssertionError();
        }
        this.b += 1;
        if (this.b % i.this.e == 0) {
          a();
        }
        return paramAnonymousad.q.a(paramAnonymoush, -1L, this.a);
      }
      
      public final void a()
      {
        i.this.a.q.a(this.a);
        this.a.clear();
      }
    };
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\d\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */