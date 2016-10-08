package com.sleepycat.b.f;

import java.util.concurrent.locks.ReentrantLock;

final class b
  extends ReentrantLock
{
  b()
  {
    super(false);
  }
  
  protected final Thread getOwner()
  {
    return super.getOwner();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\f\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */