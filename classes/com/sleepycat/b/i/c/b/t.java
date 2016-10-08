package com.sleepycat.b.i.c.b;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.g.am;
import com.sleepycat.b.p.au;
import java.util.TimerTask;

final class t
  extends TimerTask
{
  private final aa a;
  private au b;
  
  public t(aa paramaa)
  {
    this.a = paramaa;
    this.b = paramaa.g();
  }
  
  public final void run()
  {
    au localau = this.a.g();
    if (localau == null) {}
    while ((this.b != null) && (localau.b(this.b) != 1)) {
      return;
    }
    this.b = localau;
    this.a.i.w.a();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\b\t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */