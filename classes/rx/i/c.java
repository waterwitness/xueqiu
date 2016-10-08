package rx.i;

import java.util.ArrayList;
import java.util.List;
import rx.b.f;

public final class c<T>
  extends l<T, T>
{
  final m<T> b;
  private final rx.d.a.a<T> c = rx.d.a.a.a();
  
  private c(rx.b<T> paramb, m<T> paramm)
  {
    super(paramb);
    this.b = paramm;
  }
  
  public static <T> c<T> k()
  {
    m localm = new m();
    localm.h = new rx.c.b() {};
    return new c(localm, localm);
  }
  
  public final void a()
  {
    if (this.b.e)
    {
      Object localObject = rx.d.a.a.b();
      o[] arrayOfo = this.b.b(localObject);
      int j = arrayOfo.length;
      int i = 0;
      while (i < j)
      {
        o localo = arrayOfo[i];
        rx.d.a.a locala = this.b.i;
        localo.b(localObject);
        i += 1;
      }
    }
  }
  
  public final void a(T paramT)
  {
    o[] arrayOfo = this.b.a.b;
    int j = arrayOfo.length;
    int i = 0;
    while (i < j)
    {
      arrayOfo[i].a(paramT);
      i += 1;
    }
  }
  
  public final void a(Throwable paramThrowable)
  {
    if (this.b.e)
    {
      Object localObject2 = rx.d.a.a.a(paramThrowable);
      paramThrowable = null;
      o[] arrayOfo = this.b.b(localObject2);
      int j = arrayOfo.length;
      int i = 0;
      for (;;)
      {
        if (i < j)
        {
          Object localObject1 = arrayOfo[i];
          try
          {
            rx.d.a.a locala = this.b.i;
            ((o)localObject1).b(localObject2);
            i += 1;
          }
          catch (Throwable localThrowable)
          {
            for (;;)
            {
              localObject1 = paramThrowable;
              if (paramThrowable == null) {
                localObject1 = new ArrayList();
              }
              ((List)localObject1).add(localThrowable);
              paramThrowable = (Throwable)localObject1;
            }
          }
        }
      }
      if (paramThrowable != null)
      {
        if (paramThrowable.size() != 1) {
          break label130;
        }
        f.a((Throwable)paramThrowable.get(0));
      }
    }
    return;
    label130:
    throw new rx.b.a(paramThrowable);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\i\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */