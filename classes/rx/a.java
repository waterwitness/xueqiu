package rx;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import rx.d.a.ab;
import rx.d.a.ac;
import rx.d.a.ad;
import rx.d.a.ae;
import rx.d.a.aj;
import rx.d.a.ak;
import rx.d.a.am;
import rx.d.a.m;
import rx.d.a.n;
import rx.d.a.o;
import rx.d.a.t;
import rx.d.a.w;
import rx.d.a.x;
import rx.d.a.y;
import rx.d.a.z;
import rx.d.c.h;
import rx.h.p;

public class a<T>
{
  private static final rx.g.b b;
  final b<T> a;
  
  static
  {
    rx.g.d locald = rx.g.d.a();
    Object localObject;
    if (locald.a.get() == null)
    {
      localObject = rx.g.d.a(rx.g.b.class);
      if (localObject != null) {
        break label50;
      }
      locald.a.compareAndSet(null, rx.g.c.a());
    }
    for (;;)
    {
      b = (rx.g.b)locald.a.get();
      return;
      label50:
      locald.a.compareAndSet(null, (rx.g.b)localObject);
    }
  }
  
  public a(b<T> paramb)
  {
    this.a = paramb;
  }
  
  public static final <T> a<T> a(Iterable<? extends T> paramIterable)
  {
    return a(new rx.d.a.c(paramIterable));
  }
  
  public static final <T> a<T> a(a<? extends T> parama1, a<? extends T> parama2)
  {
    return b(a(Arrays.asList(new a[] { parama1, parama2 })));
  }
  
  public static final <T> a<T> a(a<? extends T> parama1, a<? extends T> parama2, a<? extends T> parama3)
  {
    return b(a(Arrays.asList(new a[] { parama1, parama2, parama3 })));
  }
  
  public static final <T1, T2, T3, T4, T5, T6, R> a<R> a(a<? extends T1> parama, a<? extends T2> parama1, a<? extends T3> parama2, a<? extends T4> parama3, a<? extends T5> parama4, a<? extends T6> parama5, rx.c.k<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> paramk)
  {
    return h.a(new a[] { parama, parama1, parama2, parama3, parama4, parama5 }).a(new am(paramk));
  }
  
  public static final <T1, T2, T3, T4, T5, R> a<R> a(a<? extends T1> parama, a<? extends T2> parama1, a<? extends T3> parama2, a<? extends T4> parama3, a<? extends T5> parama4, rx.c.j<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> paramj)
  {
    return h.a(new a[] { parama, parama1, parama2, parama3, parama4 }).a(new am(paramj));
  }
  
  public static final <T1, T2, R> a<R> a(a<? extends T1> parama, a<? extends T2> parama1, rx.c.g<? super T1, ? super T2, ? extends R> paramg)
  {
    return h.a(new a[] { parama, parama1 }).a(new am(paramg));
  }
  
  public static final <T> a<T> a(b<T> paramb)
  {
    return new a(rx.g.b.a(paramb));
  }
  
  public static final <T> a<T> b()
  {
    return a(Collections.emptyList());
  }
  
  public static final <T> a<T> b(T paramT)
  {
    return h.a(paramT);
  }
  
  public static final <T> a<T> b(Throwable paramThrowable)
  {
    return new d(paramThrowable);
  }
  
  private static <T> a<T> b(a<? extends a<? extends T>> parama)
  {
    return parama.a(new o());
  }
  
  public final a<List<T>> a(int paramInt)
  {
    return a(new rx.d.a.f(paramInt, paramInt));
  }
  
  public final a<T> a(long paramLong, TimeUnit paramTimeUnit)
  {
    return a(new ae(paramLong, paramTimeUnit, p.b()));
  }
  
  public final a<T> a(a<? extends T> parama)
  {
    return a(Arrays.asList(new Object[] { this, parama })).a(new rx.d.a.g());
  }
  
  public final a<T> a(final rx.c.b<Throwable> paramb)
  {
    a(new rx.d.a.l(new e()
    {
      public final void a() {}
      
      public final void a(T paramAnonymousT) {}
      
      public final void a(Throwable paramAnonymousThrowable)
      {
        paramb.a(paramAnonymousThrowable);
      }
    }));
  }
  
  public final a<T> a(rx.c.f<? super T, Boolean> paramf)
  {
    return a(new m(paramf));
  }
  
  public final a<T> a(rx.c.g<T, T, T> paramg)
  {
    return a(new y(paramg)).e();
  }
  
  public final <R> a<R> a(final c<? extends R, ? super T> paramc)
  {
    new a(new b() {});
  }
  
  public final a<T> a(g paramg)
  {
    return a(new t(paramg));
  }
  
  public final j a(final rx.c.b<? super T> paramb, final rx.c.b<Throwable> paramb1)
  {
    if (paramb == null) {
      throw new IllegalArgumentException("onNext can not be null");
    }
    b(new i()
    {
      public final void a() {}
      
      public final void a(T paramAnonymousT)
      {
        paramb.a(paramAnonymousT);
      }
      
      public final void a(Throwable paramAnonymousThrowable)
      {
        paramb1.a(paramAnonymousThrowable);
      }
    });
  }
  
  public final j a(final rx.c.b<? super T> paramb, final rx.c.b<Throwable> paramb1, final rx.c.a parama)
  {
    b(new i()
    {
      public final void a()
      {
        parama.a();
      }
      
      public final void a(T paramAnonymousT)
      {
        paramb.a(paramAnonymousT);
      }
      
      public final void a(Throwable paramAnonymousThrowable)
      {
        paramb1.a(paramAnonymousThrowable);
      }
    });
  }
  
  public final j a(i<? super T> parami)
  {
    try
    {
      parami.d();
      rx.g.b.b(this.a).a(parami);
      j localj = rx.g.b.a(parami);
      return localj;
    }
    catch (Throwable localThrowable)
    {
      rx.b.f.b(localThrowable);
      try
      {
        parami.a(rx.g.b.a(localThrowable));
        return rx.j.g.b();
      }
      catch (rx.b.i parami)
      {
        throw parami;
      }
      catch (Throwable parami)
      {
        throw new RuntimeException("Error occurred attempting to subscribe [" + localThrowable.getMessage() + "] and then again while trying to pass to onError.", parami);
      }
    }
  }
  
  public final a<T> b(int paramInt)
  {
    return a(new ac(paramInt));
  }
  
  public final a<T> b(final rx.c.b<? super T> paramb)
  {
    a(new rx.d.a.l(new e()
    {
      public final void a() {}
      
      public final void a(T paramAnonymousT)
      {
        paramb.a(paramAnonymousT);
      }
      
      public final void a(Throwable paramAnonymousThrowable) {}
    }));
  }
  
  public final <R> a<R> b(rx.c.f<? super T, ? extends a<? extends R>> paramf)
  {
    return b(c(paramf));
  }
  
  public final a<List<T>> b(rx.c.g<? super T, ? super T, Integer> paramg)
  {
    return a(new ak(paramg));
  }
  
  public final a<T> b(g paramg)
  {
    return h.a(this).a(new ab(paramg));
  }
  
  public final j b(i<? super T> parami)
  {
    if (this.a == null) {
      throw new IllegalStateException("onSubscribe function can not be null.");
    }
    parami.d();
    Object localObject = parami;
    if (!(parami instanceof rx.f.a)) {
      localObject = new rx.f.a(parami);
    }
    try
    {
      rx.g.b.b(this.a).a(localObject);
      parami = rx.g.b.a((j)localObject);
      return parami;
    }
    catch (Throwable parami)
    {
      rx.b.f.b(parami);
      try
      {
        ((i)localObject).a(rx.g.b.a(parami));
        return rx.j.g.b();
      }
      catch (rx.b.i parami)
      {
        throw parami;
      }
      catch (Throwable localThrowable)
      {
        throw new RuntimeException("Error occurred attempting to subscribe [" + parami.getMessage() + "] and then again while trying to pass to onError.", localThrowable);
      }
    }
  }
  
  public final a<T> c()
  {
    return a(new rx.d.a.e());
  }
  
  public final <R> a<R> c(rx.c.f<? super T, ? extends R> paramf)
  {
    return a(new n(paramf));
  }
  
  public final j c(final rx.c.b<? super T> paramb)
  {
    b(new i()
    {
      public final void a() {}
      
      public final void a(T paramAnonymousT)
      {
        paramb.a(paramAnonymousT);
      }
      
      public final void a(Throwable paramAnonymousThrowable)
      {
        throw new rx.b.i(paramAnonymousThrowable);
      }
    });
  }
  
  public final a<T> d()
  {
    return a(new rx.d.a.k(rx.d.c.l.a()));
  }
  
  public final a<T> d(rx.c.f<Throwable, ? extends a<? extends T>> paramf)
  {
    return a(new x(paramf));
  }
  
  public final a<T> e()
  {
    return h().a(new z());
  }
  
  public final a<T> f()
  {
    return a(new w());
  }
  
  public final j g()
  {
    b(new i()
    {
      public final void a() {}
      
      public final void a(T paramAnonymousT) {}
      
      public final void a(Throwable paramAnonymousThrowable)
      {
        throw new rx.b.i(paramAnonymousThrowable);
      }
    });
  }
  
  public final a<T> h()
  {
    return a(new ad());
  }
  
  public final a<List<T>> i()
  {
    return a(new aj());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */