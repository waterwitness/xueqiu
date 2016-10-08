package rx.d.c;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;

public final class k<T>
  implements Queue<T>
{
  private final LinkedList<T> a = new LinkedList();
  private final int b;
  
  public k()
  {
    this.b = -1;
  }
  
  public k(int paramInt)
  {
    this.b = paramInt;
  }
  
  public final boolean add(T paramT)
  {
    try
    {
      boolean bool = this.a.add(paramT);
      return bool;
    }
    finally
    {
      paramT = finally;
      throw paramT;
    }
  }
  
  public final boolean addAll(Collection<? extends T> paramCollection)
  {
    try
    {
      boolean bool = this.a.addAll(paramCollection);
      return bool;
    }
    finally
    {
      paramCollection = finally;
      throw paramCollection;
    }
  }
  
  public final void clear()
  {
    try
    {
      this.a.clear();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final Object clone()
  {
    try
    {
      Object localObject1 = this.a.clone();
      return localObject1;
    }
    finally
    {
      localObject2 = finally;
      throw ((Throwable)localObject2);
    }
  }
  
  public final boolean contains(Object paramObject)
  {
    try
    {
      boolean bool = this.a.contains(paramObject);
      return bool;
    }
    finally
    {
      paramObject = finally;
      throw ((Throwable)paramObject);
    }
  }
  
  public final boolean containsAll(Collection<?> paramCollection)
  {
    try
    {
      boolean bool = this.a.containsAll(paramCollection);
      return bool;
    }
    finally
    {
      paramCollection = finally;
      throw paramCollection;
    }
  }
  
  public final T element()
  {
    try
    {
      Object localObject1 = this.a.element();
      return (T)localObject1;
    }
    finally
    {
      localObject2 = finally;
      throw ((Throwable)localObject2);
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    try
    {
      boolean bool = this.a.equals(paramObject);
      return bool;
    }
    finally
    {
      paramObject = finally;
      throw ((Throwable)paramObject);
    }
  }
  
  public final int hashCode()
  {
    try
    {
      int i = this.a.hashCode();
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final boolean isEmpty()
  {
    try
    {
      boolean bool = this.a.isEmpty();
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final Iterator<T> iterator()
  {
    try
    {
      Iterator localIterator = this.a.iterator();
      return localIterator;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public final boolean offer(T paramT)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 23	rx/d/c/k:b	I
    //   6: iflt +31 -> 37
    //   9: aload_0
    //   10: getfield 21	rx/d/c/k:a	Ljava/util/LinkedList;
    //   13: invokevirtual 74	java/util/LinkedList:size	()I
    //   16: istore_2
    //   17: aload_0
    //   18: getfield 23	rx/d/c/k:b	I
    //   21: istore_3
    //   22: iload_2
    //   23: iconst_1
    //   24: iadd
    //   25: iload_3
    //   26: if_icmple +11 -> 37
    //   29: iconst_0
    //   30: istore 4
    //   32: aload_0
    //   33: monitorexit
    //   34: iload 4
    //   36: ireturn
    //   37: aload_0
    //   38: getfield 21	rx/d/c/k:a	Ljava/util/LinkedList;
    //   41: aload_1
    //   42: invokevirtual 76	java/util/LinkedList:offer	(Ljava/lang/Object;)Z
    //   45: istore 4
    //   47: goto -15 -> 32
    //   50: astore_1
    //   51: aload_0
    //   52: monitorexit
    //   53: aload_1
    //   54: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	55	0	this	k
    //   0	55	1	paramT	T
    //   16	9	2	i	int
    //   21	6	3	j	int
    //   30	16	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	22	50	finally
    //   37	47	50	finally
  }
  
  public final T peek()
  {
    try
    {
      Object localObject1 = this.a.peek();
      return (T)localObject1;
    }
    finally
    {
      localObject2 = finally;
      throw ((Throwable)localObject2);
    }
  }
  
  public final T poll()
  {
    try
    {
      Object localObject1 = this.a.poll();
      return (T)localObject1;
    }
    finally
    {
      localObject2 = finally;
      throw ((Throwable)localObject2);
    }
  }
  
  public final T remove()
  {
    try
    {
      Object localObject1 = this.a.remove();
      return (T)localObject1;
    }
    finally
    {
      localObject2 = finally;
      throw ((Throwable)localObject2);
    }
  }
  
  public final boolean remove(Object paramObject)
  {
    try
    {
      boolean bool = this.a.remove(paramObject);
      return bool;
    }
    finally
    {
      paramObject = finally;
      throw ((Throwable)paramObject);
    }
  }
  
  public final boolean removeAll(Collection<?> paramCollection)
  {
    try
    {
      boolean bool = this.a.removeAll(paramCollection);
      return bool;
    }
    finally
    {
      paramCollection = finally;
      throw paramCollection;
    }
  }
  
  public final boolean retainAll(Collection<?> paramCollection)
  {
    try
    {
      boolean bool = this.a.retainAll(paramCollection);
      return bool;
    }
    finally
    {
      paramCollection = finally;
      throw paramCollection;
    }
  }
  
  public final int size()
  {
    try
    {
      int i = this.a.size();
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final Object[] toArray()
  {
    try
    {
      Object[] arrayOfObject = this.a.toArray();
      return arrayOfObject;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final <R> R[] toArray(R[] paramArrayOfR)
  {
    try
    {
      paramArrayOfR = this.a.toArray(paramArrayOfR);
      return paramArrayOfR;
    }
    finally
    {
      paramArrayOfR = finally;
      throw paramArrayOfR;
    }
  }
  
  public final String toString()
  {
    try
    {
      String str = this.a.toString();
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\c\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */