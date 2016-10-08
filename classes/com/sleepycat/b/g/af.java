package com.sleepycat.b.g;

import com.sleepycat.b.g.a.g;
import com.sleepycat.b.g.a.k;
import com.sleepycat.b.g.a.m;
import com.sleepycat.b.g.a.n;
import com.sleepycat.b.g.a.o;
import com.sleepycat.b.g.a.q;
import com.sleepycat.b.g.a.s;
import com.sleepycat.b.l.a.d;
import com.sleepycat.b.l.a.f;
import com.sleepycat.b.l.aa;
import com.sleepycat.b.l.c;
import com.sleepycat.b.l.y;
import com.sleepycat.b.n.u;
import com.sleepycat.b.n.v;
import java.util.HashSet;
import java.util.Set;

public class af
{
  public static final af A;
  public static final af B;
  public static final af C;
  public static final af D;
  public static final af E;
  public static final af F;
  public static final af G;
  public static final af H;
  public static final af I;
  public static final af J;
  private static af[] R;
  public static final af a;
  public static final af b;
  public static final af c;
  public static final af d;
  public static final af e;
  public static final af f;
  public static final af g;
  public static final af h;
  public static final af i;
  public static final af j;
  public static final af k;
  public static final af l;
  public static final af m;
  public static final af n;
  public static final af o;
  public static final af p;
  public static final af q;
  public static final af r;
  public static final af s;
  public static final af t;
  public static final af u;
  public static final af v;
  public static final af w;
  public static final af x;
  public static final af y;
  public static final af z;
  public final byte K;
  final String L;
  public final m M;
  public aj N;
  ag O;
  public ai P;
  private int S;
  
  static
  {
    if (!af.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      Q = bool;
      R = new af[36];
      a = a((byte)1, "LN_TX", k.b(y.class), aj.a, ag.a, ai.b, ah.e);
      b = a((byte)2, "LN", k.b(y.class), aj.b, ag.a, ai.b, ah.e);
      c = new af((byte)3, "MapLN_TX", k.b(aa.class), aj.a, ag.b, ah.d);
      d = new af((byte)4, "MapLN", k.b(aa.class), aj.b, ag.b, ah.d);
      e = a((byte)5, "NameLN_TX", new o(), aj.a, ag.a, ai.b, ah.d);
      f = a((byte)6, "NameLN", new o(), aj.b, ag.a, ai.b, ah.d);
      g = a((byte)7, "DelDupLN_TX", new g(), aj.a, ag.a, ai.b, ah.e);
      h = a((byte)8, "DelDupLN", new g(), aj.b, ag.a, ai.b, ah.e);
      i = new af((byte)9, "DupCountLN_TX", k.b(d.class), aj.a, ag.a, ah.c);
      j = new af((byte)10, "DupCountLN", k.b(d.class), aj.b, ag.a, ah.c);
      k = new af((byte)11, "FileSummaryLN", k.b(com.sleepycat.b.l.h.class), aj.b, ag.b, ah.d);
      l = new af((byte)12, "IN", com.sleepycat.b.g.a.j.b(com.sleepycat.b.l.j.class), aj.b, ag.a, ah.b);
      m = new af((byte)13, "BIN", com.sleepycat.b.g.a.j.b(com.sleepycat.b.l.a.class), aj.b, ag.a, ah.b);
      n = new af((byte)14, "DIN", com.sleepycat.b.g.a.j.b(com.sleepycat.b.l.a.b.class), aj.b, ag.a, ah.c);
      o = new af((byte)15, "DBIN", com.sleepycat.b.g.a.j.b(com.sleepycat.b.l.a.a.class), aj.b, ag.a, ah.c);
      p = new af((byte)16, "DbTree", q.b(com.sleepycat.b.c.p.class), aj.b, ag.b, ah.a);
      q = a((byte)17, "Commit", new com.sleepycat.b.g.a.e(), aj.a, ag.a, ai.a, ah.a);
      r = a((byte)18, "Abort", new com.sleepycat.b.g.a.a(), aj.a, ag.a, ai.a, ah.a);
      s = new af((byte)19, "CkptStart", q.b(com.sleepycat.b.h.b.class), aj.b, ag.a, ah.a);
      t = new af((byte)20, "CkptEnd", q.b(com.sleepycat.b.h.a.class), aj.b, ag.a, ah.a);
      u = new af((byte)21, "INDelete", q.b(com.sleepycat.b.l.a.e.class), aj.b, ag.a, ah.a);
      v = new af((byte)22, "BINDelta", new com.sleepycat.b.g.a.b(c.class), aj.b, ag.a, ah.a);
      w = new af((byte)23, "DupBINDelta", new com.sleepycat.b.g.a.b(c.class), aj.b, ag.a, ah.a);
      x = a((byte)24, "Trace", new s(), aj.b, ag.a, ai.b, ah.a);
      y = new af((byte)25, "FileHeader", new com.sleepycat.b.g.a.h(l.class), aj.b, ag.a, ah.a);
      z = new af((byte)26, "INDupDelete", q.b(f.class), aj.b, ag.a, ah.a);
      A = new af((byte)27, "Prepare", q.b(com.sleepycat.b.n.ak.class), aj.a, ag.a, ah.a);
      B = new af((byte)28, "RollbackStart", q.b(v.class), aj.b, ag.a, ah.a);
      C = new af((byte)29, "RollbackEnd", q.b(u.class), aj.b, ag.a, ah.a);
      D = a((byte)30, "Matchpoint", new n(), aj.b, ag.a, ai.a, ah.a);
      E = new ak((byte)31, "DEL_LN_TX", aj.a);
      F = new ak((byte)32, "DEL_LN", aj.b);
      G = new ak((byte)33, "INS_LN_TX", aj.a);
      H = new ak((byte)34, "INS_LN", aj.b);
      I = new ak((byte)35, "UPD_LN_TX", aj.a);
      J = new ak((byte)36, "UPD_LN", aj.b);
      return;
    }
  }
  
  af(byte paramByte)
  {
    this.K = paramByte;
    this.L = null;
    this.M = null;
  }
  
  private af(byte paramByte, String paramString, m paramm, aj paramaj, ag paramag, int paramInt)
  {
    this(paramByte, paramString, paramm, paramaj, paramag, ai.c, paramInt);
  }
  
  private af(byte paramByte, String paramString, m paramm, aj paramaj, ag paramag, ai paramai, int paramInt)
  {
    this.K = paramByte;
    this.L = paramString;
    this.M = paramm;
    this.N = paramaj;
    this.O = paramag;
    this.P = paramai;
    this.S = paramInt;
    paramm.a(this);
    R[(paramByte - 1)] = this;
    if ((!Q) && ((paramm == null) || (paramai == null))) {
      throw new AssertionError();
    }
    if ((!Q) && (paramai.d) && (!(paramm instanceof com.sleepycat.b.g.a.p))) {
      throw new AssertionError("Replicable log types must have replicable log entries");
    }
  }
  
  public static af a(byte paramByte)
  {
    if ((paramByte <= 0) || (paramByte > 36)) {
      return null;
    }
    return R[(paramByte - 1)];
  }
  
  private static af a(byte paramByte, String paramString, com.sleepycat.b.g.a.p paramp, aj paramaj, ag paramag, ai paramai, int paramInt)
  {
    return new af(paramByte, paramString, paramp, paramaj, paramag, paramai, paramInt);
  }
  
  public static Set<af> a()
  {
    HashSet localHashSet = new HashSet();
    int i1 = 0;
    while (i1 < 36)
    {
      localHashSet.add(R[i1]);
      i1 += 1;
    }
    return localHashSet;
  }
  
  public static boolean a(int paramInt1, byte paramByte1, int paramInt2, byte paramByte2)
  {
    return a(paramByte1).a(paramInt1, paramInt2, paramByte2);
  }
  
  static boolean b(byte paramByte)
  {
    return (paramByte > 0) && (paramByte <= 36);
  }
  
  public static boolean d(byte paramByte)
  {
    return a(paramByte).P.e;
  }
  
  public boolean a(int paramInt1, int paramInt2, byte paramByte)
  {
    return this.K == paramByte;
  }
  
  public final m b()
  {
    return this.M.g();
  }
  
  public final boolean c()
  {
    return this.S != ah.a;
  }
  
  public final boolean c(byte paramByte)
  {
    return this.K == paramByte;
  }
  
  public final boolean d()
  {
    return this.S == ah.e;
  }
  
  public final boolean e()
  {
    return (this.S == ah.d) || (d());
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof af)) {
        return false;
      }
    } while (this.K == ((af)paramObject).K);
    return false;
  }
  
  public final boolean f()
  {
    return this.S == ah.b;
  }
  
  public int hashCode()
  {
    return this.K;
  }
  
  public String toString()
  {
    return this.L;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\af.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */