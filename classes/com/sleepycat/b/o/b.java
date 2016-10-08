package com.sleepycat.b.o;

import com.sleepycat.b.a.c;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.g.m;

public class b
{
  public boolean a;
  public long b;
  private final ad d;
  private final boolean e;
  private final long f;
  private long g = -1L;
  private boolean h;
  private String[] i;
  
  static
  {
    if (!b.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      c = bool;
      return;
    }
  }
  
  public b(ad paramad)
  {
    this(paramad, (byte)0);
  }
  
  private b(ad paramad, byte paramByte)
  {
    this.d = paramad;
    this.e = paramad.x.b(true);
    if ((!this.e) && (paramad.g)) {
      throw new IllegalArgumentException("Environment handle may not be read-only when directory is read-write");
    }
    this.f = 0L;
  }
  
  private void d()
  {
    if (!this.h) {
      throw new IllegalStateException("startBackup was not called");
    }
  }
  
  /* Error */
  public final void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 67	com/sleepycat/b/o/b:h	Z
    //   6: ifeq +18 -> 24
    //   9: new 69	java/lang/IllegalStateException
    //   12: dup
    //   13: ldc 74
    //   15: invokespecial 72	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   18: athrow
    //   19: astore_1
    //   20: aload_0
    //   21: monitorexit
    //   22: aload_1
    //   23: athrow
    //   24: aload_0
    //   25: getfield 41	com/sleepycat/b/o/b:d	Lcom/sleepycat/b/c/ad;
    //   28: aload_0
    //   29: invokevirtual 77	com/sleepycat/b/c/ad:a	(Lcom/sleepycat/b/o/b;)Z
    //   32: ifne +13 -> 45
    //   35: aload_0
    //   36: getfield 41	com/sleepycat/b/o/b:d	Lcom/sleepycat/b/c/ad;
    //   39: ldc 79
    //   41: invokevirtual 82	com/sleepycat/b/c/ad:a	(Ljava/lang/String;)Lcom/sleepycat/b/au;
    //   44: athrow
    //   45: aload_0
    //   46: getfield 41	com/sleepycat/b/o/b:d	Lcom/sleepycat/b/c/ad;
    //   49: getfield 86	com/sleepycat/b/c/ad:D	Lcom/sleepycat/b/a/c;
    //   52: lconst_0
    //   53: invokevirtual 91	com/sleepycat/b/a/c:a	(J)V
    //   56: aload_0
    //   57: getfield 41	com/sleepycat/b/o/b:d	Lcom/sleepycat/b/c/ad;
    //   60: getfield 86	com/sleepycat/b/c/ad:D	Lcom/sleepycat/b/a/c;
    //   63: aload_0
    //   64: getfield 65	com/sleepycat/b/o/b:f	J
    //   67: invokevirtual 91	com/sleepycat/b/a/c:a	(J)V
    //   70: aload_0
    //   71: iconst_1
    //   72: putfield 67	com/sleepycat/b/o/b:h	Z
    //   75: aload_0
    //   76: getfield 54	com/sleepycat/b/o/b:e	Z
    //   79: ifeq +54 -> 133
    //   82: aload_0
    //   83: aload_0
    //   84: getfield 41	com/sleepycat/b/o/b:d	Lcom/sleepycat/b/c/ad;
    //   87: getfield 47	com/sleepycat/b/c/ad:x	Lcom/sleepycat/b/g/m;
    //   90: iconst_0
    //   91: invokevirtual 94	com/sleepycat/b/g/m:a	(Z)Ljava/lang/Long;
    //   94: invokevirtual 100	java/lang/Long:longValue	()J
    //   97: putfield 39	com/sleepycat/b/o/b:g	J
    //   100: aload_0
    //   101: aload_0
    //   102: getfield 41	com/sleepycat/b/o/b:d	Lcom/sleepycat/b/c/ad;
    //   105: getfield 47	com/sleepycat/b/c/ad:x	Lcom/sleepycat/b/g/m;
    //   108: lconst_0
    //   109: aload_0
    //   110: getfield 39	com/sleepycat/b/o/b:g	J
    //   113: invokevirtual 103	com/sleepycat/b/g/m:a	(JJ)[Ljava/lang/String;
    //   116: putfield 105	com/sleepycat/b/o/b:i	[Ljava/lang/String;
    //   119: aload_0
    //   120: getfield 41	com/sleepycat/b/o/b:d	Lcom/sleepycat/b/c/ad;
    //   123: getfield 86	com/sleepycat/b/c/ad:D	Lcom/sleepycat/b/a/c;
    //   126: lconst_0
    //   127: invokevirtual 107	com/sleepycat/b/a/c:b	(J)V
    //   130: aload_0
    //   131: monitorexit
    //   132: return
    //   133: aload_0
    //   134: aload_0
    //   135: getfield 41	com/sleepycat/b/o/b:d	Lcom/sleepycat/b/c/ad;
    //   138: invokevirtual 110	com/sleepycat/b/c/ad:t	()J
    //   141: invokestatic 115	com/sleepycat/b/p/j:d	(J)J
    //   144: lconst_1
    //   145: lsub
    //   146: putfield 39	com/sleepycat/b/o/b:g	J
    //   149: goto -49 -> 100
    //   152: astore_1
    //   153: aload_0
    //   154: getfield 41	com/sleepycat/b/o/b:d	Lcom/sleepycat/b/c/ad;
    //   157: getfield 86	com/sleepycat/b/c/ad:D	Lcom/sleepycat/b/a/c;
    //   160: lconst_0
    //   161: invokevirtual 107	com/sleepycat/b/a/c:b	(J)V
    //   164: aload_1
    //   165: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	166	0	this	b
    //   19	4	1	localObject1	Object
    //   152	13	1	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   2	19	19	finally
    //   24	45	19	finally
    //   45	56	19	finally
    //   119	130	19	finally
    //   153	166	19	finally
    //   56	100	152	finally
    //   100	119	152	finally
    //   133	149	152	finally
  }
  
  public final void b()
  {
    try
    {
      d();
      this.h = false;
      this.d.D.b(this.f);
      this.d.b(this);
      if (this.a)
      {
        this.a = false;
        throw this.d.a("A replication operation has overwritten log files from file " + this.b + ". Any copied files should be considered invalid and discarded. The backup may be attempted at a later time.");
      }
    }
    finally {}
  }
  
  public final String[] c()
  {
    try
    {
      d();
      String[] arrayOfString = this.d.x.a(this.f, this.g);
      return arrayOfString;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\o\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */