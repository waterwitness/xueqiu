package com.sleepycat.b.i.c.b;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.i.h.t;
import java.util.SortedMap;
import java.util.TreeMap;

public abstract class ak
{
  final ad b;
  final SortedMap<Long, t> c = new TreeMap();
  
  ak(ag paramag, ad paramad)
  {
    this.b = paramad;
  }
  
  public final t a(Long paramLong)
  {
    try
    {
      t localt2 = (t)this.c.get(paramLong);
      t localt1 = localt2;
      if (localt2 == null)
      {
        localt1 = new t(this.b);
        this.c.put(paramLong, localt1);
      }
      return localt1;
    }
    finally {}
  }
  
  /* Error */
  final void a(long paramLong, com.sleepycat.b.n paramn)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 23	com/sleepycat/b/i/c/b/ak:c	Ljava/util/SortedMap;
    //   6: invokeinterface 48 1 0
    //   11: ifle +34 -> 45
    //   14: aload_0
    //   15: getfield 23	com/sleepycat/b/i/c/b/ak:c	Ljava/util/SortedMap;
    //   18: invokeinterface 52 1 0
    //   23: checkcast 54	java/lang/Long
    //   26: astore 4
    //   28: aload_0
    //   29: aload 4
    //   31: invokevirtual 58	java/lang/Long:longValue	()J
    //   34: lload_1
    //   35: invokevirtual 61	com/sleepycat/b/i/c/b/ak:a	(JJ)Z
    //   38: istore 5
    //   40: iload 5
    //   42: ifne +6 -> 48
    //   45: aload_0
    //   46: monitorexit
    //   47: return
    //   48: aload_0
    //   49: getfield 23	com/sleepycat/b/i/c/b/ak:c	Ljava/util/SortedMap;
    //   52: aload 4
    //   54: invokeinterface 64 2 0
    //   59: checkcast 36	com/sleepycat/b/i/h/t
    //   62: aload_3
    //   63: invokevirtual 67	com/sleepycat/b/i/h/t:a	(Ljava/lang/Exception;)V
    //   66: goto -64 -> 2
    //   69: astore_3
    //   70: aload_0
    //   71: monitorexit
    //   72: aload_3
    //   73: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	74	0	this	ak
    //   0	74	1	paramLong	long
    //   0	74	3	paramn	com.sleepycat.b.n
    //   26	27	4	localLong	Long
    //   38	3	5	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	40	69	finally
    //   48	66	69	finally
  }
  
  abstract boolean a(long paramLong1, long paramLong2);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\b\ak.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */