package rx.d.a;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import rx.c.e;
import rx.i;
import rx.i.l;
import rx.j;
import rx.j.g;

public final class s<T, R>
  extends rx.e.a<R>
{
  final rx.a<? extends T> b;
  final Object c;
  final e<? extends l<? super T, ? extends R>> d;
  i<T> e;
  private final AtomicReference<l<? super T, ? extends R>> f;
  private final List<i<? super R>> g;
  
  private s(Object paramObject, final AtomicReference<l<? super T, ? extends R>> paramAtomicReference, final List<i<? super R>> paramList, rx.a<? extends T> parama, e<? extends l<? super T, ? extends R>> parame)
  {
    super(new rx.b() {});
    this.c = paramObject;
    this.f = paramAtomicReference;
    this.g = paramList;
    this.b = parama;
    this.d = parame;
  }
  
  public s(rx.a<? extends T> parama, e<? extends l<? super T, ? extends R>> parame)
  {
    this(new Object(), new AtomicReference(), new ArrayList(), parama, parame);
  }
  
  public final void d(rx.c.b<? super j> arg1)
  {
    final l locall;
    synchronized (this.c)
    {
      if (this.e != null) {
        return;
      }
      locall = (l)this.d.call();
      this.e = new i()
      {
        public final void a()
        {
          locall.a();
        }
        
        public final void a(T paramAnonymousT)
        {
          locall.a(paramAnonymousT);
        }
        
        public final void a(Throwable paramAnonymousThrowable)
        {
          locall.a(paramAnonymousThrowable);
        }
      };
      Iterator localIterator = this.g.iterator();
      if (localIterator.hasNext()) {
        locall.a((i)localIterator.next());
      }
    }
    this.g.clear();
    this.f.set(locall);
    ???.a(g.a(new rx.c.a()
    {
      public final void a()
      {
        synchronized (s.this.c)
        {
          i locali = s.this.e;
          s.this.e = null;
          s.a(s.this).set(null);
          if (locali != null) {
            locali.b();
          }
          return;
        }
      }
    }));
    synchronized (this.c)
    {
      int i;
      if (this.e == null)
      {
        i = 1;
        if (i == 0) {
          this.b.a(this.e);
        }
      }
      else
      {
        i = 0;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\a\s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */