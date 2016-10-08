package org.apache.http.protocol;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import org.apache.http.annotation.NotThreadSafe;

@NotThreadSafe
final class ChainBuilder<E>
{
  private final LinkedList<E> list = new LinkedList();
  private final Map<Class<?>, E> uniqueClasses = new HashMap();
  
  private void ensureUnique(E paramE)
  {
    Object localObject = this.uniqueClasses.remove(paramE.getClass());
    if (localObject != null) {
      this.list.remove(localObject);
    }
    this.uniqueClasses.put(paramE.getClass(), paramE);
  }
  
  public final ChainBuilder<E> addAllFirst(Collection<E> paramCollection)
  {
    if (paramCollection == null) {}
    for (;;)
    {
      return this;
      paramCollection = paramCollection.iterator();
      while (paramCollection.hasNext()) {
        addFirst(paramCollection.next());
      }
    }
  }
  
  public final ChainBuilder<E> addAllFirst(E... paramVarArgs)
  {
    if (paramVarArgs == null) {}
    for (;;)
    {
      return this;
      int j = paramVarArgs.length;
      int i = 0;
      while (i < j)
      {
        addFirst(paramVarArgs[i]);
        i += 1;
      }
    }
  }
  
  public final ChainBuilder<E> addAllLast(Collection<E> paramCollection)
  {
    if (paramCollection == null) {}
    for (;;)
    {
      return this;
      paramCollection = paramCollection.iterator();
      while (paramCollection.hasNext()) {
        addLast(paramCollection.next());
      }
    }
  }
  
  public final ChainBuilder<E> addAllLast(E... paramVarArgs)
  {
    if (paramVarArgs == null) {}
    for (;;)
    {
      return this;
      int j = paramVarArgs.length;
      int i = 0;
      while (i < j)
      {
        addLast(paramVarArgs[i]);
        i += 1;
      }
    }
  }
  
  public final ChainBuilder<E> addFirst(E paramE)
  {
    if (paramE == null) {
      return this;
    }
    ensureUnique(paramE);
    this.list.addFirst(paramE);
    return this;
  }
  
  public final ChainBuilder<E> addLast(E paramE)
  {
    if (paramE == null) {
      return this;
    }
    ensureUnique(paramE);
    this.list.addLast(paramE);
    return this;
  }
  
  public final LinkedList<E> build()
  {
    return new LinkedList(this.list);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\protocol\ChainBuilder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */