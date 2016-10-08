package rx.d.c;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import rx.b.a;

public final class j
  implements rx.j
{
  private List<rx.j> a;
  private boolean b = false;
  
  /* Error */
  public final void a(rx.j paramj)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 17	rx/d/c/j:b	Z
    //   6: ifeq +16 -> 22
    //   9: aload_0
    //   10: monitorexit
    //   11: aload_1
    //   12: ifnull +9 -> 21
    //   15: aload_1
    //   16: invokeinterface 21 1 0
    //   21: return
    //   22: aload_0
    //   23: getfield 23	rx/d/c/j:a	Ljava/util/List;
    //   26: ifnonnull +14 -> 40
    //   29: aload_0
    //   30: new 25	java/util/LinkedList
    //   33: dup
    //   34: invokespecial 26	java/util/LinkedList:<init>	()V
    //   37: putfield 23	rx/d/c/j:a	Ljava/util/List;
    //   40: aload_0
    //   41: getfield 23	rx/d/c/j:a	Ljava/util/List;
    //   44: aload_1
    //   45: invokeinterface 32 2 0
    //   50: pop
    //   51: aconst_null
    //   52: astore_1
    //   53: goto -44 -> 9
    //   56: astore_1
    //   57: aload_0
    //   58: monitorexit
    //   59: aload_1
    //   60: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	61	0	this	j
    //   0	61	1	paramj	rx.j
    // Exception table:
    //   from	to	target	type
    //   2	9	56	finally
    //   9	11	56	finally
    //   22	40	56	finally
    //   40	51	56	finally
    //   57	59	56	finally
  }
  
  public final void b()
  {
    label149:
    label155:
    for (;;)
    {
      Object localObject2;
      try
      {
        if (this.b) {
          return;
        }
        this.b = true;
        Object localObject1 = this.a;
        if (localObject1 == null) {
          break label149;
        }
        localObject2 = ((Collection)localObject1).iterator();
        localObject1 = null;
        if (((Iterator)localObject2).hasNext())
        {
          rx.j localj = (rx.j)((Iterator)localObject2).next();
          try
          {
            localj.b();
          }
          catch (Throwable localThrowable)
          {
            if (localObject1 != null) {
              break label155;
            }
          }
          localObject1 = new ArrayList();
          ((List)localObject1).add(localThrowable);
          continue;
        }
        if (localCollection == null) {
          break label149;
        }
      }
      finally {}
      if (localCollection.size() == 1)
      {
        localObject2 = (Throwable)localCollection.get(0);
        if ((localObject2 instanceof RuntimeException)) {
          throw ((RuntimeException)localObject2);
        }
        throw new a(localCollection);
      }
      throw new a(localCollection);
      this.a = null;
      return;
    }
  }
  
  public final boolean c()
  {
    try
    {
      boolean bool = this.b;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\c\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */