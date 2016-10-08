package com.sleepycat.b.l;

import com.sleepycat.b.a.s;
import com.sleepycat.b.a.v;
import com.sleepycat.b.aa;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.al;
import com.sleepycat.b.c.ao;
import com.sleepycat.b.c.as;
import com.sleepycat.b.c.h;
import com.sleepycat.b.f.f;
import com.sleepycat.b.g.a.k;
import com.sleepycat.b.g.af;
import com.sleepycat.b.g.am;
import com.sleepycat.b.g.ar;
import com.sleepycat.b.g.at;
import com.sleepycat.b.g.au;
import com.sleepycat.b.g.av;
import com.sleepycat.b.l.a.c;
import java.io.FileNotFoundException;
import java.io.PrintStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock;
import java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock;
import java.util.logging.Level;
import java.util.logging.Logger;

public class j
  extends ac
  implements at, Comparable<j>
{
  public static int o;
  private int a;
  private r b;
  public long c;
  protected f d;
  public long e;
  public int f;
  public byte[] g;
  public byte[] h;
  public com.sleepycat.b.c.i i;
  public int j;
  public long k;
  public boolean l;
  public long m = -1L;
  public int n = 0;
  private l q;
  private byte[] r;
  private long s;
  private byte[] t;
  private long[] u;
  private v v;
  private boolean w;
  
  static
  {
    if (!j.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      p = bool;
      o = 1000;
      return;
    }
  }
  
  public j()
  {
    a(null, w.b, 0, 0);
  }
  
  public j(com.sleepycat.b.c.i parami, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.c = parami.c.ac.a.incrementAndGet();
    if (parami.a.equals(com.sleepycat.b.c.p.a)) {}
    for (paramInt2 = 0x20000 | paramInt2;; paramInt2 = 0x10000 | paramInt2)
    {
      a(parami, paramArrayOfByte, paramInt1, paramInt2);
      d();
      return;
    }
  }
  
  static String a(String paramString, j paramj, long paramLong, byte paramByte)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("fetchTarget of ");
    if (paramLong == -1L) {
      localStringBuilder.append("null lsn");
    }
    for (;;)
    {
      if (paramj != null)
      {
        localStringBuilder.append(" parent IN=").append(paramj.c);
        localStringBuilder.append(" IN class=").append(paramj.getClass().getName());
        localStringBuilder.append(" lastFullVersion=");
        localStringBuilder.append(com.sleepycat.b.p.j.h(paramj.m));
        localStringBuilder.append(" lastLoggedVersion=");
        localStringBuilder.append(com.sleepycat.b.p.j.h(paramj.g()));
        localStringBuilder.append(" parent.getDirty()=").append(paramj.G());
      }
      localStringBuilder.append(" state=").append(paramByte);
      if (paramString != null) {
        localStringBuilder.append(" ").append(paramString);
      }
      return localStringBuilder.toString();
      localStringBuilder.append(com.sleepycat.b.p.j.h(paramLong));
    }
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    paramInt1 += 1;
    byte[] arrayOfByte = this.t;
    int i1 = paramInt1 + 1;
    arrayOfByte[paramInt1] = ((byte)(paramInt2 >>> 0));
    this.t[i1] = ((byte)(paramInt2 >>> 8));
    this.t[(i1 + 1)] = ((byte)(paramInt2 >>> 16));
  }
  
  private void a(j paramj, long paramLong)
  {
    int i1;
    label62:
    long l1;
    if (this.v != null)
    {
      i1 = ao.a(this.v);
      if ((paramj != null) && (paramj.v != null))
      {
        if (this.v == null) {
          break label177;
        }
        v localv1 = this.v;
        v localv2 = paramj.v;
        localv1.a(localv2.b, 0, localv2.a);
        paramj.b(0 - ao.a(paramj.v));
        paramj.v = null;
      }
      if (paramLong != -1L)
      {
        if (this.v == null) {
          this.v = new v();
        }
        paramj = this.v;
        paramj.d(com.sleepycat.b.p.j.d(paramLong));
        paramj.d(com.sleepycat.b.p.j.e(paramLong));
        paramj.a(false);
        paramj.c(0);
      }
      l1 = i1;
      if (this.v == null) {
        break label188;
      }
    }
    label177:
    label188:
    for (paramLong = ao.a(this.v);; paramLong = 0L)
    {
      a(l1, paramLong);
      return;
      i1 = 0;
      break;
      this.v = paramj.v;
      break label62;
    }
  }
  
  static void a(StringBuilder paramStringBuilder, byte paramByte)
  {
    paramStringBuilder.append("<knownDeleted val=\"");
    paramStringBuilder.append(a(paramByte)).append("\"/>");
    paramStringBuilder.append("<pendingDeleted val=\"");
    if ((paramByte & 0x8) != 0) {}
    for (boolean bool = true;; bool = false)
    {
      paramStringBuilder.append(bool).append("\"/>");
      return;
    }
  }
  
  private void a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt)
  {
    int i2 = 0;
    int i1 = 0;
    if (i1 < this.f)
    {
      if (i1 == paramInt) {}
      for (byte[] arrayOfByte = paramArrayOfByte2;; arrayOfByte = h(i1))
      {
        this.q = ((l)this.q.a(i1, a(paramArrayOfByte1, arrayOfByte), this));
        i1 += 1;
        break;
      }
    }
    if ((!p) && (this.i == null)) {
      throw new AssertionError();
    }
    if (this.r == null)
    {
      paramInt = 0;
      this.r = paramArrayOfByte1;
      if (paramArrayOfByte1 != null) {
        break label129;
      }
    }
    label129:
    for (i1 = i2;; i1 = paramArrayOfByte1.length)
    {
      a(paramInt, i1);
      return;
      paramInt = this.r.length;
      break;
    }
  }
  
  static boolean a(byte paramByte)
  {
    return (paramByte & 0x1) != 0;
  }
  
  private boolean a(int paramInt, byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = this.h;
    arrayOfByte[paramInt] = ((byte)(arrayOfByte[paramInt] | 0x2));
    return b(paramInt, paramArrayOfByte);
  }
  
  private boolean a(au paramau)
  {
    return (paramau != au.b) || (this.i.e());
  }
  
  private static byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    if (paramArrayOfByte1 == null) {}
    for (int i1 = 0; i1 == 0; i1 = paramArrayOfByte1.length) {
      return paramArrayOfByte2;
    }
    int i2 = paramArrayOfByte2.length - i1;
    paramArrayOfByte1 = new byte[i2];
    System.arraycopy(paramArrayOfByte2, i1, paramArrayOfByte1, 0, i2);
    return paramArrayOfByte1;
  }
  
  private void b(int paramInt, ac paramac, long paramLong, byte[] paramArrayOfByte)
  {
    long l1 = u(paramInt);
    b(paramInt, paramLong);
    a(paramInt, paramac);
    int i1 = w.a(paramArrayOfByte, h(paramInt), this.i.p);
    boolean bool = false;
    if (i1 < 0) {
      bool = a(paramInt, paramArrayOfByte);
    }
    if (bool) {
      a(this.k, c());
    }
    for (;;)
    {
      a(true);
      return;
      a(l1, u(paramInt));
    }
  }
  
  private boolean b(int paramInt, ac paramac, byte[] paramArrayOfByte)
  {
    if ((!p) && (paramArrayOfByte != null) && (!(paramac instanceof y))) {
      throw new AssertionError();
    }
    if ((paramArrayOfByte != null) && (this.i.p != null) && (!Arrays.equals(paramArrayOfByte, h(paramInt))))
    {
      a(true);
      return a(paramInt, paramArrayOfByte);
    }
    return false;
  }
  
  private boolean b(int paramInt, byte[] paramArrayOfByte)
  {
    if ((!p) && (this.i == null)) {
      throw new AssertionError();
    }
    if ((this.i.l()) && (this.r != null))
    {
      if (!c(paramArrayOfByte))
      {
        byte[] arrayOfByte = e(paramInt);
        localObject = arrayOfByte;
        if (arrayOfByte != null) {
          localObject = w.a(arrayOfByte, paramArrayOfByte);
        }
        a((byte[])localObject, paramArrayOfByte, paramInt);
        return true;
      }
      localObject = (o)this.q.a();
      this.q = ((l)this.q.a(paramInt, a(this.r, paramArrayOfByte), this));
      return localObject != this.q.a();
    }
    if (this.r != null)
    {
      a(new byte[0], paramArrayOfByte, paramInt);
      return true;
    }
    Object localObject = (o)this.q.a();
    this.q = ((l)this.q.a(paramInt, paramArrayOfByte, this));
    return localObject != this.q.a();
  }
  
  private boolean c(byte[] paramArrayOfByte)
  {
    if ((this.r == null) || (this.r.length == 0)) {
      return false;
    }
    int i2 = paramArrayOfByte.length;
    int i1 = 0;
    for (;;)
    {
      if (i1 >= this.r.length) {
        break label55;
      }
      if ((i1 >= i2) || (this.r[i1] != paramArrayOfByte[i1])) {
        break;
      }
      i1 += 1;
    }
    label55:
    return true;
  }
  
  private void d()
  {
    this.q = ((l)this.q.a(this));
    this.k = c();
  }
  
  private void d(int paramInt, long paramLong)
  {
    int i1 = p();
    a(paramInt, paramLong);
    b(p() - i1);
    byte[] arrayOfByte = this.h;
    arrayOfByte[paramInt] = ((byte)(arrayOfByte[paramInt] | 0x2));
  }
  
  private void e(int paramInt, long paramLong)
  {
    int i2 = this.t.length >> 2;
    long[] arrayOfLong = new long[i2];
    int i1 = 0;
    while (i1 < i2)
    {
      arrayOfLong[i1] = k(i1);
      i1 += 1;
    }
    arrayOfLong[paramInt] = paramLong;
    this.u = arrayOfLong;
    this.t = null;
  }
  
  private void e(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.a |= 0x4;
      return;
    }
    this.a &= 0xFFFFFFFB;
  }
  
  private byte[] e(int paramInt)
  {
    int i1 = 1;
    if ((!this.i.l()) || (this.f <= 1)) {
      return null;
    }
    if (paramInt == 0) {}
    Object localObject1;
    int i2;
    for (;;)
    {
      localObject1 = h(i1);
      i2 = localObject1.length;
      i1 += 1;
      while (i1 < this.f)
      {
        int i3 = i2;
        localObject2 = localObject1;
        if (i1 != paramInt)
        {
          byte[] arrayOfByte = h(i1);
          int i4 = w.a((byte[])localObject1, i2, arrayOfByte);
          i3 = i2;
          localObject2 = localObject1;
          if (i4 < i2)
          {
            i3 = i4;
            localObject2 = arrayOfByte;
          }
        }
        i1 += 1;
        i2 = i3;
        localObject1 = localObject2;
      }
      i1 = 0;
    }
    Object localObject2 = new byte[i2];
    System.arraycopy(localObject1, 0, localObject2, 0, i2);
    return (byte[])localObject2;
  }
  
  private int p()
  {
    if (this.u == null) {
      return ao.a(this.t.length);
    }
    return ao.h + this.u.length * 8;
  }
  
  private int t(int paramInt)
  {
    paramInt += 1;
    byte[] arrayOfByte = this.t;
    int i1 = paramInt + 1;
    i1 = ((arrayOfByte[paramInt] & 0xFF) << 0) + ((this.t[i1] & 0xFF) << 8) + ((this.t[(i1 + 1)] & 0xFF) << 16);
    paramInt = i1;
    if (i1 == 16777215) {
      paramInt = -1;
    }
    return paramInt;
  }
  
  private long u(int paramInt)
  {
    long l2 = 0L;
    long l1 = l2;
    if (!this.q.c())
    {
      localObject = (byte[])this.q.a(paramInt);
      l1 = l2;
      if (localObject != null) {
        l1 = ao.a(localObject.length) + 0L;
      }
    }
    Object localObject = (ac)this.b.a(paramInt);
    l2 = l1;
    if (localObject != null) {
      l2 = l1 + ((ac)localObject).v_();
    }
    return l2;
  }
  
  private void v(int paramInt)
  {
    a(paramInt, 0, this.f - paramInt);
    paramInt = this.f - paramInt;
    while (paramInt < this.f)
    {
      a(paramInt);
      paramInt += 1;
    }
    a(true);
  }
  
  public final void B()
  {
    a(com.sleepycat.b.a.a);
  }
  
  public final void C()
  {
    this.d.d();
  }
  
  public final void D()
  {
    f localf = this.d;
    if (localf.isWriteLockedByCurrentThread())
    {
      localf.writeLock().unlock();
      if ((!f.e) && (localf.b) && (!com.sleepycat.b.f.d.a.b(localf))) {
        throw new AssertionError();
      }
    }
    else if (!localf.d)
    {
      if ((!f.e) && (localf.getReadLockCount() <= 0)) {
        throw new AssertionError();
      }
      int i1 = 0;
      if (!f.e) {
        i1 = 1;
      }
      if (i1 != 0)
      {
        if (localf.c.contains(Thread.currentThread()))
        {
          localf.readLock().unlock();
          localf.c.remove(Thread.currentThread());
          if ((!f.e) && (localf.b) && (!com.sleepycat.b.f.d.a.b(localf))) {
            throw new AssertionError();
          }
        }
      }
      else {
        localf.readLock().unlock();
      }
    }
  }
  
  public final boolean E()
  {
    boolean bool = false;
    f localf = this.d;
    if (!f.e) {}
    for (int i1 = 1;; i1 = 0)
    {
      if ((i1 != 0) && (!localf.d))
      {
        if ((localf.c.contains(Thread.currentThread())) || (localf.isWriteLockedByCurrentThread())) {
          bool = true;
        }
        return bool;
      }
      return localf.isWriteLockedByCurrentThread();
    }
  }
  
  public final boolean F()
  {
    return this.d.isWriteLockedByCurrentThread();
  }
  
  public final boolean G()
  {
    return (this.a & 0x1) != 0;
  }
  
  public final boolean H()
  {
    return (this.a & 0x2) != 0;
  }
  
  public final boolean I()
  {
    return (this.a & 0x4) != 0;
  }
  
  public final boolean J()
  {
    return (this.a & 0x4) != 0;
  }
  
  public final boolean K()
  {
    long l1 = c();
    if (l1 != this.k)
    {
      String str = "-Warning: Out of sync. Should be " + l1 + " / actual: " + this.k + " node: " + this.c;
      com.sleepycat.b.p.w.a(Level.INFO, this.i.c, str);
      System.out.println(str);
      M();
      return false;
    }
    return true;
  }
  
  public final long L()
  {
    return this.k - this.n;
  }
  
  public long M()
  {
    long l1 = n();
    long l2 = ao.a(this.h.length);
    int i4 = p();
    int i1 = 0;
    int i2 = 0;
    while (i2 < this.f)
    {
      i1 = (int)(i1 + u(i2));
      i2 += 1;
    }
    if (this.r != null)
    {
      i2 = ao.a(this.r.length);
      if (this.v == null) {
        break label316;
      }
    }
    label316:
    for (int i3 = ao.a(this.v);; i3 = 0)
    {
      long l3 = this.b.b();
      long l4 = this.q.b();
      long l5 = l1 + l2 + i4 + i1 + i2 + i3 + l3 + l4;
      System.out.println(" nEntries:" + this.f + "/" + this.h.length + " in: " + l1 + " states: " + l2 + " entry: " + i1 + " lsn: " + i4 + " keyPrefix: " + i2 + " provisional: " + i3 + " targetRep(" + this.b.a() + "): " + l3 + " keyRep(" + this.q.a() + "): " + l4 + " Total: " + l5 + " inMemorySize: " + this.k);
      return l5;
      i2 = 0;
      break;
    }
  }
  
  public final void N()
  {
    l locall = this.q;
    this.b = ((r)this.b.a(this));
    this.q = ((l)this.q.a(this));
    if (this.q.c() != locall.c()) {
      a(this.k, c());
    }
    while (this.q == locall) {
      return;
    }
    a(locall.b(), this.q.b());
  }
  
  public final boolean O()
  {
    return true;
  }
  
  public final boolean P()
  {
    return this.h.length - this.f <= 0;
  }
  
  public final boolean Q()
  {
    if (j()) {}
    while (k()) {
      return false;
    }
    int i1 = 0;
    for (;;)
    {
      if (i1 >= this.f) {
        break label53;
      }
      if ((k(i1) == -1L) && (j(i1) == null)) {
        break;
      }
      i1 += 1;
    }
    label53:
    return true;
  }
  
  final boolean R()
  {
    boolean bool2 = false;
    int i1 = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i1 < this.f)
      {
        if (j(i1) != null) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i1 += 1;
    }
  }
  
  public final af S()
  {
    return y();
  }
  
  public int a()
  {
    int i4 = 0;
    int i2 = super.a() + ar.a(this.c) + ar.a(this.g);
    int i1 = i2;
    if (this.r != null) {
      i1 = i2 + ar.a(this.r);
    }
    int i3 = i1 + 1 + ar.a(this.f) + ar.a(this.j) + ar.a(this.h.length) + ar.c();
    label100:
    int i5;
    if (this.u == null)
    {
      i2 = 1;
      i1 = i3;
      if (i2 != 0) {
        i1 = i3 + 4;
      }
      i3 = i1;
      i1 = i4;
      if (i1 >= this.f) {
        return i3;
      }
      i5 = ar.a((byte[])this.q.a(i1));
      if (i2 == 0) {
        break label153;
      }
    }
    label153:
    for (i4 = 4;; i4 = ar.b())
    {
      i3 += i4 + i5 + 1;
      i1 += 1;
      break label100;
      i2 = 0;
      break;
    }
    return i3;
  }
  
  public final int a(byte[] paramArrayOfByte, boolean paramBoolean1, boolean paramBoolean2)
  {
    return a(paramArrayOfByte, paramBoolean1, paramBoolean2, null);
  }
  
  public final int a(byte[] paramArrayOfByte, boolean paramBoolean1, boolean paramBoolean2, Comparator<byte[]> paramComparator)
  {
    int i2 = this.f;
    if (paramComparator != null) {
      if ((!m()) || (paramBoolean2) || (paramBoolean1)) {
        break label62;
      }
    }
    label62:
    for (int i1 = 1;; i1 = 0)
    {
      if ((p) || (this.f >= 0)) {
        break label209;
      }
      throw new AssertionError();
      paramComparator = this.i.p;
      break;
    }
    for (;;)
    {
      int i3;
      if (i3 <= i2)
      {
        int i5 = (i2 + i3) / 2;
        if ((i5 == 0) && (i1 != 0)) {}
        for (int i4 = 1;; i4 = w.a(paramArrayOfByte, h(i5), paramComparator))
        {
          if (i4 >= 0) {
            break label128;
          }
          i2 = i5 - 1;
          break;
        }
        label128:
        if (i4 > 0)
        {
          i3 = i5 + 1;
        }
        else
        {
          if (paramBoolean1) {}
          for (i1 = 0x10000 | i5;; i1 = i5)
          {
            i2 = i1;
            if (i1 >= 0)
            {
              i2 = i1;
              if (paramBoolean2)
              {
                i2 = i1;
                if (o(0xFFFF & i1)) {
                  i2 = -1;
                }
              }
            }
            return i2;
          }
        }
      }
      else
      {
        if (paramBoolean2) {
          return -1;
        }
        return i2;
        label209:
        i3 = 0;
        i2 -= 1;
      }
    }
  }
  
  public final long a(am paramam)
  {
    if (this.i.g()) {
      return g();
    }
    return a(paramam, false, false, au.a, false, null);
  }
  
  public final long a(am paramam, j paramj)
  {
    if (this.i.g()) {
      return g();
    }
    return a(paramam, false, false, au.b, false, paramj);
  }
  
  public final long a(am paramam, boolean paramBoolean1, boolean paramBoolean2, au paramau, boolean paramBoolean3, j paramj)
  {
    q localq = new q();
    localq.e = paramau;
    localq.j = paramj;
    localq.f = av.g;
    paramau = new p();
    paramau.a = this.i;
    paramau.e = paramBoolean3;
    paramau.l = paramBoolean1;
    paramau.m = paramBoolean2;
    a(localq, paramau);
    paramam.a(localq, paramau);
    a(localq);
    return localq.d;
  }
  
  public final long a(am paramam, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, j paramj)
  {
    if (paramBoolean3) {}
    for (au localau = au.b;; localau = au.a) {
      return a(paramam, paramBoolean1, paramBoolean2, localau, paramBoolean4, paramj);
    }
  }
  
  protected j a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return new j(this.i, paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public String a(int paramInt, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramBoolean)
    {
      localStringBuilder.append("                                                                                                                                ".substring(0, paramInt));
      localStringBuilder.append(v());
      localStringBuilder.append('\n');
    }
    String str;
    label120:
    label180:
    int i1;
    if (paramBoolean)
    {
      localStringBuilder.append("<nodeId val=\"");
      localStringBuilder.append(this.c);
      localStringBuilder.append("\"/>");
      localStringBuilder.append('\n');
      localStringBuilder.append("                                                                                                                                ".substring(0, paramInt + 2));
      localStringBuilder.append("<idkey>");
      if (this.g != null) {
        break label754;
      }
      str = "";
      localStringBuilder.append(str);
      localStringBuilder.append("</idkey>");
      localStringBuilder.append('\n');
      localStringBuilder.append("                                                                                                                                ".substring(0, paramInt + 2));
      localStringBuilder.append("<prefix>");
      if (this.r != null) {
        break label766;
      }
      str = "";
      localStringBuilder.append(str);
      localStringBuilder.append("</prefix>\n");
      localStringBuilder.append("                                                                                                                                ".substring(0, paramInt + 2));
      localStringBuilder.append("<dirty val=\"").append(G()).append("\"/>");
      localStringBuilder.append('\n');
      localStringBuilder.append("                                                                                                                                ".substring(0, paramInt + 2));
      localStringBuilder.append("<generation val=\"").append(this.e).append("\"/>");
      localStringBuilder.append('\n');
      localStringBuilder.append("                                                                                                                                ".substring(0, paramInt + 2));
      localStringBuilder.append("<level val=\"");
      localStringBuilder.append(Integer.toHexString(this.j)).append("\"/>");
      localStringBuilder.append('\n');
      localStringBuilder.append("                                                                                                                                ".substring(0, paramInt + 2));
      localStringBuilder.append("<isRoot val=\"").append(I()).append("\"/>");
      localStringBuilder.append('\n');
      localStringBuilder.append("                                                                                                                                ".substring(0, paramInt + 2));
      localStringBuilder.append("<entries nEntries=\"");
      localStringBuilder.append(this.f);
      localStringBuilder.append("\">");
      localStringBuilder.append('\n');
      i1 = 0;
      label437:
      if (i1 >= this.f) {
        break label857;
      }
      localStringBuilder.append("                                                                                                                                ".substring(0, paramInt + 4));
      localStringBuilder.append("<entry id=\"" + i1 + "\">");
      localStringBuilder.append('\n');
      if (k(i1) != -1L) {
        break label778;
      }
      localStringBuilder.append("                                                                                                                                ".substring(0, paramInt + 6));
      localStringBuilder.append("<lsn/>");
      label539:
      localStringBuilder.append('\n');
      if (this.q.a(i1) != null) {
        break label800;
      }
      localStringBuilder.append("                                                                                                                                ".substring(0, paramInt + 6));
      localStringBuilder.append("<key/>");
      label585:
      localStringBuilder.append('\n');
      if (this.b.a(i1) != null) {
        break label828;
      }
      localStringBuilder.append("                                                                                                                                ".substring(0, paramInt + 6));
      localStringBuilder.append("<target/>");
    }
    for (;;)
    {
      localStringBuilder.append('\n');
      localStringBuilder.append("                                                                                                                                ".substring(0, paramInt + 6));
      a(localStringBuilder, this.h[i1]);
      localStringBuilder.append("<dirty val=\"").append(p(i1)).append("\"/>");
      localStringBuilder.append('\n');
      localStringBuilder.append("                                                                                                                                ".substring(0, paramInt + 4));
      localStringBuilder.append("</entry>");
      localStringBuilder.append('\n');
      i1 += 1;
      break label437;
      localStringBuilder.append(this.c);
      break;
      label754:
      str = w.a(this.g, 0);
      break label120;
      label766:
      str = w.a(this.r, 0);
      break label180;
      label778:
      localStringBuilder.append(com.sleepycat.b.p.j.b(k(i1), paramInt + 6));
      break label539;
      label800:
      localStringBuilder.append(w.a((byte[])this.q.a(i1), paramInt + 6));
      break label585;
      label828:
      localStringBuilder.append(((ac)this.b.a(i1)).a(paramInt + 6, true));
    }
    label857:
    localStringBuilder.append("                                                                                                                                ".substring(0, paramInt + 2));
    localStringBuilder.append("</entries>");
    localStringBuilder.append('\n');
    if (paramBoolean)
    {
      localStringBuilder.append("                                                                                                                                ".substring(0, paramInt));
      localStringBuilder.append(w());
    }
    return localStringBuilder.toString();
  }
  
  void a(int paramInt)
  {
    this.b = ((r)this.b.a(paramInt, null, this));
    this.q = ((l)this.q.a(paramInt, null, this));
    a(paramInt, -1L);
    this.h[paramInt] = 0;
  }
  
  void a(int paramInt1, int paramInt2, int paramInt3)
  {
    this.b = ((r)this.b.a(paramInt1, paramInt2, paramInt3, this));
    this.q = ((l)this.q.a(paramInt1, paramInt2, paramInt3, this));
    System.arraycopy(this.h, paramInt1, this.h, paramInt2, paramInt3);
    if (this.u == null)
    {
      System.arraycopy(this.t, paramInt1 << 2, this.t, paramInt2 << 2, paramInt3 << 2);
      return;
    }
    System.arraycopy(this.u, paramInt1, this.u, paramInt2, paramInt3);
  }
  
  public final void a(int paramInt, long paramLong)
  {
    int i3 = paramInt << 2;
    if (this.u != null)
    {
      this.u[paramInt] = paramLong;
      return;
    }
    if (paramLong == -1L)
    {
      this.t[i3] = 0;
      a(i3, -1);
      return;
    }
    long l1 = com.sleepycat.b.p.j.d(paramLong);
    if (this.s == -1L)
    {
      this.s = l1;
      this.t[i3] = 0;
    }
    int i2;
    for (;;)
    {
      i2 = (int)com.sleepycat.b.p.j.e(paramLong);
      if (i2 <= 16777214) {
        break;
      }
      e(paramInt, paramLong);
      return;
      if (l1 < this.s)
      {
        long l2 = this.s;
        i2 = 0;
        long l3;
        if (i2 < this.t.length) {
          if (t(i2) != -1)
          {
            l3 = this.t[i2] + l2 - l1;
            if (l3 > 127L)
            {
              i2 -= 4;
              while (i2 >= 0)
              {
                if (t(i2) != -1)
                {
                  i1 = (byte)(int)(this.t[i2] - (l2 - l1));
                  this.t[i2] = i1;
                }
                i2 -= 4;
              }
            }
          }
        }
        for (i2 = 0;; i2 = 1)
        {
          if (i2 != 0) {
            break label263;
          }
          e(paramInt, paramLong);
          return;
          i1 = (byte)(int)l3;
          this.t[i2] = i1;
          i2 += 4;
          break;
        }
        label263:
        this.s = l1;
      }
      if (l1 - this.s > 127L)
      {
        e(paramInt, paramLong);
        return;
      }
      int i1 = (byte)(int)(l1 - this.s);
      this.t[i3] = i1;
    }
    a(i3, i2);
  }
  
  public final void a(int paramInt, long paramLong1, long paramLong2, byte[] paramArrayOfByte, ac paramac)
  {
    long l1 = u(paramInt);
    if (b(paramInt, paramac, paramArrayOfByte))
    {
      a(this.k, c());
      b(paramInt, paramLong2);
      a(true);
      return;
    }
    a(l1, u(paramInt));
    paramArrayOfByte = j(paramInt);
    if (paramArrayOfByte != null) {}
    for (l1 = paramArrayOfByte.v_();; l1 = 0L)
    {
      a(paramLong1, l1);
      break;
    }
  }
  
  void a(int paramInt, ac paramac)
  {
    if ((!p) && (!this.d.isWriteLockedByCurrentThread())) {
      throw new AssertionError("Not latched for write " + getClass().getName() + " id=" + this.c);
    }
    this.b = ((r)this.b.a(paramInt, paramac, this));
  }
  
  public final void a(int paramInt, ac paramac, long paramLong)
  {
    long l1 = u(paramInt);
    b(paramInt, paramLong);
    a(paramInt, paramac);
    if (b(paramInt, paramac, null)) {
      a(this.k, c());
    }
    for (;;)
    {
      a(true);
      return;
      a(l1, u(paramInt));
    }
  }
  
  public final void a(int paramInt, ac paramac, long paramLong, byte[] paramArrayOfByte)
  {
    long l1 = u(paramInt);
    b(paramInt, paramLong);
    a(paramInt, paramac);
    if (a(paramInt, paramArrayOfByte)) {
      a(this.k, c());
    }
    for (;;)
    {
      a(true);
      return;
      a(l1, u(paramInt));
    }
  }
  
  public final void a(int paramInt, ac paramac, byte[] paramArrayOfByte)
  {
    long l1 = u(paramInt);
    a(paramInt, paramac);
    if (b(paramInt, paramac, paramArrayOfByte))
    {
      a(this.k, c());
      return;
    }
    a(l1, u(paramInt));
  }
  
  void a(int paramInt1, j paramj, int paramInt2)
  {
    ac localac = (ac)paramj.b.a(paramInt2);
    byte[] arrayOfByte = paramj.h(paramInt2);
    long l2 = paramj.k(paramInt2);
    int i1 = paramj.h[paramInt2];
    long l1 = p();
    paramInt2 = paramInt1 + 1;
    if (paramInt2 > this.f)
    {
      this.f = paramInt2;
      this.b = ((r)this.b.a(paramInt1, localac, this));
      boolean bool = b(paramInt1, arrayOfByte);
      a(paramInt1, l2);
      this.h[paramInt1] = i1;
      if (!bool) {
        break label137;
      }
      a(this.k, c());
    }
    for (;;)
    {
      a(true);
      return;
      l1 += u(paramInt1);
      break;
      label137:
      a(l1, u(paramInt1) + p());
    }
  }
  
  void a(long paramLong)
  {
    this.m = paramLong;
  }
  
  protected final void a(long paramLong1, long paramLong2)
  {
    b(paramLong2 - paramLong1);
  }
  
  final void a(long paramLong, byte[] paramArrayOfByte, ae paramae, boolean paramBoolean1, com.sleepycat.b.a parama, int paramInt, boolean paramBoolean2)
  {
    if ((!p) && (!this.d.isWriteLockedByCurrentThread())) {
      throw new AssertionError();
    }
    if (this.c == paramLong)
    {
      this.d.d();
      paramae.a = false;
      paramae.b = false;
      paramae.d = null;
      return;
    }
    if (this.f == 0)
    {
      paramae.b = false;
      paramae.a = false;
      if (paramBoolean1)
      {
        this.d.d();
        paramae.d = null;
        return;
      }
      paramae.d = this;
      paramae.e = -1;
      return;
    }
    paramae.e = a(paramArrayOfByte, false, false);
    if (paramae.e < 0)
    {
      paramae.b = false;
      paramae.a = false;
      if (paramBoolean1)
      {
        this.d.d();
        paramae.d = null;
        return;
      }
      paramae.d = this;
      return;
    }
    int i1;
    if (o(paramae.e))
    {
      i1 = 1;
      paramArrayOfByte = null;
    }
    for (;;)
    {
      if (i1 != 0)
      {
        paramae.a = false;
        paramae.b = false;
        if (paramBoolean1)
        {
          paramae.d = null;
          this.d.d();
          return;
          if (paramBoolean2)
          {
            paramArrayOfByte = (j)g(paramae.e);
            if (paramArrayOfByte == null) {
              i1 = 1;
            }
          }
          else
          {
            paramArrayOfByte = (j)j(paramae.e);
            i1 = 0;
          }
        }
        else
        {
          paramae.d = this;
        }
      }
      else
      {
        if ((paramInt >= 0) && (this.j == paramInt + 1))
        {
          paramae.a = true;
          paramae.d = this;
          paramae.b = false;
          return;
        }
        if (paramArrayOfByte == null)
        {
          if ((!p) && (paramBoolean2)) {
            throw new AssertionError();
          }
          paramae.b = false;
          paramae.a = false;
          paramae.d = this;
          paramae.c = true;
          return;
        }
        paramArrayOfByte.a(parama);
        if (paramArrayOfByte.c == paramLong)
        {
          paramArrayOfByte.d.d();
          paramae.a = true;
          paramae.d = this;
          paramae.b = false;
          return;
        }
        if (paramArrayOfByte.f())
        {
          paramArrayOfByte.d.d();
          paramae.a = false;
          paramae.b = false;
          if (paramBoolean1)
          {
            this.d.d();
            paramae.d = null;
            return;
          }
          paramae.d = this;
          return;
        }
        this.d.d();
        paramae.d = paramArrayOfByte;
        return;
      }
      i1 = 0;
    }
  }
  
  public final void a(com.sleepycat.b.a parama)
  {
    d(parama);
    this.d.a();
  }
  
  public void a(ad paramad, boolean paramBoolean)
  {
    paramad = paramad.A;
    paramad.i.g();
    if (paramBoolean) {
      paramad.l.g();
    }
  }
  
  final void a(al paramal)
  {
    d();
    paramal.a(this);
    int i1 = 0;
    while (i1 < this.f)
    {
      ac localac = j(i1);
      if (localac != null) {
        localac.a(paramal);
      }
      i1 += 1;
    }
  }
  
  public final void a(al paramal, s params)
  {
    if (this.f > 1) {
      throw aa.c("Found non-deletable IN " + this.c + " while flushing INList. nEntries = " + this.f);
    }
    paramal.b(this);
    if (this.m != -1L) {
      params.a(this.m, y(), 0, this.i);
    }
    if (h() != -1L) {
      params.a(h(), y(), 0, this.i);
    }
    if (this.f > 0)
    {
      ac localac = q(0);
      if (localac != null) {
        localac.a(paramal, params);
      }
    }
  }
  
  public final void a(al paramal, j paramj)
  {
    if (this.f > 1) {
      throw aa.c("Found non-deletable IN " + this.c + " while flushing INList. nEntries = " + this.f);
    }
    paramal.b(this);
    if (this.m != -1L) {
      paramj.a(this, this.m);
    }
    if (h() != -1L) {
      paramj.a(this, h());
    }
    if (this.f > 0)
    {
      ac localac = q(0);
      if (localac != null) {
        localac.a(paramal, paramj);
      }
    }
  }
  
  public final void a(com.sleepycat.b.c.i parami, long paramLong)
  {
    b(parami, paramLong);
    if (this.w)
    {
      this.w = false;
      c.a(this.i, this);
    }
    parami.c.t.a(this);
  }
  
  public final void a(com.sleepycat.b.c.i parami, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.i = parami;
    this.d = new f(z() + this.c);
    parami = this.d;
    if (ad.x()) {}
    for (boolean bool = e();; bool = true)
    {
      parami.d = bool;
      if (!p) {
        this.d.b = true;
      }
      this.e = 0L;
      this.a = 0;
      this.f = 0;
      this.g = paramArrayOfByte;
      this.b = r.a;
      this.q = new m(paramInt1);
      this.r = null;
      this.s = -1L;
      this.t = new byte[paramInt1 << 2];
      this.u = null;
      this.h = new byte[paramInt1];
      this.j = paramInt2;
      this.l = false;
      return;
    }
  }
  
  public void a(com.sleepycat.b.d.e parame)
  {
    this.i.c.A.q[parame.ordinal()].g();
  }
  
  final void a(ac paramac1, ac paramac2)
  {
    long l1 = 0L;
    if (paramac2 != null) {
      l1 = paramac2.v_();
    }
    long l2 = l1;
    if (paramac1 != null) {
      l2 = l1 - paramac1.v_();
    }
    b(l2);
  }
  
  void a(j paramj, int paramInt1, int paramInt2) {}
  
  protected final void a(j paramj, int paramInt1, int paramInt2, int paramInt3, com.sleepycat.b.a parama)
  {
    if (this.g == null) {
      throw aa.b();
    }
    int i5 = a(this.g, false, false);
    if (paramInt3 < 0) {
      paramInt3 = this.f / 2;
    }
    for (;;)
    {
      int i2;
      if (i5 < paramInt3) {
        i2 = this.f;
      }
      Object localObject1;
      j localj;
      int i3;
      int i4;
      for (int i1 = paramInt3;; i1 = 0)
      {
        localObject1 = h(i1);
        localj = a((byte[])localObject1, paramInt2, this.j);
        localj.a(parama);
        parama = null;
        i3 = 0;
        paramInt2 = 0;
        i4 = i1;
        if (i4 >= i2) {
          break label199;
        }
        try
        {
          if ((!l(i4)) || (paramInt2 != 0)) {
            break label796;
          }
          if ((p) || (localj.f())) {
            break;
          }
          throw new AssertionError();
        }
        finally
        {
          localj.d.d();
        }
        i2 = paramInt3;
      }
      parama = ((a)localj).d();
      paramInt2 = 1;
      label199:
      label796:
      for (;;)
      {
        localj.a(i3, this, i4);
        a(i4);
        i4 += 1;
        i3 += 1;
        break;
        if (paramInt2 != 0)
        {
          localObject2 = this.i.c;
          if (((ad)localObject2).B != null) {
            ((ad)localObject2).B.a(parama);
          }
        }
        paramInt2 = i2 - i1;
        if (i1 == 0) {
          v(paramInt2);
        }
        localj.f = i3;
        this.f -= paramInt2;
        a(true);
        a(localj, i1, i2);
        a(e(-1), null, -1);
        this.q = ((l)this.q.a(this));
        if (localj.f > 1)
        {
          localj.a(localj.e(-1), null, -1);
          localj.d();
        }
        parama = this.i.c;
        Object localObject2 = parama.t;
        a(this.k, c());
        ((al)localObject2).a(localj);
        parama = parama.w;
        long l1 = localj.a(parama, paramj);
        long l2 = a(parama, paramj);
        boolean bool;
        if (i1 == 0)
        {
          paramj.r(paramInt1);
          if (paramInt1 == 0) {
            paramj.b(paramInt1, localj, l1, (byte[])localObject1);
          }
          for (;;)
          {
            bool = paramj.a(new e(this, h(0), l2));
            if ((p) || (bool)) {
              break;
            }
            throw new AssertionError();
            paramj.a(paramInt1, localj, l1);
          }
        }
        if (paramInt1 == 0) {
          paramj.b(paramInt1, this, l2, h(0));
        }
        for (;;)
        {
          bool = paramj.a(new e(localj, (byte[])localObject1, l1));
          if ((p) || (bool)) {
            break;
          }
          throw new AssertionError();
          paramj.a(paramInt1, this, l2);
        }
        long l3 = paramj.a(parama);
        if (paramj.I()) {
          paramj.a(true);
        }
        parama = Level.FINE;
        localObject1 = this.i.c.v;
        if (((Logger)localObject1).isLoggable(parama))
        {
          localObject2 = new StringBuilder();
          ((StringBuilder)localObject2).append("Split:");
          ((StringBuilder)localObject2).append(" parent=");
          ((StringBuilder)localObject2).append(paramj.c);
          ((StringBuilder)localObject2).append(" child=");
          ((StringBuilder)localObject2).append(this.c);
          ((StringBuilder)localObject2).append(" newSibling=");
          ((StringBuilder)localObject2).append(localj.c);
          ((StringBuilder)localObject2).append(" parentLsn = ");
          ((StringBuilder)localObject2).append(com.sleepycat.b.p.j.h(l3));
          ((StringBuilder)localObject2).append(" childLsn = ");
          ((StringBuilder)localObject2).append(com.sleepycat.b.p.j.h(l2));
          ((StringBuilder)localObject2).append(" newSiblingLsn = ");
          ((StringBuilder)localObject2).append(com.sleepycat.b.p.j.h(l1));
          ((StringBuilder)localObject2).append(" splitIdx=");
          ((StringBuilder)localObject2).append(paramInt3);
          ((StringBuilder)localObject2).append(" idKeyIdx=");
          ((StringBuilder)localObject2).append(i5);
          ((StringBuilder)localObject2).append(" childIdx=");
          ((StringBuilder)localObject2).append(paramInt1);
          com.sleepycat.b.p.w.a((Logger)localObject1, this.i.c, parama, ((StringBuilder)localObject2).toString());
        }
        localj.d.d();
        return;
      }
    }
  }
  
  final void a(j paramj, int paramInt1, int paramInt2, com.sleepycat.b.a parama)
  {
    a(paramj, paramInt1, paramInt2, -1, parama);
  }
  
  void a(j paramj, int paramInt1, int paramInt2, byte[] paramArrayOfByte, boolean paramBoolean, com.sleepycat.b.a parama)
  {
    int i1 = a(paramArrayOfByte, false, false);
    if ((paramBoolean) && (i1 == 0))
    {
      a(paramj, paramInt1, paramInt2, 1, parama);
      return;
    }
    if ((!paramBoolean) && (i1 == this.f - 1))
    {
      a(paramj, paramInt1, paramInt2, this.f - 1, parama);
      return;
    }
    a(paramj, paramInt1, paramInt2, parama);
  }
  
  public void a(q paramq)
  {
    a(paramq, this.m, -1L);
    this.m = paramq.d;
  }
  
  final void a(q paramq, long paramLong1, long paramLong2)
  {
    if (a(paramq.e)) {
      if (this.v != null)
      {
        b(0 - ao.a(this.v));
        this.v = null;
      }
    }
    for (;;)
    {
      a(false);
      if ((paramq.j != null) && (paramq.k >= 0))
      {
        paramq.j.c(paramq.k);
        paramq.j.n(paramq.k);
      }
      return;
      if (paramq.j != null)
      {
        if (paramLong1 != -1L) {
          paramq.j.a(this, paramLong1);
        }
        if (paramLong2 != -1L) {
          paramq.j.a(this, paramLong2);
        }
      }
    }
  }
  
  public void a(q paramq, p paramp)
  {
    a(paramq, paramp, this.m, -1L);
    paramq.a = new com.sleepycat.b.g.a.j(this);
  }
  
  final void a(q paramq, p paramp, long paramLong1, long paramLong2)
  {
    if ((!p) && (!this.d.isWriteLockedByCurrentThread())) {
      throw new AssertionError();
    }
    if ((!p) && (paramq.j != null) && (!paramq.j.d.isWriteLockedByCurrentThread())) {
      throw new AssertionError();
    }
    if (a(paramq.e))
    {
      paramq.b = paramLong1;
      paramq.c = paramLong2;
      paramp.g = this.v;
    }
  }
  
  public void a(StringBuilder paramStringBuilder) {}
  
  public final void a(StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    paramStringBuilder.append(v());
    paramStringBuilder.append("<nodeId val=\"");
    paramStringBuilder.append(this.c);
    paramStringBuilder.append("\"/>");
    paramStringBuilder.append(w.a(this.g, 0));
    paramStringBuilder.append("<isRoot val=\"");
    paramStringBuilder.append(I());
    paramStringBuilder.append("\"/>");
    paramStringBuilder.append("<level val=\"");
    paramStringBuilder.append(Integer.toHexString(this.j));
    paramStringBuilder.append("\"/>");
    if (this.r != null)
    {
      paramStringBuilder.append("<keyPrefix>");
      paramStringBuilder.append(w.a(this.r, 0));
      paramStringBuilder.append("</keyPrefix>");
    }
    paramStringBuilder.append("<entries numEntries=\"");
    paramStringBuilder.append(this.f);
    paramStringBuilder.append("\" length=\"");
    paramStringBuilder.append(this.h.length);
    if (this.u == null) {}
    for (int i1 = 1;; i1 = 0)
    {
      if (i1 != 0)
      {
        paramStringBuilder.append("\" baseFileNumber=\"");
        paramStringBuilder.append(this.s);
      }
      paramStringBuilder.append("\">");
      if (!paramBoolean) {
        break;
      }
      i1 = 0;
      while (i1 < this.f)
      {
        paramStringBuilder.append("<ref kd=\"").append(o(i1));
        paramStringBuilder.append("\" pd=\"").append(l(i1));
        paramStringBuilder.append("\">");
        paramStringBuilder.append(w.a((byte[])this.q.a(i1), 0));
        paramStringBuilder.append(com.sleepycat.b.p.j.g(k(i1)));
        paramStringBuilder.append("</ref>");
        i1 += 1;
      }
    }
    paramStringBuilder.append("</entries>");
    a(paramStringBuilder);
    paramStringBuilder.append(w());
  }
  
  public void a(ByteBuffer paramByteBuffer)
  {
    super.a(paramByteBuffer);
    ar.c(paramByteBuffer, this.c);
    int i1;
    int i2;
    label40:
    int i3;
    label52:
    boolean bool;
    if (this.r != null)
    {
      i1 = 1;
      ar.a(paramByteBuffer, this.g);
      if (!I()) {
        break label283;
      }
      i2 = 1;
      i3 = (byte)i2;
      if (i1 == 0) {
        break label289;
      }
      i2 = 2;
      paramByteBuffer.put((byte)(i2 | i3));
      if (i1 != 0) {
        ar.a(paramByteBuffer, this.r);
      }
      ar.b(paramByteBuffer, this.f);
      ar.b(paramByteBuffer, this.j);
      ar.b(paramByteBuffer, this.h.length);
      if (this.u != null) {
        break label295;
      }
      bool = true;
      label110:
      ar.f(paramByteBuffer, bool);
      if (bool) {
        ar.a(paramByteBuffer, (int)this.s);
      }
      i2 = 0;
      if (i2 >= this.f) {
        return;
      }
      ar.a(paramByteBuffer, (byte[])this.q.a(i2));
      if (p) {
        break label329;
      }
      if (!f()) {
        break label306;
      }
      if ((k(i2) == -1L) && ((this.h[i2] & 0x1) == 0)) {
        break label301;
      }
      i1 = 1;
    }
    for (;;)
    {
      if (i1 != 0) {
        break label329;
      }
      throw new AssertionError("logging IN " + this.c + " with null lsn child  db=" + this.i.c() + " isDeferredWriteMode=" + this.i.g() + " isTemporary=" + this.i.e());
      i1 = 0;
      break;
      label283:
      i2 = 0;
      break label40;
      label289:
      i2 = 0;
      break label52;
      label295:
      bool = false;
      break label110;
      label301:
      i1 = 0;
      continue;
      label306:
      if (k(i2) != -1L) {
        i1 = 1;
      } else {
        i1 = 0;
      }
    }
    label329:
    if (bool)
    {
      i1 = i2 << 2;
      i3 = t(i1);
      paramByteBuffer.put(this.t[i1]);
      paramByteBuffer.put((byte)(i3 >>> 0 & 0xFF));
      paramByteBuffer.put((byte)(i3 >>> 8 & 0xFF));
      paramByteBuffer.put((byte)(i3 >>> 16 & 0xFF));
    }
    for (;;)
    {
      paramByteBuffer.put(this.h[i2]);
      byte[] arrayOfByte = this.h;
      arrayOfByte[i2] = ((byte)(arrayOfByte[i2] & 0xFFFFFFFD));
      i2 += 1;
      break;
      ar.b(paramByteBuffer, this.u[i2]);
    }
  }
  
  public void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    super.a(paramByteBuffer, paramInt);
    boolean bool2;
    int i3;
    boolean bool1;
    label51:
    long l2;
    if (paramInt < 6)
    {
      bool2 = true;
      this.c = ar.b(paramByteBuffer, bool2);
      this.g = ar.c(paramByteBuffer, bool2);
      i3 = paramByteBuffer.get();
      if ((i3 & 0x1) == 0) {
        break label346;
      }
      bool1 = true;
      e(bool1);
      if ((i3 & 0x2) != 0) {
        this.r = ar.c(paramByteBuffer, bool2);
      }
      this.f = ar.a(paramByteBuffer, bool2);
      this.j = ar.a(paramByteBuffer, bool2);
      i3 = ar.a(paramByteBuffer, bool2);
      this.b = r.a;
      this.q = new m(i3);
      this.s = -1L;
      l2 = -1L;
      this.t = new byte[i3 << 2];
      this.u = null;
      this.h = new byte[i3];
      if (paramInt <= 1) {
        break label433;
      }
      bool1 = ar.h(paramByteBuffer);
      if (!bool1) {
        break label430;
      }
      this.s = (ar.c(paramByteBuffer) & 0xFFFFFFFF);
      l2 = this.s;
    }
    for (;;)
    {
      i3 = 0;
      label193:
      if (i3 < this.f)
      {
        this.q = ((l)this.q.a(i3, ar.c(paramByteBuffer, bool2), this));
        int i4;
        int i5;
        long l1;
        if (bool1)
        {
          i4 = paramByteBuffer.get();
          i5 = paramByteBuffer.get() & 0xFF | (paramByteBuffer.get() & 0xFF) << 8 | (paramByteBuffer.get() & 0xFF) << 16;
          if (i5 == 16777215) {
            l1 = -1L;
          }
        }
        for (;;)
        {
          a(i3, l1);
          int i2 = (byte)((byte)(paramByteBuffer.get() & 0xFFFFFFFD) & 0xFFFFFFFB);
          int i1 = i2;
          if (l1 == -1L) {
            i1 = (byte)(i2 | 0x1);
          }
          this.h[i3] = i1;
          i3 += 1;
          break label193;
          bool2 = false;
          break;
          label346:
          bool1 = false;
          break label51;
          l1 = com.sleepycat.b.p.j.a(i4 + l2, i5);
          continue;
          l1 = ar.f(paramByteBuffer);
        }
      }
      this.d.a = (z() + this.c);
      if (paramInt < 8) {}
      for (bool1 = true;; bool1 = false)
      {
        this.w = bool1;
        return;
      }
      label430:
      continue;
      label433:
      bool1 = false;
    }
  }
  
  public final void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.a |= 0x1;
      return;
    }
    this.a &= 0xFFFFFFFE;
  }
  
  public final void a(byte[] paramArrayOfByte)
  {
    this.g = paramArrayOfByte;
    a(true);
  }
  
  public final boolean a(at paramat)
  {
    return false;
  }
  
  public final boolean a(e parame)
  {
    return (b(parame) & 0x20000) != 0;
  }
  
  public final int b(e parame)
  {
    if (this.f >= this.h.length) {
      throw aa.c("Node " + this.c + " should have been split before calling insertEntry");
    }
    byte[] arrayOfByte = parame.c;
    int i1 = a(arrayOfByte, true, false);
    if ((i1 >= 0) && ((0x10000 & i1) != 0)) {
      return i1;
    }
    i1 += 1;
    if (i1 < this.f)
    {
      i2 = p();
      a(i1, i1 + 1, this.f - i1);
      a(i1);
      a(true);
      b(p() - i2);
    }
    int i2 = p();
    this.b = ((r)this.b.a(i1, parame.a, this));
    a(i1, parame.b);
    this.h[i1] = parame.d;
    this.f += 1;
    boolean bool = b(i1, arrayOfByte);
    d(i1);
    a(i2, u(i1) + p());
    a(true);
    if (bool) {
      a(this.k, c());
    }
    return 0x20000 | i1;
  }
  
  void b(int paramInt)
  {
    byte[] arrayOfByte = this.h;
    arrayOfByte[paramInt] = ((byte)(arrayOfByte[paramInt] | 0x1));
    arrayOfByte = this.h;
    arrayOfByte[paramInt] = ((byte)(arrayOfByte[paramInt] | 0x2));
  }
  
  final void b(int paramInt, long paramLong)
  {
    long l1 = k(paramInt);
    if (l1 == paramLong) {}
    for (int i1 = 0;; i1 = 1)
    {
      if (i1 != 0) {
        d(paramInt, paramLong);
      }
      return;
      if ((paramLong != -1L) || (!this.i.c.g)) {
        if (this.i.g())
        {
          if ((l1 != -1L) && (com.sleepycat.b.p.j.c(paramLong))) {
            throw aa.c("DeferredWrite LSN update not allowed oldLsn = " + com.sleepycat.b.p.j.h(l1) + " newLsn = " + com.sleepycat.b.p.j.h(paramLong));
          }
        }
        else if (com.sleepycat.b.p.j.c(paramLong)) {
          throw aa.c("LSN update not allowed oldLsn = " + com.sleepycat.b.p.j.h(l1) + " newLsn = " + com.sleepycat.b.p.j.h(paramLong));
        }
      }
    }
  }
  
  public final void b(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      arrayOfByte = this.h;
      arrayOfByte[paramInt] = ((byte)(arrayOfByte[paramInt] | 0x4));
      return;
    }
    byte[] arrayOfByte = this.h;
    arrayOfByte[paramInt] = ((byte)(arrayOfByte[paramInt] & 0xFFFFFFFB));
  }
  
  final void b(long paramLong)
  {
    if (paramLong == 0L) {}
    Object localObject;
    do
    {
      do
      {
        return;
        this.k += paramLong;
      } while (!this.l);
      localObject = this.i.c;
      if ((!p) && (this.k < n()) && (((ad)localObject).j()))
      {
        localObject = new StringBuilder("delta: ").append(paramLong).append(" inMemorySize: ").append(this.k).append(" overhead: ").append(n()).append(" computed: ").append(c()).append(" dump: ").append(toString());
        M();
        throw new AssertionError(true);
      }
      this.n = ((int)(this.n + paramLong));
    } while ((this.n <= o) && (this.n >= -o));
    ((ad)localObject).t.a(this, this.n);
    ((ad)localObject).n.c(this.n);
    this.n = 0;
  }
  
  public final void b(com.sleepycat.b.a parama)
  {
    d(parama);
    this.d.c();
  }
  
  public final void b(com.sleepycat.b.c.i parami, long paramLong)
  {
    this.i = parami;
    a(paramLong);
    d();
  }
  
  public final void b(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.a |= 0x2;
      return;
    }
    this.a &= 0xFFFFFFFD;
  }
  
  public final boolean b(byte[] paramArrayOfByte)
  {
    if (this.f < 2) {}
    Comparator localComparator;
    do
    {
      return false;
      localComparator = this.i.p;
    } while ((w.a(paramArrayOfByte, h(0), localComparator) < 0) || (w.a(paramArrayOfByte, h(this.f - 1), localComparator) > 0));
    return true;
  }
  
  public long c()
  {
    long l1 = n();
    long l2 = ao.a(this.h.length);
    l2 = p() + (l1 + l2);
    int i1 = 0;
    while (i1 < this.f)
    {
      l2 += u(i1);
      i1 += 1;
    }
    l1 = l2;
    if (this.r != null) {
      l1 = l2 + ao.a(this.r.length);
    }
    l2 = l1;
    if (this.v != null) {
      l2 = l1 + ao.a(this.v);
    }
    return this.b.b() + l2 + this.q.b();
  }
  
  void c(int paramInt)
  {
    byte[] arrayOfByte = this.h;
    arrayOfByte[paramInt] = ((byte)(arrayOfByte[paramInt] & 0xFFFFFFFE));
    arrayOfByte = this.h;
    arrayOfByte[paramInt] = ((byte)(arrayOfByte[paramInt] | 0x2));
  }
  
  public final void c(int paramInt, long paramLong)
  {
    b(paramInt, paramLong);
    a(true);
  }
  
  public final void c(boolean paramBoolean)
  {
    e(paramBoolean);
    a(true);
  }
  
  public final boolean c(com.sleepycat.b.a parama)
  {
    if (this.d.b())
    {
      d(parama);
      return true;
    }
    return false;
  }
  
  void d(int paramInt) {}
  
  public final void d(com.sleepycat.b.a parama)
  {
    switch (1.a[parama.ordinal()])
    {
    default: 
      throw aa.c("unknown cacheMode: " + parama);
    case 1: 
    case 2: 
      this.e = i.a();
    }
    do
    {
      return;
      this.e = Long.MAX_VALUE;
      return;
    } while (!f());
    this.e = 0L;
  }
  
  public final void d(boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      this.b.a(paramBoolean, this);
      this.q.a(paramBoolean, this);
    }
    this.l = paramBoolean;
    if (paramBoolean)
    {
      this.b.a(paramBoolean, this);
      this.q.a(paramBoolean, this);
    }
  }
  
  boolean e()
  {
    return false;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof j)) {}
    do
    {
      return false;
      paramObject = (j)paramObject;
    } while (this.c != ((j)paramObject).c);
    return true;
  }
  
  boolean f(int paramInt)
  {
    if (paramInt >= this.f) {}
    ac localac;
    do
    {
      return true;
      localac = q(paramInt);
    } while ((localac != null) && (localac.t()));
    return false;
  }
  
  public long g()
  {
    return this.m;
  }
  
  public ac g(int paramInt)
  {
    ad localad = this.i.c;
    long l1;
    if (this.b.a(paramInt) == null)
    {
      l1 = k(paramInt);
      if (l1 == -1L)
      {
        if (!o(paramInt)) {
          throw aa.c(a("NULL_LSN without KnownDeleted", this, l1, this.h[paramInt]));
        }
      }
      else if (!this.d.isWriteLockedByCurrentThread()) {
        throw com.sleepycat.b.p.ae.a;
      }
    }
    for (;;)
    {
      try
      {
        Object localObject3 = localad.w.b(l1);
        if (!(localObject3 instanceof k)) {
          break label276;
        }
        localObject1 = (k)localObject3;
        ((k)localObject1).c(this.i);
        localObject1 = ((k)localObject1).k();
        localObject3 = (ac)((com.sleepycat.b.g.a.m)localObject3).a(this.i);
        ((ac)localObject3).a(this.i, l1);
        a(paramInt, (ac)localObject3, (byte[])localObject1);
        bool = true;
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        Object localObject1;
        if ((o(paramInt)) || (l(paramInt))) {
          continue;
        }
        throw new aa(localad, com.sleepycat.b.c.ac.k, a(null, this, l1, this.h[paramInt]), localFileNotFoundException);
        bool = false;
        continue;
      }
      catch (aa localaa)
      {
        localaa.a(a(null, this, l1, this.h[paramInt]));
        throw localaa;
      }
      catch (RuntimeException localRuntimeException)
      {
        throw new aa(localad, com.sleepycat.b.c.ac.m, a(localRuntimeException.toString(), this, l1, this.h[paramInt]), localRuntimeException);
      }
      localObject1 = (ac)this.b.a(paramInt);
      if (localObject1 != null) {
        ((ac)localObject1).a(localad, bool);
      }
      return (ac)localObject1;
      label276:
      Object localObject2 = null;
      continue;
      boolean bool = false;
    }
  }
  
  public long h()
  {
    return -1L;
  }
  
  public final byte[] h(int paramInt)
  {
    if (this.r != null)
    {
      int i1 = this.r.length;
      byte[] arrayOfByte1 = (byte[])this.q.a(paramInt);
      if (i1 == 0) {
        return arrayOfByte1;
      }
      if (arrayOfByte1 == null) {}
      for (paramInt = 0;; paramInt = arrayOfByte1.length)
      {
        byte[] arrayOfByte2 = new byte[i1 + paramInt];
        if (this.r != null) {
          System.arraycopy(this.r, 0, arrayOfByte2, 0, i1);
        }
        if (arrayOfByte1 != null) {
          System.arraycopy(arrayOfByte1, 0, arrayOfByte2, i1, paramInt);
        }
        return arrayOfByte2;
      }
    }
    return (byte[])this.q.a(paramInt);
  }
  
  public int hashCode()
  {
    return (int)(this.c ^ 0xFFFFFFFFFFFFFFFF);
  }
  
  public void i() {}
  
  public final boolean i(int paramInt)
  {
    return (this.h[paramInt] & 0x4) != 0;
  }
  
  public final ac j(int paramInt)
  {
    return (ac)this.b.a(paramInt);
  }
  
  public boolean j()
  {
    if (J())
    {
      if ((this.i.g()) && (G())) {}
      h localh;
      do
      {
        return true;
        localh = this.i.a;
      } while ((localh.equals(com.sleepycat.b.c.p.a)) || (localh.equals(com.sleepycat.b.c.p.b)));
    }
    return false;
  }
  
  public final long k(int paramInt)
  {
    if (this.u == null)
    {
      paramInt <<= 2;
      int i1 = t(paramInt);
      if (i1 == -1) {
        return -1L;
      }
      return com.sleepycat.b.p.j.a(this.s + this.t[paramInt], i1);
    }
    return this.u[paramInt];
  }
  
  boolean k()
  {
    return R();
  }
  
  public int l()
  {
    if (R()) {
      return 0;
    }
    return 2;
  }
  
  public final boolean l(int paramInt)
  {
    return (this.h[paramInt] & 0x8) != 0;
  }
  
  public final void m(int paramInt)
  {
    byte[] arrayOfByte = this.h;
    arrayOfByte[paramInt] = ((byte)(arrayOfByte[paramInt] | 0x8));
    arrayOfByte = this.h;
    arrayOfByte[paramInt] = ((byte)(arrayOfByte[paramInt] | 0x2));
  }
  
  boolean m()
  {
    return true;
  }
  
  public long n()
  {
    return ao.G;
  }
  
  public final void n(int paramInt)
  {
    byte[] arrayOfByte = this.h;
    arrayOfByte[paramInt] = ((byte)(arrayOfByte[paramInt] & 0xFFFFFFF7));
    arrayOfByte = this.h;
    arrayOfByte[paramInt] = ((byte)(arrayOfByte[paramInt] | 0x2));
  }
  
  public long o()
  {
    return 0L;
  }
  
  public final boolean o(int paramInt)
  {
    return (this.h[paramInt] & 0x1) != 0;
  }
  
  final boolean p(int paramInt)
  {
    return (this.h[paramInt] & 0x2) != 0;
  }
  
  public final ac q(int paramInt)
  {
    try
    {
      ac localac = g(paramInt);
      return localac;
    }
    catch (com.sleepycat.b.p.ae localae)
    {
      throw aa.a(localae);
    }
  }
  
  public final void r(int paramInt)
  {
    if (this.i.g()) {
      d(paramInt, -1L);
    }
  }
  
  public final boolean s(int paramInt)
  {
    if (this.f == 0) {}
    do
    {
      return false;
      if ((!p) && (!f(paramInt))) {
        throw new AssertionError();
      }
    } while (paramInt >= this.f);
    a(u(paramInt), 0L);
    int i1 = p();
    a(paramInt + 1, paramInt, this.f - paramInt - 1);
    a(this.f - 1);
    a(i1, p());
    this.f -= 1;
    a(true);
    i();
    Level localLevel = Level.FINEST;
    Logger localLogger = this.i.c.v;
    if (localLogger.isLoggable(localLevel))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Delete:");
      localStringBuilder.append(" in=").append(this.c);
      localStringBuilder.append(" index=");
      localStringBuilder.append(paramInt);
      com.sleepycat.b.p.w.a(localLogger, this.i.c, localLevel, localStringBuilder.toString());
    }
    return true;
  }
  
  boolean t()
  {
    if (this.f > 1) {}
    ac localac;
    do
    {
      return false;
      if (this.f != 1) {
        break;
      }
      localac = q(0);
    } while (localac == null);
    localac.b(com.sleepycat.b.a.c);
    boolean bool = localac.t();
    localac.C();
    return bool;
    return true;
  }
  
  public String toString()
  {
    return a(0, true);
  }
  
  void u()
  {
    long l1 = this.c;
  }
  
  public String v()
  {
    return "<in>";
  }
  
  public String w()
  {
    return "</in>";
  }
  
  /* Error */
  public void x()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 241	com/sleepycat/b/l/j:i	Lcom/sleepycat/b/c/i;
    //   4: getfield 78	com/sleepycat/b/c/i:c	Lcom/sleepycat/b/c/ad;
    //   7: astore_2
    //   8: iconst_0
    //   9: istore_3
    //   10: iload_3
    //   11: aload_0
    //   12: getfield 226	com/sleepycat/b/l/j:f	I
    //   15: if_icmpge +76 -> 91
    //   18: aload_0
    //   19: iload_3
    //   20: invokevirtual 509	com/sleepycat/b/l/j:j	(I)Lcom/sleepycat/b/l/ac;
    //   23: checkcast 2	com/sleepycat/b/l/j
    //   26: astore_1
    //   27: aload_1
    //   28: ifnull +46 -> 74
    //   31: aload_1
    //   32: getstatic 1168	com/sleepycat/b/a:c	Lcom/sleepycat/b/a;
    //   35: invokevirtual 364	com/sleepycat/b/l/j:a	(Lcom/sleepycat/b/a;)V
    //   38: aload_1
    //   39: invokevirtual 158	com/sleepycat/b/l/j:G	()Z
    //   42: ifeq +25 -> 67
    //   45: aload_1
    //   46: invokevirtual 1179	com/sleepycat/b/l/j:x	()V
    //   49: aload_0
    //   50: iload_3
    //   51: aload_1
    //   52: aload_2
    //   53: getfield 844	com/sleepycat/b/c/ad:w	Lcom/sleepycat/b/g/am;
    //   56: iconst_0
    //   57: iconst_0
    //   58: iconst_1
    //   59: iconst_1
    //   60: aload_0
    //   61: invokevirtual 1181	com/sleepycat/b/l/j:a	(Lcom/sleepycat/b/g/am;ZZZZLcom/sleepycat/b/l/j;)J
    //   64: invokevirtual 1183	com/sleepycat/b/l/j:c	(IJ)V
    //   67: aload_1
    //   68: getfield 367	com/sleepycat/b/l/j:d	Lcom/sleepycat/b/f/f;
    //   71: invokevirtual 370	com/sleepycat/b/f/f:d	()V
    //   74: iload_3
    //   75: iconst_1
    //   76: iadd
    //   77: istore_3
    //   78: goto -68 -> 10
    //   81: astore_2
    //   82: aload_1
    //   83: getfield 367	com/sleepycat/b/l/j:d	Lcom/sleepycat/b/f/f;
    //   86: invokevirtual 370	com/sleepycat/b/f/f:d	()V
    //   89: aload_2
    //   90: athrow
    //   91: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	92	0	this	j
    //   26	57	1	localj	j
    //   7	46	2	localad	ad
    //   81	9	2	localObject	Object
    //   9	69	3	i1	int
    // Exception table:
    //   from	to	target	type
    //   38	67	81	finally
  }
  
  public af y()
  {
    return af.l;
  }
  
  public String z()
  {
    return "IN";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\l\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */