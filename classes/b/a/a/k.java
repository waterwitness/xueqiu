package b.a.a;

import java.lang.reflect.Method;

final class k
{
  final Method a;
  final n b;
  final Class<?> c;
  String d;
  
  k(Method paramMethod, n paramn, Class<?> paramClass)
  {
    this.a = paramMethod;
    this.b = paramn;
    this.c = paramClass;
  }
  
  private void a()
  {
    try
    {
      if (this.d == null)
      {
        StringBuilder localStringBuilder = new StringBuilder(64);
        localStringBuilder.append(this.a.getDeclaringClass().getName());
        localStringBuilder.append('#').append(this.a.getName());
        localStringBuilder.append('(').append(this.c.getName());
        this.d = localStringBuilder.toString();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    if ((paramObject instanceof k))
    {
      a();
      paramObject = (k)paramObject;
      ((k)paramObject).a();
      return this.d.equals(((k)paramObject).d);
    }
    return false;
  }
  
  public final int hashCode()
  {
    return this.a.hashCode();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\b\a\a\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */