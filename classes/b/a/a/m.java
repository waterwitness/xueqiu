package b.a.a;

final class m
{
  final Object a;
  final k b;
  final int c;
  volatile boolean d;
  
  m(Object paramObject, k paramk)
  {
    this.a = paramObject;
    this.b = paramk;
    this.c = 0;
    this.d = true;
  }
  
  public final boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof m))
    {
      paramObject = (m)paramObject;
      bool1 = bool2;
      if (this.a == ((m)paramObject).a)
      {
        bool1 = bool2;
        if (this.b.equals(((m)paramObject).b)) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public final int hashCode()
  {
    return this.a.hashCode() + this.b.d.hashCode();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\b\a\a\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */