package c;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

public final class l
  implements s
{
  private final f a;
  private final Inflater b;
  private int c;
  private boolean d;
  
  l(f paramf, Inflater paramInflater)
  {
    if (paramf == null) {
      throw new IllegalArgumentException("source == null");
    }
    if (paramInflater == null) {
      throw new IllegalArgumentException("inflater == null");
    }
    this.a = paramf;
    this.b = paramInflater;
  }
  
  public l(s params, Inflater paramInflater)
  {
    this(m.a(params), paramInflater);
  }
  
  private void b()
  {
    if (this.c == 0) {
      return;
    }
    int i = this.c - this.b.getRemaining();
    this.c -= i;
    this.a.f(i);
  }
  
  public final boolean a()
  {
    if (!this.b.needsInput()) {
      return false;
    }
    b();
    if (this.b.getRemaining() != 0) {
      throw new IllegalStateException("?");
    }
    if (this.a.d()) {
      return true;
    }
    p localp = this.a.a().a;
    this.c = (localp.c - localp.b);
    this.b.setInput(localp.a, localp.b, this.c);
    return false;
  }
  
  public final void close()
  {
    if (this.d) {
      return;
    }
    this.b.end();
    this.d = true;
    this.a.close();
  }
  
  public final long read(d paramd, long paramLong)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("byteCount < 0: " + paramLong);
    }
    if (this.d) {
      throw new IllegalStateException("closed");
    }
    if (paramLong == 0L) {
      return 0L;
    }
    for (;;)
    {
      boolean bool = a();
      try
      {
        p localp = paramd.d(1);
        int i = this.b.inflate(localp.a, localp.c, 2048 - localp.c);
        if (i > 0)
        {
          localp.c += i;
          paramd.b += i;
          return i;
        }
        if ((this.b.finished()) || (this.b.needsDictionary()))
        {
          b();
          if (localp.b == localp.c)
          {
            paramd.a = localp.a();
            q.a(localp);
          }
        }
        else
        {
          if (!bool) {
            continue;
          }
          throw new EOFException("source exhausted prematurely");
        }
      }
      catch (DataFormatException paramd)
      {
        throw new IOException(paramd);
      }
    }
    return -1L;
  }
  
  public final t timeout()
  {
    return this.a.timeout();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\c\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */