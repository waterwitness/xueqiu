package rx.i;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import rx.c.c;

final class m<T>
  implements rx.b<T>
{
  static final AtomicReferenceFieldUpdater<m, n> b = AtomicReferenceFieldUpdater.newUpdater(m.class, n.class, "a");
  static final AtomicReferenceFieldUpdater<m, Object> d = AtomicReferenceFieldUpdater.newUpdater(m.class, Object.class, "c");
  volatile n<T> a = n.e;
  volatile Object c;
  boolean e = true;
  rx.c.b<o<T>> f = c.a();
  rx.c.b<o<T>> g = c.a();
  rx.c.b<o<T>> h = c.a();
  public final rx.d.a.a<T> i = rx.d.a.a.a();
  
  final void a(o<T> paramo)
  {
    n localn = this.a;
    if (localn.a) {
      return;
    }
    o[] arrayOfo = localn.b;
    int n = arrayOfo.length;
    Object localObject;
    if ((n == 1) && (arrayOfo[0] == paramo)) {
      localObject = n.e;
    }
    label42:
    int k;
    int j;
    for (;;)
    {
      if (localObject != localn)
      {
        if (!b.compareAndSet(this, localn, localObject)) {
          break;
        }
        return;
        if (n == 0)
        {
          localObject = localn;
        }
        else
        {
          localObject = new o[n - 1];
          k = 0;
          j = 0;
          label84:
          if (k < n)
          {
            o localo = arrayOfo[k];
            if (localo == paramo) {
              break label203;
            }
            if (j == n - 1)
            {
              localObject = localn;
              continue;
            }
            int m = j + 1;
            localObject[j] = localo;
            j = m;
          }
        }
      }
    }
    label203:
    for (;;)
    {
      k += 1;
      break label84;
      if (j == 0)
      {
        localObject = n.e;
        break label42;
      }
      if (j < n - 1)
      {
        arrayOfo = new o[j];
        System.arraycopy(localObject, 0, arrayOfo, 0, j);
        localObject = arrayOfo;
      }
      for (;;)
      {
        localObject = new n(localn.a, (o[])localObject);
        break label42;
        break;
      }
    }
  }
  
  final o<T>[] b(Object paramObject)
  {
    this.c = paramObject;
    this.e = false;
    if (this.a.a) {
      return n.c;
    }
    return ((n)b.getAndSet(this, n.d)).b;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\i\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */