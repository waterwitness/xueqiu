package com.sleepycat.b;

import com.sleepycat.b.c.ac;
import com.sleepycat.b.c.ad;

public final class ab
  extends aa
{
  public ab(ad paramad, String paramString)
  {
    super(paramad, ac.a, paramString);
  }
  
  private ab(String paramString, ab paramab)
  {
    super(paramString, paramab);
  }
  
  public final aa b(String paramString)
  {
    return new ab(paramString, this);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\ab.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */