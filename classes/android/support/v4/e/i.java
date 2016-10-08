package android.support.v4.e;

import java.util.Iterator;
import java.util.Map.Entry;

final class i
  implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V>
{
  int a;
  int b;
  boolean c = false;
  
  i(e parame)
  {
    this.a = (parame.a() - 1);
    this.b = -1;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!this.c) {
      throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }
    if (!(paramObject instanceof Map.Entry)) {}
    do
    {
      return false;
      paramObject = (Map.Entry)paramObject;
    } while ((!b.a(((Map.Entry)paramObject).getKey(), this.d.a(this.b, 0))) || (!b.a(((Map.Entry)paramObject).getValue(), this.d.a(this.b, 1))));
    return true;
  }
  
  public final K getKey()
  {
    if (!this.c) {
      throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }
    return (K)this.d.a(this.b, 0);
  }
  
  public final V getValue()
  {
    if (!this.c) {
      throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }
    return (V)this.d.a(this.b, 1);
  }
  
  public final boolean hasNext()
  {
    return this.b < this.a;
  }
  
  public final int hashCode()
  {
    int j = 0;
    if (!this.c) {
      throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }
    Object localObject1 = this.d.a(this.b, 0);
    Object localObject2 = this.d.a(this.b, 1);
    int i;
    if (localObject1 == null)
    {
      i = 0;
      if (localObject2 != null) {
        break label69;
      }
    }
    for (;;)
    {
      return j ^ i;
      i = localObject1.hashCode();
      break;
      label69:
      j = localObject2.hashCode();
    }
  }
  
  public final void remove()
  {
    if (!this.c) {
      throw new IllegalStateException();
    }
    this.d.a(this.b);
    this.b -= 1;
    this.a -= 1;
    this.c = false;
  }
  
  public final V setValue(V paramV)
  {
    if (!this.c) {
      throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }
    return (V)this.d.a(this.b, paramV);
  }
  
  public final String toString()
  {
    return getKey() + "=" + getValue();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\e\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */