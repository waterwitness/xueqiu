package rx.d.a;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import rx.c.a;
import rx.d.c.f;
import rx.h;
import rx.j;

final class v
  implements j
{
  static final AtomicIntegerFieldUpdater<v> c = AtomicIntegerFieldUpdater.newUpdater(v.class, "b");
  final h a;
  volatile int b;
  final f d;
  volatile boolean e = false;
  
  public v(h paramh, f paramf)
  {
    this.a = paramh;
    this.d = paramf;
  }
  
  public final void b()
  {
    if (c.getAndSet(this, 1) == 0) {
      this.a.a(new a()
      {
        public final void a()
        {
          v.this.a.b();
          v.this.e = true;
        }
      });
    }
  }
  
  public final boolean c()
  {
    return this.e;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\a\v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */