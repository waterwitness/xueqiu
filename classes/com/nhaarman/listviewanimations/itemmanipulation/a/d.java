package com.nhaarman.listviewanimations.itemmanipulation.a;

import android.support.annotation.NonNull;
import android.util.Pair;
import com.nhaarman.listviewanimations.a.c;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public final class d<T>
{
  @NonNull
  final c<T> a;
  @NonNull
  final Collection<AtomicInteger> b = new HashSet();
  @NonNull
  final List<Pair<Integer, T>> c = new ArrayList();
  
  public d(@NonNull c<T> paramc)
  {
    this.a = paramc;
  }
  
  public final void a(@NonNull Collection<Pair<Integer, T>> paramCollection)
  {
    if ((this.b.isEmpty()) && (this.c.isEmpty())) {
      paramCollection = paramCollection.iterator();
    }
    while (paramCollection.hasNext())
    {
      Pair localPair = (Pair)paramCollection.next();
      Iterator localIterator = this.b.iterator();
      while (localIterator.hasNext())
      {
        AtomicInteger localAtomicInteger = (AtomicInteger)localIterator.next();
        if (localAtomicInteger.intValue() >= ((Integer)localPair.first).intValue()) {
          localAtomicInteger.incrementAndGet();
        }
      }
      this.b.add(new AtomicInteger(((Integer)localPair.first).intValue()));
      this.a.a(((Integer)localPair.first).intValue(), localPair.second);
      continue;
      this.c.addAll(paramCollection);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\nhaarman\listviewanimations\itemmanipulation\a\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */