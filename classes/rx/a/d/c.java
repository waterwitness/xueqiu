package rx.a.d;

import android.os.Handler;
import java.util.concurrent.TimeUnit;
import rx.c.a;
import rx.h;
import rx.j;
import rx.j.g;

final class c
  extends h
{
  final Handler a;
  private final rx.j.b b = new rx.j.b();
  
  public c(Handler paramHandler)
  {
    this.a = paramHandler;
  }
  
  public final j a(a parama)
  {
    return a(parama, 0L, TimeUnit.MILLISECONDS);
  }
  
  public final j a(final a parama, long paramLong, TimeUnit paramTimeUnit)
  {
    parama = new rx.d.b.b(parama);
    j localj = g.a(new a()
    {
      public final void a()
      {
        c.this.a.removeCallbacks(parama);
      }
    });
    parama.a.a(localj);
    parama.a(this.b);
    this.b.a(parama);
    this.a.postDelayed(parama, paramTimeUnit.toMillis(paramLong));
    return parama;
  }
  
  public final void b()
  {
    this.b.b();
  }
  
  public final boolean c()
  {
    return this.b.c();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\a\d\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */