package com.android.volley;

public final class r<T>
{
  public final T a;
  public final c b;
  public final y c;
  public boolean d = false;
  
  private r(y paramy)
  {
    this.a = null;
    this.b = null;
    this.c = paramy;
  }
  
  private r(T paramT, c paramc)
  {
    this.a = paramT;
    this.b = paramc;
    this.c = null;
  }
  
  public static <T> r<T> a(y paramy)
  {
    return new r(paramy);
  }
  
  public static <T> r<T> a(T paramT, c paramc)
  {
    return new r(paramT, paramc);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\android\volley\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */