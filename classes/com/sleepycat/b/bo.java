package com.sleepycat.b;

import com.sleepycat.b.c.ac;
import com.sleepycat.b.c.ad;

public final class bo
  extends aa
{
  public bo(ad paramad, String paramString)
  {
    super(paramad, ac.x, paramString);
  }
  
  public bo(ad paramad, String paramString, Throwable paramThrowable)
  {
    super(paramad, ac.x, paramString, paramThrowable);
  }
  
  public bo(ad paramad, Throwable paramThrowable)
  {
    super(paramad, ac.x, paramThrowable);
  }
  
  private bo(String paramString, bo parambo)
  {
    super(paramString, parambo);
  }
  
  public final aa b(String paramString)
  {
    return new bo(paramString, this);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\bo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */