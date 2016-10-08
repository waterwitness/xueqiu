package com.sleepycat.b.i.e;

import com.sleepycat.b.aa;
import com.sleepycat.b.c.ac;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.g.ae;
import com.sleepycat.b.g.al;
import com.sleepycat.b.g.c;
import com.sleepycat.b.g.u;
import com.sleepycat.b.i.i.f;
import com.sleepycat.b.i.i.h;
import com.sleepycat.b.i.i.k;
import com.sleepycat.b.p.au;
import com.sleepycat.b.p.j;
import java.io.FileNotFoundException;

public class a
  extends bb
{
  final h a;
  boolean b = false;
  private long x = 0L;
  private final boolean y;
  
  static
  {
    if (!a.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      c = bool;
      return;
    }
  }
  
  public a(ad paramad, f paramf, int paramInt)
  {
    this(paramad, paramf, paramInt, (byte)0);
  }
  
  private a(ad paramad, f paramf, int paramInt, byte paramByte)
  {
    super(paramad, paramf, true, -1L, paramInt, -1L);
    this.a = new h(paramf);
    this.y = false;
  }
  
  protected final u a(int paramInt)
  {
    return new b(paramInt, this.e);
  }
  
  public final s a(au paramau, int paramInt)
  {
    if ((!c) && (!this.b)) {
      throw new AssertionError();
    }
    al localal;
    try
    {
      localal = this.d.a(paramau, paramInt);
      this.t = paramau;
      if ((localal == null) || (this.y)) {
        break label101;
      }
      if ((!c) && (!localal.g.e.a(paramau))) {
        throw new AssertionError();
      }
    }
    catch (k paramau)
    {
      return null;
    }
    this.x += 1L;
    return new s(this.e, localal);
    label101:
    if (this.x > 0L)
    {
      long l2 = this.a.a(paramau, true);
      l1 = l2;
      if (j.b(c(), l2) < 0) {}
    }
    for (long l1 = -1L;; l1 = this.a.a(paramau, false))
    {
      this.x = 0L;
      try
      {
        b(l1);
        if (!e()) {
          break;
        }
        return this.u;
      }
      catch (c paramau)
      {
        throw new aa(this.e, ac.j, "trying to reposition FeederReader to " + j.h(l1) + " prevWindow=" + this.g, paramau);
      }
      catch (FileNotFoundException paramau)
      {
        throw aa.a("Trying to reposition FeederReader to " + j.h(l1) + " prevWindow=" + this.g, paramau);
      }
    }
    throw aa.a(this.e, "VLSN=" + paramau + " repositionLsn = " + j.h(l1) + this.g);
  }
  
  protected final boolean a()
  {
    this.v += 1L;
    if (this.k.i) {}
    int i;
    do
    {
      do
      {
        return false;
      } while (!g());
      i = this.k.e.b(this.t);
      if (i > 0) {
        throw aa.c("want to read " + this.t + " but reader at " + this.k.e);
      }
    } while (i != 0);
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\e\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */