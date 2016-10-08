package com.sleepycat.b.i.c;

import com.sleepycat.b.b.b;
import com.sleepycat.b.b.d;
import com.sleepycat.b.c.m;
import com.sleepycat.b.z;

public final class o
  extends m
{
  final boolean d;
  
  public o(z paramz)
  {
    super(paramz);
    if (!paramz.c()) {
      throw new IllegalArgumentException("A replicated environment must be transactional");
    }
    if (Boolean.parseBoolean(paramz.a(d.R.a))) {
      throw new IllegalArgumentException("A replicated environment must not log to memory");
    }
    paramz = this.a;
    throw new NullPointerException();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */