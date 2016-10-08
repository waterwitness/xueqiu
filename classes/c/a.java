package c;

import java.io.IOException;
import java.io.InterruptedIOException;

public class a
  extends t
{
  private static a head;
  private boolean inQueue;
  private a next;
  private long timeoutAt;
  
  private static a awaitTimeout()
  {
    a locala1 = null;
    for (;;)
    {
      a locala2;
      try
      {
        locala2 = head.next;
        if (locala2 == null)
        {
          a.class.wait();
          return locala1;
        }
        long l1 = locala2.remainingNanos(System.nanoTime());
        if (l1 > 0L)
        {
          long l2 = l1 / 1000000L;
          a.class.wait(l2, (int)(l1 - 1000000L * l2));
          continue;
        }
        head.next = locala2.next;
      }
      finally {}
      locala2.next = null;
      Object localObject2 = locala2;
    }
  }
  
  /* Error */
  private static boolean cancelScheduledTimeout(a parama)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 27	c/a:head	Lc/a;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnull +39 -> 47
    //   11: aload_1
    //   12: getfield 29	c/a:next	Lc/a;
    //   15: aload_0
    //   16: if_acmpne +23 -> 39
    //   19: aload_1
    //   20: aload_0
    //   21: getfield 29	c/a:next	Lc/a;
    //   24: putfield 29	c/a:next	Lc/a;
    //   27: aload_0
    //   28: aconst_null
    //   29: putfield 29	c/a:next	Lc/a;
    //   32: iconst_0
    //   33: istore_2
    //   34: ldc 2
    //   36: monitorexit
    //   37: iload_2
    //   38: ireturn
    //   39: aload_1
    //   40: getfield 29	c/a:next	Lc/a;
    //   43: astore_1
    //   44: goto -37 -> 7
    //   47: iconst_1
    //   48: istore_2
    //   49: goto -15 -> 34
    //   52: astore_0
    //   53: ldc 2
    //   55: monitorexit
    //   56: aload_0
    //   57: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	58	0	parama	a
    //   6	38	1	locala	a
    //   33	16	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   3	7	52	finally
    //   11	32	52	finally
    //   39	44	52	finally
  }
  
  private long remainingNanos(long paramLong)
  {
    return this.timeoutAt - paramLong;
  }
  
  private static void scheduleTimeout(a parama, long paramLong, boolean paramBoolean)
  {
    for (;;)
    {
      try
      {
        if (head == null)
        {
          head = new a();
          new b().start();
        }
        long l = System.nanoTime();
        if ((paramLong != 0L) && (paramBoolean))
        {
          parama.timeoutAt = (Math.min(paramLong, parama.deadlineNanoTime() - l) + l);
          paramLong = parama.remainingNanos(l);
          locala = head;
          if ((locala.next != null) && (paramLong >= locala.next.remainingNanos(l))) {
            break label175;
          }
          parama.next = locala.next;
          locala.next = parama;
          if (locala == head) {
            a.class.notify();
          }
          return;
        }
        if (paramLong != 0L)
        {
          parama.timeoutAt = (l + paramLong);
          continue;
        }
        if (!paramBoolean) {
          break label167;
        }
      }
      finally {}
      parama.timeoutAt = parama.deadlineNanoTime();
      continue;
      label167:
      throw new AssertionError();
      label175:
      a locala = locala.next;
    }
  }
  
  public final void enter()
  {
    if (this.inQueue) {
      throw new IllegalStateException("Unbalanced enter/exit");
    }
    long l = timeoutNanos();
    boolean bool = hasDeadline();
    if ((l == 0L) && (!bool)) {
      return;
    }
    this.inQueue = true;
    scheduleTimeout(this, l, bool);
  }
  
  final IOException exit(IOException paramIOException)
  {
    if (!exit()) {
      return paramIOException;
    }
    InterruptedIOException localInterruptedIOException = new InterruptedIOException("timeout");
    localInterruptedIOException.initCause(paramIOException);
    return localInterruptedIOException;
  }
  
  final void exit(boolean paramBoolean)
  {
    if ((exit()) && (paramBoolean)) {
      throw new InterruptedIOException("timeout");
    }
  }
  
  public final boolean exit()
  {
    if (!this.inQueue) {
      return false;
    }
    this.inQueue = false;
    return cancelScheduledTimeout(this);
  }
  
  public final r sink(final r paramr)
  {
    new r()
    {
      public final void close()
      {
        a.this.enter();
        try
        {
          paramr.close();
          a.this.exit(true);
          return;
        }
        catch (IOException localIOException)
        {
          throw a.this.exit(localIOException);
        }
        finally
        {
          a.this.exit(false);
        }
      }
      
      public final void flush()
      {
        a.this.enter();
        try
        {
          paramr.flush();
          a.this.exit(true);
          return;
        }
        catch (IOException localIOException)
        {
          throw a.this.exit(localIOException);
        }
        finally
        {
          a.this.exit(false);
        }
      }
      
      public final t timeout()
      {
        return a.this;
      }
      
      public final String toString()
      {
        return "AsyncTimeout.sink(" + paramr + ")";
      }
      
      public final void write(d paramAnonymousd, long paramAnonymousLong)
      {
        a.this.enter();
        try
        {
          paramr.write(paramAnonymousd, paramAnonymousLong);
          a.this.exit(true);
          return;
        }
        catch (IOException paramAnonymousd)
        {
          throw a.this.exit(paramAnonymousd);
        }
        finally
        {
          a.this.exit(false);
        }
      }
    };
  }
  
  public final s source(final s params)
  {
    new s()
    {
      public final void close()
      {
        try
        {
          params.close();
          a.this.exit(true);
          return;
        }
        catch (IOException localIOException)
        {
          throw a.this.exit(localIOException);
        }
        finally
        {
          a.this.exit(false);
        }
      }
      
      public final long read(d paramAnonymousd, long paramAnonymousLong)
      {
        a.this.enter();
        try
        {
          paramAnonymousLong = params.read(paramAnonymousd, paramAnonymousLong);
          a.this.exit(true);
          return paramAnonymousLong;
        }
        catch (IOException paramAnonymousd)
        {
          throw a.this.exit(paramAnonymousd);
        }
        finally
        {
          a.this.exit(false);
        }
      }
      
      public final t timeout()
      {
        return a.this;
      }
      
      public final String toString()
      {
        return "AsyncTimeout.source(" + params + ")";
      }
    };
  }
  
  public void timedOut() {}
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\c\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */