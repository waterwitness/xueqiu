package com.sleepycat.b.i.g.a;

import com.sleepycat.b.e;
import com.sleepycat.b.i;
import com.sleepycat.b.m;
import java.util.Iterator;
import java.util.NoSuchElementException;

final class c
  implements Iterator<a>
{
  private a b;
  private e c;
  private final i d;
  private m e;
  private m f;
  private boolean g;
  private int h = 0;
  private final int i;
  
  public c(b paramb, i parami)
  {
    this.i = b.a(paramb).a;
    this.b = null;
    this.g = true;
    this.d = parami;
    a();
  }
  
  private a a()
  {
    if (!this.g) {
      throw new NoSuchElementException();
    }
    this.c = this.d.a(null, null);
    a locala;
    if (this.e == null)
    {
      this.e = new m();
      this.f = new m();
      locala = this.b;
      int j = this.h;
      this.h = (j + 1);
      this.b = h.a(j, this.c, this.i);
      if (this.b.b != 0) {
        break label134;
      }
      this.g = false;
    }
    for (;;)
    {
      this.c.close();
      return locala;
      this.c.g(this.e, this.f, null);
      break;
      label134:
      this.c.b(this.e, this.f);
    }
  }
  
  protected final void finalize()
  {
    try
    {
      this.c.close();
      return;
    }
    finally
    {
      super.finalize();
    }
  }
  
  public final boolean hasNext()
  {
    return this.g;
  }
  
  public final void remove() {}
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\g\a\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */