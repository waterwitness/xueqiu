package com.sleepycat.b.j;

import com.sleepycat.b.ae;
import com.sleepycat.b.bn;
import com.sleepycat.b.c.ab;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.m;
import com.sleepycat.b.p.af;
import com.sleepycat.b.p.ag;
import com.sleepycat.b.p.ai;
import com.sleepycat.b.p.an;
import com.sleepycat.b.p.w;
import com.sleepycat.d.a;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.logging.Logger;

public final class b
  extends com.sleepycat.b.p.h
  implements ab
{
  private ad a;
  private final bn b;
  private a c = null;
  private final StringBuffer d = new StringBuffer();
  private String e = null;
  private Integer f = null;
  private final SortedSet<String> g;
  private final com.sleepycat.b.h h;
  private String[] i = null;
  private boolean j;
  private final Logger k = w.a(getClass());
  private d t;
  private Exception u = null;
  
  public b(ad paramad, String paramString, long paramLong, com.sleepycat.b.h paramh, SortedSet<String> paramSortedSet, d paramd)
  {
    super(paramLong, paramString, paramad);
    paramad.a(this);
    this.a = paramad;
    this.t = paramd;
    this.f = paramd.a();
    this.b = new bn();
    this.b.b = true;
    this.b.c = true;
    this.h = paramh;
    this.g = paramSortedSet;
    paramad = this.a.u.a(com.sleepycat.b.b.d.bw);
    this.j = this.a.u.a(com.sleepycat.b.b.d.bs);
    if ((paramad == null) || (paramad.equals(""))) {
      paramad = this.a.c;
    }
    try
    {
      for (;;)
      {
        this.c = new a(paramad, "je.stat", "csv", this.a.u.a(com.sleepycat.b.b.d.bu), this.a.u.a(com.sleepycat.b.b.d.bt));
        if (paramh == null) {
          break;
        }
        paramad = paramh.a();
        this.i = new String[paramad.length];
        int m = 0;
        while (m < paramad.length)
        {
          this.i[m] = ("Custom:" + paramad[m]);
          paramSortedSet.add(this.i[m]);
          m += 1;
        }
        paramad = new File(paramad);
      }
      return;
    }
    catch (IOException paramad)
    {
      throw new IllegalStateException(" Error accessing statistics capture file je.stat.csv IO Exception: " + paramad.getMessage());
    }
  }
  
  private void g()
  {
    for (;;)
    {
      Object localObject3;
      Object localObject4;
      String str;
      Object localObject5;
      try
      {
        if (this.j)
        {
          boolean bool = this.a.i();
          if (!bool) {}
        }
        else
        {
          return;
        }
        Map.Entry localEntry;
        try
        {
          Object localObject1 = this.t.b(this.b, this.f);
          localObject3 = new ArrayList(Arrays.asList(new ai[] { ((ae)localObject1).b, ((ae)localObject1).c, ((ae)localObject1).d, ((ae)localObject1).e, ((ae)localObject1).f, ((ae)localObject1).g, ((ae)localObject1).a, ((ae)localObject1).h }));
          if (this.a.I())
          {
            localObject1 = this.a.a(this.b, this.f);
            if (localObject1 != null) {
              ((Collection)localObject3).addAll((Collection)localObject1);
            }
          }
          localObject1 = new TreeMap();
          localObject3 = ((Collection)localObject3).iterator();
          if (!((Iterator)localObject3).hasNext()) {
            break label421;
          }
          localObject4 = (ai)((Iterator)localObject3).next();
          Iterator localIterator = Collections.unmodifiableMap(((ai)localObject4).b).entrySet().iterator();
          if (localIterator.hasNext())
          {
            localEntry = (Map.Entry)localIterator.next();
            str = (((ai)localObject4).a + ":" + ((ag)localEntry.getKey()).a).intern();
            localObject5 = ((af)localEntry.getValue()).c();
            if ((localObject5 instanceof Number)) {
              ((SortedMap)localObject1).put(str, Long.toString(((Number)localObject5).longValue()));
            }
          }
          else
          {
            continue;
          }
        }
        catch (IOException localIOException)
        {
          if (this.u == null) {
            w.b(this.k, this.a, "Error accessing statistics capture file je.stat.csv IO Exception: " + localIOException.getMessage());
          }
          this.u = localIOException;
        }
        if (!(localEntry.getValue() instanceof an)) {
          continue;
        }
      }
      finally {}
      if (localObject5 != null)
      {
        ((SortedMap)localObject2).put(str, (String)localObject5);
      }
      else
      {
        ((SortedMap)localObject2).put(str, " ");
        continue;
        label421:
        if (this.h != null)
        {
          localObject3 = this.h.b();
          int m = 0;
          while (m < localObject3.length)
          {
            ((SortedMap)localObject2).put(this.i[m], localObject3[m]);
            m += 1;
          }
        }
        if (this.e == null)
        {
          this.d.setLength(0);
          this.d.append("time");
          localObject3 = this.g.iterator();
          while (((Iterator)localObject3).hasNext())
          {
            localObject4 = (String)((Iterator)localObject3).next();
            this.d.append("," + (String)localObject4);
          }
          this.c.a(this.d.toString());
          this.e = this.d.toString();
        }
        this.d.setLength(0);
        this.d.append(h.a(System.currentTimeMillis()));
        localObject3 = this.g.iterator();
        while (((Iterator)localObject3).hasNext())
        {
          localObject4 = (String)((SortedMap)localObject2).get((String)((Iterator)localObject3).next());
          if (localObject4 != null) {
            this.d.append("," + (String)localObject4);
          } else {
            this.d.append(", ");
          }
        }
        this.c.b(this.d.toString());
        this.d.setLength(0);
        this.u = null;
      }
    }
  }
  
  protected final void b()
  {
    if (this.a.l()) {}
    while ((!this.j) || (this.a.i())) {
      return;
    }
    g();
  }
  
  public final void c()
  {
    try
    {
      if ((this.f != null) && (this.t != null))
      {
        this.t.a(this.f);
        this.f = null;
      }
      this.t = null;
      if (this.a != null) {
        this.a.b(this);
      }
      this.a = null;
      return;
    }
    finally {}
  }
  
  public final void c_()
  {
    super.c_();
    if ((!this.j) || (this.a.i())) {
      return;
    }
    g();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\j\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */