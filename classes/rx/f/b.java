package rx.f;

import rx.b.f;
import rx.e;

public final class b<T>
  implements e<T>
{
  private static final Object e = new Object();
  private static final Object f = new Object();
  private final e<? super T> a;
  private boolean b = false;
  private boolean c = false;
  private d d;
  
  public b(e<? super T> parame)
  {
    this.a = parame;
  }
  
  private void a(d paramd)
  {
    if ((paramd == null) || (paramd.b == 0)) {}
    int i;
    label23:
    Object localObject;
    do
    {
      return;
      paramd = paramd.a;
      int j = paramd.length;
      i = 0;
      if (i >= j) {
        break;
      }
      localObject = paramd[i];
    } while (localObject == null);
    if (localObject == e) {
      this.a.a(null);
    }
    for (;;)
    {
      i += 1;
      break label23;
      break;
      if (localObject == f) {
        this.a.a();
      } else if (localObject.getClass() == c.class) {
        this.a.a(((c)localObject).a);
      } else {
        this.a.a(localObject);
      }
    }
  }
  
  public final void a()
  {
    try
    {
      if (this.c) {
        return;
      }
      this.c = true;
      if (this.b)
      {
        if (this.d == null) {
          this.d = new d();
        }
        this.d.a(f);
        return;
      }
    }
    finally {}
    this.b = true;
    d locald = this.d;
    this.d = null;
    a(locald);
    this.a.a();
  }
  
  /* Error */
  public final void a(T paramT)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 5
    //   3: iconst_0
    //   4: istore 6
    //   6: aconst_null
    //   7: astore_3
    //   8: aload_0
    //   9: monitorenter
    //   10: aload_0
    //   11: getfield 33	rx/f/b:c	Z
    //   14: ifeq +6 -> 20
    //   17: aload_0
    //   18: monitorexit
    //   19: return
    //   20: aload_0
    //   21: getfield 31	rx/f/b:b	Z
    //   24: ifeq +50 -> 74
    //   27: aload_0
    //   28: getfield 65	rx/f/b:d	Lrx/f/d;
    //   31: ifnonnull +14 -> 45
    //   34: aload_0
    //   35: new 40	rx/f/d
    //   38: dup
    //   39: invokespecial 66	rx/f/d:<init>	()V
    //   42: putfield 65	rx/f/b:d	Lrx/f/d;
    //   45: aload_0
    //   46: getfield 65	rx/f/b:d	Lrx/f/d;
    //   49: astore_2
    //   50: aload_1
    //   51: ifnull +16 -> 67
    //   54: aload_2
    //   55: aload_1
    //   56: invokevirtual 67	rx/f/d:a	(Ljava/lang/Object;)V
    //   59: aload_0
    //   60: monitorexit
    //   61: return
    //   62: astore_1
    //   63: aload_0
    //   64: monitorexit
    //   65: aload_1
    //   66: athrow
    //   67: getstatic 25	rx/f/b:e	Ljava/lang/Object;
    //   70: astore_1
    //   71: goto -17 -> 54
    //   74: aload_0
    //   75: iconst_1
    //   76: putfield 31	rx/f/b:b	Z
    //   79: aload_0
    //   80: getfield 65	rx/f/b:d	Lrx/f/d;
    //   83: astore_2
    //   84: aload_0
    //   85: aconst_null
    //   86: putfield 65	rx/f/b:d	Lrx/f/d;
    //   89: aload_0
    //   90: monitorexit
    //   91: ldc 70
    //   93: istore 4
    //   95: aload_0
    //   96: aload_2
    //   97: invokespecial 69	rx/f/b:a	(Lrx/f/d;)V
    //   100: iload 4
    //   102: ldc 70
    //   104: if_icmpne +13 -> 117
    //   107: aload_0
    //   108: getfield 35	rx/f/b:a	Lrx/e;
    //   111: aload_1
    //   112: invokeinterface 49 2 0
    //   117: iload 4
    //   119: iconst_1
    //   120: isub
    //   121: istore 7
    //   123: iload 7
    //   125: ifle +61 -> 186
    //   128: aload_0
    //   129: monitorenter
    //   130: aload_0
    //   131: getfield 65	rx/f/b:d	Lrx/f/d;
    //   134: astore_2
    //   135: aload_0
    //   136: aconst_null
    //   137: putfield 65	rx/f/b:d	Lrx/f/d;
    //   140: aload_2
    //   141: ifnonnull +43 -> 184
    //   144: aload_0
    //   145: iconst_0
    //   146: putfield 31	rx/f/b:b	Z
    //   149: aload_0
    //   150: monitorexit
    //   151: return
    //   152: iload 4
    //   154: istore 5
    //   156: aload_0
    //   157: monitorexit
    //   158: aload_1
    //   159: athrow
    //   160: astore_1
    //   161: iload 4
    //   163: ifne +19 -> 182
    //   166: aload_0
    //   167: monitorenter
    //   168: aload_0
    //   169: getfield 33	rx/f/b:c	Z
    //   172: ifeq +65 -> 237
    //   175: aload_0
    //   176: aconst_null
    //   177: putfield 65	rx/f/b:d	Lrx/f/d;
    //   180: aload_0
    //   181: monitorexit
    //   182: aload_1
    //   183: athrow
    //   184: aload_0
    //   185: monitorexit
    //   186: iload 7
    //   188: istore 4
    //   190: iload 7
    //   192: ifgt -97 -> 95
    //   195: aload_0
    //   196: monitorenter
    //   197: aload_0
    //   198: getfield 33	rx/f/b:c	Z
    //   201: ifeq +21 -> 222
    //   204: aload_0
    //   205: getfield 65	rx/f/b:d	Lrx/f/d;
    //   208: astore_1
    //   209: aload_0
    //   210: aconst_null
    //   211: putfield 65	rx/f/b:d	Lrx/f/d;
    //   214: aload_0
    //   215: monitorexit
    //   216: aload_0
    //   217: aload_1
    //   218: invokespecial 69	rx/f/b:a	(Lrx/f/d;)V
    //   221: return
    //   222: aload_0
    //   223: iconst_0
    //   224: putfield 31	rx/f/b:b	Z
    //   227: aload_3
    //   228: astore_1
    //   229: goto -15 -> 214
    //   232: astore_1
    //   233: aload_0
    //   234: monitorexit
    //   235: aload_1
    //   236: athrow
    //   237: aload_0
    //   238: iconst_0
    //   239: putfield 31	rx/f/b:b	Z
    //   242: goto -62 -> 180
    //   245: astore_1
    //   246: aload_0
    //   247: monitorexit
    //   248: aload_1
    //   249: athrow
    //   250: astore_1
    //   251: iload 6
    //   253: istore 4
    //   255: goto -94 -> 161
    //   258: astore_1
    //   259: iconst_0
    //   260: istore 4
    //   262: goto -110 -> 152
    //   265: astore_1
    //   266: iload 5
    //   268: istore 4
    //   270: goto -118 -> 152
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	273	0	this	b
    //   0	273	1	paramT	T
    //   49	92	2	locald	d
    //   7	221	3	localObject	Object
    //   93	176	4	i	int
    //   1	266	5	j	int
    //   4	248	6	k	int
    //   121	70	7	m	int
    // Exception table:
    //   from	to	target	type
    //   10	19	62	finally
    //   20	45	62	finally
    //   45	50	62	finally
    //   54	61	62	finally
    //   63	65	62	finally
    //   67	71	62	finally
    //   74	91	62	finally
    //   158	160	160	finally
    //   197	214	232	finally
    //   214	216	232	finally
    //   222	227	232	finally
    //   233	235	232	finally
    //   168	180	245	finally
    //   180	182	245	finally
    //   237	242	245	finally
    //   246	248	245	finally
    //   95	100	250	finally
    //   107	117	250	finally
    //   128	130	250	finally
    //   130	140	258	finally
    //   144	149	258	finally
    //   184	186	258	finally
    //   149	151	265	finally
    //   156	158	265	finally
  }
  
  public final void a(Throwable paramThrowable)
  {
    f.b(paramThrowable);
    try
    {
      if (this.c) {
        return;
      }
      if (this.b)
      {
        if (this.d == null) {
          this.d = new d();
        }
        this.d.a(new c(paramThrowable));
        return;
      }
    }
    finally {}
    this.b = true;
    d locald = this.d;
    this.d = null;
    a(locald);
    this.a.a(paramThrowable);
    try
    {
      this.b = false;
      return;
    }
    finally {}
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\f\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */