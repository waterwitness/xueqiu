package com.sleepycat.b.j;

import com.sleepycat.b.aa;
import com.sleepycat.b.am;
import com.sleepycat.b.b.d;
import com.sleepycat.b.c.ab;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.m;
import com.sleepycat.b.p.w;
import com.sleepycat.b.z;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.logging.Logger;

public final class a
  implements ab
{
  private final ad a;
  private com.sleepycat.d.a b;
  private final StringBuffer c = new StringBuffer();
  private final StringBuffer d = new StringBuffer();
  private final Logger e;
  
  public a(ad paramad)
  {
    this.a = paramad;
    this.e = w.a(getClass());
    String str = paramad.u.a(d.bw);
    if ((str == null) || (str.equals(""))) {}
    for (paramad = paramad.c;; paramad = new File(str)) {
      try
      {
        this.b = new com.sleepycat.d.a(paramad, "je.config", "csv", 2, 1000);
        return;
      }
      catch (IOException paramad)
      {
        throw new IllegalStateException("Error accessing statistics capture file je.config.csv IO Exception: " + paramad);
      }
    }
  }
  
  public final void a()
  {
    Object localObject1 = new TreeMap();
    Object localObject2 = this.a.z();
    Object localObject3 = d.a.keySet().iterator();
    while (((Iterator)localObject3).hasNext())
    {
      String str2 = (String)((Iterator)localObject3).next();
      ((SortedMap)localObject1).put("envcfg:" + str2, ((z)localObject2).a(str2));
    }
    ((Map)localObject1).put("je:version", am.a.a());
    ((Map)localObject1).put("java:version", System.getProperty("java.version"));
    ((Map)localObject1).put("java:vendor", System.getProperty("java.vendor"));
    this.c.setLength(0);
    this.d.setLength(0);
    this.c.append("time");
    this.d.append(h.a(System.currentTimeMillis()));
    localObject1 = ((SortedMap)localObject1).entrySet().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (Map.Entry)((Iterator)localObject1).next();
      if (this.c.length() != 0)
      {
        this.c.append(",");
        this.d.append(",");
      }
      this.c.append((String)((Map.Entry)localObject2).getKey());
      this.d.append("\"" + (String)((Map.Entry)localObject2).getValue() + "\"");
    }
    try
    {
      this.b.a(this.c.toString());
      localObject2 = this.b;
      localObject3 = this.d.toString();
      if (((com.sleepycat.d.a)localObject2).a == null) {
        throw aa.c("Unexpected state logHeader not called before logDelta.");
      }
    }
    catch (IOException localIOException)
    {
      w.b(this.e, this.a, " Error accessing environment statistics file je.config.csv IO Exception: " + localIOException);
    }
    for (;;)
    {
      this.c.setLength(0);
      this.d.setLength(0);
      return;
      if (((com.sleepycat.d.a)localObject2).b == null) {
        ((com.sleepycat.d.a)localObject2).b = ((com.sleepycat.d.a)localObject2).a();
      }
      String str1 = null;
      if (((com.sleepycat.d.a)localObject2).b != null) {
        str1 = ((com.sleepycat.d.a)localObject2).b.substring(((com.sleepycat.d.a)localObject2).b.indexOf(',') + 1);
      }
      if (!((String)localObject3).substring(((String)localObject3).indexOf(',') + 1).equals(str1)) {
        ((com.sleepycat.d.a)localObject2).b((String)localObject3);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\j\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */