package com.sleepycat.b.i.b;

import com.sleepycat.b.i.c.au;
import com.sleepycat.b.i.c.av;
import com.sleepycat.b.i.c.ax;
import com.sleepycat.b.i.c.az;
import com.sleepycat.b.i.c.b.g;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.logging.Formatter;
import java.util.logging.Level;
import java.util.logging.Logger;

public abstract class m
{
  protected final d a;
  protected final com.sleepycat.b.p.o b;
  final com.sleepycat.b.p.o c;
  final com.sleepycat.b.p.o d;
  protected final Logger e;
  protected final Formatter f;
  private final com.sleepycat.b.p.ai g;
  private final com.sleepycat.b.p.o h;
  private final com.sleepycat.b.p.o i;
  private final com.sleepycat.b.p.o j;
  
  public m(d paramd, com.sleepycat.b.i.c.b.x paramx)
  {
    this.a = paramd;
    if (paramd.c.i != null) {}
    for (this.e = com.sleepycat.b.p.w.a(getClass());; this.e = com.sleepycat.b.p.w.b(getClass()))
    {
      this.f = new com.sleepycat.b.i.h.w(paramx);
      this.g = new com.sleepycat.b.p.ai("Election Proposer", "Proposals are the first stage of a replication group election.");
      this.h = new com.sleepycat.b.p.o(this.g, w.a);
      this.b = new com.sleepycat.b.p.o(this.g, w.b);
      this.c = new com.sleepycat.b.p.o(this.g, w.c);
      this.i = new com.sleepycat.b.p.o(this.g, w.d);
      this.d = new com.sleepycat.b.p.o(this.g, w.e);
      this.j = new com.sleepycat.b.p.o(this.g, w.f);
      return;
    }
  }
  
  private q a(s params, final List<Future<au>> paramList)
  {
    final q localq = new q((byte)0);
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext()) {
      new ap()
      {
        protected final void a()
        {
          Object localObject = (au)this.a.get();
          if (((au)localObject).a() == null) {
            com.sleepycat.b.p.w.a(m.this.e, m.this.a.c.i, m.this.f, Level.FINE, "No response from: " + ((au)localObject).a + " reason: " + ((au)localObject).b);
          }
          s locals;
          do
          {
            return;
            if (((au)localObject).a().a() == m.this.a.j.f)
            {
              ao.a(paramList.subList(paramList.indexOf(this.a), paramList.size()));
              m.this.c.f();
              throw new o(((au)localObject).a);
            }
            if (((au)localObject).a().a() != m.this.a.j.g) {
              break;
            }
            localq.a.add(((au)localObject).a);
            localq.b.add(localObject);
            localObject = (ac)((au)localObject).a();
            locals = ((ac)localObject).a;
          } while ((localq.c != null) && ((locals == null) || (locals.compareTo(localq.c) <= 0)));
          localq.c = locals;
          localq.d = ((ac)localObject).b;
          return;
          if (((au)localObject).a().a() == m.this.a.j.n)
          {
            localObject = (ax)((au)localObject).a();
            com.sleepycat.b.p.w.a(m.this.e, m.this.a.c.i, m.this.f, Level.WARNING, "Election protocol error: " + ((ax)localObject).a);
            return;
          }
          throw com.sleepycat.b.aa.c("Unknown response: " + ((au)localObject).a().a());
        }
      }.a(this.e, this.a.c.i, null);
    }
    if ((localq.a.size() > 0) && (localq.c == null)) {
      localq.c = params;
    }
    this.j.a(Integer.valueOf(localq.a.size()));
    return localq;
  }
  
  private r a(final com.sleepycat.b.i.p paramp, final List<Future<au>> paramList)
  {
    localr = new r((byte)0);
    try
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext()) {
        new ap()
        {
          protected final void a()
          {
            Object localObject = (au)this.a.get();
            az localaz = ((au)localObject).a();
            if (localaz == null) {
              com.sleepycat.b.p.w.a(m.this.e, m.this.a.c.i, m.this.f, Level.WARNING, "No response from: " + ((au)localObject).a + " reason: " + ((au)localObject).b);
            }
            x localx;
            av localav;
            do
            {
              return;
              localx = m.this.a.j;
              localav = localaz.a();
              if (localav == localx.f)
              {
                ao.a(paramList.subList(paramList.indexOf(this.a), paramList.size()));
                m.this.d.f();
                throw new o(((au)localObject).a);
              }
              if (localav != localx.h) {
                break;
              }
              localr.a.add(((au)localObject).a);
            } while (!m.a(m.this, paramp, localr.a.size()));
            ao.a(paramList.subList(paramList.indexOf(this.a), paramList.size()));
            throw new n();
            if (localav == localx.n)
            {
              localObject = (ax)localaz;
              throw com.sleepycat.b.aa.c("Protocol error:" + ((ax)localObject).a);
            }
            throw com.sleepycat.b.aa.c("Unknown response: " + localav);
          }
        }.a(this.e, this.a.c.i, null);
      }
      return localr;
    }
    catch (n paramp) {}
  }
  
  private boolean a(com.sleepycat.b.i.p paramp, int paramInt)
  {
    return paramInt >= this.a.c.y.a(paramp);
  }
  
  protected abstract ai a(Set<au> paramSet);
  
  protected abstract s a();
  
  public final v a(com.sleepycat.b.i.p paramp, u paramu)
  {
    this.g.a();
    for (;;)
    {
      if (paramu.a()) {}
      try
      {
        s locals = a();
        com.sleepycat.b.p.w.a(this.e, this.a.c.i, this.f, Level.FINE, "Phase 1 proposal: " + locals);
        Object localObject1 = this.a.b();
        Object localObject2 = this.a.j;
        localObject2.getClass();
        localObject1 = a(locals, ao.a((Set)localObject1, "Acceptor", new ad((x)localObject2, locals), this.a.h));
        if (a(paramp, ((q)localObject1).a.size()))
        {
          label134:
          if (localObject1 == null) {
            continue;
          }
          localObject2 = a(((q)localObject1).b);
          if (localObject2 == null) {
            continue;
          }
          localObject1 = ((q)localObject1).a;
          com.sleepycat.b.p.w.a(this.e, this.a.c.i, this.f, Level.FINE, "Phase 2 proposal: " + locals + " Value: " + localObject2);
          x localx = this.a.j;
          localx.getClass();
          localObject1 = a(paramp, ao.a((Set)localObject1, "Acceptor", new y(localx, locals, (ai)localObject2), this.a.h));
          if (!a(paramp, ((r)localObject1).a.size())) {
            break label357;
          }
        }
        while (localObject1 != null)
        {
          com.sleepycat.b.p.w.a(this.e, this.a.c.i, this.f, Level.INFO, "Winning proposal: " + locals + " Value: " + localObject2);
          return new v(locals, (ai)localObject2, this.g);
          this.h.f();
          localObject1 = null;
          break label134;
          label357:
          this.i.f();
          localObject1 = null;
        }
        throw new p(this.g);
      }
      catch (o localo) {}
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\b\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */