package rx.i;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public final class d<T>
  extends l<T, T>
{
  final j<T, ?> b;
  final m<T> c;
  
  private d(rx.b<T> paramb, m<T> paramm, j<T, ?> paramj)
  {
    super(paramb);
    this.c = paramm;
    this.b = paramj;
  }
  
  private boolean a(o<? super T> paramo)
  {
    boolean bool = true;
    if (!paramo.f)
    {
      if (this.b.a(paramo))
      {
        paramo.f = true;
        paramo.g = null;
      }
      bool = false;
    }
    return bool;
  }
  
  public static <T> d<T> c(int paramInt)
  {
    e locale = new e(new k(paramInt), rx.d.c.l.a(), rx.d.c.l.a());
    f localf = new f(locale);
    m localm = new m();
    localm.f = localf;
    localm.g = new rx.c.b() {};
    localm.h = new rx.c.b() {};
    return new d(localm, localm, locale);
  }
  
  public final void a()
  {
    if (this.c.e)
    {
      this.b.a();
      Object localObject = this.c;
      rx.d.a.a.a();
      localObject = ((m)localObject).b(rx.d.a.a.b());
      int j = localObject.length;
      int i = 0;
      while (i < j)
      {
        o localo = localObject[i];
        if (a(localo)) {
          localo.a();
        }
        i += 1;
      }
    }
  }
  
  public final void a(T paramT)
  {
    if (this.c.e)
    {
      this.b.a(paramT);
      o[] arrayOfo = this.c.a.b;
      int j = arrayOfo.length;
      int i = 0;
      while (i < j)
      {
        o localo = arrayOfo[i];
        if (a(localo)) {
          localo.a(paramT);
        }
        i += 1;
      }
    }
  }
  
  public final void a(Throwable paramThrowable)
  {
    Object localObject1;
    if (this.c.e)
    {
      this.b.a(paramThrowable);
      localObject1 = null;
      Object localObject2 = this.c;
      rx.d.a.a.a();
      o[] arrayOfo = ((m)localObject2).b(rx.d.a.a.a(paramThrowable));
      int j = arrayOfo.length;
      int i = 0;
      for (;;)
      {
        if (i >= j) {
          break label121;
        }
        o localo = arrayOfo[i];
        localObject2 = localObject1;
        try
        {
          if (a(localo))
          {
            localo.a(paramThrowable);
            localObject2 = localObject1;
          }
        }
        catch (Throwable localThrowable)
        {
          for (;;)
          {
            localObject2 = localObject1;
            if (localObject1 == null) {
              localObject2 = new ArrayList();
            }
            ((List)localObject2).add(localThrowable);
          }
        }
        i += 1;
        localObject1 = localObject2;
      }
      label121:
      if (localObject1 != null)
      {
        if (((List)localObject1).size() != 1) {
          break label150;
        }
        rx.b.f.a((Throwable)((List)localObject1).get(0));
      }
    }
    return;
    label150:
    throw new rx.b.a((Collection)localObject1);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\i\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */