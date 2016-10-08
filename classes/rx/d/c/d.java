package rx.d.c;

import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;
import rx.c.a;
import rx.d.c.a.x;
import rx.g;
import rx.h;
import rx.h.p;

public abstract class d<T>
{
  Queue<T> a;
  private final int b = 0;
  private h c;
  
  public d()
  {
    this((byte)0);
  }
  
  private d(byte paramByte)
  {
    if (x.a()) {}
    for (this.a = new rx.d.c.a.d(Math.max(this.b, 1024));; this.a = new ConcurrentLinkedQueue())
    {
      this.c = p.b().a();
      this.c.a(new a()
      {
        public final void a()
        {
          int j = 0;
          int i = 0;
          int k = d.this.a.size();
          if (k < this.a)
          {
            j = this.b;
            while (i < j - k)
            {
              d.this.a.add(d.this.a());
              i += 1;
            }
          }
          if (k > this.b)
          {
            int m = this.b;
            i = j;
            while (i < k - m)
            {
              d.this.a.poll();
              i += 1;
            }
          }
        }
      }, 67L, 67L, TimeUnit.SECONDS);
      return;
    }
  }
  
  protected abstract T a();
  
  public final void a(T paramT)
  {
    if (paramT == null) {
      return;
    }
    this.a.offer(paramT);
  }
  
  public final T b()
  {
    Object localObject2 = this.a.poll();
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = a();
    }
    return (T)localObject1;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\c\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */