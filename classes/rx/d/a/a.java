package rx.d.a;

import java.io.Serializable;
import rx.e;

public final class a<T>
{
  private static final a a = new a();
  private static final Object b = new Serializable()
  {
    public final String toString()
    {
      return "Notification=>Completed";
    }
  };
  private static final Object c = new Serializable()
  {
    public final String toString()
    {
      return "Notification=>NULL";
    }
  };
  
  public static Object a(T paramT)
  {
    Object localObject = paramT;
    if (paramT == null) {
      localObject = c;
    }
    return localObject;
  }
  
  public static Object a(Throwable paramThrowable)
  {
    return new b(paramThrowable);
  }
  
  public static <T> a<T> a()
  {
    return a;
  }
  
  public static boolean a(e<? super T> parame, Object paramObject)
  {
    if (paramObject == b)
    {
      parame.a();
      return true;
    }
    if (paramObject == c)
    {
      parame.a(null);
      return false;
    }
    if (paramObject != null)
    {
      if (paramObject.getClass() == b.class)
      {
        parame.a(b.a((b)paramObject));
        return true;
      }
      parame.a(paramObject);
      return false;
    }
    throw new IllegalArgumentException("The lite notification can not be null");
  }
  
  public static Object b()
  {
    return b;
  }
  
  public static boolean b(Object paramObject)
  {
    return paramObject == b;
  }
  
  public static boolean c(Object paramObject)
  {
    return paramObject instanceof b;
  }
  
  public static T d(Object paramObject)
  {
    Object localObject = paramObject;
    if (paramObject == c) {
      localObject = null;
    }
    return (T)localObject;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */