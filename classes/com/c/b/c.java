package com.c.b;

public abstract class c<T, V>
{
  public final String a;
  private final Class<V> b;
  
  public c(Class<V> paramClass, String paramString)
  {
    this.a = paramString;
    this.b = paramClass;
  }
  
  public abstract V a(T paramT);
  
  public void a(T paramT, V paramV)
  {
    throw new UnsupportedOperationException("Property " + this.a + " is read-only");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\c\b\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */