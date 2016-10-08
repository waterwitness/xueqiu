package com.sleepycat.b.g.a;

import com.sleepycat.b.aa;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.h;
import com.sleepycat.b.c.i;
import com.sleepycat.b.g.a;
import com.sleepycat.b.g.ae;
import com.sleepycat.b.g.af;
import com.sleepycat.b.g.aj;
import com.sleepycat.b.g.ar;
import com.sleepycat.b.l.ap;
import com.sleepycat.b.l.w;
import com.sleepycat.b.n.q;
import com.sleepycat.b.n.z;
import com.sleepycat.b.p.au;
import com.sleepycat.b.p.j;
import java.lang.reflect.Constructor;
import java.nio.ByteBuffer;
import java.util.Arrays;

public class k<T extends com.sleepycat.b.l.y>
  extends d<T>
{
  public com.sleepycat.b.l.y c;
  public h d;
  public long e = -1L;
  public boolean f;
  private byte[] h;
  private z i;
  private int j;
  private final Constructor<ap> k;
  
  static
  {
    if (!k.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      g = bool;
      return;
    }
  }
  
  public k(af paramaf, T paramT, h paramh, byte[] paramArrayOfByte, long paramLong, boolean paramBoolean, z paramz)
  {
    super.a(paramaf);
    this.c = paramT;
    this.d = paramh;
    this.h = paramArrayOfByte;
    this.e = paramLong;
    this.f = paramBoolean;
    this.i = paramz;
    this.k = null;
    if (!g)
    {
      boolean bool = paramaf.N.c;
      if (paramz != null) {}
      for (paramBoolean = true; bool != paramBoolean; paramBoolean = false) {
        throw new AssertionError();
      }
    }
  }
  
  k(Class<T> paramClass)
  {
    super(paramClass);
    if (paramClass == com.sleepycat.b.l.y.class)
    {
      this.k = a(ap.class);
      return;
    }
    this.k = null;
  }
  
  private com.sleepycat.b.l.y a(ad paramad)
  {
    if ((this.k != null) && (paramad.J())) {
      return (com.sleepycat.b.l.y)a(this.k);
    }
    return (com.sleepycat.b.l.y)c.a(this.a);
  }
  
  private static void a(ae paramae, com.sleepycat.b.l.y paramy, au paramau)
  {
    paramy.a(paramae.b() + paramae.d);
    if (paramau != null) {
      paramy.b(paramau.c);
    }
  }
  
  public static <T extends com.sleepycat.b.l.y> k<T> b(Class<T> paramClass)
  {
    return new k(paramClass);
  }
  
  private void n()
  {
    if ((this.j != l.c) && (this.j != l.d)) {
      throw aa.c("postFetchInit was not called");
    }
  }
  
  final int a(boolean paramBoolean)
  {
    int i1 = this.h.length;
    int n = this.c.a() + this.d.a() + i1;
    int m = n;
    if (!paramBoolean) {
      m = n + ar.a(i1);
    }
    n = m;
    if (this.b.N.c) {
      n = m + ar.a(this.e) + 1 + this.i.a();
    }
    return n;
  }
  
  public final h a()
  {
    return this.d;
  }
  
  public StringBuilder a(StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    this.c.a(paramStringBuilder, paramBoolean);
    this.d.a(paramStringBuilder, paramBoolean);
    this.c.a(paramStringBuilder, this.h);
    if (this.b.N.c)
    {
      if (this.e != -1L) {
        paramStringBuilder.append(j.g(this.e));
      }
      paramStringBuilder.append("<knownDeleted val=\"");
      if (!this.f) {
        break label107;
      }
    }
    label107:
    for (String str = "true";; str = "false")
    {
      paramStringBuilder.append(str);
      paramStringBuilder.append("\"/>");
      this.i.a(paramStringBuilder, paramBoolean);
      return paramStringBuilder;
    }
  }
  
  public void a(ad paramad, ae paramae, ByteBuffer paramByteBuffer)
  {
    if ((!g) && (getClass() != k.class)) {
      throw new AssertionError();
    }
    if ((paramae.f >= 8) || (this.b.d())) {}
    for (boolean bool = true;; bool = false)
    {
      a(paramad, paramae, paramByteBuffer, bool);
      return;
    }
  }
  
  final void a(ad paramad, ae paramae, ByteBuffer paramByteBuffer, boolean paramBoolean)
  {
    int n = paramae.f;
    boolean bool1;
    boolean bool2;
    if (n < 6)
    {
      bool1 = true;
      m = paramByteBuffer.position();
      if (bool1)
      {
        this.c = a(paramad);
        this.c.a(paramByteBuffer, n);
      }
      this.d = new h();
      this.d.a(paramByteBuffer, n);
      if (bool1) {
        this.h = ar.c(paramByteBuffer, true);
      }
      if (this.b.N.c)
      {
        this.e = ar.b(paramByteBuffer, bool1);
        if (j.d(this.e) == j.d(-1L)) {
          this.e = -1L;
        }
        if ((paramByteBuffer.get() & 0x1) == 0) {
          break label261;
        }
        bool2 = true;
        label140:
        this.f = bool2;
        this.i = new z();
        this.i.a(paramByteBuffer, n);
      }
      if (!bool1)
      {
        this.c = a(paramad);
        this.c.a(paramByteBuffer, n);
        if (!paramBoolean) {
          break label267;
        }
        int i1 = paramByteBuffer.position();
        m = paramae.d - (i1 - m);
        label214:
        this.h = ar.d(paramByteBuffer, m);
      }
      a(paramae, this.c, paramae.e);
      if (n >= 8) {
        break label276;
      }
    }
    label261:
    label267:
    label276:
    for (int m = l.b;; m = l.a)
    {
      this.j = m;
      return;
      bool1 = false;
      break;
      bool2 = false;
      break label140;
      m = ar.d(paramByteBuffer);
      break label214;
    }
  }
  
  public final void a(ae paramae, long paramLong, au paramau)
  {
    if (this.b.N.c) {
      this.i.e(paramLong);
    }
    a(paramae, this.c, paramau);
  }
  
  public void a(StringBuilder paramStringBuilder)
  {
    if (this.b.N.c) {
      paramStringBuilder.append(" txn=").append(this.i.k);
    }
  }
  
  public void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    if ((!g) && (getClass() != k.class)) {
      throw new AssertionError();
    }
    a(paramByteBuffer, true, paramInt);
  }
  
  final void a(ByteBuffer paramByteBuffer, boolean paramBoolean, int paramInt)
  {
    b(this, paramInt);
    a.a(this.d, paramByteBuffer, paramInt);
    if (this.b.N.c)
    {
      ar.c(paramByteBuffer, this.e);
      byte b = 0;
      if (this.f) {
        b = 1;
      }
      paramByteBuffer.put(b);
      a.a(this.i, paramByteBuffer, paramInt);
    }
    a.a(this.c, paramByteBuffer, paramInt);
    if (!paramBoolean) {
      ar.b(paramByteBuffer, this.h.length);
    }
    ar.b(paramByteBuffer, this.h);
  }
  
  public boolean a(m paramm)
  {
    if (!(paramm instanceof k)) {}
    do
    {
      while ((!Arrays.equals(this.h, paramm.h)) || (!this.c.a(paramm.c))) {
        do
        {
          do
          {
            return false;
            paramm = (k)paramm;
          } while (!this.d.a(paramm.d));
          if (this.i == null) {
            break;
          }
        } while (!this.i.a(paramm.i));
      }
      return true;
    } while (paramm.i == null);
    return false;
  }
  
  public final void b(boolean paramBoolean)
  {
    int m;
    int n;
    if (this.j == l.b)
    {
      m = 1;
      if (!paramBoolean) {
        break label35;
      }
      n = l.c;
      label20:
      this.j = n;
      if (m != 0) {
        break label42;
      }
    }
    label35:
    label42:
    while (this.j == l.d)
    {
      return;
      m = 0;
      break;
      n = l.d;
      break label20;
    }
    this.h = b();
  }
  
  byte[] b()
  {
    if ((!g) && (this.c.i())) {
      throw new AssertionError();
    }
    byte[] arrayOfByte1 = this.h;
    com.sleepycat.b.l.y localy = this.c;
    byte[] arrayOfByte2 = localy.f;
    localy.f = w.b;
    return com.sleepycat.b.c.y.a(arrayOfByte1, arrayOfByte2);
  }
  
  public final void c(i parami)
  {
    b(parami.h());
  }
  
  public int d_()
  {
    if ((!g) && (getClass() != k.class)) {
      throw new AssertionError();
    }
    return a(true);
  }
  
  public final int e()
  {
    return this.c.g & 0x7FFFFFFF;
  }
  
  public final boolean f()
  {
    return this.c.i();
  }
  
  public final long i()
  {
    if (this.b.N.c) {
      return this.i.k;
    }
    return 0L;
  }
  
  public final com.sleepycat.b.l.y j()
  {
    n();
    return this.c;
  }
  
  public final byte[] k()
  {
    n();
    return this.h;
  }
  
  public final Long l()
  {
    if (this.b.N.c) {
      return Long.valueOf(this.i.k);
    }
    return null;
  }
  
  public final z m()
  {
    if (this.b.N.c) {
      return this.i;
    }
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\a\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */