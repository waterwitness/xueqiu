package rx.f;

import java.io.PrintStream;
import java.util.Arrays;
import rx.b.f;
import rx.b.h;
import rx.d.c.j;
import rx.g.d;

public final class a<T>
  extends rx.i<T>
{
  boolean a = false;
  private final rx.i<? super T> b;
  
  public a(rx.i<? super T> parami)
  {
    super(parami);
    this.b = parami;
  }
  
  private void b(Throwable paramThrowable)
  {
    try
    {
      d.a().b();
    }
    catch (Throwable localThrowable6)
    {
      for (;;)
      {
        try
        {
          this.b.a(paramThrowable);
        }
        catch (Throwable localThrowable2)
        {
          if ((localThrowable2 instanceof rx.b.i))
          {
            try
            {
              this.e.b();
              throw ((rx.b.i)localThrowable2);
            }
            catch (Throwable localThrowable3) {}
            try
            {
              d.a().b();
              throw new RuntimeException("Observer.onError not implemented and error while unsubscribing.", new rx.b.a(Arrays.asList(new Throwable[] { paramThrowable, localThrowable3 }), (byte)0));
            }
            catch (Throwable localThrowable5)
            {
              c(localThrowable5);
              continue;
            }
          }
          try
          {
            d.a().b();
          }
          catch (Throwable localThrowable6)
          {
            try
            {
              b();
              throw new h("Error occurred when trying to propagate error to Observer.onError", new rx.b.a(Arrays.asList(new Throwable[] { paramThrowable, localThrowable3 }), (byte)0));
            }
            catch (Throwable localThrowable7)
            {
              try
              {
                d.a().b();
                throw new h("Error occurred when trying to propagate error to Observer.onError and during unsubscription.", new rx.b.a(Arrays.asList(new Throwable[] { paramThrowable, localThrowable3, localThrowable7 }), (byte)0));
              }
              catch (Throwable localThrowable8)
              {
                for (;;)
                {
                  c(localThrowable8);
                }
              }
            }
            localThrowable6 = localThrowable6;
            c(localThrowable6);
            continue;
          }
        }
        try
        {
          b();
          return;
        }
        catch (RuntimeException paramThrowable) {}
        localThrowable1 = localThrowable1;
        c(localThrowable1);
      }
    }
    try
    {
      d.a().b();
      throw new h(paramThrowable);
    }
    catch (Throwable localThrowable4)
    {
      for (;;)
      {
        c(localThrowable4);
      }
    }
  }
  
  private static void c(Throwable paramThrowable)
  {
    System.err.println("RxJavaErrorHandler threw an Exception. It shouldn't. => " + paramThrowable.getMessage());
    paramThrowable.printStackTrace();
  }
  
  public final void a()
  {
    if (!this.a) {
      this.a = true;
    }
    try
    {
      this.b.a();
      return;
    }
    catch (Throwable localThrowable)
    {
      f.b(localThrowable);
      b(localThrowable);
      return;
    }
    finally
    {
      this.e.b();
    }
  }
  
  public final void a(T paramT)
  {
    try
    {
      if (!this.a) {
        this.b.a(paramT);
      }
      return;
    }
    catch (Throwable paramT)
    {
      f.b(paramT);
      a(paramT);
    }
  }
  
  public final void a(Throwable paramThrowable)
  {
    f.b(paramThrowable);
    if (!this.a)
    {
      this.a = true;
      b(paramThrowable);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\f\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */