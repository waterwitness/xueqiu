package com.snowballfinance.message.io.c;

import com.snowballfinance.message.io.logger.Logger;
import com.snowballfinance.message.io.logger.LoggerFactory;
import com.snowballfinance.messageplatform.a.i;
import com.snowballfinance.messageplatform.a.l;
import com.snowballfinance.messageplatform.a.m;
import com.snowballfinance.messageplatform.a.n;
import com.snowballfinance.messageplatform.a.o;
import com.snowballfinance.messageplatform.a.q;
import com.snowballfinance.messageplatform.a.r;
import com.snowballfinance.messageplatform.a.s;
import com.snowballfinance.messageplatform.a.t;
import com.snowballfinance.messageplatform.a.u;
import com.snowballfinance.messageplatform.a.v;
import com.snowballfinance.messageplatform.a.w;
import com.snowballfinance.messageplatform.a.y;
import com.snowballfinance.messageplatform.a.z;
import com.snowballfinance.messageplatform.data.MessageSession;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.nio.charset.Charset;
import java.security.Key;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPOutputStream;

public final class h
{
  final Logger a = LoggerFactory.getLogger(getClass());
  public e b;
  long c;
  String d;
  public String e;
  String f;
  String g;
  final rx.h h;
  public final rx.i.c<Integer> i = rx.i.c.k();
  public final rx.i.c<com.snowballfinance.messageplatform.a.a> j = rx.i.c.k();
  final rx.i.c<Boolean> k = rx.i.c.k();
  final rx.i.c<Boolean> l = rx.i.c.k();
  public final rx.i.c<j> m = rx.i.c.k();
  final AtomicBoolean n = new AtomicBoolean(false);
  int o = 1;
  rx.j p;
  final ConcurrentHashMap<Integer, rx.i.a<z>> q = new ConcurrentHashMap();
  private volatile int r = 0;
  private b s;
  private final ExecutorService t;
  private final int u = 512;
  
  public h(String[] paramArrayOfString, long paramLong, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this.s = new b(paramArrayOfString);
    this.c = paramLong;
    this.d = paramString1;
    this.e = paramString2;
    this.f = paramString3;
    this.g = paramString4;
    this.t = Executors.newSingleThreadExecutor();
    this.h = rx.h.p.a(this.t).a();
    this.l.c(new rx.c.b()
    {
      private rx.j b;
    });
    this.l.c(new rx.c.b() {});
    this.k.c(new rx.c.b() {});
  }
  
  private com.snowballfinance.message.io.b b(com.snowballfinance.messageplatform.a.a parama)
  {
    parama.b = this.e;
    Object localObject1 = new com.snowballfinance.messageplatform.a.a.b();
    Object localObject2 = ((com.snowballfinance.messageplatform.a.a.b)localObject1).b;
    com.snowballfinance.message.io.b localb;
    int i1;
    if ((parama instanceof com.snowballfinance.messageplatform.a.b))
    {
      com.snowballfinance.messageplatform.a.a.b.a((com.snowballfinance.messageplatform.a.b)parama, (com.snowballfinance.messageplatform.a.a.e)localObject2);
      com.snowballfinance.messageplatform.a.a.b.a(parama, ((com.snowballfinance.messageplatform.a.a.b)localObject1).b.b(), ((com.snowballfinance.messageplatform.a.a.b)localObject1).a);
      if (((com.snowballfinance.messageplatform.a.a.b)localObject1).b.b() > 0) {
        ((com.snowballfinance.messageplatform.a.a.b)localObject1).b.writeTo(((com.snowballfinance.messageplatform.a.a.b)localObject1).a);
      }
      ((com.snowballfinance.messageplatform.a.a.b)localObject1).b.reset();
      localb = this.b.a.b(3);
      localObject2 = ((com.snowballfinance.messageplatform.a.a.b)localObject1).a.toByteArray();
      localObject1 = localObject2;
      if (localObject2.length > 256)
      {
        localObject1 = new ByteArrayOutputStream();
        GZIPOutputStream localGZIPOutputStream = new GZIPOutputStream((OutputStream)localObject1);
        localGZIPOutputStream.write((byte[])localObject2);
        localGZIPOutputStream.close();
        localObject1 = ((ByteArrayOutputStream)localObject1).toByteArray();
        localb.e = true;
      }
      localObject1 = com.snowballfinance.message.a.d.a((byte[])localObject1, ((c)this.b.a.a("CONTEXT")).f);
      localb.f = true;
      localb.g = ((byte[])localObject1);
      if (!s.a(parama).equals(s.O)) {
        break label615;
      }
      parama = (y)parama;
      if ((!parama.d.equals(v.n.name())) && (!parama.d.equals(v.o.name()))) {
        break label609;
      }
      i1 = 1;
    }
    for (;;)
    {
      if (i1 != 0) {
        localb.d = 1;
      }
      return localb;
      if ((parama instanceof com.snowballfinance.messageplatform.a.g))
      {
        com.snowballfinance.messageplatform.a.a.b.a((com.snowballfinance.messageplatform.a.g)parama, (com.snowballfinance.messageplatform.a.a.e)localObject2);
        break;
      }
      if ((parama instanceof com.snowballfinance.messageplatform.a.c))
      {
        com.snowballfinance.messageplatform.a.a.b.a((com.snowballfinance.messageplatform.a.c)parama, (com.snowballfinance.messageplatform.a.a.e)localObject2);
        break;
      }
      if ((parama instanceof r)) {
        break;
      }
      if ((parama instanceof t))
      {
        com.snowballfinance.messageplatform.a.a.b.a((t)parama, (com.snowballfinance.messageplatform.a.a.e)localObject2);
        break;
      }
      if ((parama instanceof q))
      {
        com.snowballfinance.messageplatform.a.a.b.a((q)parama, (com.snowballfinance.messageplatform.a.a.e)localObject2);
        break;
      }
      if ((parama instanceof com.snowballfinance.messageplatform.a.e))
      {
        com.snowballfinance.messageplatform.a.a.b.a((com.snowballfinance.messageplatform.a.e)parama, (com.snowballfinance.messageplatform.a.a.e)localObject2);
        break;
      }
      if ((parama instanceof com.snowballfinance.messageplatform.a.f))
      {
        com.snowballfinance.messageplatform.a.a.b.a((com.snowballfinance.messageplatform.a.f)parama, (com.snowballfinance.messageplatform.a.a.e)localObject2);
        break;
      }
      if ((parama instanceof l))
      {
        com.snowballfinance.messageplatform.a.a.b.a((l)parama, (com.snowballfinance.messageplatform.a.a.e)localObject2);
        break;
      }
      if ((parama instanceof com.snowballfinance.messageplatform.a.d))
      {
        com.snowballfinance.messageplatform.a.a.b.a((com.snowballfinance.messageplatform.a.d)parama, (com.snowballfinance.messageplatform.a.a.e)localObject2);
        break;
      }
      if ((parama instanceof m))
      {
        com.snowballfinance.messageplatform.a.a.b.a((m)parama, (com.snowballfinance.messageplatform.a.a.e)localObject2);
        break;
      }
      if ((parama instanceof com.snowballfinance.messageplatform.a.j))
      {
        com.snowballfinance.messageplatform.a.a.b.a((com.snowballfinance.messageplatform.a.j)parama, (com.snowballfinance.messageplatform.a.a.e)localObject2);
        break;
      }
      if ((parama instanceof com.snowballfinance.messageplatform.a.k))
      {
        com.snowballfinance.messageplatform.a.a.b.a((com.snowballfinance.messageplatform.a.k)parama, (com.snowballfinance.messageplatform.a.a.e)localObject2);
        break;
      }
      if ((parama instanceof com.snowballfinance.messageplatform.a.h))
      {
        com.snowballfinance.messageplatform.a.a.b.a((com.snowballfinance.messageplatform.a.h)parama, (com.snowballfinance.messageplatform.a.a.e)localObject2);
        break;
      }
      if ((parama instanceof i))
      {
        com.snowballfinance.messageplatform.a.a.b.a((i)parama, (com.snowballfinance.messageplatform.a.a.e)localObject2);
        break;
      }
      if ((parama instanceof u))
      {
        com.snowballfinance.messageplatform.a.a.b.a((u)parama, (com.snowballfinance.messageplatform.a.a.e)localObject2);
        break;
      }
      if ((parama instanceof o))
      {
        com.snowballfinance.messageplatform.a.a.b.a((o)parama, (com.snowballfinance.messageplatform.a.a.e)localObject2);
        break;
      }
      if ((parama instanceof n))
      {
        com.snowballfinance.messageplatform.a.a.b.a((n)parama, (com.snowballfinance.messageplatform.a.a.e)localObject2);
        break;
      }
      if ((parama instanceof y))
      {
        com.snowballfinance.messageplatform.a.a.b.a((y)parama, (com.snowballfinance.messageplatform.a.a.e)localObject2);
        break;
      }
      if ((parama instanceof z))
      {
        com.snowballfinance.messageplatform.a.a.b.a((z)parama, (com.snowballfinance.messageplatform.a.a.e)localObject2);
        break;
      }
      if ((parama instanceof w))
      {
        com.snowballfinance.messageplatform.a.a.b.a((w)parama, (com.snowballfinance.messageplatform.a.a.e)localObject2);
        break;
      }
      throw new UnsupportedOperationException();
      label609:
      i1 = 0;
      continue;
      label615:
      if ((s.a(parama).equals(s.Y)) || (s.a(parama).equals(s.Z))) {
        i1 = 1;
      } else {
        i1 = 0;
      }
    }
  }
  
  public final rx.a<Boolean> a(com.snowballfinance.messageplatform.a.a parama)
  {
    if (!this.b.b()) {
      return rx.a.b(Boolean.valueOf(false));
    }
    try
    {
      com.snowballfinance.message.io.b localb = b(parama);
      if (this.a.isDebugEnabled())
      {
        this.a.debug(String.format("send [UDM:%s] to %s.", new Object[] { Long.valueOf(localb.a), this.b.a }));
        a(k.a, s.a(parama).name(), localb.g.length + 12);
      }
      parama = this.b.a.a(localb);
      return parama;
    }
    catch (Exception parama)
    {
      parama.printStackTrace();
    }
    return rx.a.b(Boolean.valueOf(false));
  }
  
  public final rx.a<z> a(final y paramy)
  {
    if (!this.b.b()) {
      return rx.a.b(z.a(paramy, "not connected."));
    }
    int i1 = this.r + 1;
    this.r = i1;
    if (i1 >= Integer.MAX_VALUE) {
      this.r = 1;
    }
    paramy.a = Integer.valueOf(this.r);
    paramy.b = this.e;
    paramy.e = this.d;
    paramy.f = Long.valueOf(this.c);
    if (paramy.h != null) {}
    for (Object localObject = com.snowballfinance.messageplatform.b.d.b(new String(paramy.h));; localObject = new HashMap())
    {
      ((Map)localObject).put("version", this.f);
      paramy.h = com.snowballfinance.messageplatform.b.a.a(com.snowballfinance.messageplatform.b.d.a((Map)localObject));
      try
      {
        localObject = b(paramy);
        if (this.a.isDebugEnabled())
        {
          this.a.debug(String.format("send [UDM:%s] to %s.", new Object[] { Long.valueOf(((com.snowballfinance.message.io.b)localObject).a), this.b.a }));
          a(k.a, paramy.d, ((com.snowballfinance.message.io.b)localObject).g.length + 12);
        }
        localObject = this.b.a.a((com.snowballfinance.message.io.b)localObject).d(new rx.c.f() {}).b(new rx.c.f() {});
        return (rx.a<z>)localObject;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
    return rx.a.b(z.a(paramy.a.intValue(), 400, "send request error."));
  }
  
  public final void a()
  {
    try
    {
      if ((this.p != null) && (!this.p.c())) {
        this.p.b();
      }
      this.o = 0;
      this.k.a(Boolean.valueOf(true));
      return;
    }
    finally {}
  }
  
  final void a(final k paramk, final String paramString, final int paramInt)
  {
    this.h.a(new rx.c.a()
    {
      public final void a()
      {
        j localj = new j();
        localj.a = paramk;
        localj.b = paramString;
        localj.c = paramInt;
        h.this.m.a(localj);
      }
    });
  }
  
  public final rx.a<Boolean> b()
  {
    for (;;)
    {
      Object localObject4;
      try
      {
        boolean bool = this.n.compareAndSet(false, true);
        if (!bool) {
          break label413;
        }
        try
        {
          b localb = this.s;
          String[] arrayOfString = localb.b;
          i1 = localb.a;
          localb.a = (i1 + 1);
          arrayOfString = arrayOfString[(i1 % localb.b.length)].split(":");
          localObject4 = arrayOfString[0];
          if (!localb.c.matcher((CharSequence)localObject4).matches()) {
            break label390;
          }
          localb = arrayOfString[0];
          localObject4 = localb.split("\\.");
          if (localObject4.length == 4) {
            continue;
          }
          throw new NumberFormatException("invalid ip address " + localb);
        }
        catch (Throwable localThrowable)
        {
          this.a.warn("get address failed:" + this.s.toString(), localThrowable);
          localObject1 = null;
        }
        if (this.b != null) {
          this.b.c();
        }
        this.b = new e(this.e, (InetSocketAddress)localObject1);
        localObject1 = this.b;
        ((e)localObject1).b.c(new e.6((e)localObject1)).a(new rx.c.b()new rx.c.b
        {
          g a = new h.3(h.this);
        }, new rx.c.b() {});
        this.b.a().a(10L, TimeUnit.SECONDS).a(new rx.c.b()new rx.c.b {}, new rx.c.b() {});
        localObject1 = this.l.c();
        return (rx.a<Boolean>)localObject1;
      }
      finally {}
      int i1 = (((Integer.parseInt(localObject4[3]) << 8) + Integer.parseInt(localObject4[2]) << 8) + Integer.parseInt(localObject4[1]) << 8) + Integer.parseInt(localObject4[0]);
      Object localObject1 = new InetSocketAddress(InetAddress.getByAddress(new byte[] { (byte)(i1 & 0xFF), (byte)(i1 >> 8 & 0xFF), (byte)(i1 >> 16 & 0xFF), (byte)(i1 >> 24 & 0xFF) }), Integer.valueOf(localObject1[1]).intValue());
      continue;
      label390:
      Object localObject3 = new InetSocketAddress(localObject2[0], Integer.valueOf(localObject2[1]).intValue());
      continue;
      label413:
      this.a.warn(String.format("%s is already connecting", new Object[] { this.b }));
      localObject3 = rx.a.b(Boolean.valueOf(false));
    }
  }
  
  final void c()
  {
    synchronized (this.q)
    {
      Iterator localIterator = this.q.entrySet().iterator();
      if (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        ((rx.i.a)localEntry.getValue()).a(z.a(((Integer)localEntry.getKey()).intValue(), 408, "connection reset"));
      }
    }
  }
  
  public final void d()
  {
    c();
    this.h.b();
    this.t.shutdownNow();
    if (this.b != null) {
      this.b.c();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\message\io\c\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */