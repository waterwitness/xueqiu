package com.nhaarman.listviewanimations.itemmanipulation.a;

import android.util.Pair;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

final class b
  extends com.c.a.c
{
  private final int b;
  
  b(a parama, int paramInt)
  {
    this.b = paramInt;
  }
  
  public final void a(com.c.a.a parama)
  {
    parama = a.a(this.a);
    int j = this.b;
    Iterator localIterator1 = parama.b.iterator();
    int i = 0;
    while ((localIterator1.hasNext()) && (i == 0)) {
      if (((AtomicInteger)localIterator1.next()).get() == j)
      {
        localIterator1.remove();
        i = 1;
      }
    }
    if (parama.b.isEmpty())
    {
      localIterator1 = parama.c.iterator();
      while (localIterator1.hasNext())
      {
        Pair localPair = (Pair)localIterator1.next();
        Iterator localIterator2 = parama.b.iterator();
        while (localIterator2.hasNext())
        {
          AtomicInteger localAtomicInteger = (AtomicInteger)localIterator2.next();
          if (localAtomicInteger.intValue() >= ((Integer)localPair.first).intValue()) {
            localAtomicInteger.incrementAndGet();
          }
        }
        parama.b.add(new AtomicInteger(((Integer)localPair.first).intValue()));
        parama.a.a(((Integer)localPair.first).intValue(), localPair.second);
      }
      parama.c.clear();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\nhaarman\listviewanimations\itemmanipulation\a\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */