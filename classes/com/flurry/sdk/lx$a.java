package com.flurry.sdk;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

public class lx$a
{
  private final Object a;
  private final String b;
  private Class<?> c;
  private List<Class<?>> d;
  private List<Object> e;
  private boolean f;
  private boolean g;
  
  public lx$a(Object paramObject, String paramString)
  {
    this.a = paramObject;
    this.b = paramString;
    this.d = new ArrayList();
    this.e = new ArrayList();
    if (paramObject != null) {}
    for (paramObject = paramObject.getClass();; paramObject = null)
    {
      this.c = ((Class)paramObject);
      return;
    }
  }
  
  public a a(Class<?> paramClass)
  {
    this.g = true;
    this.c = paramClass;
    return this;
  }
  
  public <T> a a(Class<T> paramClass, T paramT)
  {
    this.d.add(paramClass);
    this.e.add(paramT);
    return this;
  }
  
  public Object a()
  {
    Object localObject = new Class[this.d.size()];
    localObject = (Class[])this.d.toArray((Object[])localObject);
    localObject = lx.a(this.c, this.b, (Class[])localObject);
    if (this.f) {
      ((Method)localObject).setAccessible(true);
    }
    Object[] arrayOfObject = this.e.toArray();
    if (this.g) {
      return ((Method)localObject).invoke(null, arrayOfObject);
    }
    return ((Method)localObject).invoke(this.a, arrayOfObject);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\lx$a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */