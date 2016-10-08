package com.sleepycat.b.i;

import com.sleepycat.b.b.b;
import com.sleepycat.b.c.aw;
import com.sleepycat.b.c.m;
import com.sleepycat.b.i.c.aj;
import com.sleepycat.b.i.c.an;
import com.sleepycat.b.i.d.j;
import java.io.File;

public class t
  extends com.sleepycat.b.x
{
  private aj e = (aj)this.a;
  private final com.sleepycat.b.i.c.b.x f = this.e.ao;
  private w g;
  
  public t(File paramFile, w paramw, com.sleepycat.b.z paramz)
  {
    this(paramFile, paramw, paramz, p.b);
  }
  
  private t(File paramFile, w paramw, com.sleepycat.b.z paramz, p paramp)
  {
    this(paramFile, paramw, paramz, paramp, true, null);
  }
  
  public t(File paramFile, w paramw, com.sleepycat.b.z paramz, p paramp, boolean paramBoolean, aj paramaj)
  {
    super(paramFile, paramz, paramw, paramaj);
    if (paramBoolean) {}
    while (this.e.am == null) {
      try
      {
        a(paramp);
        if (this.e.am != null)
        {
          paramFile = this.e.am.t;
          if (paramFile.a <= 0L)
          {
            paramFile.a = System.currentTimeMillis();
            paramw = paramFile.b.m;
            paramz = com.sleepycat.b.i.c.b.w.a(paramw);
            paramz.getClass();
            paramFile.a(paramw, new j(paramz, paramFile.b.a.a, paramFile.b.f(), paramFile.a));
          }
        }
        return;
      }
      catch (z paramaj)
      {
        for (;;)
        {
          this.a = a(paramFile, paramz, true, paramw);
          this.e = ((aj)this.a);
          a(paramp);
          paramFile = this.e;
          paramFile.au.a = Boolean.valueOf(true);
          paramFile.av.a = paramaj.getMessage();
        }
      }
    }
    throw com.sleepycat.b.aa.c("An earlier handle creation had resulted in the nodejoining the group");
  }
  
  private void a(p paramp)
  {
    e();
    g();
    if (new Boolean(this.g.a(an.ad.a)).booleanValue()) {}
    for (;;)
    {
      return;
      try
      {
        paramp = this.e.a(paramp);
        if (paramp != null) {
          continue;
        }
        return;
      }
      finally
      {
        this.e.o();
      }
    }
  }
  
  protected final aw a(File paramFile, aw paramaw, com.sleepycat.b.z paramz)
  {
    if (paramz.a()) {
      throw new IllegalArgumentException("A replicated environment may not be opened read-only");
    }
    paramz = (w)paramaw;
    paramaw = paramz;
    if (paramz == null) {
      paramaw = w.a;
    }
    paramaw = paramaw.c();
    m.a(paramFile, paramaw.e());
    this.g = paramaw;
    return this.g;
  }
  
  /* Error */
  public void close()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial 202	com/sleepycat/b/x:close	()V
    //   6: aload_0
    //   7: aconst_null
    //   8: putfield 38	com/sleepycat/b/i/t:e	Lcom/sleepycat/b/i/c/aj;
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: astore_1
    //   15: aload_1
    //   16: new 204	java/lang/StringBuilder
    //   19: dup
    //   20: ldc -50
    //   22: invokespecial 207	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   25: aload_0
    //   26: getfield 43	com/sleepycat/b/i/t:f	Lcom/sleepycat/b/i/c/b/x;
    //   29: invokevirtual 211	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   32: invokevirtual 214	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   35: invokevirtual 216	com/sleepycat/b/n:a	(Ljava/lang/String;)V
    //   38: aload_1
    //   39: athrow
    //   40: astore_1
    //   41: aload_0
    //   42: aconst_null
    //   43: putfield 38	com/sleepycat/b/i/t:e	Lcom/sleepycat/b/i/c/aj;
    //   46: aload_1
    //   47: athrow
    //   48: astore_1
    //   49: aload_0
    //   50: monitorexit
    //   51: aload_1
    //   52: athrow
    //   53: astore_1
    //   54: new 132	com/sleepycat/b/aa
    //   57: dup
    //   58: aload_0
    //   59: getfield 38	com/sleepycat/b/i/t:e	Lcom/sleepycat/b/i/c/aj;
    //   62: getstatic 222	com/sleepycat/b/c/ac:z	Lcom/sleepycat/b/c/ac;
    //   65: new 204	java/lang/StringBuilder
    //   68: dup
    //   69: ldc -50
    //   71: invokespecial 207	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   74: aload_0
    //   75: getfield 43	com/sleepycat/b/i/t:f	Lcom/sleepycat/b/i/c/b/x;
    //   78: invokevirtual 211	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   81: invokevirtual 214	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   84: aload_1
    //   85: invokespecial 225	com/sleepycat/b/aa:<init>	(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   88: athrow
    //   89: astore_1
    //   90: aload_0
    //   91: getfield 38	com/sleepycat/b/i/t:e	Lcom/sleepycat/b/i/c/aj;
    //   94: aload_1
    //   95: invokevirtual 228	com/sleepycat/b/i/c/aj:a	(Ljava/lang/Error;)V
    //   98: aload_1
    //   99: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	100	0	this	t
    //   14	25	1	localn	com.sleepycat.b.n
    //   40	7	1	localObject1	Object
    //   48	4	1	localObject2	Object
    //   53	32	1	localException	Exception
    //   89	10	1	localError	Error
    // Exception table:
    //   from	to	target	type
    //   2	6	14	com/sleepycat/b/n
    //   2	6	40	finally
    //   15	40	40	finally
    //   54	89	40	finally
    //   90	100	40	finally
    //   6	11	48	finally
    //   41	48	48	finally
    //   2	6	53	java/lang/Exception
    //   2	6	89	java/lang/Error
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */