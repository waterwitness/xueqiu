package rx;

public abstract class i<T>
  implements e<T>, j
{
  private final i<?> a;
  private f b;
  private long c = Long.MIN_VALUE;
  public final rx.d.c.j e;
  
  public i()
  {
    this.a = null;
    this.e = new rx.d.c.j();
  }
  
  public i(i<?> parami)
  {
    this.a = parami;
    this.e = parami.e;
  }
  
  /* Error */
  public final void a(long paramLong)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: getfield 40	rx/i:b	Lrx/f;
    //   8: ifnull +22 -> 30
    //   11: aload_0
    //   12: getfield 40	rx/i:b	Lrx/f;
    //   15: astore_3
    //   16: aload_0
    //   17: monitorexit
    //   18: aload_3
    //   19: ifnull +10 -> 29
    //   22: aload_3
    //   23: lload_1
    //   24: invokeinterface 44 3 0
    //   29: return
    //   30: aload_0
    //   31: lload_1
    //   32: putfield 26	rx/i:c	J
    //   35: goto -19 -> 16
    //   38: astore_3
    //   39: aload_0
    //   40: monitorexit
    //   41: aload_3
    //   42: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	43	0	this	i
    //   0	43	1	paramLong	long
    //   1	22	3	localf	f
    //   38	4	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   4	16	38	finally
    //   16	18	38	finally
    //   30	35	38	finally
    //   39	41	38	finally
  }
  
  public void a(f paramf)
  {
    int j = 0;
    long l;
    try
    {
      l = this.c;
      this.b = paramf;
      int i = j;
      if (this.a != null)
      {
        i = j;
        if (l == Long.MIN_VALUE) {
          i = 1;
        }
      }
      if (i != 0)
      {
        this.a.a(this.b);
        return;
      }
    }
    finally {}
    if (l == Long.MIN_VALUE)
    {
      this.b.a(Long.MAX_VALUE);
      return;
    }
    this.b.a(l);
  }
  
  public final void a(j paramj)
  {
    this.e.a(paramj);
  }
  
  public final void b()
  {
    this.e.b();
  }
  
  public final boolean c()
  {
    return this.e.c();
  }
  
  public void d() {}
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */