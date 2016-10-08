package rx.g;

import java.util.concurrent.atomic.AtomicReference;

public final class d
{
  static final a b = new a() {};
  private static final d c = new d();
  public final AtomicReference<b> a = new AtomicReference();
  private final AtomicReference<a> d = new AtomicReference();
  private final AtomicReference<e> e = new AtomicReference();
  
  public static Object a(Class<?> paramClass)
  {
    String str1 = paramClass.getSimpleName();
    String str2 = System.getProperty("rxjava.plugin." + str1 + ".implementation");
    if (str2 != null) {
      try
      {
        paramClass = Class.forName(str2).asSubclass(paramClass).newInstance();
        return paramClass;
      }
      catch (ClassCastException paramClass)
      {
        throw new RuntimeException(str1 + " implementation is not an instance of " + str1 + ": " + str2);
      }
      catch (ClassNotFoundException paramClass)
      {
        throw new RuntimeException(str1 + " implementation class not found: " + str2, paramClass);
      }
      catch (InstantiationException paramClass)
      {
        throw new RuntimeException(str1 + " implementation not able to be instantiated: " + str2, paramClass);
      }
      catch (IllegalAccessException paramClass)
      {
        throw new RuntimeException(str1 + " implementation not able to be accessed: " + str2, paramClass);
      }
    }
    return null;
  }
  
  public static d a()
  {
    return c;
  }
  
  public final a b()
  {
    Object localObject;
    if (this.d.get() == null)
    {
      localObject = a(a.class);
      if (localObject != null) {
        break label43;
      }
      this.d.compareAndSet(null, b);
    }
    for (;;)
    {
      return (a)this.d.get();
      label43:
      this.d.compareAndSet(null, (a)localObject);
    }
  }
  
  public final e c()
  {
    Object localObject;
    if (this.e.get() == null)
    {
      localObject = a(e.class);
      if (localObject != null) {
        break label43;
      }
      this.e.compareAndSet(null, e.d());
    }
    for (;;)
    {
      return (e)this.e.get();
      label43:
      this.e.compareAndSet(null, (e)localObject);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\g\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */