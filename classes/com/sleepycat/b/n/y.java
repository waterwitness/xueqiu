package com.sleepycat.b.n;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.p.ar;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class y
  extends a
{
  private boolean a;
  
  public y(ad paramad)
  {
    super(paramad);
    paramad = this.j;
    if (paramad.l != null)
    {
      Thread localThread = Thread.currentThread();
      ar localar = (ar)paramad.l.get(localThread);
      if (localar != null)
      {
        boolean bool = localar.b(this);
        if ((!l.m) && (!bool)) {
          throw new AssertionError();
        }
      }
      else
      {
        paramad.l.put(localThread, new ar(this));
      }
    }
  }
  
  public static y b(ad paramad)
  {
    if (paramad.I()) {
      return paramad.T();
    }
    return new y(paramad);
  }
  
  /* Error */
  public final void a(long paramLong1, long paramLong2, com.sleepycat.b.c.i parami)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 69	com/sleepycat/b/n/y:a	Z
    //   6: istore 6
    //   8: aload_0
    //   9: iconst_1
    //   10: putfield 69	com/sleepycat/b/n/y:a	Z
    //   13: aload_0
    //   14: lload_1
    //   15: lload_3
    //   16: aload 5
    //   18: invokespecial 71	com/sleepycat/b/n/a:a	(JJLcom/sleepycat/b/c/i;)V
    //   21: aload_0
    //   22: iload 6
    //   24: putfield 69	com/sleepycat/b/n/y:a	Z
    //   27: aload_0
    //   28: monitorexit
    //   29: return
    //   30: astore 5
    //   32: aload_0
    //   33: iload 6
    //   35: putfield 69	com/sleepycat/b/n/y:a	Z
    //   38: aload 5
    //   40: athrow
    //   41: astore 5
    //   43: aload_0
    //   44: monitorexit
    //   45: aload 5
    //   47: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	48	0	this	y
    //   0	48	1	paramLong1	long
    //   0	48	3	paramLong2	long
    //   0	48	5	parami	com.sleepycat.b.c.i
    //   6	28	6	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   13	21	30	finally
    //   2	13	41	finally
    //   21	27	41	finally
    //   32	41	41	finally
  }
  
  public final boolean a(q paramq)
  {
    if (super.a(paramq)) {}
    do
    {
      return true;
      if (!(paramq instanceof y)) {
        break;
      }
    } while (this.q == paramq.q);
    return false;
    return false;
  }
  
  public final void b(q paramq)
  {
    Object localObject = this.j;
    Thread localThread = this.q;
    if (((l)localObject).l == null) {
      localObject = l.e.iterator();
    }
    while (((Iterator)localObject).hasNext())
    {
      ((y)((Iterator)localObject).next()).c(paramq);
      continue;
      localObject = (ar)((l)localObject).l.get(localThread);
      if (localObject == null) {
        localObject = l.e.iterator();
      } else {
        localObject = ((ar)localObject).iterator();
      }
    }
  }
  
  protected final void b_(boolean paramBoolean)
  {
    try
    {
      if ((!this.a) && (this.q != Thread.currentThread())) {
        throw new IllegalStateException("Non-transactional Cursors may not be used in multiple threads; Cursor was created in " + this.q + " but used in " + Thread.currentThread());
      }
    }
    finally {}
  }
  
  public final q f()
  {
    b_(false);
    return b(this.i);
  }
  
  final void j()
  {
    super.j();
    l locall = this.j;
    if (locall.l != null)
    {
      Thread localThread = Thread.currentThread();
      ar localar = (ar)locall.l.get(localThread);
      if ((!l.m) && (localar == null)) {
        throw new AssertionError();
      }
      boolean bool = localar.a(this);
      if ((!l.m) && (!bool)) {
        throw new AssertionError();
      }
      if (locall.l.size() == 0) {
        locall.l.remove(localThread);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\n\y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */