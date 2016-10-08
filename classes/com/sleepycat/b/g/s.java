package com.sleepycat.b.g;

import com.sleepycat.b.aa;
import com.sleepycat.b.c.ac;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.n;
import com.sleepycat.b.p.j;
import com.sleepycat.b.p.w;
import java.io.FileNotFoundException;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.util.logging.Logger;

public abstract class s
{
  private ByteBuffer a;
  private final boolean b;
  private final long c;
  private boolean d;
  public final ad e;
  protected final m f;
  public final u g;
  protected boolean h;
  public final boolean i;
  public int j;
  public ae k;
  public long l;
  public long m;
  public long n;
  public long o;
  protected d p;
  public boolean q;
  protected final Logger r;
  
  static
  {
    if (!s.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      s = bool;
      return;
    }
  }
  
  public s(ad paramad, int paramInt, boolean paramBoolean, long paramLong1, Long paramLong, long paramLong2, long paramLong3)
  {
    this.e = paramad;
    this.f = paramad.x;
    boolean bool;
    if (paramLong != null)
    {
      bool = true;
      this.b = bool;
      this.i = paramBoolean;
      this.d = paramad.w.c;
      if (this.d) {
        this.p = new d();
      }
      this.g = a(paramInt);
      this.a = ByteBuffer.allocate(paramInt);
      this.j = 0;
      this.o = paramLong1;
      this.c = paramLong3;
      this.r = paramad.v;
      this.h = false;
      if (!this.i) {
        break label198;
      }
      if (this.o == -1L) {
        break label159;
      }
      this.g.a(this.o);
    }
    for (;;)
    {
      this.n = this.g.c;
      return;
      bool = false;
      break;
      label159:
      paramad = this.f.a(true);
      if (paramad == null) {
        this.h = true;
      } else {
        this.g.a(j.a(paramad.longValue(), 0));
      }
    }
    label198:
    if ((!s) && (this.o == -1L)) {
      throw new AssertionError();
    }
    this.g.a(paramLong2);
    if (j.d(this.o) == j.d(paramLong2)) {}
    for (this.l = j.e(this.o);; this.l = 0L)
    {
      this.m = j.e(paramLong2);
      return;
    }
  }
  
  static Buffer a(ByteBuffer paramByteBuffer, int paramInt)
  {
    if ((!s) && (paramInt < 0)) {
      throw new AssertionError("illegal new position=" + paramInt);
    }
    do
    {
      try
      {
        Buffer localBuffer = paramByteBuffer.position(paramInt);
        return localBuffer;
      }
      catch (IllegalArgumentException localIllegalArgumentException) {}
    } while (paramInt <= paramByteBuffer.capacity());
    throw localIllegalArgumentException;
  }
  
  private ByteBuffer a(int paramInt, boolean paramBoolean)
  {
    this.a.clear();
    int i1 = 0;
    ByteBuffer localByteBuffer = null;
    while ((i1 < paramInt) && (!this.h))
    {
      int i2 = paramInt - i1;
      if (this.g.d.hasRemaining())
      {
        if (paramBoolean)
        {
          if ((i1 > 0) || (this.g.d.remaining() < i2))
          {
            i1 = i2;
            if (i2 > this.g.d.remaining()) {
              i1 = this.g.d.remaining();
            }
            if (this.a.capacity() - d(this.a) < i1)
            {
              localByteBuffer = ByteBuffer.allocate(this.a.capacity() + i1);
              c(this.a);
              localByteBuffer.put(this.a);
              this.a = localByteBuffer;
            }
            localByteBuffer = this.g.d.slice();
            localByteBuffer.limit(i1);
            this.a.put(localByteBuffer);
            this.g.a(i1);
            i1 = d(this.a);
            localByteBuffer = this.a;
          }
          else
          {
            localByteBuffer = this.g.d;
            i1 = paramInt;
          }
        }
        else
        {
          if (this.g.d.remaining() > i2) {}
          for (;;)
          {
            this.g.a(i2);
            localByteBuffer = this.g.d;
            i1 += i2;
            break;
            i2 = this.g.d.remaining();
          }
        }
      }
      else if (this.g.a(this.b, i2)) {
        this.n = 0L;
      }
    }
    c(this.a);
    return localByteBuffer;
  }
  
  private void a(Exception paramException)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Halted log file reading at file 0x").append(Long.toHexString(this.g.a)).append(" offset 0x").append(Long.toHexString(this.n)).append(" offset(decimal)=").append(this.n).append(" prev=0x").append(Long.toHexString(this.l));
    if (this.k != null)
    {
      af localaf = af.a(this.k.b);
      localStringBuilder.append(":\nentry=").append(localaf).append("type=").append(this.k.b).append(",version=").append(this.k.f).append(")\nprev=0x").append(Long.toHexString(this.l)).append("\nsize=").append(this.k.d).append("\nNext entry should be at 0x").append(Long.toHexString(this.n + this.k.b() + this.k.d));
    }
    w.a(this.e, "FileReader", "readNextEntry", localStringBuilder.toString(), paramException);
  }
  
  private void a(ByteBuffer paramByteBuffer, boolean paramBoolean)
  {
    if (!this.d) {}
    while (!paramBoolean) {
      return;
    }
    this.p.a();
    int i1 = d(paramByteBuffer);
    if (this.k.i) {
      ae.a(paramByteBuffer, i1 - 14);
    }
    ae.c();
    a(paramByteBuffer, i1 - 10);
    this.p.a(paramByteBuffer, 10);
    a(paramByteBuffer, i1);
  }
  
  static Buffer c(ByteBuffer paramByteBuffer)
  {
    for (;;)
    {
      try
      {
        Buffer localBuffer = paramByteBuffer.flip();
        return localBuffer;
      }
      catch (IllegalArgumentException localIllegalArgumentException) {}
    }
  }
  
  static int d(ByteBuffer paramByteBuffer)
  {
    for (;;)
    {
      try
      {
        int i1 = paramByteBuffer.position();
        return i1;
      }
      catch (IllegalArgumentException localIllegalArgumentException) {}
    }
  }
  
  public u a(int paramInt)
  {
    return new u(paramInt, this.e);
  }
  
  public void a(long paramLong)
  {
    throw new aa(this.e, ac.m, "Cannot read backward over cleaned file from " + this.g.a + " to " + paramLong);
  }
  
  public boolean a()
  {
    return true;
  }
  
  public abstract boolean a(ByteBuffer paramByteBuffer);
  
  public final void b(int paramInt)
  {
    try
    {
      a(paramInt, false);
      return;
    }
    catch (n localn)
    {
      a(localn);
      throw localn;
    }
  }
  
  protected final void b(ByteBuffer paramByteBuffer)
  {
    a(paramByteBuffer, d(paramByteBuffer) + this.k.d);
  }
  
  public final long c()
  {
    return j.a(this.g.a, this.m);
  }
  
  public final int d()
  {
    return this.k.b() + this.k.d;
  }
  
  public boolean e()
  {
    try
    {
      boolean bool = f();
      return bool;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      throw new aa(this.e, ac.k, localFileNotFoundException);
    }
    catch (c localc)
    {
      throw new aa(this.e, ac.j, localc);
    }
  }
  
  public final boolean f()
  {
    boolean bool1 = false;
    boolean bool3 = bool1;
    long l1;
    try
    {
      if ((this.h) || (bool1)) {
        break label1143;
      }
      bool3 = bool1;
      if (this.i)
      {
        bool3 = bool1;
        if (this.c == -1L) {
          break label263;
        }
        bool3 = bool1;
        if (j.b(j.a(this.g.a, this.n), this.c) < 0) {
          break label263;
        }
        bool3 = bool1;
        throw new t();
      }
    }
    catch (t localt)
    {
      this.h = true;
      return bool3;
      bool3 = bool1;
      if (this.l == 0L) {
        break label612;
      }
      bool3 = bool1;
      if (!this.g.b(this.l)) {
        break label612;
      }
      bool3 = bool1;
      l1 = j.a(this.g.a, this.l);
      bool3 = bool1;
      if (this.c != -1L)
      {
        bool3 = bool1;
        if (j.b(l1, this.c) == -1)
        {
          bool3 = bool1;
          throw new t("finish=" + j.h(this.c) + "next=" + j.h(l1));
        }
      }
    }
    catch (n localn)
    {
      this.h = true;
      a(localn);
      throw localn;
    }
    bool3 = bool1;
    this.g.c(this.l);
    label251:
    bool3 = bool1;
    this.m = this.l;
    label263:
    bool3 = bool1;
    Object localObject = a(14, true);
    bool3 = bool1;
    this.k = new ae((ByteBuffer)localObject, u.a(this.g));
    bool3 = bool1;
    this.l = this.k.c;
    bool3 = bool1;
    boolean bool4;
    label423:
    boolean bool2;
    if (this.k.j)
    {
      bool3 = bool1;
      a((ByteBuffer)localObject, true);
      bool3 = bool1;
      ae.a();
      bool3 = bool1;
      localObject = a(8, true);
      bool3 = bool1;
      if (this.d)
      {
        bool3 = bool1;
        this.p.a((ByteBuffer)localObject, 8);
      }
      bool3 = bool1;
      this.k.a((ByteBuffer)localObject);
      bool3 = bool1;
      bool4 = a();
      if (bool4) {
        break label1146;
      }
      bool3 = bool1;
      if (!this.q) {
        break label1163;
      }
      break label1146;
      if (!bool2) {
        break label1152;
      }
      bool3 = bool1;
      if (this.d) {
        break label1157;
      }
      break label1152;
    }
    for (;;)
    {
      label442:
      bool3 = bool1;
      localObject = a(this.k.d, bool5);
      bool3 = bool1;
      if (this.i)
      {
        bool3 = bool1;
        this.m = this.n;
        bool3 = bool1;
        this.n += this.k.b() + this.k.d;
      }
      bool3 = bool1;
      if ((this.d) && (bool2))
      {
        bool3 = bool1;
        this.p.a((ByteBuffer)localObject, this.k.d);
        bool3 = bool1;
        this.p.a(this.k.a, this.g.a, this.m);
      }
      if (bool4)
      {
        bool3 = bool1;
        if (!a((ByteBuffer)localObject)) {
          break;
        }
        bool3 = true;
        bool1 = true;
        this.j += 1;
        break;
        label612:
        bool3 = bool1;
        long l2;
        if (this.l == 0L)
        {
          bool3 = bool1;
          this.l = this.f.g(this.g.a);
          bool3 = bool1;
          localObject = this.f.a(this.g.a, false);
          if (localObject == null)
          {
            bool3 = bool1;
            throw new t("No file following " + this.g.a);
          }
          bool3 = bool1;
          if (this.c != -1L)
          {
            bool3 = bool1;
            if (((Long)localObject).longValue() < j.d(this.c))
            {
              bool3 = bool1;
              throw new t("finish=" + j.h(this.c) + " nextFile=0x" + Long.toHexString(((Long)localObject).longValue()));
            }
          }
          bool3 = bool1;
          if (this.g.a - ((Long)localObject).longValue() != 1L)
          {
            bool3 = bool1;
            a(((Long)localObject).longValue());
          }
          bool3 = bool1;
          l2 = ((Long)localObject).longValue();
          bool3 = bool1;
          l1 = this.l;
        }
        long l3;
        for (;;)
        {
          bool3 = bool1;
          l3 = this.l;
          bool3 = bool1;
          long l4 = j.a(l2, this.l);
          bool3 = bool1;
          if (this.c == -1L) {
            break;
          }
          bool3 = bool1;
          if (j.b(l4, this.c) != -1) {
            break;
          }
          bool3 = bool1;
          throw new t("finish=" + j.h(this.c) + " next=" + j.h(l4));
          bool3 = bool1;
          if (this.m - this.l > this.g.d.capacity())
          {
            bool3 = bool1;
            l2 = this.g.a;
            bool3 = bool1;
            l1 = this.l;
          }
          else
          {
            bool3 = bool1;
            l3 = this.g.a;
            bool3 = bool1;
            l4 = this.m - this.g.d.capacity();
            l2 = l3;
            l1 = l4;
            if (l4 < 0L)
            {
              l1 = 0L;
              l2 = l3;
            }
          }
        }
        bool3 = bool1;
        this.g.a(l2, l1, l3, this.i);
        break label251;
        bool3 = bool1;
        bool4 = a();
        if (bool4) {
          break label1169;
        }
        bool3 = bool1;
        if (!this.q) {
          break label1175;
        }
        break label1169;
      }
      for (;;)
      {
        bool3 = bool1;
        a((ByteBuffer)localObject, bool2);
        break label423;
        if (!bool5) {
          break;
        }
        bool3 = bool1;
        b((ByteBuffer)localObject);
        break;
        label1143:
        return bool1;
        label1146:
        label1152:
        label1157:
        label1163:
        for (bool2 = true;; bool2 = false)
        {
          break;
          if (!bool4) {
            break label1181;
          }
          bool5 = true;
          break label442;
        }
        label1169:
        bool2 = true;
        continue;
        label1175:
        bool2 = false;
      }
      label1181:
      boolean bool5 = false;
    }
  }
  
  public final boolean g()
  {
    if (this.k == null) {
      throw aa.c("entryIsReplicated should not be used before reader is initialized");
    }
    return this.k.h;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */