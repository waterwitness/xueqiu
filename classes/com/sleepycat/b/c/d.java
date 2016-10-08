package com.sleepycat.b.c;

import com.sleepycat.b.n.am;
import com.sleepycat.b.n.m;

public final class d
{
  long a;
  boolean b;
  boolean c;
  boolean d;
  m e;
  
  public final boolean a()
  {
    return (!this.b) && (!this.c);
  }
  
  public final am b()
  {
    boolean bool;
    if (!a())
    {
      bool = true;
      if (this.e == null) {
        break label71;
      }
      this.e.a(this.a, bool, false);
    }
    label71:
    for (am localam = this.e.b;; localam = null)
    {
      if (localam == null)
      {
        localam = new am();
        localam.a = this.a;
        localam.b = bool;
        return localam;
        bool = false;
        break;
      }
      return localam;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\c\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */