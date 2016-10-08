package rx.i;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import rx.b.f;

public final class a<T>
  extends l<T, T>
{
  final m<T> b;
  volatile Object c;
  private final rx.d.a.a<T> d = rx.d.a.a.a();
  
  private a(rx.b<T> paramb, m<T> paramm)
  {
    super(paramb);
    this.b = paramm;
  }
  
  public static <T> a<T> k()
  {
    m localm = new m();
    localm.h = new rx.c.b() {};
    return new a(localm, localm);
  }
  
  public final void a()
  {
    if (this.b.e)
    {
      Object localObject2 = this.c;
      Object localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = rx.d.a.a.b();
      }
      localObject2 = this.b.b(localObject1);
      int j = localObject2.length;
      int i = 0;
      if (i < j)
      {
        Object localObject3 = localObject2[i];
        if (localObject1 == rx.d.a.a.b()) {
          ((o)localObject3).a();
        }
        for (;;)
        {
          i += 1;
          break;
          ((o)localObject3).a(rx.d.a.a.d(localObject1));
          ((o)localObject3).a();
        }
      }
    }
  }
  
  public final void a(T paramT)
  {
    this.c = rx.d.a.a.a(paramT);
  }
  
  public final void a(Throwable paramThrowable)
  {
    Object localObject1;
    if (this.b.e)
    {
      Object localObject2 = rx.d.a.a.a(paramThrowable);
      localObject1 = null;
      o[] arrayOfo = this.b.b(localObject2);
      int j = arrayOfo.length;
      int i = 0;
      for (;;)
      {
        if (i < j)
        {
          localObject2 = arrayOfo[i];
          try
          {
            ((o)localObject2).a(paramThrowable);
            i += 1;
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
              localObject1 = localObject2;
            }
          }
        }
      }
      if (localObject1 != null)
      {
        if (((List)localObject1).size() != 1) {
          break label121;
        }
        f.a((Throwable)((List)localObject1).get(0));
      }
    }
    return;
    label121:
    throw new rx.b.a((Collection)localObject1);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\i\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */