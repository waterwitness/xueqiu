package c;

import java.io.IOException;
import java.io.OutputStream;

final class n
  implements e
{
  public final d a;
  public final r b;
  boolean c;
  
  public n(r paramr)
  {
    this(paramr, new d());
  }
  
  private n(r paramr, d paramd)
  {
    if (paramr == null) {
      throw new IllegalArgumentException("sink == null");
    }
    this.a = paramd;
    this.b = paramr;
  }
  
  public final long a(s params)
  {
    if (params == null) {
      throw new IllegalArgumentException("source == null");
    }
    long l1 = 0L;
    for (;;)
    {
      long l2 = params.read(this.a, 2048L);
      if (l2 == -1L) {
        break;
      }
      l1 += l2;
      q();
    }
    return l1;
  }
  
  public final d a()
  {
    return this.a;
  }
  
  public final e b(g paramg)
  {
    if (this.c) {
      throw new IllegalStateException("closed");
    }
    this.a.a(paramg);
    return q();
  }
  
  public final e b(String paramString)
  {
    if (this.c) {
      throw new IllegalStateException("closed");
    }
    this.a.a(paramString);
    return q();
  }
  
  public final e b(byte[] paramArrayOfByte)
  {
    if (this.c) {
      throw new IllegalStateException("closed");
    }
    this.a.a(paramArrayOfByte);
    return q();
  }
  
  public final OutputStream b()
  {
    new OutputStream()
    {
      public final void close()
      {
        n.this.close();
      }
      
      public final void flush()
      {
        if (!n.this.c) {
          n.this.flush();
        }
      }
      
      public final String toString()
      {
        return n.this + ".outputStream()";
      }
      
      public final void write(int paramAnonymousInt)
      {
        if (n.this.c) {
          throw new IOException("closed");
        }
        n.this.a.a((byte)paramAnonymousInt);
        n.this.q();
      }
      
      public final void write(byte[] paramAnonymousArrayOfByte, int paramAnonymousInt1, int paramAnonymousInt2)
      {
        if (n.this.c) {
          throw new IOException("closed");
        }
        n.this.a.b(paramAnonymousArrayOfByte, paramAnonymousInt1, paramAnonymousInt2);
        n.this.q();
      }
    };
  }
  
  public final e c()
  {
    if (this.c) {
      throw new IllegalStateException("closed");
    }
    long l = this.a.b;
    if (l > 0L) {
      this.b.write(this.a, l);
    }
    return this;
  }
  
  public final e c(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.c) {
      throw new IllegalStateException("closed");
    }
    this.a.b(paramArrayOfByte, paramInt1, paramInt2);
    return q();
  }
  
  public final void close()
  {
    if (this.c) {}
    do
    {
      return;
      localObject2 = null;
      localObject1 = localObject2;
      for (;;)
      {
        try
        {
          if (this.a.b > 0L)
          {
            this.b.write(this.a, this.a.b);
            localObject1 = localObject2;
          }
        }
        catch (Throwable localThrowable1)
        {
          continue;
        }
        try
        {
          this.b.close();
          localObject2 = localObject1;
        }
        catch (Throwable localThrowable2)
        {
          localObject2 = localObject1;
          if (localObject1 != null) {
            continue;
          }
          localObject2 = localThrowable2;
        }
      }
      this.c = true;
    } while (localObject2 == null);
    u.a((Throwable)localObject2);
  }
  
  public final e e(int paramInt)
  {
    if (this.c) {
      throw new IllegalStateException("closed");
    }
    this.a.c(paramInt);
    return q();
  }
  
  public final e f(int paramInt)
  {
    if (this.c) {
      throw new IllegalStateException("closed");
    }
    this.a.b(paramInt);
    return q();
  }
  
  public final void flush()
  {
    if (this.c) {
      throw new IllegalStateException("closed");
    }
    if (this.a.b > 0L) {
      this.b.write(this.a, this.a.b);
    }
    this.b.flush();
  }
  
  public final e g(int paramInt)
  {
    if (this.c) {
      throw new IllegalStateException("closed");
    }
    this.a.a(paramInt);
    return q();
  }
  
  public final e i(long paramLong)
  {
    if (this.c) {
      throw new IllegalStateException("closed");
    }
    this.a.h(paramLong);
    return q();
  }
  
  public final e j(long paramLong)
  {
    if (this.c) {
      throw new IllegalStateException("closed");
    }
    this.a.g(paramLong);
    return q();
  }
  
  public final e q()
  {
    if (this.c) {
      throw new IllegalStateException("closed");
    }
    Object localObject = this.a;
    long l2 = ((d)localObject).b;
    long l1;
    if (l2 == 0L) {
      l1 = 0L;
    }
    for (;;)
    {
      if (l1 > 0L) {
        this.b.write(this.a, l1);
      }
      return this;
      localObject = ((d)localObject).a.g;
      l1 = l2;
      if (((p)localObject).c < 2048)
      {
        l1 = l2;
        if (((p)localObject).e) {
          l1 = l2 - (((p)localObject).c - ((p)localObject).b);
        }
      }
    }
  }
  
  public final t timeout()
  {
    return this.b.timeout();
  }
  
  public final String toString()
  {
    return "buffer(" + this.b + ")";
  }
  
  public final void write(d paramd, long paramLong)
  {
    if (this.c) {
      throw new IllegalStateException("closed");
    }
    this.a.write(paramd, paramLong);
    q();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\c\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */