package com.sleepycat.b.n;

import com.sleepycat.b.bp;
import com.sleepycat.b.c.ad;

final class aa
  extends bp
{
  protected aa(z paramz)
  {
    super(paramz.i.A(), paramz);
  }
  
  public final void a()
  {
    try
    {
      com.sleepycat.b.aa.c("abort() not permitted on an auto transaction");
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void b()
  {
    try
    {
      com.sleepycat.b.aa.c("commit() not permitted on an auto transaction");
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\n\aa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */