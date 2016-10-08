package com.sleepycat.b.k.a;

import com.sleepycat.b.aa;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.p.au;
import com.sleepycat.b.p.j;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.StringTokenizer;

public class c
{
  public final ad a;
  public final Map<String, Long> b = new HashMap();
  public long c = 0L;
  
  static
  {
    if (!c.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      d = bool;
      return;
    }
  }
  
  public c(ad paramad)
  {
    this.a = paramad;
  }
  
  public final int a(long paramLong1, long paramLong2)
  {
    if (this.a.I()) {
      return new au(paramLong1).b(new au(paramLong2));
    }
    return j.b(paramLong1, paramLong2);
  }
  
  public final long a()
  {
    try
    {
      long l = this.c;
      return l;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final void a(String paramString, d paramd)
  {
    int i;
    for (;;)
    {
      try
      {
        l = paramd.a;
        if (this.b.size() == 0)
        {
          i = 1;
          if (a(l, this.c) >= 0) {
            break;
          }
          paramString = new StringTokenizer(paramString, "-");
          paramd = this.a;
          StringBuilder localStringBuilder = new StringBuilder("Invalid behavior, Processor: ").append(paramString.nextToken()).append(", SyncDataSet: ").append(paramString.nextToken()).append(" is reading log entries on a  protected file at ");
          if (!this.a.I()) {
            break label138;
          }
          paramString = "VLSN: " + l;
          throw aa.a(paramd, paramString);
        }
      }
      finally {}
      i = 0;
      continue;
      label138:
      paramString = "lsn: " + j.h(l);
    }
    if (paramd.b) {
      this.b.remove(paramString);
    }
    while (this.b.size() == 0)
    {
      this.c = 0L;
      return;
      this.b.put(paramString, Long.valueOf(l));
    }
    paramString = this.b.entrySet().iterator();
    long l = Long.MAX_VALUE;
    for (;;)
    {
      if (paramString.hasNext())
      {
        paramd = (Map.Entry)paramString.next();
        if (a(l, ((Long)paramd.getValue()).longValue()) > 0) {
          l = ((Long)paramd.getValue()).longValue();
        }
      }
      else
      {
        if ((!d) && (l == Long.MAX_VALUE)) {
          throw new AssertionError();
        }
        this.c = l;
        if ((!this.a.R()) || (i == 0)) {
          break;
        }
        this.a.d();
        break;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\k\a\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */