package rx.j;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import rx.b.a;
import rx.j;

public final class b
  implements j
{
  private Set<j> a;
  private boolean b = false;
  
  /* Error */
  public final void a(j paramj)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 17	rx/j/b:b	Z
    //   6: ifeq +16 -> 22
    //   9: aload_0
    //   10: monitorexit
    //   11: aload_1
    //   12: ifnull +9 -> 21
    //   15: aload_1
    //   16: invokeinterface 21 1 0
    //   21: return
    //   22: aload_0
    //   23: getfield 23	rx/j/b:a	Ljava/util/Set;
    //   26: ifnonnull +15 -> 41
    //   29: aload_0
    //   30: new 25	java/util/HashSet
    //   33: dup
    //   34: iconst_4
    //   35: invokespecial 28	java/util/HashSet:<init>	(I)V
    //   38: putfield 23	rx/j/b:a	Ljava/util/Set;
    //   41: aload_0
    //   42: getfield 23	rx/j/b:a	Ljava/util/Set;
    //   45: aload_1
    //   46: invokeinterface 34 2 0
    //   51: pop
    //   52: aconst_null
    //   53: astore_1
    //   54: goto -45 -> 9
    //   57: astore_1
    //   58: aload_0
    //   59: monitorexit
    //   60: aload_1
    //   61: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	62	0	this	b
    //   0	62	1	paramj	j
    // Exception table:
    //   from	to	target	type
    //   2	9	57	finally
    //   9	11	57	finally
    //   22	41	57	finally
    //   41	52	57	finally
    //   58	60	57	finally
  }
  
  public final void b()
  {
    label149:
    for (;;)
    {
      Object localObject;
      try
      {
        if (this.b) {
          return;
        }
        this.b = true;
        localObject = this.a;
        if (localObject == null) {
          break;
        }
        ArrayList localArrayList = null;
        localObject = ((Collection)localObject).iterator();
        if (((Iterator)localObject).hasNext())
        {
          j localj = (j)((Iterator)localObject).next();
          try
          {
            localj.b();
          }
          catch (Throwable localThrowable)
          {
            if (localArrayList != null) {
              break label149;
            }
          }
          localArrayList = new ArrayList();
          localArrayList.add(localThrowable);
          continue;
        }
        if (localCollection == null) {
          break;
        }
      }
      finally {}
      if (localCollection.size() == 1)
      {
        localObject = (Throwable)localCollection.get(0);
        if ((localObject instanceof RuntimeException)) {
          throw ((RuntimeException)localObject);
        }
        throw new a(localCollection);
      }
      throw new a(localCollection);
    }
  }
  
  public final void b(j paramj)
  {
    try
    {
      if ((this.b) || (this.a == null)) {
        return;
      }
      boolean bool = this.a.remove(paramj);
      if (bool)
      {
        paramj.b();
        return;
      }
    }
    finally {}
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


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\j\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */