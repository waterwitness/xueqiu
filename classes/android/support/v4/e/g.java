package android.support.v4.e;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

final class g
  implements Set<Map.Entry<K, V>>
{
  g(e parame) {}
  
  public final boolean addAll(Collection<? extends Map.Entry<K, V>> paramCollection)
  {
    int i = this.a.a();
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramCollection.next();
      this.a.a(localEntry.getKey(), localEntry.getValue());
    }
    return i != this.a.a();
  }
  
  public final void clear()
  {
    this.a.c();
  }
  
  public final boolean contains(Object paramObject)
  {
    if (!(paramObject instanceof Map.Entry)) {}
    int i;
    do
    {
      return false;
      paramObject = (Map.Entry)paramObject;
      i = this.a.a(((Map.Entry)paramObject).getKey());
    } while (i < 0);
    return b.a(this.a.a(i, 1), ((Map.Entry)paramObject).getValue());
  }
  
  public final boolean containsAll(Collection<?> paramCollection)
  {
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      if (!contains(paramCollection.next())) {
        return false;
      }
    }
    return true;
  }
  
  public final boolean equals(Object paramObject)
  {
    return e.a(this, paramObject);
  }
  
  public final int hashCode()
  {
    int j = this.a.a() - 1;
    int i = 0;
    if (j >= 0)
    {
      Object localObject1 = this.a.a(j, 0);
      Object localObject2 = this.a.a(j, 1);
      int k;
      if (localObject1 == null)
      {
        k = 0;
        label47:
        if (localObject2 != null) {
          break label80;
        }
      }
      label80:
      for (int m = 0;; m = localObject2.hashCode())
      {
        j -= 1;
        i += (m ^ k);
        break;
        k = localObject1.hashCode();
        break label47;
      }
    }
    return i;
  }
  
  public final boolean isEmpty()
  {
    return this.a.a() == 0;
  }
  
  public final Iterator<Map.Entry<K, V>> iterator()
  {
    return new i(this.a);
  }
  
  public final boolean remove(Object paramObject)
  {
    throw new UnsupportedOperationException();
  }
  
  public final boolean removeAll(Collection<?> paramCollection)
  {
    throw new UnsupportedOperationException();
  }
  
  public final boolean retainAll(Collection<?> paramCollection)
  {
    throw new UnsupportedOperationException();
  }
  
  public final int size()
  {
    return this.a.a();
  }
  
  public final Object[] toArray()
  {
    throw new UnsupportedOperationException();
  }
  
  public final <T> T[] toArray(T[] paramArrayOfT)
  {
    throw new UnsupportedOperationException();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\e\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */