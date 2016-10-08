package com.sleepycat.b.c;

import com.sleepycat.b.ax;
import com.sleepycat.b.az;
import com.sleepycat.b.ba;
import com.sleepycat.b.bb;
import com.sleepycat.b.bn;
import com.sleepycat.b.br;
import com.sleepycat.b.bs;
import com.sleepycat.b.d.e;
import com.sleepycat.b.f.f;
import com.sleepycat.b.g.a.s;
import com.sleepycat.b.g.am;
import com.sleepycat.b.g.av;
import com.sleepycat.b.h.u;
import com.sleepycat.b.n.y;
import com.sleepycat.b.p.ap;
import com.sleepycat.b.p.at;
import com.sleepycat.b.p.w;
import java.io.File;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.SortedSet;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.logging.ConsoleHandler;
import java.util.logging.FileHandler;
import java.util.logging.Formatter;
import java.util.logging.Handler;
import java.util.logging.Logger;

public class ad
  implements ab
{
  public static final boolean T;
  private static final ae aB;
  private static final ae aC;
  private static final ae aD;
  public static final boolean ab;
  private static boolean ak;
  private static int am;
  private static boolean aq;
  private static int at;
  public com.sleepycat.b.d.b A;
  public com.sleepycat.b.e.b B;
  public com.sleepycat.b.h.d C;
  public com.sleepycat.b.a.c D;
  public final bd E = new bd(this);
  public volatile com.sleepycat.b.aa F;
  public f G;
  public com.sleepycat.b.ag H = null;
  ba<bb> I = null;
  ClassLoader J = null;
  public com.sleepycat.b.aw K = null;
  public volatile int L;
  public volatile int M;
  public volatile int N;
  public int O;
  public long P;
  public final Object Q = new Object();
  boolean R = false;
  public final com.sleepycat.b.aa S = com.sleepycat.b.aa.a();
  public final ConsoleHandler U;
  public final FileHandler V;
  public final Handler W;
  public boolean X;
  protected final Formatter Y;
  protected com.sleepycat.b.x Z;
  public volatile o a;
  private com.sleepycat.b.j.a aA = null;
  protected Integer aa;
  public final as ac;
  public ap ad;
  public com.sleepycat.b.p.z ae;
  public final String af;
  public com.sleepycat.b.k.a.c ag;
  public int ah;
  private final AtomicInteger aj = new AtomicInteger(0);
  private boolean al = false;
  private List<ab> an;
  private com.sleepycat.b.j.b ao;
  private com.sleepycat.b.p.ao<Long> ap;
  private long ar;
  private final Object as = new Object();
  private volatile boolean au = false;
  private final Object av = new Object();
  private long aw;
  private final ArrayList<ag> ax = new ArrayList();
  private com.sleepycat.b.p.ai ay;
  private com.sleepycat.b.h az;
  public volatile boolean b;
  public final File c;
  final AtomicInteger d = new AtomicInteger(0);
  public boolean e;
  public boolean f;
  public boolean g;
  public boolean h;
  public boolean i;
  public boolean j;
  com.sleepycat.b.a k;
  com.sleepycat.b.b l;
  public boolean m = false;
  public ao n;
  public long o;
  public long p;
  public p q;
  public long r = -1L;
  public com.sleepycat.b.f.a s;
  public al t;
  public m u;
  public Logger v;
  public am w;
  public com.sleepycat.b.g.m x;
  public com.sleepycat.b.n.aj y;
  public com.sleepycat.b.j.d z;
  
  static
  {
    boolean bool2 = true;
    if (!ad.class.desiredAssertionStatus())
    {
      bool1 = true;
      ai = bool1;
      aq = false;
      at = 0;
      if (System.getProperty("je.disable.java.adler32") != null) {
        break label146;
      }
    }
    label146:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      T = bool1;
      ab = "Dalvik".equals(System.getProperty("java.vm.name"));
      com.sleepycat.b.n.p.a.g = null;
      com.sleepycat.b.n.p.b.g = null;
      com.sleepycat.b.n.p.c.g = com.sleepycat.b.n.o.b;
      com.sleepycat.b.n.p.d.g = com.sleepycat.b.n.o.c;
      com.sleepycat.b.n.p.e.g = com.sleepycat.b.n.o.d;
      com.sleepycat.b.n.p.f.g = com.sleepycat.b.n.o.d;
      aB = new ae(az.c);
      aC = new ae(az.b);
      aD = new ae(az.d);
      return;
      bool1 = false;
      break;
    }
  }
  
  public ad(File paramFile, com.sleepycat.b.z paramz, ad paramad)
  {
    this(paramFile, paramz, paramad, (byte)0);
  }
  
  private ad(File paramFile, com.sleepycat.b.z paramz, ad paramad, byte paramByte)
  {
    this.E.a(bg.a);
    try
    {
      this.c = paramFile;
      this.a = o.a;
      this.s = new com.sleepycat.b.f.a("MapTreeRoot");
      this.ay = new com.sleepycat.b.p.ai("Environment", "General environment wide statistics.");
      this.ad = new ap("Op", "Thoughput statistics for JE calls.");
      this.ae = new com.sleepycat.b.p.z(this.ay, x.g);
      this.aw = System.currentTimeMillis();
      this.u = a(paramz);
      this.an = new ArrayList();
      a(this);
      a(paramz, null);
      this.Y = h();
      this.U = new com.sleepycat.b.o.a(this.Y, this);
      this.V = aa();
      this.W = paramz.g;
      this.v = w.a(getClass());
      this.n = new ao(this, paramad, this.u);
      this.x = new com.sleepycat.b.g.m(this, paramFile, this.g);
      if ((!paramz.d) && (!this.x.d())) {
        throw new com.sleepycat.b.ad(this, "Home directory: " + paramFile);
      }
    }
    finally
    {
      Z();
      ab();
    }
    this.af = paramz.f;
    this.w = new am(this, this.g);
    this.t = new al(this);
    this.y = new com.sleepycat.b.n.aj(this);
    this.z = f();
    if (paramad != null)
    {
      if ((!ai) && (!this.i)) {
        throw new AssertionError();
      }
      this.A = paramad.A;
    }
    for (;;)
    {
      this.C = new com.sleepycat.b.h.d(this, com.sleepycat.b.h.d.a(this.u), "Checkpointer");
      this.B = new com.sleepycat.b.e.b(this, this.u.a(com.sleepycat.b.b.d.aj), "INCompressor");
      this.D = new com.sleepycat.b.a.c(this, "Cleaner");
      ae();
      this.ac = new as(this);
      this.q = new p(this, I(), J());
      this.G = new f("SecondaryAssociationLatch");
      paramFile = this.ac;
      paramFile.a = new AtomicLong(0L);
      paramFile.b = new AtomicLong(-9L);
      this.aa = this.z.a();
      if ((this.g) || (this.h) || (!this.u.a(com.sleepycat.b.b.d.bs))) {
        break;
      }
      this.aA = new com.sleepycat.b.j.a(this);
      a(this.aA);
      this.aA.a();
      return;
      if (this.i) {
        this.A = new com.sleepycat.b.d.k(this);
      } else {
        this.A = new com.sleepycat.b.d.i(this);
      }
    }
  }
  
  public static boolean H()
  {
    if (aq) {
      Thread.yield();
    }
    return true;
  }
  
  private void Y()
  {
    try
    {
      Iterator localIterator = this.ax.iterator();
      while (localIterator.hasNext()) {
        localIterator.next();
      }
    }
    finally {}
  }
  
  private void Z()
  {
    if (this.x != null) {}
    try
    {
      this.x.f();
      try
      {
        this.x.g();
        return;
      }
      catch (Throwable localThrowable1) {}
    }
    catch (Throwable localThrowable2)
    {
      for (;;) {}
    }
  }
  
  private void a(m paramm)
  {
    int i1 = 0;
    if (!this.g)
    {
      this.B.a(paramm.a(com.sleepycat.b.b.d.j));
      Object localObject1 = this.D;
      if ((paramm.a(com.sleepycat.b.b.d.t)) && (!this.h)) {}
      for (boolean bool = true; !((com.sleepycat.b.a.c)localObject1).Z.f; bool = false)
      {
        localObject1 = ((com.sleepycat.b.a.c)localObject1).ae;
        int i2 = localObject1.length;
        while (i1 < i2)
        {
          Object localObject2 = localObject1[i1];
          if (localObject2 != null) {
            ((com.sleepycat.b.a.h)localObject2).a(bool);
          }
          i1 += 1;
        }
      }
      this.C.a(paramm.a(com.sleepycat.b.b.d.s));
      if (this.ao != null) {
        this.ao.a(paramm.a(com.sleepycat.b.b.d.bs));
      }
    }
  }
  
  public static void a(PrintWriter paramPrintWriter, Exception paramException, String paramString)
  {
    paramPrintWriter.append("\nException " + paramString + ": ");
    paramException.printStackTrace(paramPrintWriter);
    paramPrintWriter.println();
  }
  
  private void a(String paramString, com.sleepycat.b.x paramx)
  {
    try
    {
      paramString = (ag)Class.forName(paramString).newInstance();
      this.ax.add(paramString);
      return;
    }
    catch (Exception paramString)
    {
      throw new com.sleepycat.b.aa(paramx.a, ac.r, paramString);
    }
  }
  
  private FileHandler aa()
  {
    if ((this.c == null) || (!this.c.isDirectory()) || (this.g)) {
      return null;
    }
    Object localObject = com.sleepycat.b.o.c.class.getName();
    String str1 = this.c + "/je.info";
    int i1 = 10000000;
    String str2 = w.a((String)localObject + ".limit");
    if (str2 != null) {
      i1 = Integer.parseInt(str2);
    }
    int i2 = 10;
    localObject = w.a((String)localObject + ".count");
    if (localObject != null) {
      i2 = Integer.parseInt((String)localObject);
    }
    try
    {
      localObject = new com.sleepycat.b.o.c(str1, i1, i2, this.Y, this);
      return (FileHandler)localObject;
    }
    catch (IOException localIOException)
    {
      throw com.sleepycat.b.aa.a("Problem creating output files in: " + str1, localIOException);
    }
  }
  
  private void ab()
  {
    if (this.U != null) {
      this.U.close();
    }
    if (this.V != null) {
      this.V.close();
    }
  }
  
  private void ac()
  {
    int i2 = 1;
    if (!this.u.a(com.sleepycat.b.b.d.x)) {
      return;
    }
    Object localObject1 = new bn();
    ((bn)localObject1).b = false;
    Object localObject2 = b((bn)localObject1);
    if (((com.sleepycat.b.ar)localObject2).a() != 0)
    {
      System.err.println("Problem: " + ((com.sleepycat.b.ar)localObject2).a() + " locks left");
      localObject2 = this.y.a;
      System.out.println(((com.sleepycat.b.n.l)localObject2).a());
    }
    for (int i1 = 0;; i1 = 1)
    {
      localObject1 = c((bn)localObject1);
      if (((bs)localObject1).a() != 0)
      {
        System.err.println("Problem: " + ((bs)localObject1).a() + " txns left");
        localObject1 = ((bs)localObject1).a;
        localObject2 = bl.h;
        localObject1 = (com.sleepycat.b.p.a)((com.sleepycat.b.p.ai)localObject1).b.get(localObject2);
        if (localObject1 == null) {}
        for (localObject1 = null; localObject1 != null; localObject1 = ((com.sleepycat.b.p.a)localObject1).a)
        {
          int i3 = localObject1.length;
          i1 = 0;
          while (i1 < i3)
          {
            localObject2 = localObject1[i1];
            System.err.println(localObject2);
            i1 += 1;
          }
        }
        i1 = 0;
      }
      if (com.sleepycat.b.f.d.a() > 0)
      {
        System.err.println("Some latches held at env close.");
        i1 = 0;
        com.sleepycat.b.f.d.b();
      }
      localObject1 = this.n;
      long l1 = ((ao)localObject1).Z.get() + ((ao)localObject1).aa.get() + ((ao)localObject1).ab.get() + ((ao)localObject1).c();
      if (l1 != 0L)
      {
        System.err.println("Local Cache Usage = " + l1);
        System.err.println(this.n.d());
        i1 = 0;
      }
      if (!ai) {}
      while ((i1 == 0) && (i2 != 0))
      {
        throw com.sleepycat.b.aa.c("Lock, transaction, latch or memory left behind at environment close");
        i2 = 0;
      }
      break;
    }
  }
  
  private void ad()
  {
    if (this.ao != null)
    {
      this.ao.e();
      this.ao.c();
      this.ao = null;
    }
  }
  
  private void ae()
  {
    if ((this.ao == null) && (!this.g) && (!this.h) && (this.u.a(com.sleepycat.b.b.d.bs))) {
      this.ao = new com.sleepycat.b.j.b(this, "StatCapture", this.u.a(com.sleepycat.b.b.d.bv), this.az, e(), this.z);
    }
  }
  
  private com.sleepycat.b.ar b(bn parambn)
  {
    int i1 = 0;
    try
    {
      com.sleepycat.b.n.l locall = this.y.a;
      com.sleepycat.b.p.ai localai1 = new com.sleepycat.b.p.ai("Locktable latches", "Shows lock table contention");
      while (i1 < locall.f)
      {
        localai1.a(locall.g[i1].a);
        i1 += 1;
      }
      com.sleepycat.b.p.ai localai2 = new com.sleepycat.b.p.ai("Locktable", "The types of locks held in the lock table");
      if (!parambn.b) {
        locall.a(localai2, false);
      }
      parambn = new com.sleepycat.b.ar(locall.k.a(parambn.c), localai1.a(parambn.c), localai2.a(parambn.c));
      return parambn;
    }
    finally {}
  }
  
  private bs c(bn parambn)
  {
    try
    {
      parambn = this.y.a(parambn);
      return parambn;
    }
    finally
    {
      parambn = finally;
      throw parambn;
    }
  }
  
  private void c(boolean paramBoolean)
  {
    for (;;)
    {
      try
      {
        com.sleepycat.b.x localx1 = this.Z;
        if (localx1 == null) {
          return;
        }
        if (paramBoolean)
        {
          this.Z = null;
          continue;
        }
        localx2 = this.Z;
      }
      finally {}
      com.sleepycat.b.x localx2;
      this.Z = null;
      localx2.a();
    }
  }
  
  public static int s()
  {
    return at;
  }
  
  public static boolean x()
  {
    return ak;
  }
  
  public static int y()
  {
    return am;
  }
  
  public final com.sleepycat.b.x A()
  {
    return this.Z;
  }
  
  public String B()
  {
    if (this.af == null) {
      return this.c.toString();
    }
    return this.af;
  }
  
  public long C()
  {
    if (this.o != 0L) {
      return this.o;
    }
    return 1L;
  }
  
  final void D()
  {
    if (this.A != null) {
      this.A.b();
    }
  }
  
  public final void E()
  {
    com.sleepycat.b.d.b localb = this.A;
    if (localb.c.a())
    {
      localb.b();
      com.sleepycat.b.d.a locala = localb.c;
      if (locala.a.a() - locala.a.a <= locala.a.b) {
        break label65;
      }
    }
    label65:
    for (int i1 = 1;; i1 = 0)
    {
      if (i1 != 0) {
        localb.a(e.c, false);
      }
      return;
    }
  }
  
  public final long F()
  {
    com.sleepycat.b.a.ae localae = this.D.ab;
    if (!localae.c.N) {}
    label161:
    label162:
    for (;;)
    {
      return 0L;
      if ((localae.b.j()) && (!localae.b.g))
      {
        ao localao = localae.b.n;
        int i1 = 0;
        Object localObject = null;
        Iterator localIterator = localae.a().iterator();
        long l1 = 0L;
        if (localIterator.hasNext())
        {
          com.sleepycat.b.a.z localz = (com.sleepycat.b.a.z)localIterator.next();
          int i2 = localz.o;
          l1 += i2;
          if ((i2 <= i1) || (!localz.q)) {
            break label161;
          }
          i1 = i2;
          localObject = localz;
        }
        for (;;)
        {
          break;
          if ((localObject == null) || (l1 <= localao.ae)) {
            break label162;
          }
          localae.b.D.aa.a((com.sleepycat.b.a.z)localObject);
          return 0L + i1;
        }
      }
    }
  }
  
  public final boolean G()
  {
    com.sleepycat.b.d.a locala = this.A.c;
    if (locala.a.a() + 2L * locala.c >= locala.a.a) {}
    for (boolean bool = true;; bool = false)
    {
      if (bool) {
        locala.d = true;
      }
      return bool;
    }
  }
  
  public boolean I()
  {
    return false;
  }
  
  public boolean J()
  {
    return false;
  }
  
  public boolean K()
  {
    return false;
  }
  
  public int L()
  {
    throw com.sleepycat.b.aa.c("Should not be called on a non replicated environment");
  }
  
  public boolean M()
  {
    return false;
  }
  
  public final boolean N()
  {
    return (this.q.g & 0x2) != 0;
  }
  
  public com.sleepycat.b.p.au O()
  {
    return null;
  }
  
  public void P() {}
  
  public u Q()
  {
    return new ah(this, (byte)0);
  }
  
  public boolean R()
  {
    return false;
  }
  
  public void S() {}
  
  public y T()
  {
    throw com.sleepycat.b.aa.c("Should not be called on a non replicated environment");
  }
  
  public void U() {}
  
  public final com.sleepycat.b.ae a(bn parambn)
  {
    com.sleepycat.b.ae localae = new com.sleepycat.b.ae();
    com.sleepycat.b.p.ai localai2;
    for (;;)
    {
      synchronized (this.av)
      {
        localObject1 = this.B;
        ((com.sleepycat.b.e.b)localObject1).b.a(Long.valueOf(((com.sleepycat.b.e.b)localObject1).d()));
        if (parambn.c)
        {
          ((com.sleepycat.b.e.b)localObject1).c = 0;
          ((com.sleepycat.b.e.b)localObject1).d = 0;
        }
        localae.a = ((com.sleepycat.b.e.b)localObject1).a.a(parambn.c);
        localae.c = this.C.a(parambn);
        localObject1 = this.D;
        if (!parambn.b) {
          ((com.sleepycat.b.a.c)localObject1).B.a(Long.valueOf(((com.sleepycat.b.a.c)localObject1).aa.a()));
        }
        ((com.sleepycat.b.a.c)localObject1).C.a(Float.valueOf(((com.sleepycat.b.a.c)localObject1).ac.a));
        ((com.sleepycat.b.a.c)localObject1).D.a(Integer.valueOf(((com.sleepycat.b.a.c)localObject1).ac.b));
        localai1 = ((com.sleepycat.b.a.c)localObject1).b.a(parambn.c);
        localai1.a(((com.sleepycat.b.a.c)localObject1).ad.f());
        localae.d = localai1;
        localae.e = this.w.a(parambn);
        localai1 = this.n.d();
        localObject3 = this.A;
        localai2 = ((com.sleepycat.b.d.b)localObject3).f.a(parambn.c);
        new com.sleepycat.b.p.z(localai2, com.sleepycat.b.d.h.r, ((com.sleepycat.b.d.b)localObject3).m.get());
        new com.sleepycat.b.p.z(localai2, com.sleepycat.b.d.h.s, ((com.sleepycat.b.d.b)localObject3).n.get());
        new com.sleepycat.b.p.z(localai2, com.sleepycat.b.d.h.t, ((com.sleepycat.b.d.b)localObject3).o.get());
        localai2.a(((com.sleepycat.b.d.b)localObject3).b.a(parambn));
        localObject1 = ((com.sleepycat.b.d.b)localObject3).c;
        long l1 = ((com.sleepycat.b.d.a)localObject1).a.a();
        long l2 = ((com.sleepycat.b.d.a)localObject1).a.a;
        ((com.sleepycat.b.d.a)localObject1).f.a(Long.valueOf(Math.max(0L, l1 - l2)));
        localai2.a(((com.sleepycat.b.d.a)localObject1).e.a(parambn.c));
        Iterator localIterator = EnumSet.allOf(e.class).iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        localObject1 = (e)localIterator.next();
        i1 = ((e)localObject1).ordinal();
        com.sleepycat.b.p.ag localag = ((e)localObject1).d();
        l1 = localObject3.r[i1].get();
        localObject1 = ((e)localObject1).c();
        localObject1 = (com.sleepycat.b.p.d)localai2.b.get(localObject1);
        if (localObject1 == null)
        {
          localObject1 = Long.valueOf(0L);
          new com.sleepycat.b.p.q(localai2, localag, l1, ((Long)localObject1).longValue(), (byte)0);
          if (!parambn.c) {
            continue;
          }
          localObject3.r[i1].set(0L);
        }
      }
      localObject1 = ((com.sleepycat.b.p.d)localObject1).f();
    }
    localae.b = localai2;
    localae.b.a(localai1);
    Object localObject1 = this.y.a;
    com.sleepycat.b.p.ai localai1 = ((com.sleepycat.b.n.l)localObject1).k.a(parambn.c);
    Object localObject3 = new com.sleepycat.b.p.ai("Locktable latches", "Shows lock table contention");
    int i1 = 0;
    for (;;)
    {
      if (i1 < ((com.sleepycat.b.n.l)localObject1).f)
      {
        ((com.sleepycat.b.p.ai)localObject3).a(localObject1.g[i1].a);
        if (parambn.c) {
          localObject1.g[i1].a.a();
        }
      }
      else
      {
        localai1.a((com.sleepycat.b.p.ai)localObject3);
        localObject3 = new com.sleepycat.b.p.ai("Locktable", "The types of locks held in the lock table");
        if (!parambn.b) {
          ((com.sleepycat.b.n.l)localObject1).a((com.sleepycat.b.p.ai)localObject3, parambn.c);
        }
        localai1.a((com.sleepycat.b.p.ai)localObject3);
        localae.f = localai1;
        localObject1 = this.ay.a(parambn.c);
        new com.sleepycat.b.p.z((com.sleepycat.b.p.ai)localObject1, x.h).a(Long.valueOf(this.aw));
        localae.g = ((com.sleepycat.b.p.ai)localObject1);
        localae.a(this.ad.a(parambn.c));
        return localae;
      }
      i1 += 1;
    }
  }
  
  public com.sleepycat.b.au a(com.sleepycat.b.n.q paramq, Throwable paramThrowable)
  {
    throw com.sleepycat.b.aa.c("Should not be called on a non replicated environment");
  }
  
  public com.sleepycat.b.au a(String paramString)
  {
    throw com.sleepycat.b.aa.c("Should not be called on a non replicated environment");
  }
  
  public com.sleepycat.b.au a(String paramString1, String paramString2, com.sleepycat.b.i parami)
  {
    throw com.sleepycat.b.aa.c("Should not be called on a non replicated environment");
  }
  
  public final com.sleepycat.b.ay a(i[] paramArrayOfi, com.sleepycat.b.aw paramaw)
  {
    long l3 = Long.MAX_VALUE;
    label275:
    label278:
    for (;;)
    {
      com.sleepycat.b.ay localay;
      aj localaj;
      long[] arrayOfLong;
      int i1;
      try
      {
        long l2 = paramaw.a;
        long l4 = paramaw.b;
        long l1 = l3;
        if (l4 > 0L)
        {
          l1 = l4 + System.currentTimeMillis();
          if (l1 >= 0L) {
            break label278;
          }
          l1 = l3;
        }
        l3 = this.n.ac.a;
        if (l2 == 0L)
        {
          l2 = l3;
          Arrays.sort(paramArrayOfi, new Comparator() {});
          localay = new com.sleepycat.b.ay();
          localaj = new aj(this, l2, l1, localay, paramaw);
          int i2 = paramArrayOfi.length;
          arrayOfLong = new long[i2];
          i1 = 0;
          if (i1 < i2)
          {
            arrayOfLong[i1] = paramArrayOfi[i1].b.d();
            i1 += 1;
            continue;
          }
        }
        else
        {
          if (l2 <= l3) {
            break label275;
          }
          throw new IllegalArgumentException("maxBytes parameter to preload() was specified as " + l2 + " bytes \nbut the cache is only " + l3 + " bytes.");
        }
      }
      catch (Error paramArrayOfi)
      {
        a(paramArrayOfi);
        throw paramArrayOfi;
      }
      paramArrayOfi = new ai(this, paramArrayOfi, arrayOfLong, localaj, paramaw);
      try
      {
        paramArrayOfi.a();
        if (localaj.a != null) {
          i1 = ax.a;
        }
        if ((!ai) && (com.sleepycat.b.f.d.a() != 0)) {
          throw new AssertionError();
        }
      }
      catch (ae paramArrayOfi)
      {
        for (;;)
        {
          localay.h = paramArrayOfi.a;
        }
      }
      return localay;
    }
  }
  
  public m a(com.sleepycat.b.z paramz)
  {
    return new m(paramz);
  }
  
  public com.sleepycat.b.n.z a(br parambr)
  {
    throw com.sleepycat.b.aa.c("Should not be called on a non replicated environment");
  }
  
  public final com.sleepycat.b.p.d a(com.sleepycat.b.p.ag paramag)
  {
    return (com.sleepycat.b.p.d)this.ad.b.get(paramag);
  }
  
  public com.sleepycat.b.x a()
  {
    return new af(this.c, z(), this);
  }
  
  public Collection<com.sleepycat.b.p.ai> a(bn parambn, Integer paramInteger)
  {
    throw new UnsupportedOperationException("Standalone Environment doesn't support replication statistics.");
  }
  
  public SortedSet<Long> a(SortedSet<Long> paramSortedSet)
  {
    Object localObject;
    if (this.ap != null) {
      localObject = paramSortedSet.headSet(this.ap.a());
    }
    long l1;
    do
    {
      return (SortedSet<Long>)localObject;
      l1 = this.ag.a();
      localObject = paramSortedSet;
    } while (l1 == 0L);
    return paramSortedSet.headSet(Long.valueOf(com.sleepycat.b.p.j.d(l1)));
  }
  
  public final void a(long paramLong)
  {
    this.s.a();
    if (paramLong != -1L) {}
    try
    {
      if (com.sleepycat.b.p.j.b(this.r, paramLong) < 0) {
        this.r = this.w.b(com.sleepycat.b.g.a.q.a(com.sleepycat.b.g.af.p, this.q), av.g);
      }
      return;
    }
    finally
    {
      this.s.c();
    }
  }
  
  public void a(com.sleepycat.b.aa paramaa)
  {
    this.F = paramaa;
    this.a = o.d;
    v();
  }
  
  public final void a(ab paramab)
  {
    try
    {
      this.an.add(paramab);
      return;
    }
    finally
    {
      paramab = finally;
      throw paramab;
    }
  }
  
  public void a(com.sleepycat.b.g.al paramal) {}
  
  public void a(com.sleepycat.b.h.l paraml) {}
  
  public final void a(com.sleepycat.b.l.j paramj)
  {
    if (this.B != null)
    {
      com.sleepycat.b.e.b localb = this.B;
      if (paramj.r())
      {
        paramj = (com.sleepycat.b.l.a)paramj;
        if ((!com.sleepycat.b.e.b.f) && (!paramj.F())) {
          throw new AssertionError();
        }
        if (paramj.p() <= 0)
        {
          if ((paramj.a(null)) && (paramj.f == 0)) {
            localb.a(paramj);
          }
          localb.c += 1;
        }
      }
    }
  }
  
  public void a(com.sleepycat.b.p.au paramau, long paramLong) {}
  
  public final void a(com.sleepycat.b.x paramx)
  {
    try
    {
      if (!this.au)
      {
        if (System.getProperty("JEMonitor") != null)
        {
          a(b(), paramx);
          a(c(), paramx);
        }
        this.au = true;
      }
      return;
    }
    finally {}
  }
  
  public void a(com.sleepycat.b.z paramz, aw paramaw)
  {
    boolean bool2 = true;
    aq = this.u.a(com.sleepycat.b.b.d.y);
    this.e = this.u.a(com.sleepycat.b.b.d.z);
    if (!this.u.a(com.sleepycat.b.b.d.A)) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      this.f = bool1;
      if ((!this.e) || (!this.f)) {
        break;
      }
      throw new IllegalArgumentException("Can't set 'je.env.isNoLocking' and 'je.env.isTransactional';");
    }
    this.g = this.u.a(com.sleepycat.b.b.d.B);
    this.h = this.u.a(com.sleepycat.b.b.d.R);
    ak = this.u.a(com.sleepycat.b.b.d.D);
    this.j = this.u.a(com.sleepycat.b.b.d.E);
    am = this.u.a(com.sleepycat.b.b.d.F);
    this.i = this.u.a(com.sleepycat.b.b.d.d);
    if (!this.u.a(com.sleepycat.b.b.d.bn)) {}
    for (bool1 = bool2;; bool1 = false)
    {
      this.X = bool1;
      this.ah = this.u.a(com.sleepycat.b.b.d.ai);
      this.I = paramz.h;
      this.J = paramz.i;
      this.K = paramz.j;
      this.az = paramz.k;
      return;
    }
  }
  
  public void a(PrintWriter paramPrintWriter) {}
  
  public final void a(Error paramError)
  {
    if (this.S.getCause() != null) {
      return;
    }
    try
    {
      this.S.initCause(paramError);
      a(this.S);
      return;
    }
    catch (IllegalStateException paramError) {}
  }
  
  public final void a(Collection<com.sleepycat.b.l.d> paramCollection)
  {
    if (this.B != null)
    {
      com.sleepycat.b.e.b localb = this.B;
      synchronized (localb.e)
      {
        paramCollection = paramCollection.iterator();
        if (paramCollection.hasNext()) {
          localb.b((com.sleepycat.b.l.d)paramCollection.next());
        }
      }
    }
  }
  
  public void a(boolean paramBoolean) {}
  
  /* Error */
  final void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iload_2
    //   4: invokespecial 1356	com/sleepycat/b/c/ad:c	(Z)V
    //   7: new 1358	java/io/StringWriter
    //   10: dup
    //   11: invokespecial 1359	java/io/StringWriter:<init>	()V
    //   14: astore_3
    //   15: new 632	java/io/PrintWriter
    //   18: dup
    //   19: aload_3
    //   20: invokespecial 1362	java/io/PrintWriter:<init>	(Ljava/io/Writer;)V
    //   23: astore 4
    //   25: aload_0
    //   26: new 419	java/lang/StringBuilder
    //   29: dup
    //   30: ldc_w 1364
    //   33: invokespecial 422	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   36: aload_0
    //   37: getfield 296	com/sleepycat/b/c/ad:c	Ljava/io/File;
    //   40: invokevirtual 426	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   43: ldc_w 1366
    //   46: invokevirtual 628	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   49: invokevirtual 430	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   52: invokestatic 1370	com/sleepycat/b/g/aw:b	(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   55: aload_0
    //   56: getfield 395	com/sleepycat/b/c/ad:v	Ljava/util/logging/Logger;
    //   59: aload_0
    //   60: new 419	java/lang/StringBuilder
    //   63: dup
    //   64: ldc_w 1364
    //   67: invokespecial 422	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   70: aload_0
    //   71: getfield 296	com/sleepycat/b/c/ad:c	Ljava/io/File;
    //   74: invokevirtual 426	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   77: ldc_w 1366
    //   80: invokevirtual 628	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   83: invokevirtual 430	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   86: invokestatic 1373	com/sleepycat/b/p/w:d	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   89: aload_0
    //   90: getfield 301	com/sleepycat/b/c/ad:a	Lcom/sleepycat/b/c/o;
    //   93: getstatic 1376	com/sleepycat/b/c/o:e	[Lcom/sleepycat/b/c/o;
    //   96: getstatic 1378	com/sleepycat/b/c/o:c	Lcom/sleepycat/b/c/o;
    //   99: invokevirtual 1381	com/sleepycat/b/c/o:a	([Lcom/sleepycat/b/c/o;Lcom/sleepycat/b/c/o;)V
    //   102: aload_0
    //   103: aload 4
    //   105: invokevirtual 1383	com/sleepycat/b/c/ad:a	(Ljava/io/PrintWriter;)V
    //   108: aload_0
    //   109: getfield 239	com/sleepycat/b/c/ad:aj	Ljava/util/concurrent/atomic/AtomicInteger;
    //   112: invokevirtual 1385	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   115: ifle +26 -> 141
    //   118: aload 4
    //   120: ldc_w 1387
    //   123: invokevirtual 635	java/io/PrintWriter:append	(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    //   126: pop
    //   127: aload 4
    //   129: ldc_w 1389
    //   132: invokevirtual 635	java/io/PrintWriter:append	(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    //   135: pop
    //   136: aload 4
    //   138: invokevirtual 644	java/io/PrintWriter:println	()V
    //   141: aload_0
    //   142: invokevirtual 1251	com/sleepycat/b/c/ad:v	()V
    //   145: aload_0
    //   146: invokespecial 1391	com/sleepycat/b/c/ad:Y	()V
    //   149: iconst_0
    //   150: istore 8
    //   152: iload 8
    //   154: istore 7
    //   156: iload_1
    //   157: ifeq +84 -> 241
    //   160: iload 8
    //   162: istore 7
    //   164: aload_0
    //   165: getfield 406	com/sleepycat/b/c/ad:g	Z
    //   168: ifne +73 -> 241
    //   171: iload 8
    //   173: istore 7
    //   175: aload_0
    //   176: getfield 301	com/sleepycat/b/c/ad:a	Lcom/sleepycat/b/c/o;
    //   179: getstatic 1249	com/sleepycat/b/c/o:d	Lcom/sleepycat/b/c/o;
    //   182: if_acmpeq +59 -> 241
    //   185: iload 8
    //   187: istore 7
    //   189: aload_0
    //   190: getfield 448	com/sleepycat/b/c/ad:w	Lcom/sleepycat/b/g/am;
    //   193: getfield 1393	com/sleepycat/b/g/am:h	J
    //   196: aload_0
    //   197: getfield 411	com/sleepycat/b/c/ad:x	Lcom/sleepycat/b/g/m;
    //   200: getfield 1395	com/sleepycat/b/g/m:q	J
    //   203: lcmp
    //   204: ifeq +37 -> 241
    //   207: new 1397	com/sleepycat/b/c
    //   210: dup
    //   211: invokespecial 1398	com/sleepycat/b/c:<init>	()V
    //   214: astore 5
    //   216: aload 5
    //   218: iconst_1
    //   219: putfield 1399	com/sleepycat/b/c:b	Z
    //   222: aload 5
    //   224: iconst_1
    //   225: putfield 1400	com/sleepycat/b/c:e	Z
    //   228: aload_0
    //   229: aload 5
    //   231: ldc_w 1401
    //   234: invokevirtual 1404	com/sleepycat/b/c/ad:a	(Lcom/sleepycat/b/c;Ljava/lang/String;)Z
    //   237: pop
    //   238: iconst_1
    //   239: istore 7
    //   241: aload_0
    //   242: iload 7
    //   244: invokevirtual 1405	com/sleepycat/b/c/ad:a	(Z)V
    //   247: aload_0
    //   248: getfield 395	com/sleepycat/b/c/ad:v	Ljava/util/logging/Logger;
    //   251: aload_0
    //   252: new 419	java/lang/StringBuilder
    //   255: dup
    //   256: ldc_w 1407
    //   259: invokespecial 422	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   262: aload_0
    //   263: getfield 296	com/sleepycat/b/c/ad:c	Ljava/io/File;
    //   266: invokevirtual 426	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   269: invokevirtual 430	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   272: invokestatic 1373	com/sleepycat/b/p/w:d	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   275: aload_0
    //   276: invokevirtual 1409	com/sleepycat/b/c/ad:w	()V
    //   279: iload_2
    //   280: ifne +10 -> 290
    //   283: aload_0
    //   284: getfield 448	com/sleepycat/b/c/ad:w	Lcom/sleepycat/b/g/am;
    //   287: invokevirtual 1410	com/sleepycat/b/g/am:a	()V
    //   290: aload_0
    //   291: getfield 411	com/sleepycat/b/c/ad:x	Lcom/sleepycat/b/g/m;
    //   294: invokevirtual 593	com/sleepycat/b/g/m:f	()V
    //   297: aload_0
    //   298: getfield 411	com/sleepycat/b/c/ad:x	Lcom/sleepycat/b/g/m;
    //   301: invokevirtual 595	com/sleepycat/b/g/m:g	()V
    //   304: aload_0
    //   305: getfield 524	com/sleepycat/b/c/ad:q	Lcom/sleepycat/b/c/p;
    //   308: invokevirtual 1411	com/sleepycat/b/c/p:g	()V
    //   311: aload_0
    //   312: getfield 506	com/sleepycat/b/c/ad:D	Lcom/sleepycat/b/a/c;
    //   315: invokevirtual 1412	com/sleepycat/b/a/c:f	()V
    //   318: aload_0
    //   319: getfield 453	com/sleepycat/b/c/ad:t	Lcom/sleepycat/b/c/al;
    //   322: astore 5
    //   324: aload 5
    //   326: getfield 1413	com/sleepycat/b/c/al:a	Lcom/sleepycat/b/c/ad;
    //   329: getfield 470	com/sleepycat/b/c/ad:A	Lcom/sleepycat/b/d/b;
    //   332: ifnull +19 -> 351
    //   335: aload 5
    //   337: getfield 1413	com/sleepycat/b/c/al:a	Lcom/sleepycat/b/c/ad;
    //   340: getfield 470	com/sleepycat/b/c/ad:A	Lcom/sleepycat/b/d/b;
    //   343: aload 5
    //   345: invokevirtual 1415	com/sleepycat/b/c/al:b	()I
    //   348: invokevirtual 1417	com/sleepycat/b/d/b:a	(I)V
    //   351: aload 5
    //   353: getfield 1420	com/sleepycat/b/c/al:g	Ljava/util/concurrent/ConcurrentMap;
    //   356: invokeinterface 1425 1 0
    //   361: aload 5
    //   363: getfield 1427	com/sleepycat/b/c/al:h	Ljava/util/concurrent/atomic/AtomicLong;
    //   366: lconst_0
    //   367: invokevirtual 1098	java/util/concurrent/atomic/AtomicLong:set	(J)V
    //   370: aload 5
    //   372: getfield 1429	com/sleepycat/b/c/al:i	Ljava/util/concurrent/atomic/AtomicLong;
    //   375: lconst_0
    //   376: invokevirtual 1098	java/util/concurrent/atomic/AtomicLong:set	(J)V
    //   379: aload 5
    //   381: getfield 1430	com/sleepycat/b/c/al:b	Z
    //   384: ifeq +25 -> 409
    //   387: aload 5
    //   389: getfield 1413	com/sleepycat/b/c/al:a	Lcom/sleepycat/b/c/ad;
    //   392: getfield 402	com/sleepycat/b/c/ad:n	Lcom/sleepycat/b/c/ao;
    //   395: astore 5
    //   397: aload 5
    //   399: lconst_0
    //   400: invokevirtual 1432	com/sleepycat/b/c/ao:b	(J)V
    //   403: aload 5
    //   405: lconst_0
    //   406: invokevirtual 1434	com/sleepycat/b/c/ao:a	(J)V
    //   409: aload_0
    //   410: invokespecial 437	com/sleepycat/b/c/ad:ab	()V
    //   413: iload_2
    //   414: ifne +25 -> 439
    //   417: aload_0
    //   418: getfield 301	com/sleepycat/b/c/ad:a	Lcom/sleepycat/b/c/o;
    //   421: astore 5
    //   423: getstatic 1249	com/sleepycat/b/c/o:d	Lcom/sleepycat/b/c/o;
    //   426: astore 6
    //   428: aload 5
    //   430: aload 6
    //   432: if_acmpeq +7 -> 439
    //   435: aload_0
    //   436: invokespecial 1436	com/sleepycat/b/c/ad:ac	()V
    //   439: aload_0
    //   440: getstatic 1378	com/sleepycat/b/c/o:c	Lcom/sleepycat/b/c/o;
    //   443: putfield 301	com/sleepycat/b/c/ad:a	Lcom/sleepycat/b/c/o;
    //   446: aload_0
    //   447: invokespecial 435	com/sleepycat/b/c/ad:Z	()V
    //   450: aload_0
    //   451: invokespecial 437	com/sleepycat/b/c/ad:ab	()V
    //   454: aload_3
    //   455: invokevirtual 1440	java/io/StringWriter:getBuffer	()Ljava/lang/StringBuffer;
    //   458: invokevirtual 1445	java/lang/StringBuffer:length	()I
    //   461: ifle +161 -> 622
    //   464: aload_0
    //   465: getfield 1247	com/sleepycat/b/c/ad:F	Lcom/sleepycat/b/aa;
    //   468: ifnonnull +154 -> 622
    //   471: aload_3
    //   472: invokevirtual 1446	java/io/StringWriter:toString	()Ljava/lang/String;
    //   475: invokestatic 814	com/sleepycat/b/aa:c	(Ljava/lang/String;)Lcom/sleepycat/b/aa;
    //   478: athrow
    //   479: astore_3
    //   480: aload_0
    //   481: monitorexit
    //   482: aload_3
    //   483: athrow
    //   484: astore 5
    //   486: aload 4
    //   488: aload 5
    //   490: ldc_w 1448
    //   493: invokestatic 1450	com/sleepycat/b/c/ad:a	(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V
    //   496: goto -388 -> 108
    //   499: astore_3
    //   500: aload_0
    //   501: getstatic 1378	com/sleepycat/b/c/o:c	Lcom/sleepycat/b/c/o;
    //   504: putfield 301	com/sleepycat/b/c/ad:a	Lcom/sleepycat/b/c/o;
    //   507: aload_0
    //   508: invokespecial 435	com/sleepycat/b/c/ad:Z	()V
    //   511: aload_0
    //   512: invokespecial 437	com/sleepycat/b/c/ad:ab	()V
    //   515: aload_3
    //   516: athrow
    //   517: astore 5
    //   519: aload 4
    //   521: aload 5
    //   523: ldc_w 1452
    //   526: invokestatic 1450	com/sleepycat/b/c/ad:a	(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V
    //   529: goto -380 -> 149
    //   532: astore 5
    //   534: aload 4
    //   536: aload 5
    //   538: ldc_w 1454
    //   541: invokestatic 1450	com/sleepycat/b/c/ad:a	(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V
    //   544: goto -306 -> 238
    //   547: astore 5
    //   549: aload 4
    //   551: aload 5
    //   553: ldc_w 1456
    //   556: invokestatic 1450	com/sleepycat/b/c/ad:a	(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V
    //   559: goto -312 -> 247
    //   562: astore 5
    //   564: aload 4
    //   566: aload 5
    //   568: ldc_w 1458
    //   571: invokestatic 1450	com/sleepycat/b/c/ad:a	(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V
    //   574: goto -284 -> 290
    //   577: astore 5
    //   579: aload 4
    //   581: aload 5
    //   583: ldc_w 1460
    //   586: invokestatic 1450	com/sleepycat/b/c/ad:a	(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V
    //   589: goto -292 -> 297
    //   592: astore 5
    //   594: aload 4
    //   596: aload 5
    //   598: ldc_w 1462
    //   601: invokestatic 1450	com/sleepycat/b/c/ad:a	(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V
    //   604: goto -300 -> 304
    //   607: astore 5
    //   609: aload 4
    //   611: aload 5
    //   613: ldc_w 1464
    //   616: invokestatic 1450	com/sleepycat/b/c/ad:a	(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V
    //   619: goto -180 -> 439
    //   622: aload_0
    //   623: monitorexit
    //   624: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	625	0	this	ad
    //   0	625	1	paramBoolean1	boolean
    //   0	625	2	paramBoolean2	boolean
    //   14	458	3	localStringWriter	java.io.StringWriter
    //   479	4	3	localObject1	Object
    //   499	17	3	localObject2	Object
    //   23	587	4	localPrintWriter	PrintWriter
    //   214	215	5	localObject3	Object
    //   484	5	5	localException1	Exception
    //   517	5	5	localException2	Exception
    //   532	5	5	localn	com.sleepycat.b.n
    //   547	5	5	localException3	Exception
    //   562	5	5	localException4	Exception
    //   577	5	5	localException5	Exception
    //   592	5	5	localException6	Exception
    //   607	5	5	localException7	Exception
    //   426	5	6	localo	o
    //   154	89	7	bool1	boolean
    //   150	36	8	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   2	25	479	finally
    //   439	479	479	finally
    //   500	517	479	finally
    //   102	108	484	java/lang/Exception
    //   25	102	499	finally
    //   102	108	499	finally
    //   108	141	499	finally
    //   141	145	499	finally
    //   145	149	499	finally
    //   164	171	499	finally
    //   175	185	499	finally
    //   189	228	499	finally
    //   228	238	499	finally
    //   241	247	499	finally
    //   247	279	499	finally
    //   283	290	499	finally
    //   290	297	499	finally
    //   297	304	499	finally
    //   304	351	499	finally
    //   351	409	499	finally
    //   409	413	499	finally
    //   417	428	499	finally
    //   435	439	499	finally
    //   486	496	499	finally
    //   519	529	499	finally
    //   534	544	499	finally
    //   549	559	499	finally
    //   564	574	499	finally
    //   579	589	499	finally
    //   594	604	499	finally
    //   609	619	499	finally
    //   145	149	517	java/lang/Exception
    //   228	238	532	com/sleepycat/b/n
    //   241	247	547	java/lang/Exception
    //   283	290	562	java/lang/Exception
    //   290	297	577	java/lang/Exception
    //   297	304	592	java/lang/Exception
    //   435	439	607	java/lang/Exception
  }
  
  public final boolean a(com.sleepycat.b.c paramc, String paramString)
  {
    if (this.C != null)
    {
      this.C.a(paramc, paramString);
      return true;
    }
    return false;
  }
  
  public boolean a(com.sleepycat.b.o.b paramb)
  {
    this.aj.incrementAndGet();
    return true;
  }
  
  public com.sleepycat.b.n.z b(long paramLong)
  {
    throw com.sleepycat.b.aa.c("Should not be called on a non replicated environment");
  }
  
  public String b()
  {
    return "com.sleepycat.je.jmx.JEMonitor";
  }
  
  public final void b(ab paramab)
  {
    try
    {
      this.an.remove(paramab);
      return;
    }
    finally
    {
      paramab = finally;
      throw paramab;
    }
  }
  
  public void b(com.sleepycat.b.o.b paramb)
  {
    this.aj.decrementAndGet();
  }
  
  public final void b(boolean paramBoolean)
  {
    com.sleepycat.b.d.b localb = this.A;
    if (localb.c.a())
    {
      localb.b();
      localb.a(e.e, paramBoolean);
    }
  }
  
  public void b(boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((paramBoolean1) && (!this.g)) {
      throw new UnsupportedOperationException("This environment was previously opened for replication. It cannot be re-opened for in read/write mode for non-replicated operation.");
    }
    if ((J()) && (!this.g)) {
      throw new IllegalArgumentException("je.rep.preserveRecordVersion parameter may not be true in a read-write, non-replicated environment");
    }
  }
  
  /* Error */
  public final boolean b(com.sleepycat.b.z paramz)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 241	com/sleepycat/b/c/ad:al	Z
    //   6: istore 17
    //   8: iload 17
    //   10: ifeq +11 -> 21
    //   13: iconst_0
    //   14: istore 17
    //   16: aload_0
    //   17: monitorexit
    //   18: iload 17
    //   20: ireturn
    //   21: aload_0
    //   22: getfield 353	com/sleepycat/b/c/ad:u	Lcom/sleepycat/b/c/m;
    //   25: getstatic 1492	com/sleepycat/b/b/d:f	Lcom/sleepycat/b/b/a;
    //   28: invokevirtual 559	com/sleepycat/b/c/m:a	(Lcom/sleepycat/b/b/a;)Z
    //   31: istore 17
    //   33: iload 17
    //   35: ifeq +238 -> 273
    //   38: new 1494	com/sleepycat/b/h/m
    //   41: dup
    //   42: aload_0
    //   43: invokespecial 1495	com/sleepycat/b/h/m:<init>	(Lcom/sleepycat/b/c/ad;)V
    //   46: aload_0
    //   47: getfield 406	com/sleepycat/b/c/ad:g	Z
    //   50: invokevirtual 1498	com/sleepycat/b/h/m:a	(Z)Lcom/sleepycat/b/h/l;
    //   53: pop
    //   54: aload_0
    //   55: invokevirtual 1500	com/sleepycat/b/c/ad:p	()V
    //   58: aload_0
    //   59: getfield 448	com/sleepycat/b/c/ad:w	Lcom/sleepycat/b/g/am;
    //   62: invokevirtual 1410	com/sleepycat/b/g/am:a	()V
    //   65: aload_0
    //   66: getfield 411	com/sleepycat/b/c/ad:x	Lcom/sleepycat/b/g/m;
    //   69: invokevirtual 593	com/sleepycat/b/g/m:f	()V
    //   72: aload_0
    //   73: aload_0
    //   74: getfield 353	com/sleepycat/b/c/ad:u	Lcom/sleepycat/b/c/m;
    //   77: getstatic 1503	com/sleepycat/b/b/d:bh	Lcom/sleepycat/b/b/c;
    //   80: invokevirtual 494	com/sleepycat/b/c/m:a	(Lcom/sleepycat/b/b/c;)I
    //   83: i2l
    //   84: putfield 874	com/sleepycat/b/c/ad:o	J
    //   87: aload_0
    //   88: aload_0
    //   89: getfield 353	com/sleepycat/b/c/ad:u	Lcom/sleepycat/b/c/m;
    //   92: getstatic 1506	com/sleepycat/b/b/d:bj	Lcom/sleepycat/b/b/c;
    //   95: invokevirtual 494	com/sleepycat/b/c/m:a	(Lcom/sleepycat/b/b/c;)I
    //   98: i2l
    //   99: putfield 1508	com/sleepycat/b/c/ad:p	J
    //   102: aload_0
    //   103: getfield 402	com/sleepycat/b/c/ad:n	Lcom/sleepycat/b/c/ao;
    //   106: astore_2
    //   107: aload_0
    //   108: getfield 524	com/sleepycat/b/c/ad:q	Lcom/sleepycat/b/c/p;
    //   111: astore_3
    //   112: aload_3
    //   113: getfield 1511	com/sleepycat/b/c/p:e	Lcom/sleepycat/b/c/i;
    //   116: invokevirtual 1513	com/sleepycat/b/c/i:t	()J
    //   119: lstore 11
    //   121: aload_3
    //   122: getfield 1515	com/sleepycat/b/c/p:f	Lcom/sleepycat/b/c/i;
    //   125: invokevirtual 1513	com/sleepycat/b/c/i:t	()J
    //   128: lstore 13
    //   130: aload_2
    //   131: getfield 1517	com/sleepycat/b/c/ao:af	Lcom/sleepycat/b/c/ad;
    //   134: getfield 453	com/sleepycat/b/c/ad:t	Lcom/sleepycat/b/c/al;
    //   137: invokevirtual 1518	com/sleepycat/b/c/al:iterator	()Ljava/util/Iterator;
    //   140: astore_3
    //   141: lconst_0
    //   142: lstore 9
    //   144: lconst_0
    //   145: lstore 7
    //   147: aload_3
    //   148: invokeinterface 585 1 0
    //   153: ifeq +146 -> 299
    //   156: aload_3
    //   157: invokeinterface 589 1 0
    //   162: checkcast 1259	com/sleepycat/b/l/j
    //   165: astore 4
    //   167: lload 9
    //   169: aload 4
    //   171: invokevirtual 1520	com/sleepycat/b/l/j:L	()J
    //   174: ladd
    //   175: lstore 9
    //   177: aload 4
    //   179: invokevirtual 1522	com/sleepycat/b/l/j:o	()J
    //   182: lstore 15
    //   184: lload 15
    //   186: lload 7
    //   188: ladd
    //   189: lstore 7
    //   191: goto -44 -> 147
    //   194: astore_1
    //   195: aload_0
    //   196: getfield 448	com/sleepycat/b/c/ad:w	Lcom/sleepycat/b/g/am;
    //   199: invokevirtual 1410	com/sleepycat/b/g/am:a	()V
    //   202: aload_0
    //   203: getfield 411	com/sleepycat/b/c/ad:x	Lcom/sleepycat/b/g/m;
    //   206: invokevirtual 593	com/sleepycat/b/g/m:f	()V
    //   209: aload_1
    //   210: athrow
    //   211: astore_1
    //   212: aload_0
    //   213: invokespecial 435	com/sleepycat/b/c/ad:Z	()V
    //   216: aload_0
    //   217: invokespecial 437	com/sleepycat/b/c/ad:ab	()V
    //   220: aload_0
    //   221: getfield 465	com/sleepycat/b/c/ad:i	Z
    //   224: ifeq +18 -> 242
    //   227: aload_0
    //   228: getfield 470	com/sleepycat/b/c/ad:A	Lcom/sleepycat/b/d/b;
    //   231: ifnull +11 -> 242
    //   234: aload_0
    //   235: getfield 470	com/sleepycat/b/c/ad:A	Lcom/sleepycat/b/d/b;
    //   238: aload_0
    //   239: invokevirtual 1524	com/sleepycat/b/d/b:b	(Lcom/sleepycat/b/c/ad;)V
    //   242: aload_0
    //   243: getfield 286	com/sleepycat/b/c/ad:E	Lcom/sleepycat/b/c/bd;
    //   246: getstatic 291	com/sleepycat/b/c/bg:a	Lcom/sleepycat/b/c/bg;
    //   249: invokevirtual 1526	com/sleepycat/b/c/bd:b	(Lcom/sleepycat/b/c/bg;)V
    //   252: aload_0
    //   253: getfield 286	com/sleepycat/b/c/ad:E	Lcom/sleepycat/b/c/bd;
    //   256: astore_2
    //   257: getstatic 1530	com/sleepycat/b/bb:n	I
    //   260: istore 6
    //   262: aload_2
    //   263: invokevirtual 1531	com/sleepycat/b/c/bd:a	()V
    //   266: aload_1
    //   267: athrow
    //   268: astore_1
    //   269: aload_0
    //   270: monitorexit
    //   271: aload_1
    //   272: athrow
    //   273: aload_0
    //   274: iconst_1
    //   275: putfield 406	com/sleepycat/b/c/ad:g	Z
    //   278: aload_0
    //   279: getfield 353	com/sleepycat/b/c/ad:u	Lcom/sleepycat/b/c/m;
    //   282: getstatic 1533	com/sleepycat/b/b/d:e	Lcom/sleepycat/b/b/a;
    //   285: invokevirtual 559	com/sleepycat/b/c/m:a	(Lcom/sleepycat/b/b/a;)Z
    //   288: ifne -216 -> 72
    //   291: aload_0
    //   292: iconst_1
    //   293: putfield 261	com/sleepycat/b/c/ad:R	Z
    //   296: goto -224 -> 72
    //   299: aload_2
    //   300: lload 9
    //   302: invokevirtual 1432	com/sleepycat/b/c/ao:b	(J)V
    //   305: aload_2
    //   306: lload 7
    //   308: lload 11
    //   310: lload 13
    //   312: ladd
    //   313: ladd
    //   314: invokevirtual 1434	com/sleepycat/b/c/ao:a	(J)V
    //   317: aload_0
    //   318: getfield 353	com/sleepycat/b/c/ad:u	Lcom/sleepycat/b/c/m;
    //   321: astore_2
    //   322: aload_0
    //   323: aload_2
    //   324: getstatic 1535	com/sleepycat/b/b/d:u	Lcom/sleepycat/b/b/e;
    //   327: invokevirtual 1311	com/sleepycat/b/c/m:a	(Lcom/sleepycat/b/b/e;)I
    //   330: putfield 1537	com/sleepycat/b/c/ad:M	I
    //   333: aload_0
    //   334: aload_2
    //   335: getstatic 1539	com/sleepycat/b/b/d:v	Lcom/sleepycat/b/b/e;
    //   338: invokevirtual 1311	com/sleepycat/b/c/m:a	(Lcom/sleepycat/b/b/e;)I
    //   341: putfield 1541	com/sleepycat/b/c/ad:N	I
    //   344: aload_0
    //   345: aload_2
    //   346: getstatic 1543	com/sleepycat/b/b/d:w	Lcom/sleepycat/b/b/c;
    //   349: invokevirtual 494	com/sleepycat/b/c/m:a	(Lcom/sleepycat/b/b/c;)I
    //   352: i2l
    //   353: putfield 1545	com/sleepycat/b/c/ad:ar	J
    //   356: aload_1
    //   357: ldc_w 1547
    //   360: invokevirtual 1552	com/sleepycat/b/ac:b	(Ljava/lang/String;)Z
    //   363: ifeq +22 -> 385
    //   366: aload_2
    //   367: getstatic 1556	com/sleepycat/b/b/d:bo	Lcom/sleepycat/b/b/b;
    //   370: invokevirtual 1559	com/sleepycat/b/c/m:a	(Lcom/sleepycat/b/b/b;)Ljava/lang/String;
    //   373: invokestatic 1565	java/util/logging/Level:parse	(Ljava/lang/String;)Ljava/util/logging/Level;
    //   376: astore_3
    //   377: aload_0
    //   378: getfield 373	com/sleepycat/b/c/ad:U	Ljava/util/logging/ConsoleHandler;
    //   381: aload_3
    //   382: invokevirtual 1569	java/util/logging/ConsoleHandler:setLevel	(Ljava/util/logging/Level;)V
    //   385: aload_1
    //   386: ldc_w 1571
    //   389: invokevirtual 1552	com/sleepycat/b/ac:b	(Ljava/lang/String;)Z
    //   392: ifeq +29 -> 421
    //   395: aload_2
    //   396: getstatic 1574	com/sleepycat/b/b/d:bp	Lcom/sleepycat/b/b/b;
    //   399: invokevirtual 1559	com/sleepycat/b/c/m:a	(Lcom/sleepycat/b/b/b;)Ljava/lang/String;
    //   402: invokestatic 1565	java/util/logging/Level:parse	(Ljava/lang/String;)Ljava/util/logging/Level;
    //   405: astore_3
    //   406: aload_0
    //   407: getfield 378	com/sleepycat/b/c/ad:V	Ljava/util/logging/FileHandler;
    //   410: ifnull +11 -> 421
    //   413: aload_0
    //   414: getfield 378	com/sleepycat/b/c/ad:V	Ljava/util/logging/FileHandler;
    //   417: aload_3
    //   418: invokevirtual 1575	java/util/logging/FileHandler:setLevel	(Ljava/util/logging/Level;)V
    //   421: aload_0
    //   422: aload_1
    //   423: getfield 1577	com/sleepycat/b/ac:r	Lcom/sleepycat/b/ag;
    //   426: putfield 249	com/sleepycat/b/c/ad:H	Lcom/sleepycat/b/ag;
    //   429: aload_0
    //   430: aload_1
    //   431: getfield 1579	com/sleepycat/b/ac:s	Lcom/sleepycat/b/a;
    //   434: putfield 1581	com/sleepycat/b/c/ad:k	Lcom/sleepycat/b/a;
    //   437: aload_0
    //   438: aload_1
    //   439: getfield 1583	com/sleepycat/b/ac:t	Lcom/sleepycat/b/b;
    //   442: putfield 1585	com/sleepycat/b/c/ad:l	Lcom/sleepycat/b/b;
    //   445: aload_2
    //   446: getstatic 556	com/sleepycat/b/b/d:bs	Lcom/sleepycat/b/b/a;
    //   449: invokevirtual 559	com/sleepycat/b/c/m:a	(Lcom/sleepycat/b/b/a;)Z
    //   452: ifeq +243 -> 695
    //   455: aload_0
    //   456: getfield 279	com/sleepycat/b/c/ad:aA	Lcom/sleepycat/b/j/a;
    //   459: ifnonnull +44 -> 503
    //   462: aload_0
    //   463: getfield 406	com/sleepycat/b/c/ad:g	Z
    //   466: ifne +37 -> 503
    //   469: aload_0
    //   470: getfield 552	com/sleepycat/b/c/ad:h	Z
    //   473: ifne +30 -> 503
    //   476: aload_0
    //   477: new 561	com/sleepycat/b/j/a
    //   480: dup
    //   481: aload_0
    //   482: invokespecial 562	com/sleepycat/b/j/a:<init>	(Lcom/sleepycat/b/c/ad;)V
    //   485: putfield 279	com/sleepycat/b/c/ad:aA	Lcom/sleepycat/b/j/a;
    //   488: aload_0
    //   489: aload_0
    //   490: getfield 279	com/sleepycat/b/c/ad:aA	Lcom/sleepycat/b/j/a;
    //   493: invokevirtual 358	com/sleepycat/b/c/ad:a	(Lcom/sleepycat/b/c/ab;)V
    //   496: aload_0
    //   497: getfield 279	com/sleepycat/b/c/ad:aA	Lcom/sleepycat/b/j/a;
    //   500: invokevirtual 564	com/sleepycat/b/j/a:a	()V
    //   503: aload_0
    //   504: invokespecial 508	com/sleepycat/b/c/ad:ae	()V
    //   507: aload_0
    //   508: invokevirtual 916	com/sleepycat/b/c/ad:j	()Z
    //   511: ifeq +8 -> 519
    //   514: aload_0
    //   515: aload_2
    //   516: invokespecial 1587	com/sleepycat/b/c/ad:a	(Lcom/sleepycat/b/c/m;)V
    //   519: aload_0
    //   520: getstatic 1589	com/sleepycat/b/c/o:b	Lcom/sleepycat/b/c/o;
    //   523: putfield 301	com/sleepycat/b/c/ad:a	Lcom/sleepycat/b/c/o;
    //   526: aload_0
    //   527: iconst_1
    //   528: putfield 241	com/sleepycat/b/c/ad:al	Z
    //   531: iload 17
    //   533: ifeq +542 -> 1075
    //   536: aload_0
    //   537: getfield 524	com/sleepycat/b/c/ad:q	Lcom/sleepycat/b/c/p;
    //   540: getfield 947	com/sleepycat/b/c/p:g	B
    //   543: iconst_4
    //   544: iand
    //   545: ifeq +177 -> 722
    //   548: iconst_1
    //   549: istore 6
    //   551: iload 6
    //   553: ifne +444 -> 997
    //   556: new 1591	com/sleepycat/b/l/a/c
    //   559: dup
    //   560: aload_0
    //   561: aload_0
    //   562: getfield 524	com/sleepycat/b/c/ad:q	Lcom/sleepycat/b/c/p;
    //   565: invokespecial 1594	com/sleepycat/b/l/a/c:<init>	(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/p;)V
    //   568: astore_1
    //   569: aload_1
    //   570: getfield 1595	com/sleepycat/b/l/a/c:c	Z
    //   573: ifeq +287 -> 860
    //   576: new 274	java/util/ArrayList
    //   579: dup
    //   580: invokespecial 275	java/util/ArrayList:<init>	()V
    //   583: astore_2
    //   584: aload_1
    //   585: getfield 1597	com/sleepycat/b/l/a/c:b	Lcom/sleepycat/b/c/p;
    //   588: invokevirtual 1600	com/sleepycat/b/c/p:c	()Ljava/util/Map;
    //   591: invokeinterface 1604 1 0
    //   596: invokeinterface 1607 1 0
    //   601: astore_3
    //   602: aload_3
    //   603: invokeinterface 585 1 0
    //   608: ifeq +142 -> 750
    //   611: aload_3
    //   612: invokeinterface 589 1 0
    //   617: checkcast 1609	com/sleepycat/b/c/h
    //   620: astore 4
    //   622: aload_1
    //   623: getfield 1597	com/sleepycat/b/l/a/c:b	Lcom/sleepycat/b/c/p;
    //   626: aload 4
    //   628: invokevirtual 1612	com/sleepycat/b/c/p:b	(Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;
    //   631: astore 4
    //   633: aload 4
    //   635: invokestatic 1615	com/sleepycat/b/l/a/c:a	(Lcom/sleepycat/b/c/i;)Z
    //   638: istore 17
    //   640: iload 17
    //   642: ifne +86 -> 728
    //   645: aload_1
    //   646: getfield 1597	com/sleepycat/b/l/a/c:b	Lcom/sleepycat/b/c/p;
    //   649: aload 4
    //   651: invokevirtual 1618	com/sleepycat/b/c/p:c	(Lcom/sleepycat/b/c/i;)V
    //   654: goto -52 -> 602
    //   657: astore_3
    //   658: aload_2
    //   659: invokevirtual 580	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   662: astore_2
    //   663: aload_2
    //   664: invokeinterface 585 1 0
    //   669: ifeq +189 -> 858
    //   672: aload_2
    //   673: invokeinterface 589 1 0
    //   678: checkcast 1140	com/sleepycat/b/c/i
    //   681: astore 4
    //   683: aload_1
    //   684: getfield 1597	com/sleepycat/b/l/a/c:b	Lcom/sleepycat/b/c/p;
    //   687: aload 4
    //   689: invokevirtual 1618	com/sleepycat/b/c/p:c	(Lcom/sleepycat/b/c/i;)V
    //   692: goto -29 -> 663
    //   695: aload_0
    //   696: getfield 279	com/sleepycat/b/c/ad:aA	Lcom/sleepycat/b/j/a;
    //   699: ifnull +11 -> 710
    //   702: aload_0
    //   703: aload_0
    //   704: getfield 279	com/sleepycat/b/c/ad:aA	Lcom/sleepycat/b/j/a;
    //   707: invokevirtual 1620	com/sleepycat/b/c/ad:b	(Lcom/sleepycat/b/c/ab;)V
    //   710: aload_0
    //   711: aconst_null
    //   712: putfield 279	com/sleepycat/b/c/ad:aA	Lcom/sleepycat/b/j/a;
    //   715: aload_0
    //   716: invokespecial 1622	com/sleepycat/b/c/ad:ad	()V
    //   719: goto -212 -> 507
    //   722: iconst_0
    //   723: istore 6
    //   725: goto -174 -> 551
    //   728: aload_2
    //   729: aload 4
    //   731: invokevirtual 657	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   734: pop
    //   735: goto -133 -> 602
    //   738: astore_3
    //   739: aload_1
    //   740: getfield 1597	com/sleepycat/b/l/a/c:b	Lcom/sleepycat/b/c/p;
    //   743: aload 4
    //   745: invokevirtual 1618	com/sleepycat/b/c/p:c	(Lcom/sleepycat/b/c/i;)V
    //   748: aload_3
    //   749: athrow
    //   750: aload_2
    //   751: invokevirtual 1625	java/util/ArrayList:size	()I
    //   754: istore 6
    //   756: iload 6
    //   758: ifne +38 -> 796
    //   761: aload_2
    //   762: invokevirtual 580	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   765: astore_2
    //   766: aload_2
    //   767: invokeinterface 585 1 0
    //   772: ifeq +88 -> 860
    //   775: aload_2
    //   776: invokeinterface 589 1 0
    //   781: checkcast 1140	com/sleepycat/b/c/i
    //   784: astore_3
    //   785: aload_1
    //   786: getfield 1597	com/sleepycat/b/l/a/c:b	Lcom/sleepycat/b/c/p;
    //   789: aload_3
    //   790: invokevirtual 1618	com/sleepycat/b/c/p:c	(Lcom/sleepycat/b/c/i;)V
    //   793: goto -27 -> 766
    //   796: aload_2
    //   797: invokevirtual 1625	java/util/ArrayList:size	()I
    //   800: anewarray 1140	com/sleepycat/b/c/i
    //   803: astore_3
    //   804: aload_2
    //   805: aload_3
    //   806: invokevirtual 1629	java/util/ArrayList:toArray	([Ljava/lang/Object;)[Ljava/lang/Object;
    //   809: pop
    //   810: aload_1
    //   811: getfield 1630	com/sleepycat/b/l/a/c:a	Lcom/sleepycat/b/c/ad;
    //   814: aload_3
    //   815: aload_1
    //   816: getfield 1632	com/sleepycat/b/l/a/c:d	Lcom/sleepycat/b/aw;
    //   819: invokevirtual 1634	com/sleepycat/b/c/ad:a	([Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/aw;)Lcom/sleepycat/b/ay;
    //   822: pop
    //   823: aload_2
    //   824: invokevirtual 580	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   827: astore_2
    //   828: aload_2
    //   829: invokeinterface 585 1 0
    //   834: ifeq +26 -> 860
    //   837: aload_2
    //   838: invokeinterface 589 1 0
    //   843: checkcast 1140	com/sleepycat/b/c/i
    //   846: astore_3
    //   847: aload_1
    //   848: getfield 1597	com/sleepycat/b/l/a/c:b	Lcom/sleepycat/b/c/p;
    //   851: aload_3
    //   852: invokevirtual 1618	com/sleepycat/b/c/p:c	(Lcom/sleepycat/b/c/i;)V
    //   855: goto -27 -> 828
    //   858: aload_3
    //   859: athrow
    //   860: aload_1
    //   861: getfield 1597	com/sleepycat/b/l/a/c:b	Lcom/sleepycat/b/c/p;
    //   864: invokevirtual 1600	com/sleepycat/b/c/p:c	()Ljava/util/Map;
    //   867: invokeinterface 1604 1 0
    //   872: invokeinterface 1607 1 0
    //   877: astore_2
    //   878: aload_2
    //   879: invokeinterface 585 1 0
    //   884: ifeq +71 -> 955
    //   887: aload_2
    //   888: invokeinterface 589 1 0
    //   893: checkcast 1609	com/sleepycat/b/c/h
    //   896: astore_3
    //   897: aload_1
    //   898: getfield 1597	com/sleepycat/b/l/a/c:b	Lcom/sleepycat/b/c/p;
    //   901: aload_3
    //   902: invokevirtual 1612	com/sleepycat/b/c/p:b	(Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;
    //   905: astore_3
    //   906: aload_3
    //   907: invokestatic 1615	com/sleepycat/b/l/a/c:a	(Lcom/sleepycat/b/c/i;)Z
    //   910: istore 17
    //   912: iload 17
    //   914: ifne +14 -> 928
    //   917: aload_1
    //   918: getfield 1597	com/sleepycat/b/l/a/c:b	Lcom/sleepycat/b/c/p;
    //   921: aload_3
    //   922: invokevirtual 1618	com/sleepycat/b/c/p:c	(Lcom/sleepycat/b/c/i;)V
    //   925: goto -47 -> 878
    //   928: aload_1
    //   929: aload_3
    //   930: invokevirtual 1636	com/sleepycat/b/l/a/c:b	(Lcom/sleepycat/b/c/i;)V
    //   933: aload_1
    //   934: getfield 1597	com/sleepycat/b/l/a/c:b	Lcom/sleepycat/b/c/p;
    //   937: aload_3
    //   938: invokevirtual 1618	com/sleepycat/b/c/p:c	(Lcom/sleepycat/b/c/i;)V
    //   941: goto -63 -> 878
    //   944: astore_2
    //   945: aload_1
    //   946: getfield 1597	com/sleepycat/b/l/a/c:b	Lcom/sleepycat/b/c/p;
    //   949: aload_3
    //   950: invokevirtual 1618	com/sleepycat/b/c/p:c	(Lcom/sleepycat/b/c/i;)V
    //   953: aload_2
    //   954: athrow
    //   955: getstatic 1637	com/sleepycat/b/l/a/c:e	Z
    //   958: ifne +18 -> 976
    //   961: aload_1
    //   962: invokevirtual 1638	com/sleepycat/b/l/a/c:a	()Z
    //   965: ifne +11 -> 976
    //   968: new 467	java/lang/AssertionError
    //   971: dup
    //   972: invokespecial 468	java/lang/AssertionError:<init>	()V
    //   975: athrow
    //   976: aload_0
    //   977: getfield 524	com/sleepycat/b/c/ad:q	Lcom/sleepycat/b/c/p;
    //   980: invokevirtual 1639	com/sleepycat/b/c/p:f	()V
    //   983: aload_0
    //   984: ldc2_w 244
    //   987: invokevirtual 1640	com/sleepycat/b/c/ad:a	(J)V
    //   990: aload_0
    //   991: getfield 448	com/sleepycat/b/c/ad:w	Lcom/sleepycat/b/g/am;
    //   994: invokevirtual 1410	com/sleepycat/b/g/am:a	()V
    //   997: aload_0
    //   998: aload_0
    //   999: invokevirtual 1642	com/sleepycat/b/c/ad:a	()Lcom/sleepycat/b/x;
    //   1002: putfield 865	com/sleepycat/b/c/ad:Z	Lcom/sleepycat/b/x;
    //   1005: aload_0
    //   1006: new 1214	com/sleepycat/b/k/a/c
    //   1009: dup
    //   1010: aload_0
    //   1011: invokespecial 1643	com/sleepycat/b/k/a/c:<init>	(Lcom/sleepycat/b/c/ad;)V
    //   1014: putfield 1212	com/sleepycat/b/c/ad:ag	Lcom/sleepycat/b/k/a/c;
    //   1017: aload_0
    //   1018: getfield 1212	com/sleepycat/b/c/ad:ag	Lcom/sleepycat/b/k/a/c;
    //   1021: astore_1
    //   1022: aload_0
    //   1023: getfield 865	com/sleepycat/b/c/ad:Z	Lcom/sleepycat/b/x;
    //   1026: astore_2
    //   1027: aload_1
    //   1028: getfield 1644	com/sleepycat/b/k/a/c:a	Lcom/sleepycat/b/c/ad;
    //   1031: getfield 406	com/sleepycat/b/c/ad:g	Z
    //   1034: istore 17
    //   1036: iload 17
    //   1038: ifne +37 -> 1075
    //   1041: new 1646	com/sleepycat/b/k/a/f
    //   1044: dup
    //   1045: aload_1
    //   1046: getfield 1644	com/sleepycat/b/k/a/c:a	Lcom/sleepycat/b/c/ad;
    //   1049: invokespecial 1647	com/sleepycat/b/k/a/f:<init>	(Lcom/sleepycat/b/c/ad;)V
    //   1052: astore_3
    //   1053: aload_3
    //   1054: getstatic 1652	com/sleepycat/b/k/a/g:b	Lcom/sleepycat/b/k/a/g;
    //   1057: aload_2
    //   1058: invokevirtual 1655	com/sleepycat/b/k/a/f:a	(Lcom/sleepycat/b/k/a/g;Lcom/sleepycat/b/x;)Ljava/util/Map;
    //   1061: astore_3
    //   1062: aload_3
    //   1063: ifnull +12 -> 1075
    //   1066: aload_3
    //   1067: invokeinterface 1656 1 0
    //   1072: ifne +41 -> 1113
    //   1075: aload_0
    //   1076: aload_0
    //   1077: getfield 353	com/sleepycat/b/c/ad:u	Lcom/sleepycat/b/c/m;
    //   1080: invokespecial 1587	com/sleepycat/b/c/ad:a	(Lcom/sleepycat/b/c/m;)V
    //   1083: aload_0
    //   1084: getfield 286	com/sleepycat/b/c/ad:E	Lcom/sleepycat/b/c/bd;
    //   1087: getstatic 291	com/sleepycat/b/c/bg:a	Lcom/sleepycat/b/c/bg;
    //   1090: invokevirtual 1526	com/sleepycat/b/c/bd:b	(Lcom/sleepycat/b/c/bg;)V
    //   1093: aload_0
    //   1094: getfield 286	com/sleepycat/b/c/ad:E	Lcom/sleepycat/b/c/bd;
    //   1097: astore_1
    //   1098: getstatic 1530	com/sleepycat/b/bb:n	I
    //   1101: istore 6
    //   1103: aload_1
    //   1104: invokevirtual 1531	com/sleepycat/b/c/bd:a	()V
    //   1107: iconst_1
    //   1108: istore 17
    //   1110: goto -1094 -> 16
    //   1113: new 1658	com/sleepycat/b/k/a/b
    //   1116: dup
    //   1117: invokespecial 1659	com/sleepycat/b/k/a/b:<init>	()V
    //   1120: astore_2
    //   1121: ldc2_w 1116
    //   1124: lstore 7
    //   1126: aload_3
    //   1127: invokeinterface 1662 1 0
    //   1132: invokeinterface 1607 1 0
    //   1137: astore_3
    //   1138: aload_3
    //   1139: invokeinterface 585 1 0
    //   1144: ifeq +82 -> 1226
    //   1147: aload_3
    //   1148: invokeinterface 589 1 0
    //   1153: checkcast 1664	java/util/Map$Entry
    //   1156: astore 4
    //   1158: aload_2
    //   1159: aload 4
    //   1161: invokeinterface 1667 1 0
    //   1166: checkcast 1669	com/sleepycat/b/m
    //   1169: invokevirtual 1673	com/sleepycat/b/k/a/b:entryToObject	(Lcom/sleepycat/b/m;)Ljava/lang/Object;
    //   1172: checkcast 1675	com/sleepycat/b/k/a/a
    //   1175: astore 5
    //   1177: aload_1
    //   1178: getfield 1676	com/sleepycat/b/k/a/c:b	Ljava/util/Map;
    //   1181: aload 4
    //   1183: invokeinterface 1679 1 0
    //   1188: aload 5
    //   1190: getfield 1680	com/sleepycat/b/k/a/a:a	J
    //   1193: invokestatic 969	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1196: invokeinterface 1684 3 0
    //   1201: pop
    //   1202: aload_1
    //   1203: lload 7
    //   1205: aload 5
    //   1207: getfield 1680	com/sleepycat/b/k/a/a:a	J
    //   1210: invokevirtual 1686	com/sleepycat/b/k/a/c:a	(JJ)I
    //   1213: ifle +64 -> 1277
    //   1216: aload 5
    //   1218: getfield 1680	com/sleepycat/b/k/a/a:a	J
    //   1221: lstore 7
    //   1223: goto +54 -> 1277
    //   1226: lload 7
    //   1228: ldc2_w 1116
    //   1231: lcmp
    //   1232: ifeq -157 -> 1075
    //   1235: aload_1
    //   1236: lload 7
    //   1238: putfield 1687	com/sleepycat/b/k/a/c:c	J
    //   1241: goto -166 -> 1075
    //   1244: astore_1
    //   1245: new 263	com/sleepycat/b/aa
    //   1248: dup
    //   1249: aload_0
    //   1250: getstatic 1689	com/sleepycat/b/c/ac:m	Lcom/sleepycat/b/c/ac;
    //   1253: aload_1
    //   1254: invokespecial 669	com/sleepycat/b/aa:<init>	(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V
    //   1257: athrow
    //   1258: astore_1
    //   1259: aload_0
    //   1260: aload_1
    //   1261: invokestatic 1692	com/sleepycat/b/aa:a	(Lcom/sleepycat/b/c/ad;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;
    //   1264: athrow
    //   1265: astore_2
    //   1266: goto -1057 -> 209
    //   1269: astore_2
    //   1270: goto -1061 -> 209
    //   1273: astore_1
    //   1274: goto -199 -> 1075
    //   1277: goto -139 -> 1138
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1280	0	this	ad
    //   0	1280	1	paramz	com.sleepycat.b.z
    //   106	782	2	localObject1	Object
    //   944	10	2	localObject2	Object
    //   1026	133	2	localObject3	Object
    //   1265	1	2	localException	Exception
    //   1269	1	2	localIOException	IOException
    //   111	501	3	localObject4	Object
    //   657	1	3	localObject5	Object
    //   738	11	3	localObject6	Object
    //   784	364	3	localObject7	Object
    //   165	1017	4	localObject8	Object
    //   1175	42	5	locala	com.sleepycat.b.k.a.a
    //   260	842	6	i1	int
    //   145	1092	7	l1	long
    //   142	159	9	l2	long
    //   119	190	11	l3	long
    //   128	183	13	l4	long
    //   182	3	15	l5	long
    //   6	1103	17	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   38	58	194	finally
    //   21	33	211	finally
    //   58	72	211	finally
    //   72	141	211	finally
    //   147	184	211	finally
    //   195	209	211	finally
    //   209	211	211	finally
    //   273	296	211	finally
    //   299	385	211	finally
    //   385	421	211	finally
    //   421	503	211	finally
    //   503	507	211	finally
    //   507	519	211	finally
    //   519	531	211	finally
    //   536	548	211	finally
    //   556	584	211	finally
    //   658	663	211	finally
    //   663	692	211	finally
    //   695	710	211	finally
    //   710	719	211	finally
    //   761	766	211	finally
    //   766	793	211	finally
    //   823	828	211	finally
    //   828	855	211	finally
    //   858	860	211	finally
    //   860	878	211	finally
    //   878	906	211	finally
    //   917	925	211	finally
    //   933	941	211	finally
    //   945	955	211	finally
    //   955	976	211	finally
    //   976	997	211	finally
    //   997	1036	211	finally
    //   1041	1053	211	finally
    //   1053	1062	211	finally
    //   1066	1075	211	finally
    //   1075	1083	211	finally
    //   1113	1121	211	finally
    //   1126	1138	211	finally
    //   1138	1223	211	finally
    //   1235	1241	211	finally
    //   1245	1258	211	finally
    //   1259	1265	211	finally
    //   2	8	268	finally
    //   212	242	268	finally
    //   242	268	268	finally
    //   1083	1107	268	finally
    //   584	602	657	finally
    //   602	633	657	finally
    //   645	654	657	finally
    //   739	750	657	finally
    //   750	756	657	finally
    //   796	823	657	finally
    //   633	640	738	finally
    //   728	735	738	finally
    //   906	912	944	finally
    //   928	933	944	finally
    //   58	72	1244	java/io/IOException
    //   58	72	1258	java/lang/Exception
    //   195	209	1265	java/lang/Exception
    //   195	209	1269	java/io/IOException
    //   1041	1053	1273	com/sleepycat/b/p
  }
  
  public String c()
  {
    return "com.sleepycat.je.jmx.JEDiagnostics";
  }
  
  public void d()
  {
    throw new UnsupportedOperationException("Standalone Environment doesn't support LocalCBVLSN.");
  }
  
  public SortedSet<String> e()
  {
    return new com.sleepycat.b.j.c().a();
  }
  
  public com.sleepycat.b.j.d f()
  {
    return new com.sleepycat.b.j.d(this);
  }
  
  /* Error */
  public final void g()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 1707	com/sleepycat/b/c/ad:L	I
    //   4: ifle +45 -> 49
    //   7: aload_0
    //   8: getfield 259	com/sleepycat/b/c/ad:as	Ljava/lang/Object;
    //   11: astore_1
    //   12: aload_1
    //   13: monitorenter
    //   14: aload_0
    //   15: getfield 1545	com/sleepycat/b/c/ad:ar	J
    //   18: invokestatic 1710	java/lang/Thread:sleep	(J)V
    //   21: aload_1
    //   22: monitorexit
    //   23: aload_0
    //   24: getfield 257	com/sleepycat/b/c/ad:Q	Ljava/lang/Object;
    //   27: astore_1
    //   28: aload_1
    //   29: monitorenter
    //   30: aload_0
    //   31: getfield 1707	com/sleepycat/b/c/ad:L	I
    //   34: ifle +13 -> 47
    //   37: aload_0
    //   38: aload_0
    //   39: getfield 1707	com/sleepycat/b/c/ad:L	I
    //   42: iconst_1
    //   43: isub
    //   44: putfield 1707	com/sleepycat/b/c/ad:L	I
    //   47: aload_1
    //   48: monitorexit
    //   49: return
    //   50: astore_2
    //   51: invokestatic 1714	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   54: invokevirtual 1717	java/lang/Thread:interrupt	()V
    //   57: goto -36 -> 21
    //   60: astore_2
    //   61: aload_1
    //   62: monitorexit
    //   63: aload_2
    //   64: athrow
    //   65: astore_2
    //   66: aload_1
    //   67: monitorexit
    //   68: aload_2
    //   69: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	70	0	this	ad
    //   50	1	2	localInterruptedException	InterruptedException
    //   60	4	2	localObject2	Object
    //   65	4	2	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   14	21	50	java/lang/InterruptedException
    //   14	21	60	finally
    //   21	23	60	finally
    //   51	57	60	finally
    //   61	63	60	finally
    //   30	47	65	finally
    //   47	49	65	finally
    //   66	68	65	finally
  }
  
  public Formatter h()
  {
    return new at(B());
  }
  
  public final boolean i()
  {
    return this.a == o.d;
  }
  
  public final boolean j()
  {
    return this.a == o.b;
  }
  
  public final boolean k()
  {
    return this.a == o.a;
  }
  
  public final boolean l()
  {
    return this.a == o.c;
  }
  
  public final boolean m()
  {
    return (this.a == o.d) || (this.a == o.c);
  }
  
  public final void n()
  {
    if (this.a == o.d)
    {
      this.F.a = true;
      if (this.F == this.S)
      {
        this.F.fillInStackTrace();
        throw this.F;
      }
      throw this.F.b("Environment must be closed, caused by: " + this.F);
    }
  }
  
  public void o()
  {
    c(true);
    int i1 = this.d.get();
    if (i1 > 1) {
      throw com.sleepycat.b.aa.a(this, "Abnormal close assumes that the open count on this handle is 1, not " + i1);
    }
    i1 = this.aj.get();
    if (i1 > 0) {
      throw com.sleepycat.b.aa.a(this, "Abnormal close assumes that the backup count on this handle is 0, not " + i1);
    }
    n.a().a(this, false, true);
  }
  
  public void p() {}
  
  /* Error */
  public void q()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial 1391	com/sleepycat/b/c/ad:Y	()V
    //   6: aload_0
    //   7: invokevirtual 1409	com/sleepycat/b/c/ad:w	()V
    //   10: aload_0
    //   11: getfield 411	com/sleepycat/b/c/ad:x	Lcom/sleepycat/b/g/m;
    //   14: invokevirtual 593	com/sleepycat/b/g/m:f	()V
    //   17: aload_0
    //   18: getfield 411	com/sleepycat/b/c/ad:x	Lcom/sleepycat/b/g/m;
    //   21: invokevirtual 595	com/sleepycat/b/g/m:g	()V
    //   24: aload_0
    //   25: invokespecial 437	com/sleepycat/b/c/ad:ab	()V
    //   28: aload_0
    //   29: monitorexit
    //   30: return
    //   31: astore_1
    //   32: goto -26 -> 6
    //   35: astore_1
    //   36: aload_0
    //   37: monitorexit
    //   38: aload_1
    //   39: athrow
    //   40: astore_1
    //   41: goto -17 -> 24
    //   44: astore_1
    //   45: goto -28 -> 17
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	48	0	this	ad
    //   31	1	1	localException	Exception
    //   35	4	1	localObject	Object
    //   40	1	1	localThrowable1	Throwable
    //   44	1	1	localThrowable2	Throwable
    // Exception table:
    //   from	to	target	type
    //   2	6	31	java/lang/Exception
    //   2	6	35	finally
    //   6	10	35	finally
    //   10	17	35	finally
    //   17	24	35	finally
    //   24	28	35	finally
    //   17	24	40	java/lang/Throwable
    //   10	17	44	java/lang/Throwable
  }
  
  final void r()
  {
    this.d.incrementAndGet();
  }
  
  public final long t()
  {
    return this.w.a(new s(new com.sleepycat.b.g.aw("File Flip")), com.sleepycat.b.g.au.a, true, false, true, av.g);
  }
  
  public final void u()
  {
    if (this.A != null) {
      this.A.a(e.b, true);
    }
  }
  
  public final void v()
  {
    this.b = true;
    if (this.B != null) {
      this.B.c_();
    }
    Object localObject1;
    if ((this.A != null) && (!this.i))
    {
      localObject1 = this.A;
      ((com.sleepycat.b.d.b)localObject1).s.set(true);
      ((com.sleepycat.b.d.b)localObject1).d.shutdown();
    }
    if (this.C != null) {
      this.C.c_();
    }
    if (this.D != null)
    {
      localObject1 = this.D.ae;
      int i2 = localObject1.length;
      int i1 = 0;
      while (i1 < i2)
      {
        Object localObject2 = localObject1[i1];
        if (localObject2 != null) {
          ((com.sleepycat.b.a.h)localObject2).c_();
        }
        i1 += 1;
      }
    }
    if (this.ao != null) {
      this.ao.c_();
    }
  }
  
  public final void w()
  {
    ad();
    for (;;)
    {
      int i1;
      synchronized (this.av)
      {
        if (this.B != null)
        {
          this.B.e();
          this.B.c();
          this.B = null;
        }
        if (this.D != null)
        {
          com.sleepycat.b.a.c localc = this.D;
          i1 = 0;
          if (i1 < localc.ae.length)
          {
            if (localc.ae[i1] == null) {
              break label197;
            }
            localc.ae[i1].e();
            com.sleepycat.b.a.h localh = localc.ae[i1];
            localh.a = null;
            localh.b = null;
            localh.c = null;
            localh.d = null;
            localh.e = null;
            localc.ae[i1] = null;
            break label197;
          }
        }
        if (this.C != null)
        {
          this.C.e();
          this.C.c();
          this.C = null;
        }
        if (this.A != null)
        {
          if (this.i) {
            this.A.b(this);
          }
        }
        else {
          return;
        }
        this.A.c();
        this.A = null;
      }
      label197:
      i1 += 1;
    }
  }
  
  public final com.sleepycat.b.z z()
  {
    return this.u.b.g();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\c\ad.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */