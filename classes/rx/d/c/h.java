package rx.d.c;

import rx.a;
import rx.b;

public final class h<T>
  extends a<T>
{
  public final T b;
  
  private h(T paramT)
  {
    super(new b() {});
    this.b = paramT;
  }
  
  public static final <T> h<T> a(T paramT)
  {
    return new h(paramT);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\c\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */