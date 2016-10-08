package rx.i;

final class k
  implements g
{
  final int a;
  
  public k(int paramInt)
  {
    this.a = paramInt;
  }
  
  public final void a(h<Object> paramh)
  {
    while (paramh.c > this.a)
    {
      if (paramh.a.b == null) {
        throw new IllegalStateException("Empty!");
      }
      i locali = paramh.a.b;
      paramh.a.b = locali.b;
      if (paramh.a.b == null) {
        paramh.b = paramh.a;
      }
      paramh.c -= 1;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\i\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */