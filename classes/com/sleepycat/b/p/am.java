package com.sleepycat.b.p;

import com.sleepycat.b.c.ad;
import java.util.logging.Logger;

final class am
  extends aj
{
  private final Logger a;
  
  am(ad paramad, Runnable paramRunnable, String paramString, Logger paramLogger)
  {
    super(paramad, null, paramRunnable, paramString);
    this.a = paramLogger;
  }
  
  protected final Logger a()
  {
    return this.a;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\p\am.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */