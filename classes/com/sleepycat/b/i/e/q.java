package com.sleepycat.b.i.e;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.m;
import com.sleepycat.b.i.c.an;
import com.sleepycat.b.p.j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class q
{
  public long a = j.a(0L, 0);
  public boolean b;
  public boolean c;
  final List<r> d;
  final int e;
  r f;
  r g;
  public int h;
  
  public q(ad paramad)
  {
    this.e = paramad.u.a(an.Z);
    this.d = new ArrayList();
    this.h = 0;
  }
  
  public final String a()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = this.d.iterator();
    while (localIterator.hasNext())
    {
      localStringBuilder.append((r)localIterator.next());
      localStringBuilder.append("\n");
    }
    return localStringBuilder.toString();
  }
  
  public final String b()
  {
    if (this.h == 0) {
      return " uncommitted operations";
    }
    return " " + this.h + " commits to the earliest point indicated by transaction " + this.f;
  }
  
  public final String toString()
  {
    return "matchpointLSN=" + j.h(this.a) + " passedCkpt=" + this.b + " passedTxnLimit=" + this.e + " passedTxns=" + this.d + " earliestTxn=" + this.f + " penultimateTxn=" + this.g + " numPassedCommits=" + this.h + " passedSkippedGap=" + this.c;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\e\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */