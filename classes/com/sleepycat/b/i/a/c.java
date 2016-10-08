package com.sleepycat.b.i.a;

import com.sleepycat.b.i.c.aj;
import com.sleepycat.b.i.c.b.aa;
import com.sleepycat.b.i.c.t;
import com.sleepycat.b.p.w;
import java.util.logging.Logger;

public final class c
  implements b
{
  private final aj a;
  private final Logger b;
  
  c(aj paramaj)
  {
    this.a = paramaj;
    this.b = w.a(getClass());
  }
  
  private boolean c()
  {
    return (this.a != null) && (this.a.ah()) && (this.a.am.m.h() == 2);
  }
  
  public final boolean a()
  {
    return c();
  }
  
  public final boolean b()
  {
    if (c())
    {
      w.c(this.b, this.a, "Primary activated; quorum is one.");
      return true;
    }
    w.d(this.b, this.a, "Attempted unsuccessfully to activate designated primary");
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\a\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */