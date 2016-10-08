package rx.d.c;

import java.util.concurrent.atomic.AtomicIntegerArray;
import java.util.concurrent.atomic.AtomicReference;

final class c
{
  final AtomicReference<c> a = new AtomicReference();
  private final AtomicIntegerArray b = new AtomicIntegerArray(a.e);
  
  public final int a(int paramInt)
  {
    return this.b.getAndSet(paramInt, -1);
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    this.b.set(paramInt1, paramInt2);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\c\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */