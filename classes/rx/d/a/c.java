package rx.d.a;

import rx.b;

public final class c<T>
  implements b<T>
{
  final Iterable<? extends T> a;
  
  public c(Iterable<? extends T> paramIterable)
  {
    if (paramIterable == null) {
      throw new NullPointerException("iterable must not be null");
    }
    this.a = paramIterable;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\a\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */