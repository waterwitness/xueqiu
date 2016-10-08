package com.sleepycat.b.p;

import com.sleepycat.b.c.ad;
import java.util.concurrent.ThreadFactory;
import java.util.logging.Logger;

public final class al
  implements ThreadFactory
{
  private final String a;
  private final Logger b;
  private final ad c;
  
  public al(ad paramad, String paramString, Logger paramLogger)
  {
    this.a = paramString;
    this.b = paramLogger;
    this.c = paramad;
  }
  
  public al(String paramString, Logger paramLogger)
  {
    this(null, paramString, paramLogger);
  }
  
  public final Thread newThread(Runnable paramRunnable)
  {
    return new am(this.c, paramRunnable, this.a, this.b);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\p\al.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */