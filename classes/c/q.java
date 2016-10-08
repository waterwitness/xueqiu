package c;

final class q
{
  static p a;
  static long b;
  
  static p a()
  {
    try
    {
      if (a != null)
      {
        p localp = a;
        a = localp.f;
        localp.f = null;
        b -= 2048L;
        return localp;
      }
      return new p();
    }
    finally {}
  }
  
  static void a(p paramp)
  {
    if ((paramp.f != null) || (paramp.g != null)) {
      throw new IllegalArgumentException();
    }
    if (paramp.d) {
      return;
    }
    try
    {
      if (b + 2048L > 65536L) {
        return;
      }
    }
    finally {}
    b += 2048L;
    paramp.f = a;
    paramp.c = 0;
    paramp.b = 0;
    a = paramp;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\c\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */