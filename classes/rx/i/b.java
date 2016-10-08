package rx.i;

import java.util.ArrayList;
import java.util.List;
import rx.b.f;

public final class b<T>
  extends l<T, T>
{
  private final m<T> b;
  private final rx.d.a.a<T> c = rx.d.a.a.a();
  
  private b(rx.b<T> paramb, m<T> paramm)
  {
    super(paramb);
    this.b = paramm;
  }
  
  public static <T> b<T> c(T paramT)
  {
    m localm = new m();
    rx.d.a.a.a();
    localm.c = rx.d.a.a.a(paramT);
    localm.g = new rx.c.b() {};
    localm.h = localm.g;
    return new b(localm, localm);
  }
  
  public final void a()
  {
    if ((this.b.c == null) || (this.b.e))
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
    if ((this.b.c == null) || (this.b.e))
    {
      paramT = rx.d.a.a.a(paramT);
      Object localObject1 = this.b;
      ((m)localObject1).c = paramT;
      localObject1 = ((m)localObject1).a.b;
      int j = localObject1.length;
      int i = 0;
      while (i < j)
      {
        Object localObject2 = localObject1[i];
        rx.d.a.a locala = this.b.i;
        ((o)localObject2).b(paramT);
        i += 1;
      }
    }
  }
  
  public final void a(Throwable paramThrowable)
  {
    if ((this.b.c == null) || (this.b.e))
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
          break label140;
        }
        f.a((Throwable)paramThrowable.get(0));
      }
    }
    return;
    label140:
    throw new rx.b.a(paramThrowable);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\i\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */