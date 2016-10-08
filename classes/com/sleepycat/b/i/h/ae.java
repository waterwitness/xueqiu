package com.sleepycat.b.i.h;

import com.sleepycat.b.aa;

public final class ae
  extends Exception
{
  public final ac a;
  final String b;
  
  static
  {
    if (!x.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      c = bool;
      return;
    }
  }
  
  ae(String paramString, ac paramac)
  {
    if ((!c) && (paramac == ac.a)) {
      throw new AssertionError();
    }
    this.a = paramac;
    this.b = paramString;
  }
  
  public final String getMessage()
  {
    switch (x.1.b[this.a.ordinal()])
    {
    default: 
      throw aa.c("Unexpected response:" + this.a + " for service:" + this.b);
    case 1: 
      return "Bad message format, for service:" + this.b;
    case 2: 
      return "Unknown service request:" + this.b;
    }
    return "Service was busy";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\h\ae.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */