package com.sleepycat.b.h;

import com.sleepycat.b.aa;
import com.sleepycat.b.c.ac;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.g.m;
import com.sleepycat.b.p.j;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class p
{
  final ad a;
  long b;
  boolean c;
  final Set<Long> d;
  List<Long> e;
  r f;
  final List<r> g;
  
  p(ad paramad)
  {
    this.a = paramad;
    this.g = new ArrayList();
    this.b = -1L;
    this.d = new HashSet();
    this.e = new ArrayList();
  }
  
  public static void a(ad paramad, List<Long> paramList)
  {
    HashSet localHashSet = new HashSet();
    a(paramad, paramList, localHashSet);
    paramad.x.a(localHashSet);
  }
  
  static void a(ad paramad, List<Long> paramList, Set<Long> paramSet)
  {
    if (paramList.size() == 0) {
      return;
    }
    m localm = paramad.x;
    Collections.sort(paramList);
    paramad = new ArrayList();
    Iterator localIterator = paramList.iterator();
    long l2;
    for (long l1 = -1L; localIterator.hasNext(); l1 = l2)
    {
      Long localLong = (Long)localIterator.next();
      paramList = paramad;
      l2 = l1;
      if (j.d(localLong.longValue()) != l1)
      {
        localm.a(l1, paramad);
        l2 = j.d(localLong.longValue());
        paramSet.add(Long.valueOf(l2));
        paramList = new ArrayList();
      }
      paramList.add(localLong);
      paramad = paramList;
    }
    localm.a(l1, paramad);
  }
  
  final void a(long paramLong)
  {
    if (!this.c) {
      throw new aa(this.a, ac.B, "Saw entry at " + j.h(paramLong) + "Should only be building the tracker on the first pass");
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = this.g.iterator();
    while (localIterator.hasNext()) {
      localStringBuilder.append((r)localIterator.next()).append("\n");
    }
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\h\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */