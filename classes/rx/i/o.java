package rx.i;

import java.util.ArrayList;
import java.util.List;
import rx.d.a.a;
import rx.e;

public final class o<T>
  implements e<T>
{
  final e<? super T> a;
  boolean b = true;
  boolean c;
  List<Object> d;
  boolean e;
  protected volatile boolean f;
  volatile Object g;
  
  public o(e<? super T> parame)
  {
    this.a = parame;
  }
  
  public final void a()
  {
    this.a.a();
  }
  
  public final void a(T paramT)
  {
    this.a.a(paramT);
  }
  
  public final void a(Throwable paramThrowable)
  {
    this.a.a(paramThrowable);
  }
  
  protected final void b(Object paramObject)
  {
    if (!this.e) {}
    try
    {
      this.b = false;
      if (this.c)
      {
        if (this.d == null) {
          this.d = new ArrayList();
        }
        this.d.add(paramObject);
        return;
      }
      this.e = true;
      a.a(this.a, paramObject);
      return;
    }
    finally {}
  }
  
  /* Error */
  protected final void c(Object paramObject)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 5
    //   3: iconst_0
    //   4: istore 6
    //   6: aload_0
    //   7: monitorenter
    //   8: aload_0
    //   9: getfield 27	rx/i/o:b	Z
    //   12: ifeq +10 -> 22
    //   15: aload_0
    //   16: getfield 45	rx/i/o:c	Z
    //   19: ifeq +6 -> 25
    //   22: aload_0
    //   23: monitorexit
    //   24: return
    //   25: aload_0
    //   26: iconst_0
    //   27: putfield 27	rx/i/o:b	Z
    //   30: aload_1
    //   31: ifnull +74 -> 105
    //   34: iconst_1
    //   35: istore 7
    //   37: aload_0
    //   38: iload 7
    //   40: putfield 45	rx/i/o:c	Z
    //   43: aload_0
    //   44: monitorexit
    //   45: aload_1
    //   46: ifnull +143 -> 189
    //   49: aconst_null
    //   50: astore_2
    //   51: iconst_1
    //   52: istore_3
    //   53: aload_2
    //   54: ifnull +62 -> 116
    //   57: aload_2
    //   58: invokeinterface 65 1 0
    //   63: astore_2
    //   64: aload_2
    //   65: invokeinterface 71 1 0
    //   70: ifeq +46 -> 116
    //   73: aload_0
    //   74: aload_2
    //   75: invokeinterface 75 1 0
    //   80: invokevirtual 77	rx/i/o:d	(Ljava/lang/Object;)V
    //   83: goto -19 -> 64
    //   86: astore_1
    //   87: iload 6
    //   89: istore_3
    //   90: iload_3
    //   91: ifne +12 -> 103
    //   94: aload_0
    //   95: monitorenter
    //   96: aload_0
    //   97: iconst_0
    //   98: putfield 45	rx/i/o:c	Z
    //   101: aload_0
    //   102: monitorexit
    //   103: aload_1
    //   104: athrow
    //   105: iconst_0
    //   106: istore 7
    //   108: goto -71 -> 37
    //   111: astore_1
    //   112: aload_0
    //   113: monitorexit
    //   114: aload_1
    //   115: athrow
    //   116: iload_3
    //   117: istore 4
    //   119: iload_3
    //   120: ifeq +11 -> 131
    //   123: aload_0
    //   124: aload_1
    //   125: invokevirtual 77	rx/i/o:d	(Ljava/lang/Object;)V
    //   128: iconst_0
    //   129: istore 4
    //   131: aload_0
    //   132: monitorenter
    //   133: aload_0
    //   134: getfield 47	rx/i/o:d	Ljava/util/List;
    //   137: astore_2
    //   138: aload_0
    //   139: aconst_null
    //   140: putfield 47	rx/i/o:d	Ljava/util/List;
    //   143: aload_2
    //   144: ifnonnull +26 -> 170
    //   147: aload_0
    //   148: iconst_0
    //   149: putfield 45	rx/i/o:c	Z
    //   152: iload 5
    //   154: istore 4
    //   156: aload_0
    //   157: monitorexit
    //   158: return
    //   159: iload_3
    //   160: istore 4
    //   162: aload_0
    //   163: monitorexit
    //   164: aload_1
    //   165: athrow
    //   166: astore_1
    //   167: goto -77 -> 90
    //   170: aload_0
    //   171: monitorexit
    //   172: iload 4
    //   174: istore_3
    //   175: goto -122 -> 53
    //   178: astore_1
    //   179: iconst_0
    //   180: istore_3
    //   181: goto -22 -> 159
    //   184: astore_1
    //   185: aload_0
    //   186: monitorexit
    //   187: aload_1
    //   188: athrow
    //   189: return
    //   190: astore_1
    //   191: iload 4
    //   193: istore_3
    //   194: goto -35 -> 159
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	197	0	this	o
    //   0	197	1	paramObject	Object
    //   50	94	2	localObject	Object
    //   52	142	3	i	int
    //   117	75	4	j	int
    //   1	152	5	k	int
    //   4	84	6	m	int
    //   35	72	7	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   57	64	86	finally
    //   64	83	86	finally
    //   123	128	86	finally
    //   131	133	86	finally
    //   8	22	111	finally
    //   22	24	111	finally
    //   25	30	111	finally
    //   37	45	111	finally
    //   112	114	111	finally
    //   164	166	166	finally
    //   133	143	178	finally
    //   147	152	178	finally
    //   170	172	178	finally
    //   96	103	184	finally
    //   185	187	184	finally
    //   156	158	190	finally
    //   162	164	190	finally
  }
  
  protected final void d(Object paramObject)
  {
    if (paramObject != null) {
      a.a(this.a, paramObject);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\i\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */