package com.sleepycat.b.g;

import com.sleepycat.b.aa;
import com.sleepycat.b.b.d;
import com.sleepycat.b.c.ac;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.n;
import com.sleepycat.b.p.w;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public final class z
  extends s
{
  public long a;
  public af b;
  private Set<af> c;
  private long d;
  private Map<af, Long> t;
  
  public z(ad paramad, int paramInt)
  {
    super(paramad, paramInt, true, -1L, Long.valueOf(-1L), -1L, -1L);
    for (;;)
    {
      Object localObject7;
      try
      {
        this.h = false;
        this.g.a(com.sleepycat.b.p.j.a(0L, 0));
        localObject7 = this.f.a(false);
        Object localObject1 = null;
        if ((localObject1 != null) || (this.h)) {
          break;
        }
        if (localObject7 == null)
        {
          this.h = true;
          continue;
        }
        localObject9 = localc1;
      }
      catch (c localc1)
      {
        throw new aa(paramad, ac.j, localc1);
      }
      Object localObject9;
      Object localObject8 = localc1;
      Object localObject6 = localc1;
      try
      {
        this.g.a(com.sleepycat.b.p.j.a(((Long)localObject7).longValue(), 0));
        localObject9 = localc1;
        localObject8 = localc1;
        localObject6 = localc1;
        Object localObject2 = this.f.f(((Long)localObject7).longValue());
        localObject9 = localObject2;
        localObject8 = localObject2;
        localObject6 = localObject2;
        long l = ((j)localObject2).a.length();
        localObject9 = localObject2;
        localObject8 = localObject2;
        localObject6 = localObject2;
        m.h();
        localObject8 = localObject7;
        localObject6 = localObject2;
        if (l <= 38L)
        {
          localObject9 = localObject2;
          localObject8 = localObject2;
          localObject6 = localObject2;
          localObject7 = this.f.a(((Long)localObject7).longValue(), false);
          localObject8 = localObject7;
          localObject6 = localObject2;
          if (localObject7 != null)
          {
            localObject9 = localObject2;
            localObject8 = localObject2;
            localObject6 = localObject2;
            ((j)localObject2).a();
            localObject6 = null;
            localObject8 = localObject7;
          }
        }
        localObject7 = localObject8;
        localObject2 = localObject6;
        if (localObject6 != null) {
          try
          {
            ((j)localObject6).a();
            localObject7 = localObject8;
            localObject2 = localObject6;
          }
          catch (IOException localIOException)
          {
            throw new aa(this.e, ac.n, localIOException);
          }
        }
      }
      catch (n localn)
      {
        localObject6 = localObject9;
        localObject7 = a(localn);
        Object localObject3 = null;
        if (0 != 0) {
          throw new NullPointerException();
        }
      }
      catch (c localc2)
      {
        localObject6 = localObject8;
        localObject7 = a(localc2);
        Object localObject4 = null;
        if (0 != 0) {
          throw new NullPointerException();
        }
      }
      finally
      {
        if (localObject6 != null) {
          ((j)localObject6).a();
        }
      }
    }
    this.n = 0L;
    this.c = new HashSet();
    this.t = new HashMap();
    this.a = 0L;
    this.d = this.n;
  }
  
  private Long a(Exception paramException)
  {
    long l = new File(this.f.b(this.g.a)[0]).length();
    m.h();
    if (l <= 38L)
    {
      this.f.f();
      paramException = this.f.a(this.g.a, false);
      if (!this.f.b(this.g.a, ".bad")) {
        throw aa.c("Could not rename file: 0x" + Long.toHexString(this.g.a));
      }
    }
    else
    {
      if ((paramException instanceof n)) {
        throw ((n)paramException);
      }
      if ((paramException instanceof c)) {
        throw ((c)paramException);
      }
      throw aa.a(paramException);
    }
    return paramException;
  }
  
  private boolean j()
  {
    try
    {
      b(this.k.d);
      boolean bool;
      do
      {
        if (!super.f()) {
          break;
        }
        bool = af.q.equals(this.b);
      } while (!bool);
      return true;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      throw new aa(this.e, ac.k, localFileNotFoundException);
    }
    catch (c localc)
    {
      w.d(this.r, this.e, "Found checksum exception while searching for end of log. Last valid entry is at " + com.sleepycat.b.p.j.g(com.sleepycat.b.p.j.a(this.g.a, this.a)) + " Bad entry is at " + com.sleepycat.b.p.j.a(this.g.a, this.d));
      return false;
    }
    catch (t localt)
    {
      for (;;) {}
    }
  }
  
  protected final boolean a(ByteBuffer paramByteBuffer)
  {
    paramByteBuffer.position(paramByteBuffer.position() + this.k.d);
    this.b = new af(this.k.b);
    if (this.c.contains(this.b)) {
      this.t.put(this.b, Long.valueOf(this.m));
    }
    return true;
  }
  
  public final void b()
  {
    this.f.b(this.g.a, this.d);
  }
  
  public final boolean e()
  {
    bool1 = false;
    try
    {
      bool2 = super.f();
      bool1 = bool2;
      this.a = this.m;
      bool1 = bool2;
      this.d = this.n;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      throw new aa(this.e, ac.k, localFileNotFoundException);
    }
    catch (c localc)
    {
      do
      {
        do
        {
          w.d(this.r, this.e, "Found checksum exception while searching for end of log. Last valid entry is at " + com.sleepycat.b.p.j.g(com.sleepycat.b.p.j.a(this.g.a, this.a)) + " Bad entry is at " + com.sleepycat.b.p.j.a(this.g.a, this.d));
          bool2 = bool1;
        } while (!this.e.u.a(d.i));
        boolean bool2 = bool1;
      } while (!j());
      throw new aa(this.e, ac.c, "Find committed txn after the corruption point");
    }
    return bool2;
  }
  
  public final long h()
  {
    return com.sleepycat.b.p.j.a(this.g.a, this.d);
  }
  
  public final long i()
  {
    return com.sleepycat.b.p.j.a(this.g.a, this.a);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\z.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */