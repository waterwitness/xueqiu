package com.sleepycat.b.c;

import com.sleepycat.b.aa;
import com.sleepycat.b.l.j;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;

final class am
  implements Iterator<j>
{
  private final Iterator<j> b;
  private j c;
  private j d;
  
  private am(al paramal)
  {
    this.b = al.a(paramal).keySet().iterator();
  }
  
  private boolean a()
  {
    while (this.b.hasNext())
    {
      j localj = (j)this.b.next();
      if (localj.l)
      {
        this.c = localj;
        return true;
      }
    }
    return false;
  }
  
  public final boolean hasNext()
  {
    if (this.c != null) {
      return true;
    }
    return a();
  }
  
  public final void remove()
  {
    if (this.d != null)
    {
      al.a(this.a, this.d);
      this.d = null;
      return;
    }
    throw aa.b();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\c\am.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */