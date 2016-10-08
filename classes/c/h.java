package c;

import java.util.zip.Deflater;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

public final class h
  implements r
{
  private final e a;
  private final Deflater b;
  private boolean c;
  
  private h(e parame, Deflater paramDeflater)
  {
    if (parame == null) {
      throw new IllegalArgumentException("source == null");
    }
    if (paramDeflater == null) {
      throw new IllegalArgumentException("inflater == null");
    }
    this.a = parame;
    this.b = paramDeflater;
  }
  
  public h(r paramr, Deflater paramDeflater)
  {
    this(m.a(paramr), paramDeflater);
  }
  
  @IgnoreJRERequirement
  private void a(boolean paramBoolean)
  {
    d locald = this.a.a();
    p localp;
    label115:
    do
    {
      localp = locald.d(1);
      if (paramBoolean) {}
      for (int i = this.b.deflate(localp.a, localp.c, 2048 - localp.c, 2);; i = this.b.deflate(localp.a, localp.c, 2048 - localp.c))
      {
        if (i <= 0) {
          break label115;
        }
        localp.c += i;
        locald.b += i;
        this.a.q();
        break;
      }
    } while (!this.b.needsInput());
    if (localp.b == localp.c)
    {
      locald.a = localp.a();
      q.a(localp);
    }
  }
  
  public final void close()
  {
    if (this.c) {}
    for (;;)
    {
      return;
      Object localObject2 = null;
      try
      {
        this.b.finish();
        a(false);
        try
        {
          this.b.end();
          localObject1 = localObject2;
        }
        catch (Throwable localThrowable1)
        {
          for (;;)
          {
            Object localObject1;
            label42:
            if (localThrowable3 != null) {
              localThrowable2 = localThrowable3;
            }
          }
        }
        try
        {
          this.a.close();
          localObject2 = localObject1;
        }
        catch (Throwable localThrowable4)
        {
          Object localObject3 = localThrowable2;
          if (localThrowable2 != null) {
            break label42;
          }
          localObject3 = localThrowable4;
          break label42;
        }
        this.c = true;
        if (localObject2 == null) {
          continue;
        }
        u.a((Throwable)localObject2);
        return;
      }
      catch (Throwable localThrowable3)
      {
        for (;;) {}
      }
    }
  }
  
  public final void flush()
  {
    a(true);
    this.a.flush();
  }
  
  public final t timeout()
  {
    return this.a.timeout();
  }
  
  public final String toString()
  {
    return "DeflaterSink(" + this.a + ")";
  }
  
  public final void write(d paramd, long paramLong)
  {
    u.a(paramd.b, 0L, paramLong);
    while (paramLong > 0L)
    {
      p localp = paramd.a;
      int i = (int)Math.min(paramLong, localp.c - localp.b);
      this.b.setInput(localp.a, localp.b, i);
      a(false);
      paramd.b -= i;
      localp.b += i;
      if (localp.b == localp.c)
      {
        paramd.a = localp.a();
        q.a(localp);
      }
      paramLong -= i;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\c\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */