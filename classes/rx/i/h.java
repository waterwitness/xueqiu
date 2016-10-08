package rx.i;

final class h<T>
{
  final i<T> a = new i(null);
  i<T> b = this.a;
  int c;
  
  public final void a(T paramT)
  {
    i locali = this.b;
    paramT = new i(paramT);
    locali.b = paramT;
    this.b = paramT;
    this.c += 1;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\i\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */