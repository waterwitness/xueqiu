package com.sleepycat.b.g;

import com.sleepycat.a.a.l;
import com.sleepycat.b.a.g;
import com.sleepycat.b.a.s;
import com.sleepycat.b.bn;
import com.sleepycat.b.c.i;
import com.sleepycat.b.f.a;
import com.sleepycat.b.n;
import com.sleepycat.b.p.ai;
import com.sleepycat.b.p.j;
import com.sleepycat.b.p.t;
import java.io.FileNotFoundException;
import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;

public class am
{
  private static final String k;
  protected ab a;
  protected a b;
  final boolean c;
  final m d;
  protected com.sleepycat.b.c.ad e;
  final boolean f;
  final int g;
  public long h = -1L;
  final Queue<an> i = new ConcurrentLinkedQueue();
  private final h l;
  private final ai m;
  private final com.sleepycat.b.p.z n;
  private final com.sleepycat.b.p.z o;
  private final t p;
  private aa q = null;
  
  static
  {
    if (!am.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      j = bool;
      k = am.class.getName();
      return;
    }
  }
  
  public am(com.sleepycat.b.c.ad paramad, boolean paramBoolean)
  {
    this.e = paramad;
    this.d = paramad.x;
    this.l = new h(this.e);
    com.sleepycat.b.c.m localm = paramad.u;
    this.f = paramBoolean;
    this.a = new ab(this.d, paramad);
    this.c = localm.a(com.sleepycat.b.b.d.P);
    this.b = new a(k);
    this.g = localm.a(com.sleepycat.b.b.d.K);
    this.m = new ai("I/O", "Log file opens, fsyncs, reads, writes, cache misses.");
    this.n = new com.sleepycat.b.p.z(this.m, aq.z);
    this.o = new com.sleepycat.b.p.z(this.m, aq.A);
    this.p = new t(this.m, aq.B);
  }
  
  private ao a(al paramal, ad paramad, boolean paramBoolean1, boolean paramBoolean2, com.sleepycat.b.a.ae paramae)
  {
    synchronized (this.b)
    {
      this.e.n();
    }
    try
    {
      paramal = b(paramal, paramad, paramBoolean1, paramBoolean2, paramae);
      return paramal;
    }
    catch (com.sleepycat.b.aa paramal)
    {
      if ((!this.e.j()) || (m.a()))
      {
        throw paramal;
        paramal = finally;
        throw paramal;
      }
      throw com.sleepycat.b.aa.a(this.e, paramal);
    }
    catch (Exception paramal)
    {
      throw com.sleepycat.b.aa.a(this.e, paramal);
    }
    catch (Error paramal)
    {
      this.e.a(paramal);
      throw paramal;
    }
  }
  
  static ByteBuffer a(ae paramae, com.sleepycat.b.g.a.m paramm)
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocate(paramae.b() + paramae.d);
    localByteBuffer.position(4);
    localByteBuffer.put(paramae.b);
    byte b1 = 0;
    if (paramae.g == au.b) {
      b1 = Byte.MIN_VALUE;
    }
    for (;;)
    {
      byte b2 = b1;
      if (paramae.h) {
        b2 = (byte)(b1 | 0x20);
      }
      b1 = b2;
      if (paramae.j) {
        b1 = (byte)(b2 | 0x8);
      }
      localByteBuffer.put(b1);
      localByteBuffer.position(10);
      ar.a(localByteBuffer, paramae.d);
      if (paramae.j) {
        localByteBuffer.position(localByteBuffer.position() + 8);
      }
      paramm.a(localByteBuffer);
      localByteBuffer.flip();
      return localByteBuffer;
      if (paramae.g == au.c) {
        b1 = 64;
      }
    }
  }
  
  private void a(boolean paramBoolean)
  {
    synchronized (this.b)
    {
      if (!this.a.a(0))
      {
        this.a.b(0, paramBoolean);
        return;
      }
      this.a.a(paramBoolean);
      return;
    }
  }
  
  private ao b(al paramal, ad paramad, boolean paramBoolean1, boolean paramBoolean2, com.sleepycat.b.a.ae paramae)
  {
    int i2;
    Object localObject1;
    if (paramal.h != null)
    {
      i2 = 1;
      localObject1 = paramal.a.d();
      if (!j.c(paramal.b))
      {
        if (!paramad.h) {
          break label139;
        }
        paramae.c(paramal.b, (af)localObject1, paramal.i, paramad.a);
      }
      label57:
      if (!j.c(paramal.c))
      {
        if (!paramad.h) {
          break label161;
        }
        paramae.c(paramal.c, (af)localObject1, 0, paramad.a);
      }
    }
    for (;;)
    {
      if (i2 == 0) {
        break label180;
      }
      int i3 = paramal.h.limit();
      i1 = i3;
      if (j) {
        break label241;
      }
      i1 = i3;
      if (paramal.g != null) {
        break label241;
      }
      throw new AssertionError();
      i2 = 0;
      break;
      label139:
      paramae.a(paramal.b, (af)localObject1, paramal.i, paramad.a);
      break label57;
      label161:
      paramae.a(paramal.c, (af)localObject1, 0, paramad.a);
    }
    label180:
    if ((!j) && (paramal.g != null)) {
      throw new AssertionError();
    }
    paramal.g = new ae(paramal.a, paramal.e, paramal.f);
    int i1 = paramal.g.b() + paramal.g.d;
    label241:
    if (paramBoolean1) {
      this.d.s = true;
    }
    Object localObject2 = this.d;
    long l1 = i1;
    ((m)localObject2).b();
    if ((((m)localObject2).s) || (j.e(((m)localObject2).p) + l1 > ((m)localObject2).l))
    {
      ((m)localObject2).s = false;
      ((m)localObject2).o += 1L;
      if (((m)localObject2).q != -1L) {
        ((m)localObject2).z.put(Long.valueOf(j.d(((m)localObject2).q)), Long.valueOf(((m)localObject2).q));
      }
      ((m)localObject2).r = 0L;
      ((m)localObject2).q = j.a(((m)localObject2).o, m.h());
      paramBoolean1 = true;
      ((m)localObject2).p = j.a(j.d(((m)localObject2).q), l1 + j.e(((m)localObject2).q));
      try
      {
        l1 = this.d.q;
        if (paramae.a(l1, paramad.a, (af)localObject1, i1)) {
          paramad.i = true;
        }
        if (paramal.a.f()) {
          paramae.b(l1, (af)localObject1, i1, paramad.a);
        }
        if (i2 != 0) {
          break label633;
        }
        if ((j) || (paramal.h == null)) {
          break label618;
        }
        throw new AssertionError();
      }
      finally
      {
        paramae = this.d;
        paramae.p = paramae.u;
        paramae.q = paramae.v;
        paramae.r = paramae.w;
        paramae.s = paramae.x;
        paramae.o = paramae.t;
        if (paramal.g.e != null) {
          this.e.P();
        }
      }
    }
    if (((m)localObject2).q == -1L) {}
    for (((m)localObject2).r = 0L;; ((m)localObject2).r = j.e(((m)localObject2).q))
    {
      ((m)localObject2).q = ((m)localObject2).p;
      paramBoolean1 = false;
      break;
    }
    label618:
    paramal.h = a(paramal.g, paramal.a);
    label633:
    if (i1 != paramal.h.limit()) {
      throw com.sleepycat.b.aa.c("Logged entry entrySize= " + i1 + " but marshalledSize=" + paramal.h.limit() + " type=" + localObject1 + " currentLsn=" + j.h(l1));
    }
    localObject2 = this.a.a(i1, paramBoolean1);
    if (localObject2 != this.q) {
      paramad.k = true;
    }
    this.q = ((aa)localObject2);
    long l2 = this.d.r;
    if ((paramal.f.i != null) || (paramal.f.d())) {
      if (paramal.f.d()) {
        paramae = this.e.O();
      }
    }
    for (;;)
    {
      ((aa)localObject2).d.a();
      for (;;)
      {
        try
        {
          if (!((aa)localObject2).a(i1)) {
            break label962;
          }
          localObject1 = ByteBuffer.wrap(((aa)localObject2).g, ((aa)localObject2).a.position(), i1);
          ((aa)localObject2).a.position(((aa)localObject2).a.position() + i1);
          ((aa)localObject2).f.incrementAndGet();
          localObject1 = new ac((aa)localObject2, (ByteBuffer)localObject1);
          if (localObject1 != null) {
            break label1165;
          }
          paramal.h = paramal.g.a(paramal.h, l2, paramae);
          this.d.a(new aa(paramal.h, l1), paramBoolean2);
          i2 = 1;
          if ((j) || (((aa)localObject2).a.position() == 0)) {
            break label968;
          }
          throw new AssertionError();
        }
        finally
        {
          ((aa)localObject2).a();
        }
        paramae = paramal.f.i;
        break;
        label962:
        localObject1 = null;
      }
      label968:
      this.o.f();
      for (;;)
      {
        ((aa)localObject2).a();
        if (i2 == 0)
        {
          ((aa)localObject2).d.a();
          try
          {
            if ((((aa)localObject2).c != -1L) && (!aa.h) && (j.b(l1, ((aa)localObject2).c) <= 0)) {
              throw new AssertionError("lsn=" + l1 + " lastlsn=" + ((aa)localObject2).c);
            }
          }
          finally
          {
            ((aa)localObject2).d.c();
          }
          ((aa)localObject2).c = l1;
          if (((aa)localObject2).b == -1L) {
            ((aa)localObject2).b = l1;
          }
          ((aa)localObject2).d.c();
        }
        paramal.a.a(paramal.g, l1, paramae);
        paramal.d = l1;
        paramad.j += i1;
        if (localObject1 == null) {
          return null;
        }
        return new ao(this, (ac)localObject1, paramae, l2);
        label1165:
        i2 = 0;
      }
      paramae = null;
    }
  }
  
  private void b(al[] paramArrayOfal, ad paramad)
  {
    com.sleepycat.b.a.ae localae = this.e.D.ab;
    ??? = paramArrayOfal[0];
    Object localObject2 = paramArrayOfal[(paramArrayOfal.length - 1)];
    int i2 = paramArrayOfal.length;
    int i1 = 0;
    Object localObject3;
    boolean bool1;
    if (i1 < i2)
    {
      localObject3 = paramArrayOfal[i1];
      if ((localObject3 == localObject2) && (paramad.b) && (!paramad.d))
      {
        bool1 = true;
        label68:
        if ((localObject3 != ???) || (!paramad.c)) {
          break label203;
        }
      }
      label203:
      for (boolean bool2 = true;; bool2 = false)
      {
        Object localObject4 = a((al)localObject3, paramad, bool2, bool1, localae);
        if (localObject4 != null)
        {
          ((al)localObject3).h = ((al)localObject3).g.a(((al)localObject3).h, ((ao)localObject4).c, ((ao)localObject4).b);
          localObject4 = ((ao)localObject4).a;
          localObject3 = ((al)localObject3).h;
          ((ac)localObject4).a.d.a();
          ((ac)localObject4).b.put((ByteBuffer)localObject3);
          ((ac)localObject4).a.a();
          ((ac)localObject4).a.f.decrementAndGet();
        }
        i1 += 1;
        break;
        bool1 = false;
        break label68;
      }
    }
    for (;;)
    {
      synchronized (this.b)
      {
        if (paramad.g == null) {
          break;
        }
        paramArrayOfal = paramad.g;
        localObject2 = paramad.a;
        localObject3 = new l(paramArrayOfal);
        if (((l)localObject3).available() <= 0) {
          break;
        }
        long l1 = ((l)localObject3).j();
        long l2 = ((l)localObject3).j();
        bool1 = ((l)localObject3).b();
        i1 = ((l)localObject3).i();
        l1 = j.a(l1, l2);
        if (bool1)
        {
          paramArrayOfal = af.H;
          localae.a(l1, paramArrayOfal, i1, (i)localObject2);
        }
      }
      paramArrayOfal = af.l;
    }
    if (paramad.f != null)
    {
      paramArrayOfal = paramad.f.iterator();
      while (paramArrayOfal.hasNext())
      {
        paramad = (com.sleepycat.b.n.am)paramArrayOfal.next();
        localae.a(paramad.a, null, paramad.c, paramad.d);
      }
    }
  }
  
  public final long a(com.sleepycat.b.g.a.m paramm, au paramau, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, av paramav)
  {
    al localal = new al();
    localal.a = paramm;
    localal.e = paramau;
    localal.b = -1L;
    localal.f = paramav;
    paramm = new ad();
    paramm.b = paramBoolean1;
    paramm.d = paramBoolean2;
    paramm.c = paramBoolean3;
    paramm.e = false;
    paramm.a = null;
    a(localal, paramm);
    return localal.d;
  }
  
  public final long a(com.sleepycat.b.g.a.m paramm, av paramav)
  {
    return a(paramm, au.a, true, true, false, paramav);
  }
  
  public final com.sleepycat.b.g.a.m a(long paramLong)
  {
    return a(paramLong, false).b;
  }
  
  final ay a(long paramLong, ap paramap, boolean paramBoolean)
  {
    long l1;
    ByteBuffer localByteBuffer2;
    try
    {
      l1 = j.e(paramLong);
      localByteBuffer2 = paramap.a(l1);
      if (localByteBuffer2.remaining() < 14) {
        throw new c("Incomplete log entry header, size=" + localByteBuffer2.remaining() + " lsn=" + j.h(paramLong));
      }
    }
    finally
    {
      if (paramap != null) {
        paramap.a();
      }
    }
    ae localae = new ae(localByteBuffer2, paramap.b());
    if (localae.j)
    {
      if (localByteBuffer2.remaining() < ae.a()) {
        throw new c("Incomplete log entry header, size=" + localByteBuffer2.remaining() + " varSize=" + ae.a() + " lsn=" + j.h(paramLong));
      }
      localae.a(localByteBuffer2);
    }
    Object localObject2 = null;
    if (this.c)
    {
      i1 = localByteBuffer2.position();
      if (localae.i) {
        ae.a(localByteBuffer2, i1 - localae.b());
      }
      localObject2 = new d();
      int i2 = localae.b() - 4;
      localByteBuffer2.position(i1 - i2);
      ((d)localObject2).a(localByteBuffer2, i2);
      localByteBuffer2.position(i1);
    }
    int i1 = localae.d;
    ByteBuffer localByteBuffer1 = localByteBuffer2;
    if (localByteBuffer2.remaining() < i1)
    {
      localByteBuffer1 = paramap.a(l1 + localae.b(), i1);
      this.n.f();
    }
    if (this.c)
    {
      ((d)localObject2).a(localByteBuffer1, i1);
      ((d)localObject2).a(localae.a, paramLong);
    }
    if ((localae.i) && (!paramBoolean)) {
      throw new com.sleepycat.b.aa(this.e, com.sleepycat.b.c.ac.m, "Read invisible log entry at " + j.h(paramLong) + " " + localae);
    }
    if ((!j) && (!af.b(localae.b))) {
      throw new AssertionError("Read non-valid log entry type: " + localae.b);
    }
    localObject2 = af.a(localae.b).b();
    ((com.sleepycat.b.g.a.m)localObject2).a(this.e, localae, localByteBuffer1);
    localObject2 = new ay(localae, (com.sleepycat.b.g.a.m)localObject2);
    if (paramap != null) {
      paramap.a();
    }
    return (ay)localObject2;
  }
  
  public final ay a(long paramLong, boolean paramBoolean)
  {
    this.e.n();
    try
    {
      ay localay = a(paramLong, f(paramLong), paramBoolean);
      return localay;
    }
    catch (c localc)
    {
      throw new com.sleepycat.b.aa(this.e, com.sleepycat.b.c.ac.j, localc);
    }
  }
  
  public final ai a(bn parambn)
  {
    if (!parambn.b) {}
    synchronized (this.b)
    {
      this.p.a(Long.valueOf(this.d.q));
      ??? = this.m.a(parambn.c);
      ((ai)???).a(this.a.a(parambn));
      m localm = this.d;
      localm.N.a(Integer.valueOf(localm.m.a.size()));
      ((ai)???).a(localm.D.a(parambn.c));
      ((ai)???).a(this.l.k.a(parambn.c));
      return (ai)???;
    }
  }
  
  public final void a()
  {
    if (!this.f)
    {
      a(false);
      this.d.e();
    }
  }
  
  public final void a(long paramLong, int paramInt, i parami)
  {
    synchronized (this.b)
    {
      this.e.D.ab.c(paramLong, null, paramInt, parami);
      return;
    }
  }
  
  public final void a(long paramLong, af paramaf, int paramInt, i parami, boolean paramBoolean)
  {
    synchronized (this.b)
    {
      com.sleepycat.b.a.ae localae = this.e.D.ab;
      if (paramBoolean)
      {
        localae.a(paramLong, paramaf, paramInt, parami);
        return;
      }
      localae.b(paramLong, paramaf, paramInt, parami);
    }
  }
  
  public final void a(s params)
  {
    synchronized (this.b)
    {
      params.a(this.e.D.ab);
      return;
    }
  }
  
  public final void a(com.sleepycat.b.a.z paramz)
  {
    synchronized (this.b)
    {
      paramz.i();
      return;
    }
  }
  
  public final void a(i parami)
  {
    synchronized (this.b)
    {
      parami.a(this.e.D.ab, -1L);
      return;
    }
  }
  
  public final void a(com.sleepycat.b.c.m paramm)
  {
    synchronized (this.b)
    {
      this.a.a(paramm);
      return;
    }
  }
  
  public final void a(al paramal, ad paramad)
  {
    a(new al[] { paramal }, paramad);
  }
  
  /* Error */
  public final void a(al[] paramArrayOfal, ad arg2)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 90	com/sleepycat/b/g/am:f	Z
    //   4: ifne +8 -> 12
    //   7: aload_1
    //   8: arraylength
    //   9: ifne +4 -> 13
    //   12: return
    //   13: aload_0
    //   14: getfield 68	com/sleepycat/b/g/am:i	Ljava/util/Queue;
    //   17: invokeinterface 749 1 0
    //   22: checkcast 751	com/sleepycat/b/g/an
    //   25: astore_3
    //   26: aload_3
    //   27: ifnull +76 -> 103
    //   30: new 249	com/sleepycat/b/g/al
    //   33: dup
    //   34: invokespecial 575	com/sleepycat/b/g/al:<init>	()V
    //   37: astore 4
    //   39: aload 4
    //   41: aload_3
    //   42: getfield 752	com/sleepycat/b/g/an:a	Lcom/sleepycat/b/g/a/m;
    //   45: putfield 255	com/sleepycat/b/g/al:a	Lcom/sleepycat/b/g/a/m;
    //   48: aload 4
    //   50: getstatic 584	com/sleepycat/b/g/au:a	Lcom/sleepycat/b/g/au;
    //   53: putfield 293	com/sleepycat/b/g/al:e	Lcom/sleepycat/b/g/au;
    //   56: aload 4
    //   58: aload_3
    //   59: getfield 754	com/sleepycat/b/g/an:b	Lcom/sleepycat/b/g/av;
    //   62: putfield 296	com/sleepycat/b/g/al:f	Lcom/sleepycat/b/g/av;
    //   65: new 267	com/sleepycat/b/g/ad
    //   68: dup
    //   69: invokespecial 576	com/sleepycat/b/g/ad:<init>	()V
    //   72: astore_3
    //   73: aload_0
    //   74: iconst_1
    //   75: anewarray 249	com/sleepycat/b/g/al
    //   78: dup
    //   79: iconst_0
    //   80: aload 4
    //   82: aastore
    //   83: aload_3
    //   84: invokespecial 756	com/sleepycat/b/g/am:b	([Lcom/sleepycat/b/g/al;Lcom/sleepycat/b/g/ad;)V
    //   87: aload_0
    //   88: getfield 68	com/sleepycat/b/g/am:i	Ljava/util/Queue;
    //   91: invokeinterface 749 1 0
    //   96: checkcast 751	com/sleepycat/b/g/an
    //   99: astore_3
    //   100: goto -74 -> 26
    //   103: aload_1
    //   104: arraylength
    //   105: istore 10
    //   107: iconst_0
    //   108: istore 9
    //   110: iload 9
    //   112: iload 10
    //   114: if_icmpge +78 -> 192
    //   117: aload_1
    //   118: iload 9
    //   120: aaload
    //   121: astore_3
    //   122: aload_3
    //   123: getfield 255	com/sleepycat/b/g/al:a	Lcom/sleepycat/b/g/a/m;
    //   126: astore 4
    //   128: aload_3
    //   129: aload 4
    //   131: invokeinterface 758 1 0
    //   136: putfield 270	com/sleepycat/b/g/al:i	I
    //   139: aload 4
    //   141: invokeinterface 258 1 0
    //   146: getfield 761	com/sleepycat/b/g/af:O	Lcom/sleepycat/b/g/ag;
    //   149: getfield 764	com/sleepycat/b/g/ag:c	Z
    //   152: ifeq +1164 -> 1316
    //   155: aload_3
    //   156: new 189	com/sleepycat/b/g/ae
    //   159: dup
    //   160: aload 4
    //   162: aload_3
    //   163: getfield 293	com/sleepycat/b/g/al:e	Lcom/sleepycat/b/g/au;
    //   166: aload_3
    //   167: getfield 296	com/sleepycat/b/g/al:f	Lcom/sleepycat/b/g/av;
    //   170: invokespecial 299	com/sleepycat/b/g/ae:<init>	(Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/au;Lcom/sleepycat/b/g/av;)V
    //   173: putfield 286	com/sleepycat/b/g/al:g	Lcom/sleepycat/b/g/ae;
    //   176: aload_3
    //   177: aload_3
    //   178: getfield 286	com/sleepycat/b/g/al:g	Lcom/sleepycat/b/g/ae;
    //   181: aload 4
    //   183: invokestatic 371	com/sleepycat/b/g/am:a	(Lcom/sleepycat/b/g/ae;Lcom/sleepycat/b/g/a/m;)Ljava/nio/ByteBuffer;
    //   186: putfield 252	com/sleepycat/b/g/al:h	Ljava/nio/ByteBuffer;
    //   189: goto +1127 -> 1316
    //   192: aload_0
    //   193: aload_1
    //   194: aload_2
    //   195: invokespecial 756	com/sleepycat/b/g/am:b	([Lcom/sleepycat/b/g/al;Lcom/sleepycat/b/g/ad;)V
    //   198: aload_2
    //   199: getfield 502	com/sleepycat/b/g/ad:d	Z
    //   202: ifne +10 -> 212
    //   205: aload_2
    //   206: getfield 500	com/sleepycat/b/g/ad:b	Z
    //   209: ifeq +859 -> 1068
    //   212: aload_0
    //   213: getfield 84	com/sleepycat/b/g/am:l	Lcom/sleepycat/b/g/h;
    //   216: astore 7
    //   218: aload_2
    //   219: getfield 502	com/sleepycat/b/g/ad:d	Z
    //   222: istore 19
    //   224: iconst_0
    //   225: istore 12
    //   227: iconst_0
    //   228: istore 13
    //   230: iconst_0
    //   231: istore 9
    //   233: aconst_null
    //   234: astore 6
    //   236: aconst_null
    //   237: astore 4
    //   239: aload 7
    //   241: getfield 767	com/sleepycat/b/g/h:c	Ljava/lang/Object;
    //   244: astore 8
    //   246: aload 8
    //   248: monitorenter
    //   249: aload 7
    //   251: getfield 768	com/sleepycat/b/g/h:o	Lcom/sleepycat/b/p/z;
    //   254: invokevirtual 457	com/sleepycat/b/p/z:f	()V
    //   257: iload 19
    //   259: ifeq +11 -> 270
    //   262: aload 7
    //   264: getfield 770	com/sleepycat/b/g/h:l	Lcom/sleepycat/b/p/z;
    //   267: invokevirtual 457	com/sleepycat/b/p/z:f	()V
    //   270: aload 7
    //   272: getfield 773	com/sleepycat/b/g/h:e	Lcom/sleepycat/b/g/i;
    //   275: astore 5
    //   277: aload 5
    //   279: iload 19
    //   281: invokevirtual 776	com/sleepycat/b/g/i:a	(Z)V
    //   284: aload 7
    //   286: getfield 777	com/sleepycat/b/g/h:d	Z
    //   289: ifeq +340 -> 629
    //   292: iconst_1
    //   293: istore 14
    //   295: aload 7
    //   297: aload 7
    //   299: getfield 779	com/sleepycat/b/g/h:f	I
    //   302: iconst_1
    //   303: iadd
    //   304: putfield 779	com/sleepycat/b/g/h:f	I
    //   307: aload 6
    //   309: astore_3
    //   310: iload 14
    //   312: istore 9
    //   314: iload 13
    //   316: istore 10
    //   318: iload 12
    //   320: istore 11
    //   322: aload 7
    //   324: getfield 780	com/sleepycat/b/g/h:j	Z
    //   327: ifeq +998 -> 1325
    //   330: aload 6
    //   332: astore_3
    //   333: iload 14
    //   335: istore 9
    //   337: iload 13
    //   339: istore 10
    //   341: iload 12
    //   343: istore 11
    //   345: aload 7
    //   347: getfield 779	com/sleepycat/b/g/h:f	I
    //   350: iconst_1
    //   351: if_icmpne +974 -> 1325
    //   354: aload 7
    //   356: invokestatic 785	java/lang/System:nanoTime	()J
    //   359: putfield 787	com/sleepycat/b/g/h:g	J
    //   362: iconst_0
    //   363: istore 9
    //   365: iconst_0
    //   366: istore 10
    //   368: iconst_1
    //   369: istore 12
    //   371: aload 4
    //   373: astore_3
    //   374: aload 8
    //   376: monitorexit
    //   377: aload_3
    //   378: astore 4
    //   380: iload 9
    //   382: istore 13
    //   384: iload 10
    //   386: istore 11
    //   388: iload 12
    //   390: ifeq +49 -> 439
    //   393: aload 5
    //   395: invokevirtual 788	com/sleepycat/b/g/i:a	()I
    //   398: istore 12
    //   400: iload 12
    //   402: getstatic 790	com/sleepycat/b/g/i:b	I
    //   405: if_icmpne +575 -> 980
    //   408: aload 7
    //   410: getfield 767	com/sleepycat/b/g/h:c	Ljava/lang/Object;
    //   413: astore 4
    //   415: aload 4
    //   417: monitorenter
    //   418: aload 7
    //   420: getfield 777	com/sleepycat/b/g/h:d	Z
    //   423: ifeq +384 -> 807
    //   426: iconst_1
    //   427: istore 11
    //   429: aload 4
    //   431: monitorexit
    //   432: iload 9
    //   434: istore 13
    //   436: aload_3
    //   437: astore 4
    //   439: iload 11
    //   441: ifeq +83 -> 524
    //   444: aload 5
    //   446: invokevirtual 791	com/sleepycat/b/g/i:b	()Z
    //   449: ifeq +590 -> 1039
    //   452: aload 7
    //   454: getfield 793	com/sleepycat/b/g/h:a	Lcom/sleepycat/b/c/ad;
    //   457: getfield 796	com/sleepycat/b/c/ad:w	Lcom/sleepycat/b/g/am;
    //   460: invokevirtual 797	com/sleepycat/b/g/am:b	()V
    //   463: aload 5
    //   465: invokevirtual 791	com/sleepycat/b/g/i:b	()Z
    //   468: ifeq +22 -> 490
    //   471: aload 7
    //   473: getfield 793	com/sleepycat/b/g/h:a	Lcom/sleepycat/b/c/ad;
    //   476: getfield 75	com/sleepycat/b/c/ad:x	Lcom/sleepycat/b/g/m;
    //   479: invokevirtual 718	com/sleepycat/b/g/m:e	()V
    //   482: aload 7
    //   484: getfield 800	com/sleepycat/b/g/h:m	Lcom/sleepycat/b/p/d;
    //   487: invokevirtual 804	com/sleepycat/b/p/d:g	()V
    //   490: aload 7
    //   492: getfield 767	com/sleepycat/b/g/h:c	Ljava/lang/Object;
    //   495: astore_3
    //   496: aload_3
    //   497: monitorenter
    //   498: iload 13
    //   500: ifeq +22 -> 522
    //   503: aload 4
    //   505: invokevirtual 805	com/sleepycat/b/g/i:c	()V
    //   508: aload 7
    //   510: getfield 773	com/sleepycat/b/g/h:e	Lcom/sleepycat/b/g/i;
    //   513: invokevirtual 807	com/sleepycat/b/g/i:d	()V
    //   516: aload 7
    //   518: iconst_0
    //   519: putfield 777	com/sleepycat/b/g/h:d	Z
    //   522: aload_3
    //   523: monitorexit
    //   524: aload_1
    //   525: arraylength
    //   526: istore 10
    //   528: iconst_0
    //   529: istore 9
    //   531: iload 9
    //   533: iload 10
    //   535: if_icmpge +577 -> 1112
    //   538: aload_1
    //   539: iload 9
    //   541: aaload
    //   542: astore_3
    //   543: aload_3
    //   544: getfield 296	com/sleepycat/b/g/al:f	Lcom/sleepycat/b/g/av;
    //   547: getfield 808	com/sleepycat/b/g/av:h	Z
    //   550: ifeq +544 -> 1094
    //   553: getstatic 46	com/sleepycat/b/g/am:j	Z
    //   556: ifne +530 -> 1086
    //   559: aload_3
    //   560: getfield 286	com/sleepycat/b/g/al:g	Lcom/sleepycat/b/g/ae;
    //   563: getfield 367	com/sleepycat/b/g/ae:e	Lcom/sleepycat/b/p/au;
    //   566: ifnonnull +520 -> 1086
    //   569: new 288	java/lang/AssertionError
    //   572: dup
    //   573: new 373	java/lang/StringBuilder
    //   576: dup
    //   577: ldc_w 810
    //   580: invokespecial 376	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   583: aload_3
    //   584: getfield 286	com/sleepycat/b/g/al:g	Lcom/sleepycat/b/g/ae;
    //   587: invokevirtual 390	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   590: ldc_w 641
    //   593: invokevirtual 385	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   596: aload_3
    //   597: getfield 296	com/sleepycat/b/g/al:f	Lcom/sleepycat/b/g/av;
    //   600: invokevirtual 390	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   603: invokevirtual 398	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   606: invokespecial 472	java/lang/AssertionError:<init>	(Ljava/lang/Object;)V
    //   609: athrow
    //   610: astore_1
    //   611: aload_0
    //   612: getfield 70	com/sleepycat/b/g/am:e	Lcom/sleepycat/b/c/ad;
    //   615: invokevirtual 176	com/sleepycat/b/c/ad:j	()Z
    //   618: ifeq +9 -> 627
    //   621: invokestatic 180	com/sleepycat/b/g/m:a	()Z
    //   624: ifeq +479 -> 1103
    //   627: aload_1
    //   628: athrow
    //   629: iconst_1
    //   630: istore 10
    //   632: iconst_1
    //   633: istore 11
    //   635: aload 7
    //   637: iconst_1
    //   638: putfield 777	com/sleepycat/b/g/h:d	Z
    //   641: aload 7
    //   643: getfield 780	com/sleepycat/b/g/h:j	Z
    //   646: ifeq +79 -> 725
    //   649: aload 7
    //   651: getfield 779	com/sleepycat/b/g/h:f	I
    //   654: aload 7
    //   656: getfield 812	com/sleepycat/b/g/h:h	I
    //   659: if_icmpge +137 -> 796
    //   662: invokestatic 785	java/lang/System:nanoTime	()J
    //   665: aload 7
    //   667: getfield 787	com/sleepycat/b/g/h:g	J
    //   670: lsub
    //   671: lstore 15
    //   673: aload 7
    //   675: getfield 814	com/sleepycat/b/g/h:i	J
    //   678: lstore 17
    //   680: lload 15
    //   682: lload 17
    //   684: lcmp
    //   685: ifge +32 -> 717
    //   688: aload 7
    //   690: getfield 816	com/sleepycat/b/g/h:r	Lcom/sleepycat/b/p/z;
    //   693: invokevirtual 457	com/sleepycat/b/p/z:f	()V
    //   696: aload 7
    //   698: getfield 767	com/sleepycat/b/g/h:c	Ljava/lang/Object;
    //   701: lload 15
    //   703: ldc2_w 817
    //   706: ldiv
    //   707: lload 15
    //   709: l2i
    //   710: ldc_w 819
    //   713: irem
    //   714: invokevirtual 823	java/lang/Object:wait	(JI)V
    //   717: aload 7
    //   719: getfield 825	com/sleepycat/b/g/h:q	Lcom/sleepycat/b/p/z;
    //   722: invokevirtual 457	com/sleepycat/b/p/z:f	()V
    //   725: aload 7
    //   727: getfield 773	com/sleepycat/b/g/h:e	Lcom/sleepycat/b/g/i;
    //   730: astore_3
    //   731: aload 7
    //   733: new 775	com/sleepycat/b/g/i
    //   736: dup
    //   737: aload 7
    //   739: getfield 826	com/sleepycat/b/g/h:b	J
    //   742: aload 7
    //   744: getfield 793	com/sleepycat/b/g/h:a	Lcom/sleepycat/b/c/ad;
    //   747: invokespecial 829	com/sleepycat/b/g/i:<init>	(JLcom/sleepycat/b/c/ad;)V
    //   750: putfield 773	com/sleepycat/b/g/h:e	Lcom/sleepycat/b/g/i;
    //   753: aload 7
    //   755: iconst_0
    //   756: putfield 779	com/sleepycat/b/g/h:f	I
    //   759: goto +566 -> 1325
    //   762: astore_1
    //   763: new 831	com/sleepycat/b/bo
    //   766: dup
    //   767: aload 7
    //   769: getfield 793	com/sleepycat/b/g/h:a	Lcom/sleepycat/b/c/ad;
    //   772: ldc_w 833
    //   775: aload_1
    //   776: invokespecial 836	com/sleepycat/b/bo:<init>	(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   779: athrow
    //   780: astore_1
    //   781: aload 8
    //   783: monitorexit
    //   784: aload_1
    //   785: athrow
    //   786: astore_1
    //   787: aload_0
    //   788: getfield 70	com/sleepycat/b/g/am:e	Lcom/sleepycat/b/c/ad;
    //   791: aload_1
    //   792: invokestatic 183	com/sleepycat/b/aa:a	(Lcom/sleepycat/b/c/ad;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;
    //   795: athrow
    //   796: aload 7
    //   798: getfield 838	com/sleepycat/b/g/h:p	Lcom/sleepycat/b/p/z;
    //   801: invokevirtual 457	com/sleepycat/b/p/z:f	()V
    //   804: goto -79 -> 725
    //   807: iconst_1
    //   808: istore 9
    //   810: aload 7
    //   812: iconst_1
    //   813: putfield 777	com/sleepycat/b/g/h:d	Z
    //   816: aload 7
    //   818: getfield 780	com/sleepycat/b/g/h:j	Z
    //   821: ifeq +79 -> 900
    //   824: aload 7
    //   826: getfield 779	com/sleepycat/b/g/h:f	I
    //   829: aload 7
    //   831: getfield 812	com/sleepycat/b/g/h:h	I
    //   834: if_icmpge +135 -> 969
    //   837: invokestatic 785	java/lang/System:nanoTime	()J
    //   840: aload 7
    //   842: getfield 787	com/sleepycat/b/g/h:g	J
    //   845: lsub
    //   846: lstore 15
    //   848: aload 7
    //   850: getfield 814	com/sleepycat/b/g/h:i	J
    //   853: lstore 17
    //   855: lload 15
    //   857: lload 17
    //   859: lcmp
    //   860: ifge +32 -> 892
    //   863: aload 7
    //   865: getfield 816	com/sleepycat/b/g/h:r	Lcom/sleepycat/b/p/z;
    //   868: invokevirtual 457	com/sleepycat/b/p/z:f	()V
    //   871: aload 7
    //   873: getfield 767	com/sleepycat/b/g/h:c	Ljava/lang/Object;
    //   876: lload 15
    //   878: ldc2_w 817
    //   881: ldiv
    //   882: lload 15
    //   884: l2i
    //   885: ldc_w 819
    //   888: irem
    //   889: invokevirtual 823	java/lang/Object:wait	(JI)V
    //   892: aload 7
    //   894: getfield 825	com/sleepycat/b/g/h:q	Lcom/sleepycat/b/p/z;
    //   897: invokevirtual 457	com/sleepycat/b/p/z:f	()V
    //   900: aload 7
    //   902: new 775	com/sleepycat/b/g/i
    //   905: dup
    //   906: aload 7
    //   908: getfield 826	com/sleepycat/b/g/h:b	J
    //   911: aload 7
    //   913: getfield 793	com/sleepycat/b/g/h:a	Lcom/sleepycat/b/c/ad;
    //   916: invokespecial 829	com/sleepycat/b/g/i:<init>	(JLcom/sleepycat/b/c/ad;)V
    //   919: putfield 773	com/sleepycat/b/g/h:e	Lcom/sleepycat/b/g/i;
    //   922: aload 7
    //   924: iconst_0
    //   925: putfield 779	com/sleepycat/b/g/h:f	I
    //   928: aload 5
    //   930: astore_3
    //   931: goto -505 -> 426
    //   934: astore_1
    //   935: new 831	com/sleepycat/b/bo
    //   938: dup
    //   939: aload 7
    //   941: getfield 793	com/sleepycat/b/g/h:a	Lcom/sleepycat/b/c/ad;
    //   944: ldc_w 833
    //   947: aload_1
    //   948: invokespecial 836	com/sleepycat/b/bo:<init>	(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   951: athrow
    //   952: astore_1
    //   953: aload 4
    //   955: monitorexit
    //   956: aload_1
    //   957: athrow
    //   958: astore_1
    //   959: aload_0
    //   960: getfield 70	com/sleepycat/b/g/am:e	Lcom/sleepycat/b/c/ad;
    //   963: aload_1
    //   964: invokevirtual 186	com/sleepycat/b/c/ad:a	(Ljava/lang/Error;)V
    //   967: aload_1
    //   968: athrow
    //   969: aload 7
    //   971: getfield 838	com/sleepycat/b/g/h:p	Lcom/sleepycat/b/p/z;
    //   974: invokevirtual 457	com/sleepycat/b/p/z:f	()V
    //   977: goto -77 -> 900
    //   980: aload_3
    //   981: astore 4
    //   983: iload 9
    //   985: istore 13
    //   987: iload 10
    //   989: istore 11
    //   991: iload 12
    //   993: getstatic 840	com/sleepycat/b/g/i:a	I
    //   996: if_icmpne -557 -> 439
    //   999: iconst_1
    //   1000: istore 11
    //   1002: aload 7
    //   1004: getfield 767	com/sleepycat/b/g/h:c	Ljava/lang/Object;
    //   1007: astore 4
    //   1009: aload 4
    //   1011: monitorenter
    //   1012: aload 7
    //   1014: getfield 841	com/sleepycat/b/g/h:n	Lcom/sleepycat/b/p/z;
    //   1017: invokevirtual 457	com/sleepycat/b/p/z:f	()V
    //   1020: aload 4
    //   1022: monitorexit
    //   1023: aload_3
    //   1024: astore 4
    //   1026: iload 9
    //   1028: istore 13
    //   1030: goto -591 -> 439
    //   1033: astore_1
    //   1034: aload 4
    //   1036: monitorexit
    //   1037: aload_1
    //   1038: athrow
    //   1039: aload 7
    //   1041: getfield 793	com/sleepycat/b/g/h:a	Lcom/sleepycat/b/c/ad;
    //   1044: getfield 796	com/sleepycat/b/c/ad:w	Lcom/sleepycat/b/g/am;
    //   1047: astore_3
    //   1048: aload_3
    //   1049: getfield 90	com/sleepycat/b/g/am:f	Z
    //   1052: ifne -589 -> 463
    //   1055: aload_3
    //   1056: iconst_1
    //   1057: invokespecial 716	com/sleepycat/b/g/am:a	(Z)V
    //   1060: goto -597 -> 463
    //   1063: astore_1
    //   1064: aload_3
    //   1065: monitorexit
    //   1066: aload_1
    //   1067: athrow
    //   1068: aload_2
    //   1069: getfield 406	com/sleepycat/b/g/ad:k	Z
    //   1072: ifeq -548 -> 524
    //   1075: aload_0
    //   1076: getfield 97	com/sleepycat/b/g/am:a	Lcom/sleepycat/b/g/ab;
    //   1079: iconst_0
    //   1080: invokevirtual 247	com/sleepycat/b/g/ab:a	(Z)V
    //   1083: goto -559 -> 524
    //   1086: aload_0
    //   1087: getfield 70	com/sleepycat/b/g/am:e	Lcom/sleepycat/b/c/ad;
    //   1090: aload_3
    //   1091: invokevirtual 844	com/sleepycat/b/c/ad:a	(Lcom/sleepycat/b/g/al;)V
    //   1094: iload 9
    //   1096: iconst_1
    //   1097: iadd
    //   1098: istore 9
    //   1100: goto -569 -> 531
    //   1103: aload_0
    //   1104: getfield 70	com/sleepycat/b/g/am:e	Lcom/sleepycat/b/c/ad;
    //   1107: aload_1
    //   1108: invokestatic 183	com/sleepycat/b/aa:a	(Lcom/sleepycat/b/c/ad;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;
    //   1111: athrow
    //   1112: aload_0
    //   1113: getfield 70	com/sleepycat/b/g/am:e	Lcom/sleepycat/b/c/ad;
    //   1116: getfield 848	com/sleepycat/b/c/ad:C	Lcom/sleepycat/b/h/d;
    //   1119: astore_1
    //   1120: aload_1
    //   1121: getfield 852	com/sleepycat/b/h/d:e	J
    //   1124: lconst_0
    //   1125: lcmp
    //   1126: ifeq +43 -> 1169
    //   1129: aload_1
    //   1130: getfield 856	com/sleepycat/b/p/h:p	Z
    //   1133: ifne +36 -> 1169
    //   1136: aload_1
    //   1137: getfield 858	com/sleepycat/b/h/d:d	Lcom/sleepycat/b/c/ad;
    //   1140: getfield 75	com/sleepycat/b/c/ad:x	Lcom/sleepycat/b/g/m;
    //   1143: getfield 306	com/sleepycat/b/g/m:p	J
    //   1146: aload_1
    //   1147: getfield 859	com/sleepycat/b/h/d:h	J
    //   1150: aload_1
    //   1151: getfield 861	com/sleepycat/b/h/d:f	J
    //   1154: invokestatic 864	com/sleepycat/b/p/j:a	(JJJ)J
    //   1157: aload_1
    //   1158: getfield 852	com/sleepycat/b/h/d:e	J
    //   1161: lcmp
    //   1162: iflt +7 -> 1169
    //   1165: aload_1
    //   1166: invokevirtual 865	com/sleepycat/b/h/d:f	()V
    //   1169: aload_2
    //   1170: getfield 347	com/sleepycat/b/g/ad:i	Z
    //   1173: ifeq +16 -> 1189
    //   1176: aload_0
    //   1177: getfield 70	com/sleepycat/b/g/am:e	Lcom/sleepycat/b/c/ad;
    //   1180: getfield 492	com/sleepycat/b/c/ad:D	Lcom/sleepycat/b/a/c;
    //   1183: getfield 498	com/sleepycat/b/a/c:ab	Lcom/sleepycat/b/a/ae;
    //   1186: invokevirtual 866	com/sleepycat/b/a/ae:b	()V
    //   1189: aload_2
    //   1190: getfield 578	com/sleepycat/b/g/ad:e	Z
    //   1193: ifeq -1181 -> 12
    //   1196: aload_0
    //   1197: getfield 70	com/sleepycat/b/g/am:e	Lcom/sleepycat/b/c/ad;
    //   1200: astore_1
    //   1201: aload_2
    //   1202: getfield 482	com/sleepycat/b/g/ad:j	I
    //   1205: istore 9
    //   1207: aload_0
    //   1208: getfield 97	com/sleepycat/b/g/am:a	Lcom/sleepycat/b/g/ab;
    //   1211: getfield 867	com/sleepycat/b/g/ab:a	I
    //   1214: istore 10
    //   1216: aload_1
    //   1217: getfield 869	com/sleepycat/b/c/ad:N	I
    //   1220: istore 11
    //   1222: iload 11
    //   1224: ifle -1212 -> 12
    //   1227: aload_1
    //   1228: getfield 872	com/sleepycat/b/c/ad:Q	Ljava/lang/Object;
    //   1231: astore_2
    //   1232: aload_2
    //   1233: monitorenter
    //   1234: aload_1
    //   1235: aload_1
    //   1236: getfield 874	com/sleepycat/b/c/ad:P	J
    //   1239: iload 9
    //   1241: i2l
    //   1242: ladd
    //   1243: putfield 874	com/sleepycat/b/c/ad:P	J
    //   1246: aload_1
    //   1247: getfield 874	com/sleepycat/b/c/ad:P	J
    //   1250: iload 10
    //   1252: i2l
    //   1253: ldiv
    //   1254: l2i
    //   1255: iload 11
    //   1257: if_icmplt +56 -> 1313
    //   1260: aload_1
    //   1261: aload_1
    //   1262: getfield 877	com/sleepycat/b/c/ad:L	I
    //   1265: iconst_1
    //   1266: iadd
    //   1267: putfield 877	com/sleepycat/b/c/ad:L	I
    //   1270: aload_1
    //   1271: aload_1
    //   1272: getfield 874	com/sleepycat/b/c/ad:P	J
    //   1275: iload 11
    //   1277: iload 10
    //   1279: imul
    //   1280: i2l
    //   1281: lsub
    //   1282: putfield 874	com/sleepycat/b/c/ad:P	J
    //   1285: getstatic 880	com/sleepycat/b/c/ad:ai	Z
    //   1288: ifne +25 -> 1313
    //   1291: aload_1
    //   1292: getfield 874	com/sleepycat/b/c/ad:P	J
    //   1295: lconst_0
    //   1296: lcmp
    //   1297: ifge +16 -> 1313
    //   1300: new 288	java/lang/AssertionError
    //   1303: dup
    //   1304: invokespecial 289	java/lang/AssertionError:<init>	()V
    //   1307: athrow
    //   1308: astore_1
    //   1309: aload_2
    //   1310: monitorexit
    //   1311: aload_1
    //   1312: athrow
    //   1313: aload_2
    //   1314: monitorexit
    //   1315: return
    //   1316: iload 9
    //   1318: iconst_1
    //   1319: iadd
    //   1320: istore 9
    //   1322: goto -1212 -> 110
    //   1325: iload 9
    //   1327: istore 12
    //   1329: iload 10
    //   1331: istore 9
    //   1333: iload 11
    //   1335: istore 10
    //   1337: goto -963 -> 374
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1340	0	this	am
    //   0	1340	1	paramArrayOfal	al[]
    //   25	1066	3	localObject1	Object
    //   275	654	5	locali	i
    //   234	97	6	localObject3	Object
    //   216	824	7	localh	h
    //   108	1224	9	i1	int
    //   105	1231	10	i2	int
    //   320	1014	11	i3	int
    //   225	1103	12	i4	int
    //   228	801	13	i5	int
    //   293	41	14	i6	int
    //   671	212	15	l1	long
    //   678	180	17	l2	long
    //   222	58	19	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   13	26	610	com/sleepycat/b/aa
    //   30	100	610	com/sleepycat/b/aa
    //   103	107	610	com/sleepycat/b/aa
    //   122	189	610	com/sleepycat/b/aa
    //   192	212	610	com/sleepycat/b/aa
    //   212	224	610	com/sleepycat/b/aa
    //   239	249	610	com/sleepycat/b/aa
    //   393	418	610	com/sleepycat/b/aa
    //   444	463	610	com/sleepycat/b/aa
    //   463	490	610	com/sleepycat/b/aa
    //   490	498	610	com/sleepycat/b/aa
    //   524	528	610	com/sleepycat/b/aa
    //   543	610	610	com/sleepycat/b/aa
    //   784	786	610	com/sleepycat/b/aa
    //   956	958	610	com/sleepycat/b/aa
    //   991	999	610	com/sleepycat/b/aa
    //   1002	1012	610	com/sleepycat/b/aa
    //   1037	1039	610	com/sleepycat/b/aa
    //   1039	1060	610	com/sleepycat/b/aa
    //   1066	1068	610	com/sleepycat/b/aa
    //   1068	1083	610	com/sleepycat/b/aa
    //   1086	1094	610	com/sleepycat/b/aa
    //   688	717	762	java/lang/InterruptedException
    //   249	257	780	finally
    //   262	270	780	finally
    //   270	292	780	finally
    //   295	307	780	finally
    //   322	330	780	finally
    //   345	362	780	finally
    //   374	377	780	finally
    //   635	680	780	finally
    //   688	717	780	finally
    //   717	725	780	finally
    //   725	759	780	finally
    //   763	780	780	finally
    //   781	784	780	finally
    //   796	804	780	finally
    //   13	26	786	java/lang/Exception
    //   30	100	786	java/lang/Exception
    //   103	107	786	java/lang/Exception
    //   122	189	786	java/lang/Exception
    //   192	212	786	java/lang/Exception
    //   212	224	786	java/lang/Exception
    //   239	249	786	java/lang/Exception
    //   393	418	786	java/lang/Exception
    //   444	463	786	java/lang/Exception
    //   463	490	786	java/lang/Exception
    //   490	498	786	java/lang/Exception
    //   524	528	786	java/lang/Exception
    //   543	610	786	java/lang/Exception
    //   784	786	786	java/lang/Exception
    //   956	958	786	java/lang/Exception
    //   991	999	786	java/lang/Exception
    //   1002	1012	786	java/lang/Exception
    //   1037	1039	786	java/lang/Exception
    //   1039	1060	786	java/lang/Exception
    //   1066	1068	786	java/lang/Exception
    //   1068	1083	786	java/lang/Exception
    //   1086	1094	786	java/lang/Exception
    //   863	892	934	java/lang/InterruptedException
    //   418	426	952	finally
    //   429	432	952	finally
    //   810	855	952	finally
    //   863	892	952	finally
    //   892	900	952	finally
    //   900	928	952	finally
    //   935	952	952	finally
    //   953	956	952	finally
    //   969	977	952	finally
    //   13	26	958	java/lang/Error
    //   30	100	958	java/lang/Error
    //   103	107	958	java/lang/Error
    //   122	189	958	java/lang/Error
    //   192	212	958	java/lang/Error
    //   212	224	958	java/lang/Error
    //   239	249	958	java/lang/Error
    //   393	418	958	java/lang/Error
    //   444	463	958	java/lang/Error
    //   463	490	958	java/lang/Error
    //   490	498	958	java/lang/Error
    //   524	528	958	java/lang/Error
    //   543	610	958	java/lang/Error
    //   784	786	958	java/lang/Error
    //   956	958	958	java/lang/Error
    //   991	999	958	java/lang/Error
    //   1002	1012	958	java/lang/Error
    //   1037	1039	958	java/lang/Error
    //   1039	1060	958	java/lang/Error
    //   1066	1068	958	java/lang/Error
    //   1068	1083	958	java/lang/Error
    //   1086	1094	958	java/lang/Error
    //   1012	1023	1033	finally
    //   1034	1037	1033	finally
    //   503	522	1063	finally
    //   522	524	1063	finally
    //   1064	1066	1063	finally
    //   1234	1308	1308	finally
    //   1309	1311	1308	finally
    //   1313	1315	1308	finally
  }
  
  public final boolean a(i parami, Collection<Long> paramCollection)
  {
    synchronized (this.b)
    {
      if ((!i.w) && (parami.l == null)) {
        throw new AssertionError();
      }
    }
    paramCollection = paramCollection.iterator();
    boolean bool = false;
    int i1;
    if (paramCollection.hasNext())
    {
      Long localLong = (Long)paramCollection.next();
      g localg = parami.l;
      if (localg.b.remove(localLong) == null) {
        break label137;
      }
      localg.d.f(0 - g.a);
      localg.c -= g.a;
      i1 = 1;
    }
    else
    {
      return bool;
    }
    label137:
    label141:
    for (;;)
    {
      for (;;)
      {
        if (i1 == 0) {
          break label141;
        }
        bool = true;
        break;
        i1 = 0;
      }
    }
  }
  
  public final long b(com.sleepycat.b.g.a.m paramm, av paramav)
  {
    return a(paramm, au.a, false, false, false, paramav);
  }
  
  public final com.sleepycat.b.g.a.m b(long paramLong)
  {
    return a(paramLong, this.e.k()).b;
  }
  
  public final void b()
  {
    if (!this.f) {
      a(false);
    }
  }
  
  public final long c()
  {
    return this.a.b.f().longValue();
  }
  
  public final com.sleepycat.b.g.a.m c(long paramLong)
  {
    try
    {
      com.sleepycat.b.g.a.m localm = a(paramLong);
      return localm;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      throw new com.sleepycat.b.aa(this.e, com.sleepycat.b.c.ac.k, localFileNotFoundException);
    }
  }
  
  public final Object d(long paramLong)
  {
    return a(paramLong).h();
  }
  
  public final Object e(long paramLong)
  {
    return c(paramLong).h();
  }
  
  public final ap f(long paramLong)
  {
    aa localaa = this.a.a(paramLong);
    Object localObject = localaa;
    if (localaa == null) {}
    try
    {
      long l1 = j.d(paramLong);
      localObject = new k(this.d.f(l1), this.g, this.d);
      return (ap)localObject;
    }
    catch (n localn)
    {
      localn.a("lsn= " + j.h(paramLong));
      throw localn;
    }
  }
  
  public final aa g(long paramLong)
  {
    if ((!j) && (j.e(paramLong) == 0L)) {
      throw new AssertionError("Read of lsn " + j.h(paramLong) + " is illegal because file header entry is not in the log buffer");
    }
    return this.a.a(paramLong);
  }
  
  public final com.sleepycat.b.a.z h(long paramLong)
  {
    synchronized (this.b)
    {
      com.sleepycat.b.a.z localz = this.e.D.ab.b(paramLong);
      localz.q = false;
      return localz;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\am.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */