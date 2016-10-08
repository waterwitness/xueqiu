package com.sleepycat.b.l;

import com.sleepycat.b.a.s;
import com.sleepycat.b.aa;
import com.sleepycat.b.c.ao;
import com.sleepycat.b.c.as;
import com.sleepycat.b.c.i;
import com.sleepycat.b.d.b;
import com.sleepycat.b.g.a.k;
import com.sleepycat.b.g.af;
import com.sleepycat.b.g.ar;
import com.sleepycat.b.g.at;
import com.sleepycat.b.g.av;
import com.sleepycat.b.g.ax;
import com.sleepycat.b.n;
import com.sleepycat.b.n.h;
import com.sleepycat.b.n.o;
import com.sleepycat.b.n.q;
import com.sleepycat.b.p.d;
import java.nio.ByteBuffer;
import java.util.Arrays;

public class y
  extends ac
  implements ax
{
  public byte[] f;
  public int g;
  
  static
  {
    if (!y.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      h = bool;
      return;
    }
  }
  
  public y()
  {
    this.f = null;
  }
  
  y(com.sleepycat.b.m paramm)
  {
    byte[] arrayOfByte = paramm.a;
    if (arrayOfByte == null) {
      this.f = null;
    }
    for (;;)
    {
      l();
      return;
      if (paramm.f)
      {
        int i = paramm.d;
        int j = paramm.c;
        a(arrayOfByte, i, paramm.e + j, paramm.c, paramm.e);
      }
      else
      {
        a(arrayOfByte, paramm.d, paramm.e);
      }
    }
  }
  
  y(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      this.f = null;
    }
    for (;;)
    {
      l();
      return;
      a(paramArrayOfByte, 0, paramArrayOfByte.length);
    }
  }
  
  private long a(com.sleepycat.b.c.ad paramad, i parami, byte[] paramArrayOfByte, long paramLong, q paramq, com.sleepycat.b.n.am paramam, boolean paramBoolean, av paramav)
  {
    if (paramad.g) {
      throw aa.c("Cannot log LNs in read-only env.");
    }
    com.sleepycat.b.g.ad localad = new com.sleepycat.b.g.ad();
    boolean bool1;
    if (paramLong == -1L) {
      bool1 = true;
    }
    af localaf;
    long l1;
    boolean bool2;
    com.sleepycat.b.n.z localz;
    com.sleepycat.b.g.al localal;
    label153:
    long l2;
    label171:
    int i;
    while ((paramq != null) && (paramq.i_()))
    {
      localaf = a(bool1, true);
      l1 = paramam.a;
      bool2 = paramam.b;
      localz = paramq.e();
      if ((!h) && (localz == null))
      {
        throw new AssertionError();
        bool1 = false;
      }
      else
      {
        localad.h = paramq.w();
        localal = new com.sleepycat.b.g.al();
        localal.a = a(localaf, parami, paramArrayOfByte, l1, bool2, localz, paramav);
        if (!parami.e()) {
          break label386;
        }
        paramArrayOfByte = com.sleepycat.b.g.au.b;
        localal.e = paramArrayOfByte;
        if (paramLong == l1) {
          break label393;
        }
        l2 = paramLong;
        localal.b = l2;
        localal.f = paramav;
        localad.e = paramBoolean;
        localad.a = parami;
        if ((!bool1) && ((this.g & 0x7FFFFFFF) == 0))
        {
          if (!parami.h()) {
            break label401;
          }
          i = 0;
          label223:
          if (i >= 0)
          {
            int j = localal.a.d_();
            int k = a();
            a(b(i) + (j - k));
          }
        }
        if ((localz != null) && (paramLong == l1)) {
          paramam.a(parami, this.g & 0x7FFFFFFF);
        }
        if (localz == null) {
          break label438;
        }
      }
    }
    for (;;)
    {
      try
      {
        label386:
        label393:
        label401:
        try
        {
          paramad.w.a(localal, localad);
          if (paramq == null) {
            break label516;
          }
          paramad = paramq.b(localal.d, o.b, false, parami);
          if ((h) || (paramad.a != h.f)) {
            break label476;
          }
          throw new AssertionError(com.sleepycat.b.p.j.h(localal.d));
        }
        finally {}
        localaf = a(bool1, false);
        l1 = -1L;
        bool2 = false;
        localz = null;
      }
      catch (n parami)
      {
        if (!com.sleepycat.b.g.m.a()) {
          break label452;
        }
      }
      paramArrayOfByte = com.sleepycat.b.g.au.a;
      break label153;
      l2 = -1L;
      break label171;
      i = -1;
      break label223;
      if (paramq != null) {
        new z(paramq, parami);
      }
      throw parami;
      label438:
      paramad.w.a(localal, localad);
    }
    label452:
    if (paramad.j()) {
      throw new aa(paramad, com.sleepycat.b.c.ac.l, "LN could not be logged", parami);
    }
    throw parami;
    label476:
    if (paramam != null)
    {
      paramad.a(paramam.a, paramam.b, paramam.f);
      if (paramad.b != null) {
        paramad.b.a(paramam);
      }
    }
    label516:
    this.g &= 0x7FFFFFFF;
    return localal.d;
  }
  
  public static y a(com.sleepycat.b.c.ad paramad, com.sleepycat.b.m paramm)
  {
    if (paramad.J()) {
      return new ap(paramm);
    }
    return new y(paramm);
  }
  
  public static y a(com.sleepycat.b.c.ad paramad, byte[] paramArrayOfByte)
  {
    if (paramad.J()) {
      return new ap(paramArrayOfByte);
    }
    return new y(paramArrayOfByte);
  }
  
  public static void a(com.sleepycat.b.m paramm, byte[] paramArrayOfByte)
  {
    int j;
    int i;
    if (paramArrayOfByte != null)
    {
      boolean bool = paramm.f;
      if (bool)
      {
        j = paramm.c;
        if (!bool) {
          break label79;
        }
        i = paramm.b;
        label31:
        if (j + i <= paramArrayOfByte.length) {
          break label128;
        }
        if (j <= paramArrayOfByte.length) {
          break label85;
        }
        i = 0;
      }
    }
    label49:
    label79:
    label85:
    label128:
    for (;;)
    {
      if (i == 0) {}
      byte[] arrayOfByte;
      for (paramArrayOfByte = ar.a;; paramArrayOfByte = arrayOfByte)
      {
        paramm.a(paramArrayOfByte);
        paramm.d = 0;
        paramm.e = i;
        return;
        j = 0;
        break;
        i = paramArrayOfByte.length;
        break label31;
        i = paramArrayOfByte.length - j;
        break label49;
        arrayOfByte = new byte[i];
        System.arraycopy(paramArrayOfByte, j, arrayOfByte, 0, i);
      }
      paramm.a(null);
      paramm.d = 0;
      paramm.e = 0;
      return;
    }
  }
  
  private void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    a(paramArrayOfByte, paramInt1, paramInt2, 0, paramInt2);
  }
  
  private void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramInt2 == 0)
    {
      this.f = ar.a;
      return;
    }
    this.f = new byte[paramInt2];
    System.arraycopy(paramArrayOfByte, paramInt1, this.f, paramInt3, paramInt4);
  }
  
  private int b(int paramInt)
  {
    int i = super.a();
    if (paramInt < 0) {
      return i + ar.a(-1);
    }
    return i + ar.a(paramInt) + paramInt;
  }
  
  public static byte[] b(com.sleepycat.b.m paramm)
  {
    if ((!h) && (paramm.f)) {
      throw new AssertionError();
    }
    int i = paramm.e;
    if (i == 0) {}
    for (byte[] arrayOfByte = ar.a;; arrayOfByte = new byte[i])
    {
      System.arraycopy(paramm.a, paramm.d, arrayOfByte, 0, i);
      return arrayOfByte;
    }
  }
  
  public static byte[] b(com.sleepycat.b.m paramm, byte[] paramArrayOfByte)
  {
    if ((!h) && (paramArrayOfByte == null)) {
      throw new AssertionError();
    }
    int m = paramm.b;
    int k = paramm.c;
    int i;
    label53:
    byte[] arrayOfByte;
    if (paramArrayOfByte != null)
    {
      i = paramArrayOfByte.length;
      if (k + m <= i) {
        break label161;
      }
      j = k + m;
      j = j - m + paramm.e;
      if (j != 0) {
        break label167;
      }
      arrayOfByte = ar.a;
      label74:
      if (k >= i) {
        break label175;
      }
    }
    label161:
    label167:
    label175:
    for (int j = k;; j = i)
    {
      if (j > 0) {
        System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, j);
      }
      j = k + 0;
      int n = paramm.e;
      System.arraycopy(paramm.a, paramm.d, arrayOfByte, j, n);
      i -= k + m;
      if (i > 0) {
        System.arraycopy(paramArrayOfByte, k + m, arrayOfByte, j + n, i);
      }
      return arrayOfByte;
      i = 0;
      break;
      j = i;
      break label53;
      arrayOfByte = new byte[j];
      break label74;
    }
  }
  
  public final af S()
  {
    return a(true, false);
  }
  
  public int a()
  {
    if (i()) {}
    for (int i = -1;; i = this.f.length) {
      return b(i);
    }
  }
  
  public final long a(com.sleepycat.b.c.ad paramad, i parami, byte[] paramArrayOfByte, long paramLong, q paramq, com.sleepycat.b.n.am paramam, av paramav)
  {
    if (parami.g())
    {
      if (paramLong != -1L) {}
      for (;;)
      {
        l = paramLong;
        if (paramq == null) {
          break;
        }
        paramad = paramq.b(paramLong, o.b, false, parami);
        l = paramLong;
        if (h) {
          break;
        }
        l = paramLong;
        if (paramad.a != h.f) {
          break;
        }
        throw new AssertionError(com.sleepycat.b.p.j.h(paramLong));
        paramLong = paramad.ac.a();
      }
    }
    long l = a(paramad, parami, paramArrayOfByte, paramLong, paramq, paramam, false, paramav);
    return l;
  }
  
  public final long a(com.sleepycat.b.c.ad paramad, i parami, byte[] paramArrayOfByte, long paramLong, boolean paramBoolean, av paramav)
  {
    return a(paramad, parami, paramArrayOfByte, paramLong, null, null, paramBoolean, paramav);
  }
  
  k<?> a(af paramaf, i parami, byte[] paramArrayOfByte, long paramLong, boolean paramBoolean, com.sleepycat.b.n.z paramz, av paramav)
  {
    return new k(paramaf, this, parami.a, paramArrayOfByte, paramLong, paramBoolean, paramz);
  }
  
  public af a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (i())
    {
      if ((!h) && (paramBoolean1)) {
        throw new AssertionError();
      }
      if (paramBoolean2) {
        return af.E;
      }
      return af.F;
    }
    if (paramBoolean1)
    {
      if (paramBoolean2) {
        return af.G;
      }
      return af.H;
    }
    if (paramBoolean2) {
      return af.I;
    }
    return af.J;
  }
  
  public String a(int paramInt, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramBoolean)
    {
      localStringBuilder.append("                                                                                                                                ".substring(0, paramInt));
      localStringBuilder.append(d());
      localStringBuilder.append('\n');
    }
    localStringBuilder.append(super.a(paramInt + 2, true));
    localStringBuilder.append('\n');
    if (this.f != null)
    {
      localStringBuilder.append("                                                                                                                                ".substring(0, paramInt + 2));
      localStringBuilder.append("<data>");
      localStringBuilder.append(w.a.a(this.f));
      localStringBuilder.append("</data>");
      localStringBuilder.append('\n');
    }
    if (paramBoolean)
    {
      localStringBuilder.append("                                                                                                                                ".substring(0, paramInt));
      localStringBuilder.append(e());
    }
    return localStringBuilder.toString();
  }
  
  public final void a(int paramInt)
  {
    this.g = (this.g & 0x80000000 | paramInt);
  }
  
  public final void a(com.sleepycat.b.c.ad paramad, boolean paramBoolean)
  {
    paramad = paramad.A;
    paramad.g.g();
    if (paramBoolean) {
      paramad.j.g();
    }
  }
  
  final void a(com.sleepycat.b.c.al paramal) {}
  
  final void a(com.sleepycat.b.c.al paramal, s params) {}
  
  final void a(com.sleepycat.b.c.al paramal, j paramj) {}
  
  public void a(a parama) {}
  
  public final void a(com.sleepycat.b.m paramm)
  {
    if ((!h) && (i())) {
      throw new AssertionError();
    }
    int i = this.f.length;
    byte[] arrayOfByte = new byte[i];
    System.arraycopy(this.f, 0, arrayOfByte, 0, i);
    paramm.a(arrayOfByte);
  }
  
  public final void a(StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    paramStringBuilder.append(d());
    super.a(paramStringBuilder, paramBoolean);
    if (this.f != null)
    {
      paramStringBuilder.append("<data>");
      if (!paramBoolean) {
        break label73;
      }
      paramStringBuilder.append(w.a.a(this.f));
    }
    for (;;)
    {
      paramStringBuilder.append("</data>");
      b(paramStringBuilder, paramBoolean);
      paramStringBuilder.append(e());
      return;
      label73:
      paramStringBuilder.append("hidden");
    }
  }
  
  public void a(StringBuilder paramStringBuilder, byte[] paramArrayOfByte)
  {
    paramStringBuilder.append(w.a(paramArrayOfByte, 0));
  }
  
  public void a(ByteBuffer paramByteBuffer)
  {
    super.a(paramByteBuffer);
    if (i())
    {
      ar.b(paramByteBuffer, -1);
      return;
    }
    ar.b(paramByteBuffer, this.f.length);
    ar.b(paramByteBuffer, this.f);
  }
  
  public void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    super.a(paramByteBuffer, paramInt);
    boolean bool;
    if (paramInt < 8)
    {
      if (paramInt < 6)
      {
        bool = true;
        ar.b(paramByteBuffer, bool);
      }
    }
    else
    {
      if (paramInt >= 6) {
        break label54;
      }
      if (ar.h(paramByteBuffer)) {
        this.f = ar.c(paramByteBuffer, true);
      }
    }
    label54:
    do
    {
      return;
      bool = false;
      break;
      paramInt = ar.a(paramByteBuffer, false);
    } while (paramInt < 0);
    this.f = ar.d(paramByteBuffer, paramInt);
  }
  
  public boolean a(at paramat)
  {
    if (!(paramat instanceof y)) {}
    do
    {
      return false;
      paramat = (y)paramat;
    } while (!Arrays.equals(this.f, paramat.f));
    return true;
  }
  
  public void b(long paramLong) {}
  
  public void b(StringBuilder paramStringBuilder, boolean paramBoolean) {}
  
  public final void b(ByteBuffer paramByteBuffer, int paramInt)
  {
    com.sleepycat.b.g.a.a(this, paramByteBuffer, paramInt);
  }
  
  boolean c(long paramLong)
  {
    return true;
  }
  
  public String d()
  {
    return "<ln>";
  }
  
  public String e()
  {
    return "</ln>";
  }
  
  public void h()
  {
    this.f = null;
  }
  
  public boolean i()
  {
    return this.f == null;
  }
  
  public final boolean k()
  {
    return (this.g & 0x80000000) != 0;
  }
  
  public final void l()
  {
    this.g |= 0x80000000;
  }
  
  public long m()
  {
    return com.sleepycat.b.p.au.a.c;
  }
  
  boolean n()
  {
    return true;
  }
  
  public void o() {}
  
  final boolean t()
  {
    return false;
  }
  
  public final boolean u_()
  {
    return true;
  }
  
  public long v_()
  {
    int j = ao.t;
    int i = j;
    if (this.f != null) {
      i = j + ao.a(this.f.length);
    }
    return i;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\l\y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */