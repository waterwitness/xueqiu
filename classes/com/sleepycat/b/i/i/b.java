package com.sleepycat.b.i.i;

import com.sleepycat.b.g.ae;
import com.sleepycat.b.g.al;
import com.sleepycat.b.p.ai;
import com.sleepycat.b.p.au;
import com.sleepycat.b.p.z;
import java.lang.ref.SoftReference;
import java.util.concurrent.atomic.AtomicReference;

public final class b
{
  public final int a;
  private final int b;
  private volatile SoftReference<AtomicReference<al>[]> c = new SoftReference(null);
  private final z d;
  private final z e;
  
  b(int paramInt, ai paramai)
  {
    if (Integer.bitCount(paramInt) != 1) {
      throw new IllegalArgumentException("Bad cache size: " + paramInt + "; it must be a power of 2");
    }
    this.b = paramInt;
    this.a = (paramInt - 1);
    this.d = new z(paramai, l.a);
    this.e = new z(paramai, l.b);
  }
  
  final al a(au paramau)
  {
    al localal = (al)b()[((int)paramau.c & this.a)].get();
    if ((localal != null) && (localal.g.e.a(paramau)))
    {
      this.d.f();
      return localal;
    }
    this.e.f();
    return null;
  }
  
  final void a()
  {
    AtomicReference[] arrayOfAtomicReference = b();
    int j = arrayOfAtomicReference.length;
    int i = 0;
    while (i < j)
    {
      arrayOfAtomicReference[i].set(null);
      i += 1;
    }
  }
  
  public final AtomicReference<al>[] b()
  {
    AtomicReference[] arrayOfAtomicReference2 = (AtomicReference[])this.c.get();
    AtomicReference[] arrayOfAtomicReference1 = arrayOfAtomicReference2;
    if (arrayOfAtomicReference2 == null)
    {
      arrayOfAtomicReference1 = new AtomicReference[this.b];
      int i = 0;
      while (i < arrayOfAtomicReference1.length)
      {
        arrayOfAtomicReference1[i] = new AtomicReference();
        i += 1;
      }
      this.c = new SoftReference(arrayOfAtomicReference1);
    }
    return arrayOfAtomicReference1;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\i\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */