package com.sleepycat.b.i;

import com.sleepycat.b.bn;
import com.sleepycat.b.i.c.aj;
import com.sleepycat.b.i.c.b.ac;
import com.sleepycat.b.i.c.b.ag;
import com.sleepycat.b.i.c.b.m;
import com.sleepycat.b.i.e.i;
import com.sleepycat.b.i.e.t;
import com.sleepycat.b.i.h.l;
import com.sleepycat.b.i.i.f;
import com.sleepycat.b.p.q;
import com.sleepycat.b.p.z;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public final class v
  implements Serializable
{
  private com.sleepycat.b.p.ai a;
  private com.sleepycat.b.p.ai b;
  private com.sleepycat.b.p.ai c;
  private com.sleepycat.b.p.ai d;
  private com.sleepycat.b.p.ai e;
  private com.sleepycat.b.p.ai f;
  private final Map<String, String> g = new HashMap();
  
  public v() {}
  
  public v(aj paramaj, bn parambn)
  {
    Object localObject1 = paramaj.am;
    Object localObject2 = ((com.sleepycat.b.i.c.b.aa)localObject1).f;
    this.a = ((m)localObject2).h.a(parambn.c);
    this.b = ((com.sleepycat.b.i.c.b.aa)localObject1).i.al.c.a(parambn.c);
    localObject1 = ((com.sleepycat.b.i.c.b.aa)localObject1).e;
    this.c = ((ag)localObject1).b.n.a(parambn.c);
    this.d = com.sleepycat.b.i.c.b.ai.a(((ag)localObject1).d, parambn);
    this.e = ((m)localObject2).a(parambn);
    this.f = paramaj.aj.j.a(parambn.c);
    paramaj = this.e;
    localObject2 = ((ag)localObject1).f.a(parambn.c);
    localObject1 = ((ag)localObject1).e;
    if (localObject1 != null) {
      ((com.sleepycat.b.p.ai)localObject2).a(((t)localObject1).a(parambn));
    }
    paramaj.a((com.sleepycat.b.p.ai)localObject2);
    long l1;
    if (this.e.b(l.d) == null)
    {
      l1 = 0L;
      if (this.e.b(l.a) != null) {
        break label395;
      }
      l2 = 0L;
      label201:
      new q(this.e, l.g, l1, l2);
      if (this.e.b(l.f) != null) {
        break label416;
      }
      l1 = 0L;
      label236:
      if (this.e.b(l.b) != null) {
        break label437;
      }
      l2 = 0L;
      label252:
      new q(this.e, l.h, l1, l2);
      if (this.e.b(l.c) != null) {
        break label458;
      }
      l1 = 0L;
      label287:
      if (this.e.b(l.a) != null) {
        break label479;
      }
      l2 = 0L;
      label303:
      new q(this.e, l.i, l1, l2);
      if (this.e.b(l.e) != null) {
        break label500;
      }
      l1 = 0L;
      label338:
      if (this.e.b(l.b) != null) {
        break label521;
      }
    }
    label395:
    label416:
    label437:
    label458:
    label479:
    label500:
    label521:
    for (long l2 = 0L;; l2 = this.e.b(l.b).b().longValue())
    {
      new q(this.e, l.j, l1, l2);
      return;
      l1 = this.e.b(l.d).b().longValue();
      break;
      l2 = this.e.b(l.a).b().longValue();
      break label201;
      l1 = this.e.b(l.f).b().longValue();
      break label236;
      l2 = this.e.b(l.b).b().longValue();
      break label252;
      l1 = this.e.b(l.c).b().longValue();
      break label287;
      l2 = this.e.b(l.a).b().longValue();
      break label303;
      l1 = this.e.b(l.e).b().longValue();
      break label338;
    }
  }
  
  public final Collection<com.sleepycat.b.p.ai> a()
  {
    if (this.b != null) {
      return Arrays.asList(new com.sleepycat.b.p.ai[] { this.a, this.b, this.c, this.d, this.e, this.f });
    }
    return Arrays.asList(new com.sleepycat.b.p.ai[] { this.a, this.c, this.d, this.e, this.f });
  }
  
  public final void a(com.sleepycat.b.p.ai paramai)
  {
    if (paramai.a.equals("FeederManager"))
    {
      this.a = paramai;
      return;
    }
    if (paramai.a.equals("Replay"))
    {
      this.c = paramai;
      return;
    }
    if (paramai.a.equals("ConsistencyTracker"))
    {
      this.d = paramai;
      return;
    }
    if (paramai.a.equals("BinaryProtocol"))
    {
      this.e = paramai;
      return;
    }
    if (paramai.a.equals("VLSNIndex"))
    {
      this.f = paramai;
      return;
    }
    if (paramai.a.equals("FeederTxns"))
    {
      this.b = paramai;
      return;
    }
    throw com.sleepycat.b.aa.c("Internal error stat context is not registered");
  }
  
  public final Map<String, com.sleepycat.b.p.ai> b()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put(this.a.a, this.a);
    localHashMap.put(this.c.a, this.c);
    localHashMap.put(this.d.a, this.d);
    localHashMap.put(this.e.a, this.e);
    localHashMap.put(this.f.a, this.f);
    if (this.b != null) {
      localHashMap.put(this.b.a, this.b);
    }
    return localHashMap;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = a().iterator();
    while (localIterator.hasNext()) {
      localStringBuilder.append(((com.sleepycat.b.p.ai)localIterator.next()).toString());
    }
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */