package com.sleepycat.b.c;

import com.sleepycat.b.g.am;
import com.sleepycat.b.p.ag;
import com.sleepycat.b.p.ai;
import com.sleepycat.b.p.w;
import com.sleepycat.b.p.z;
import java.io.PrintStream;
import java.util.concurrent.atomic.AtomicLong;

public class ao
  implements ab
{
  public static final int A;
  public static final int B;
  public static final int C;
  public static final int D;
  public static final int E;
  public static final int F;
  public static final int G;
  public static final int H;
  public static final int I;
  public static final int J;
  public static final int K;
  public static final int L;
  public static final int M;
  public static final int N;
  public static final int O;
  public static final int P;
  public static final int Q;
  public static final int R;
  public static final int S;
  public static final int T;
  public static final int U;
  public static final int V;
  public static final int W;
  public static final int X;
  public static final String Y;
  public static boolean a;
  private static final int ah;
  private static final int ai;
  private static final int aj;
  private static final int ak;
  private static final int al;
  private static boolean am;
  private static boolean an;
  private static boolean ao;
  public static boolean b;
  public static boolean c;
  public static boolean d;
  public static boolean e;
  public static boolean f;
  public static final int g;
  public static final int h;
  public static final int i;
  public static final int j;
  public static final int k;
  public static final int l;
  public static final int m;
  public static final int n;
  public static final int o;
  public static final int p;
  public static final int q;
  public static final int r;
  public static final int s;
  public static final int t;
  public static final int u;
  public static final int v;
  public static final int w;
  public static final int x;
  public static final int y;
  public static final int z;
  final AtomicLong Z = new AtomicLong(0L);
  final AtomicLong aa = new AtomicLong(0L);
  final AtomicLong ab = new AtomicLong(0L);
  public final ar ac;
  public long ad;
  public long ae;
  final ad af;
  private final AtomicLong ap = new AtomicLong(0L);
  private final AtomicLong aq = new AtomicLong(0L);
  private long ar;
  
  static
  {
    if (!ao.class.desiredAssertionStatus()) {}
    for (bool = true;; bool = false)
    {
      ag = bool;
      a = false;
      b = Boolean.getBoolean("memAdmin");
      c = Boolean.getBoolean("memLock");
      d = Boolean.getBoolean("memTxn");
      e = Boolean.getBoolean("memTreeAdmin");
      f = Boolean.getBoolean("memTree");
      ah = c(0);
      ai = 40 - ah;
      aj = 64 - ah;
      ak = 40 - ah;
      al = 24 - ah;
      am = false;
      an = false;
      ao = false;
      if (!ad.ab) {
        break;
      }
      g = 24;
      h = 24;
      i = 4;
      j = 16;
      k = 4;
      l = 56;
      m = 72;
      n = 72;
      o = 72;
      p = 112;
      q = 40;
      r = 616;
      s = 952;
      t = 24;
      u = 8;
      v = 32;
      w = 168;
      x = 64;
      y = 32;
      z = 96;
      A = 16;
      B = 16;
      C = 24;
      D = 24;
      E = 128;
      F = 168;
      G = 120;
      H = 16;
      I = 32;
      J = 24;
      K = 24;
      L = 40;
      M = 263;
      N = 104;
      O = 145;
      P = 48;
      Q = 472;
      R = 448;
      S = 24;
      T = 128;
      U = 24;
      V = 40;
      W = al;
      X = 24;
      Y = Long.toString(98304L);
      return;
    }
    System.getProperty("java.version");
    Object localObject = System.getProperty("je.forceJVMArch");
    if (localObject == null) {
      for (;;)
      {
        try
        {
          localObject = System.getProperty("sun.arch.data.model");
          if (localObject == null) {
            continue;
          }
          i1 = Integer.parseInt((String)localObject);
          if (i1 != 64) {
            continue;
          }
          bool = true;
        }
        catch (NumberFormatException localNumberFormatException)
        {
          int i1;
          localNumberFormatException.printStackTrace(System.err);
          bool = false;
          continue;
          bool = false;
          continue;
        }
        localObject = b.a();
        if (localObject != null)
        {
          an = true;
          ao = ((Boolean)localObject).booleanValue();
        }
        throw new NullPointerException();
        bool = false;
      }
    }
    i1 = Integer.parseInt((String)localObject);
    if (i1 == 64) {}
    for (bool = true;; bool = false) {
      break;
    }
  }
  
  ao(ad paramad1, ad paramad2, m paramm)
  {
    this.af = paramad1;
    paramad1.a(this);
    long l1;
    if (paramad1.i) {
      if (paramad2 != null)
      {
        this.ac = paramad2.n.ac;
        l1 = -1L;
      }
    }
    for (;;)
    {
      a(l1, true, paramm);
      if ((am) && (an) && (!ao)) {
        w.a(this.af.v, this.af, "-XX:+UseCompressedOops was specified but is not in effect, probably because the heap size is too large for this JVM option on this platform.  This is likely to cause an OutOfMemoryError!");
      }
      return;
      this.ac = new aq((byte)0);
      l1 = a(paramm);
      continue;
      this.ac = new ap(this, (byte)0);
      l1 = a(paramm);
    }
  }
  
  public static int a(int paramInt)
  {
    int i2 = h;
    int i1 = i2;
    if (paramInt > i) {
      i1 = i2 + (paramInt - i + 7) / 8 * 8;
    }
    return i1;
  }
  
  public static int a(com.sleepycat.a.a.m paramm)
  {
    return X + a(paramm.b.length);
  }
  
  private static long a(m paramm)
  {
    long l2 = paramm.a(com.sleepycat.b.b.d.b);
    long l1;
    if ("Mac OS X".equals(System.getProperty("os.name")))
    {
      String str = System.getProperty("java.version");
      if ((str != null) && (str.startsWith("1.4.2"))) {
        l1 = Long.MAX_VALUE;
      }
    }
    while (l2 != 0L) {
      if (l1 < l2)
      {
        throw new IllegalArgumentException(com.sleepycat.b.b.d.b.a + " has a value of " + l2 + " but the JVM is only configured for " + l1 + ". Consider using je.maxMemoryPercent.");
        l1 = Runtime.getRuntime().maxMemory();
      }
      else
      {
        if (l2 >= 98304L) {
          break label211;
        }
        throw new IllegalArgumentException(com.sleepycat.b.b.d.b.a + " is " + l2 + " which is less than the minimum: 98304");
      }
    }
    l2 = l1;
    if (l1 == Long.MAX_VALUE) {
      l2 = 67108864L;
    }
    return l2 * paramm.a(com.sleepycat.b.b.d.c) / 100L;
    label211:
    return l2;
  }
  
  private static String a(String paramString, long paramLong1, long paramLong2)
  {
    return paramString + "=" + paramLong1 + " increment=" + paramLong2 + " " + w.a(new Throwable());
  }
  
  private void a(long paramLong, AtomicLong paramAtomicLong, String paramString, boolean paramBoolean)
  {
    long l1;
    if (paramLong != 0L)
    {
      l1 = paramAtomicLong.addAndGet(paramLong);
      if (!ag)
      {
        if ((a) && (l1 < 0L)) {}
        for (int i1 = 0; i1 == 0; i1 = 1) {
          throw new AssertionError(a(paramString, l1, paramLong));
        }
      }
      if (paramBoolean)
      {
        if (paramLong <= 0L) {
          break label137;
        }
        System.err.println("INC-------- =" + paramLong + " " + paramString + " " + l1);
      }
    }
    for (;;)
    {
      if (this.ac.a(paramLong)) {
        this.af.D();
      }
      return;
      label137:
      System.err.println("-------DEC=" + paramLong + " " + paramString + " " + l1);
    }
  }
  
  public static int b(int paramInt)
  {
    return a(paramInt * 2);
  }
  
  public static int c(int paramInt)
  {
    return a(k * paramInt);
  }
  
  final void a(long paramLong)
  {
    long l1 = this.ab.getAndSet(paramLong);
    if (e) {
      System.err.println("RESET = " + paramLong);
    }
    if (this.ac.a(paramLong - l1)) {
      this.af.D();
    }
  }
  
  public final void a(long paramLong, int paramInt)
  {
    if (paramLong != 0L)
    {
      this.aq.addAndGet(paramLong);
      if ((!ag) && (this.aq.get() < 0L)) {
        throw new AssertionError(a("lockMem", this.aq.get(), paramLong));
      }
      if (c)
      {
        if (paramLong <= 0L) {
          break label135;
        }
        System.err.println("INC-------- =" + paramLong + " lock[" + paramInt + "] " + this.aq.get());
      }
    }
    for (;;)
    {
      if (this.ac.a(paramLong)) {
        this.af.D();
      }
      return;
      label135:
      System.err.println("-------DEC=" + paramLong + " lock[" + paramInt + "] " + this.aq.get());
    }
  }
  
  final void a(long paramLong, boolean paramBoolean, m paramm)
  {
    long l4 = this.ad;
    long l1;
    int i1;
    long l2;
    label61:
    long l3;
    if (paramLong < 0L)
    {
      l1 = this.ac.a;
      if (!this.af.i) {
        break label279;
      }
      int i2 = n.a().b();
      i1 = i2;
      if (paramBoolean) {
        i1 = i2 + 1;
      }
      l2 = l1 / i1;
      l3 = paramm.a(com.sleepycat.b.b.d.H);
      if (l3 != 0L) {
        break label294;
      }
      if (!ad.ab) {
        break label286;
      }
      paramLong = l2 >> 7;
      label90:
      i1 = paramm.a(com.sleepycat.b.b.d.I);
      l3 = paramLong / i1;
      i2 = paramm.a(com.sleepycat.b.b.d.J);
      if (l3 <= i2) {
        break label319;
      }
      paramLong = i2 * i1;
    }
    for (;;)
    {
      l1 = this.af.u.a(com.sleepycat.b.b.d.ar) * l1 / 100L;
      l3 = this.af.u.a(com.sleepycat.b.b.d.aW) * l2 / 100L;
      l2 = Math.min(paramm.a(com.sleepycat.b.b.d.ah), l2 - paramLong);
      this.ad = paramLong;
      this.ac.b = l1;
      this.ae = l3;
      this.ar = l2;
      this.ac.a(this.ad - l4);
      if ((!paramBoolean) && (l4 != this.ad)) {
        this.af.w.a(paramm);
      }
      return;
      this.ac.a = paramLong;
      l1 = paramLong;
      break;
      label279:
      l2 = l1;
      break label61;
      label286:
      paramLong = l2 >> 4;
      break label90;
      label294:
      paramLong = l3;
      if (l3 <= l2 / 2L) {
        break label90;
      }
      paramLong = l2 / 2L;
      break label90;
      label319:
      if (l3 < 2048L) {
        paramLong = i1 * 2048L;
      }
    }
  }
  
  public final boolean a()
  {
    return this.Z.get() > this.ar;
  }
  
  final long b()
  {
    return this.ad + this.Z.get() + this.aa.get() + this.ab.get() + c();
  }
  
  public final void b(long paramLong)
  {
    long l1 = this.Z.getAndSet(paramLong);
    if (this.ac.a(paramLong - l1)) {
      this.af.D();
    }
  }
  
  public final long c()
  {
    return this.ap.get() + this.aq.get();
  }
  
  public final void c(long paramLong)
  {
    a(paramLong, this.Z, "tree", f);
  }
  
  final ai d()
  {
    ai localai = new ai("Cache Layout", "Allocation of resources in the cache.");
    ag localag = x.a;
    if (this.ac.b()) {}
    for (long l1 = this.ac.a();; l1 = 0L)
    {
      new z(localai, localag, l1);
      new z(localai, x.b, b());
      new z(localai, x.c, this.Z.get() + this.ab.get());
      new z(localai, x.d, this.ab.get());
      new z(localai, x.e, this.aa.get());
      new z(localai, x.f, c());
      return localai;
    }
  }
  
  public final void d(long paramLong)
  {
    a(paramLong, this.ap, "txn", d);
  }
  
  public final void e(long paramLong)
  {
    a(paramLong, this.aa, "admin", b);
  }
  
  public final void f(long paramLong)
  {
    a(paramLong, this.ab, "treeAdmin", e);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("treeUsage = ").append(this.Z.get());
    localStringBuilder.append("treeAdminUsage = ").append(this.ab.get());
    localStringBuilder.append("adminUsage = ").append(this.aa.get());
    localStringBuilder.append("txnUsage = ").append(this.ap.get());
    localStringBuilder.append("lockUsage = ").append(c());
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\c\ao.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */