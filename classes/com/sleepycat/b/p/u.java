package com.sleepycat.b.p;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.g.ae;
import com.sleepycat.b.g.af;
import com.sleepycat.b.g.c;
import com.sleepycat.b.g.l;
import java.nio.ByteBuffer;

public class u
{
  private static final byte e;
  public final ad a;
  public final long b;
  public v c;
  private final String f;
  private long g;
  private long h;
  private final com.sleepycat.b.g.d i;
  private final ByteBuffer j;
  private ae k;
  private int l;
  private int m;
  
  static
  {
    if (!u.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      d = bool;
      e = af.y.K;
      return;
    }
  }
  
  public u(ad paramad, String paramString)
  {
    this.a = paramad;
    this.f = paramString;
    if (-1L >= 0L) {}
    for (;;)
    {
      this.b = l1;
      this.c = v.a;
      this.g = 0L;
      this.h = 0L;
      this.i = new com.sleepycat.b.g.d();
      this.j = ByteBuffer.allocate(Math.max(22, 24));
      this.m = -1;
      return;
      l1 = paramad.x.a(paramString).longValue();
    }
  }
  
  private com.sleepycat.b.o.d a(Throwable paramThrowable)
  {
    return a(paramThrowable.toString(), paramThrowable);
  }
  
  private int b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if ((!d) && (this.k != null)) {
      throw new AssertionError();
    }
    paramInt2 = Math.min(paramInt2, 14 - this.j.position());
    this.j.put(paramArrayOfByte, paramInt1, paramInt2);
    if ((!d) && (this.j.position() > 14)) {
      throw new AssertionError();
    }
    if (this.j.position() == 14)
    {
      this.j.flip();
      try
      {
        this.k = new ae(this.j, this.m);
        if (this.k.c != this.h) {
          throw a("Header prevOffset=0x" + Long.toHexString(this.k.c) + " but prevEntryStart=0x" + Long.toHexString(this.h), null);
        }
      }
      catch (c paramArrayOfByte)
      {
        throw a(paramArrayOfByte);
      }
      if (this.k.i) {
        ae.a(this.j, 0);
      }
      this.i.a(this.j.array(), 4, 10);
      if (!this.k.j) {
        break label244;
      }
      this.j.clear();
      this.c = v.c;
    }
    for (;;)
    {
      return paramInt2 + paramInt1;
      label244:
      if (this.k.b == e)
      {
        this.j.clear();
        this.c = v.e;
      }
      else
      {
        this.c = v.d;
      }
    }
  }
  
  private int c(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if ((!d) && (this.k == null)) {
      throw new AssertionError();
    }
    if ((!d) && (this.m != -1)) {
      throw new AssertionError();
    }
    paramInt2 = Math.min(paramInt2, 24 - this.j.position());
    this.j.put(paramArrayOfByte, paramInt1, paramInt2);
    if ((!d) && (this.j.position() > 24)) {
      throw new AssertionError();
    }
    if (this.j.position() == 24) {
      this.i.a(this.j.array(), 0, 24);
    }
    try
    {
      this.i.a(this.k.a, this.b, this.g);
      this.j.flip();
      paramArrayOfByte = af.y.b();
      paramArrayOfByte.a(this.a, this.k, this.j);
      this.m = ((l)paramArrayOfByte.h()).c;
      this.h = this.g;
      this.g += this.k.b() + 24;
      this.c = v.a;
      return paramInt1 + paramInt2;
    }
    catch (c paramArrayOfByte)
    {
      throw a(paramArrayOfByte);
    }
  }
  
  private int d(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if ((!d) && (this.k == null)) {
      throw new AssertionError();
    }
    int n = this.k.d;
    paramInt2 = Math.min(paramInt2, n - this.l);
    this.i.a(paramArrayOfByte, paramInt1, paramInt2);
    this.l += paramInt2;
    if ((!d) && (this.l > n)) {
      throw new AssertionError();
    }
    if (this.l == n) {}
    try
    {
      this.i.a(this.k.a, this.b, this.g);
      this.h = this.g;
      long l1 = this.g;
      this.g = (n + this.k.b() + l1);
      this.c = v.a;
      return paramInt1 + paramInt2;
    }
    catch (c paramArrayOfByte)
    {
      throw a(paramArrayOfByte);
    }
  }
  
  public final com.sleepycat.b.o.d a(String paramString, Throwable paramThrowable)
  {
    this.c = v.f;
    return new com.sleepycat.b.o.d("Log is invalid, fileName: " + this.f + " fileNumber: 0x" + Long.toHexString(this.b) + " logEntryOffset: 0x" + Long.toHexString(this.g) + " verifyState: " + this.c + " reason: " + paramString, paramThrowable);
  }
  
  public final void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramInt2 = paramInt1 + paramInt2;
    while (paramInt1 < paramInt2)
    {
      int n = paramInt2 - paramInt1;
      switch (1.a[this.c.ordinal()])
      {
      default: 
        if (!d) {
          throw new AssertionError();
        }
        break;
      case 1: 
        this.i.a();
        this.j.clear();
        this.k = null;
        this.l = 0;
        this.c = v.b;
        break;
      case 2: 
        paramInt1 = b(paramArrayOfByte, paramInt1, n);
        break;
      case 3: 
        if ((!d) && (this.k == null)) {
          throw new AssertionError();
        }
        if ((!d) && (!this.k.j)) {
          throw new AssertionError();
        }
        ae.a();
        n = Math.min(n, 8 - this.j.position());
        this.j.put(paramArrayOfByte, paramInt1, n);
        if ((!d) && (this.j.position() > 8)) {
          throw new AssertionError();
        }
        if (this.j.position() == 8)
        {
          this.j.flip();
          this.k.a(this.j);
          this.i.a(this.j.array(), 0, 8);
          if (this.k.b != e) {
            break label313;
          }
          this.j.clear();
        }
        for (this.c = v.e;; this.c = v.d)
        {
          paramInt1 += n;
          break;
        }
      case 4: 
        paramInt1 = c(paramArrayOfByte, paramInt1, n);
        break;
      case 5: 
        paramInt1 = d(paramArrayOfByte, paramInt1, n);
        break;
      case 6: 
        label313:
        throw a("May not read after LogVerificationException is thrown", null);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\p\u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */