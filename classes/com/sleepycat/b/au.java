package com.sleepycat.b;

import com.sleepycat.b.n.q;

public abstract class au
  extends n
{
  static
  {
    if (!au.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      d = bool;
      return;
    }
  }
  
  public au(q paramq, boolean paramBoolean, String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
    if (paramBoolean)
    {
      if ((!d) && (paramq == null)) {
        throw new AssertionError();
      }
      paramq.a(this);
    }
  }
  
  public au(String paramString, au paramau)
  {
    super(paramString, paramau);
  }
  
  public abstract au b(String paramString);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\au.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */