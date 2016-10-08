package com.sleepycat.b.i.e;

import com.sleepycat.b.i.c.b.aa;
import com.sleepycat.b.i.c.b.ab;
import com.sleepycat.b.i.h.e;
import java.nio.ByteBuffer;

public class ar
  extends ad
{
  final long a;
  final long c;
  long d = -1L;
  long e = -1L;
  
  static
  {
    if (!t.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      f = bool;
      return;
    }
  }
  
  public ar(t paramt, aq paramaq)
  {
    super(paramt);
    this.a = aq.a(paramaq);
    this.c = aq.b(paramaq);
  }
  
  public final e a()
  {
    return t.k;
  }
  
  public final ByteBuffer b()
  {
    this.d = t.b(this.g).n.a();
    return a(new Object[] { Long.valueOf(this.a), Long.valueOf(this.c), Long.valueOf(this.d) });
  }
  
  public final long c()
  {
    if ((!f) && (this.e == -1L)) {
      throw new AssertionError();
    }
    return this.e - this.a - (this.d - this.c);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\e\ar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */