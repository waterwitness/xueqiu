package com.sleepycat.b.d;

import com.sleepycat.b.bn;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.al;
import com.sleepycat.b.c.ao;
import com.sleepycat.b.l.j;
import com.sleepycat.b.p.ai;
import com.sleepycat.b.p.o;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

final class l
  extends n
{
  private final List<m> b = new ArrayList();
  private int c;
  private int d;
  private boolean e = true;
  private int f;
  private int g;
  private final AtomicInteger h = new AtomicInteger();
  private final o i = new o(this.a, h.h);
  
  public l(ad paramad)
  {
    super(paramad);
  }
  
  private static boolean a(m paramm)
  {
    return paramm.a.n.a();
  }
  
  final p a()
  {
    try
    {
      p localp = new p();
      m localm;
      if (this.e)
      {
        this.g = 0;
        this.f = Integer.MAX_VALUE;
        int k = this.b.size();
        j = 0;
        while (j < k)
        {
          localm = (m)this.b.get(j);
          int m = localm.b.b();
          if (this.f > m) {
            this.f = m;
          }
          this.g += m;
          localm.d = m;
          localm.e = (m * 10);
          j += 1;
        }
        this.e = false;
      }
      int j = this.b.size();
      if (j > 0)
      {
        if (this.d >= j) {
          this.d = 0;
        }
        localm = (m)this.b.get(this.d);
        this.d += 1;
        localp.a = localm.a.F();
      }
      localp.b = this.g;
      return localp;
    }
    finally {}
  }
  
  public final ai a(bn parambn)
  {
    this.i.a(Integer.valueOf(this.b.size()));
    return super.a(parambn);
  }
  
  public final void a(int paramInt)
  {
    if (this.h.addAndGet(paramInt) > this.g / 10) {
      this.e = true;
    }
  }
  
  /* Error */
  public final void a(ad paramad)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 29	com/sleepycat/b/d/l:b	Ljava/util/List;
    //   6: invokeinterface 85 1 0
    //   11: istore 4
    //   13: iconst_0
    //   14: istore_3
    //   15: iload_3
    //   16: iload 4
    //   18: if_icmpge +35 -> 53
    //   21: aload_0
    //   22: getfield 29	com/sleepycat/b/d/l:b	Ljava/util/List;
    //   25: iload_3
    //   26: invokeinterface 89 2 0
    //   31: checkcast 56	com/sleepycat/b/d/m
    //   34: getfield 59	com/sleepycat/b/d/m:a	Lcom/sleepycat/b/c/ad;
    //   37: astore_2
    //   38: aload_2
    //   39: aload_1
    //   40: if_acmpne +6 -> 46
    //   43: aload_0
    //   44: monitorexit
    //   45: return
    //   46: iload_3
    //   47: iconst_1
    //   48: iadd
    //   49: istore_3
    //   50: goto -35 -> 15
    //   53: new 56	com/sleepycat/b/d/m
    //   56: dup
    //   57: iconst_0
    //   58: invokespecial 130	com/sleepycat/b/d/m:<init>	(B)V
    //   61: astore_2
    //   62: aload_2
    //   63: aload_1
    //   64: putfield 59	com/sleepycat/b/d/m:a	Lcom/sleepycat/b/c/ad;
    //   67: aload_2
    //   68: aload_1
    //   69: getfield 133	com/sleepycat/b/c/ad:t	Lcom/sleepycat/b/c/al;
    //   72: putfield 92	com/sleepycat/b/d/m:b	Lcom/sleepycat/b/c/al;
    //   75: aload_0
    //   76: getfield 29	com/sleepycat/b/d/l:b	Ljava/util/List;
    //   79: aload_2
    //   80: invokeinterface 137 2 0
    //   85: pop
    //   86: aload_0
    //   87: iconst_1
    //   88: putfield 36	com/sleepycat/b/d/l:e	Z
    //   91: goto -48 -> 43
    //   94: astore_1
    //   95: aload_0
    //   96: monitorexit
    //   97: aload_1
    //   98: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	99	0	this	l
    //   0	99	1	paramad	ad
    //   37	43	2	localObject	Object
    //   14	36	3	j	int
    //   11	8	4	k	int
    // Exception table:
    //   from	to	target	type
    //   2	13	94	finally
    //   21	38	94	finally
    //   53	91	94	finally
  }
  
  final j b()
  {
    int m = this.b.size();
    if (m == 0) {
      return null;
    }
    int j = 0;
    if (this.c >= m) {
      this.c = 0;
    }
    m localm = (m)this.b.get(this.c);
    this.c += 1;
    if ((localm.e > 0) && (a(localm)))
    {
      localm.e -= this.f;
      if ((localm.c == null) || (!localm.c.hasNext())) {
        localm.c = localm.b.iterator();
      }
      if (localm.c.hasNext()) {
        return (j)localm.c.next();
      }
      localm.e = -1;
    }
    int k = j + 1;
    j = k;
    if (k >= m)
    {
      k = 0;
      j = 0;
      label164:
      if (k < m)
      {
        localm = (m)this.b.get(k);
        if (localm.d <= 0) {
          break label229;
        }
        localm.e = (localm.d * 10);
        if (!a(localm)) {
          break label229;
        }
        j = 1;
      }
    }
    label229:
    for (;;)
    {
      k += 1;
      break label164;
      if (j == 0) {
        return null;
      }
      j = 0;
      break;
    }
  }
  
  final ai b(bn parambn)
  {
    localai = new ai("temp", "temp");
    if (parambn.b) {
      return localai;
    }
    try
    {
      parambn = new ArrayList(this.b);
      parambn = parambn.iterator();
      while (parambn.hasNext()) {
        localai.a(((m)parambn.next()).a.t.a());
      }
      return localai;
    }
    finally {}
  }
  
  /* Error */
  public final void b(ad paramad)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 29	com/sleepycat/b/d/l:b	Ljava/util/List;
    //   6: invokeinterface 85 1 0
    //   11: istore_3
    //   12: iconst_0
    //   13: istore_2
    //   14: iload_2
    //   15: iload_3
    //   16: if_icmpge +39 -> 55
    //   19: aload_0
    //   20: getfield 29	com/sleepycat/b/d/l:b	Ljava/util/List;
    //   23: iload_2
    //   24: invokeinterface 89 2 0
    //   29: checkcast 56	com/sleepycat/b/d/m
    //   32: getfield 59	com/sleepycat/b/d/m:a	Lcom/sleepycat/b/c/ad;
    //   35: aload_1
    //   36: if_acmpne +22 -> 58
    //   39: aload_0
    //   40: getfield 29	com/sleepycat/b/d/l:b	Ljava/util/List;
    //   43: iload_2
    //   44: invokeinterface 184 2 0
    //   49: pop
    //   50: aload_0
    //   51: iconst_1
    //   52: putfield 36	com/sleepycat/b/d/l:e	Z
    //   55: aload_0
    //   56: monitorexit
    //   57: return
    //   58: iload_2
    //   59: iconst_1
    //   60: iadd
    //   61: istore_2
    //   62: goto -48 -> 14
    //   65: astore_1
    //   66: aload_0
    //   67: monitorexit
    //   68: aload_1
    //   69: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	70	0	this	l
    //   0	70	1	paramad	ad
    //   13	49	2	j	int
    //   11	6	3	k	int
    // Exception table:
    //   from	to	target	type
    //   2	12	65	finally
    //   19	55	65	finally
  }
  
  /* Error */
  public final boolean c(ad paramad)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 29	com/sleepycat/b/d/l:b	Ljava/util/List;
    //   6: invokeinterface 85 1 0
    //   11: istore 4
    //   13: iconst_0
    //   14: istore_3
    //   15: iload_3
    //   16: iload 4
    //   18: if_icmpge +40 -> 58
    //   21: aload_0
    //   22: getfield 29	com/sleepycat/b/d/l:b	Ljava/util/List;
    //   25: iload_3
    //   26: invokeinterface 89 2 0
    //   31: checkcast 56	com/sleepycat/b/d/m
    //   34: getfield 59	com/sleepycat/b/d/m:a	Lcom/sleepycat/b/c/ad;
    //   37: astore_2
    //   38: aload_1
    //   39: aload_2
    //   40: if_acmpne +11 -> 51
    //   43: iconst_1
    //   44: istore 5
    //   46: aload_0
    //   47: monitorexit
    //   48: iload 5
    //   50: ireturn
    //   51: iload_3
    //   52: iconst_1
    //   53: iadd
    //   54: istore_3
    //   55: goto -40 -> 15
    //   58: iconst_0
    //   59: istore 5
    //   61: goto -15 -> 46
    //   64: astore_1
    //   65: aload_0
    //   66: monitorexit
    //   67: aload_1
    //   68: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	69	0	this	l
    //   0	69	1	paramad	ad
    //   37	3	2	localad	ad
    //   14	41	3	j	int
    //   11	8	4	k	int
    //   44	16	5	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	13	64	finally
    //   21	38	64	finally
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\d\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */