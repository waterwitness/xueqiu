package com.xiaomi.e;

import android.util.Pair;
import com.xiaomi.a.a.d.d;
import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.service.bd;
import com.xiaomi.push.service.bh;
import com.xiaomi.push.service.x;
import java.io.Reader;
import java.io.Writer;
import java.lang.reflect.Constructor;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class a
{
  public static boolean a = false;
  private static final AtomicInteger r = new AtomicInteger(0);
  protected int b = 0;
  protected long c = -1L;
  protected int d;
  public LinkedList<Pair<Integer, Long>> e = new LinkedList();
  public final Collection<e> f = new CopyOnWriteArrayList();
  protected final Map<g, b> g = new ConcurrentHashMap();
  protected final Map<g, b> h = new ConcurrentHashMap();
  protected com.xiaomi.e.a.a i = null;
  protected Reader j;
  protected Writer k;
  protected String l = "";
  int m = 2;
  protected final int n = r.getAndIncrement();
  protected c o;
  protected XMPushService p;
  public long q = 0L;
  
  static
  {
    try
    {
      a = Boolean.getBoolean("smack.debugEnabled");
      k.a();
      return;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  protected a(XMPushService paramXMPushService, c paramc)
  {
    this.o = paramc;
    this.p = paramXMPushService;
  }
  
  private static String a(int paramInt)
  {
    if (paramInt == 1) {
      return "connected";
    }
    if (paramInt == 0) {
      return "connecting";
    }
    if (paramInt == 2) {
      return "disconnected";
    }
    return "unknown";
  }
  
  public final c a()
  {
    return this.o;
  }
  
  public final void a(int paramInt1, int paramInt2, Exception paramException)
  {
    if (paramInt1 != this.m) {
      com.xiaomi.a.a.b.c.a(String.format("update the connection status. %1$s -> %2$s : %3$s ", new Object[] { a(this.m), a(paramInt1), bh.a(paramInt2) }));
    }
    Object localObject;
    if (d.a(this.p))
    {
      localObject = this.e;
      if (paramInt1 != 1) {
        break label146;
      }
    }
    try
    {
      this.e.clear();
      for (;;)
      {
        if (paramInt1 != 1) {
          break;
        }
        this.p.a(10);
        if (this.m != 0) {
          com.xiaomi.a.a.b.c.a("try set connected while not connecting.");
        }
        this.m = paramInt1;
        paramException = this.f.iterator();
        while (paramException.hasNext()) {
          ((e)paramException.next()).a(this);
        }
        label146:
        this.e.add(new Pair(Integer.valueOf(paramInt1), Long.valueOf(System.currentTimeMillis())));
        if (this.e.size() > 6) {
          this.e.remove(0);
        }
      }
      if (paramInt1 != 0) {
        break label280;
      }
    }
    finally {}
    paramException = this.p;
    paramException.a(new x(paramException), 120000L);
    if (this.m != 2) {
      com.xiaomi.a.a.b.c.a("try set connecting while not disconnected.");
    }
    this.m = paramInt1;
    paramException = this.f.iterator();
    while (paramException.hasNext())
    {
      ((e)paramException.next()).b(this);
      continue;
      label280:
      if (paramInt1 == 2)
      {
        this.p.a(10);
        if (this.m == 0)
        {
          Iterator localIterator = this.f.iterator();
          if (localIterator.hasNext())
          {
            e locale = (e)localIterator.next();
            if (paramException == null) {}
            for (localObject = new CancellationException("disconnect while connecting");; localObject = paramException)
            {
              locale.a(this, (Exception)localObject);
              break;
            }
          }
        }
        else if (this.m == 1)
        {
          localObject = this.f.iterator();
          while (((Iterator)localObject).hasNext()) {
            ((e)((Iterator)localObject).next()).a(this, paramInt2, paramException);
          }
        }
        this.m = paramInt1;
      }
    }
  }
  
  public abstract void a(int paramInt, Exception paramException);
  
  public abstract void a(com.xiaomi.e.c.e parame);
  
  public final void a(e parame)
  {
    if (parame == null) {}
    while (this.f.contains(parame)) {
      return;
    }
    this.f.add(parame);
  }
  
  public final void a(g paramg, com.xiaomi.e.b.a parama)
  {
    if (paramg == null) {
      throw new NullPointerException("Packet listener is null.");
    }
    parama = new b(paramg, parama);
    this.g.put(paramg, parama);
  }
  
  public abstract void a(bd parambd);
  
  public final void a(String paramString)
  {
    com.xiaomi.a.a.b.c.a("setChallenge hash = " + com.xiaomi.a.a.f.c.a(paramString).substring(0, 8));
    this.l = paramString;
    a(1, 0, null);
  }
  
  public abstract void a(String paramString1, String paramString2);
  
  public abstract void a(com.xiaomi.e.c.e[] paramArrayOfe);
  
  public final String b()
  {
    return this.o.d;
  }
  
  protected final void b(com.xiaomi.e.c.e parame)
  {
    Iterator localIterator = this.h.values().iterator();
    while (localIterator.hasNext()) {
      ((b)localIterator.next()).a(parame);
    }
  }
  
  public String c()
  {
    return this.o.e;
  }
  
  public final String d()
  {
    return this.o.h;
  }
  
  public final int e()
  {
    return this.d;
  }
  
  protected final void f()
  {
    Object localObject3 = null;
    if ((this.j == null) || (this.k == null)) {}
    while (!this.o.g) {
      return;
    }
    if (this.i == null) {
      try
      {
        str = System.getProperty("smack.debuggerClass");
        localObject2 = localObject3;
        if (str == null) {}
      }
      catch (Throwable localThrowable)
      {
        try
        {
          String str;
          localObject2 = Class.forName(str);
          if (localObject2 == null)
          {
            this.i = new com.xiaomi.c.a.a(this, this.k, this.j);
            this.j = this.i.a();
            this.k = this.i.b();
            return;
            localThrowable = localThrowable;
            Object localObject1 = null;
          }
        }
        catch (Exception localException1)
        {
          Object localObject2;
          for (;;)
          {
            localException1.printStackTrace();
            localObject2 = localObject3;
          }
          try
          {
            this.i = ((com.xiaomi.e.a.a)((Class)localObject2).getConstructor(new Class[] { a.class, Writer.class, Reader.class }).newInstance(new Object[] { this, this.k, this.j }));
            this.j = this.i.a();
            this.k = this.i.b();
            return;
          }
          catch (Exception localException2)
          {
            throw new IllegalArgumentException("Can't initialize the configured debugger!", localException2);
          }
        }
      }
    }
    this.j = this.i.a(this.j);
    this.k = this.i.a(this.k);
  }
  
  public final boolean g()
  {
    return this.m == 0;
  }
  
  public final boolean h()
  {
    return this.m == 1;
  }
  
  public final int i()
  {
    return this.b;
  }
  
  public final void j()
  {
    this.b = 0;
  }
  
  public final long k()
  {
    return this.c;
  }
  
  public final void l()
  {
    this.c = -1L;
  }
  
  public abstract void m();
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\e\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */