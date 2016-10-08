package com.sleepycat.b.i.i;

import com.sleepycat.b.g.al;
import java.util.concurrent.CountDownLatch;

public final class i
  extends CountDownLatch
{
  public al a = null;
  boolean b = false;
  
  public i()
  {
    super(1);
  }
  
  public final void a()
  {
    this.b = true;
    countDown();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\i\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */