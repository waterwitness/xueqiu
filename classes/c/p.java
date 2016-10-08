package c;

final class p
{
  final byte[] a;
  int b;
  int c;
  boolean d;
  boolean e;
  p f;
  p g;
  
  p()
  {
    this.a = new byte['ࠀ'];
    this.e = true;
    this.d = false;
  }
  
  p(p paramp)
  {
    this(paramp.a, paramp.b, paramp.c);
    paramp.d = true;
  }
  
  private p(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.a = paramArrayOfByte;
    this.b = paramInt1;
    this.c = paramInt2;
    this.e = false;
    this.d = true;
  }
  
  public final p a()
  {
    if (this.f != this) {}
    for (p localp = this.f;; localp = null)
    {
      this.g.f = this.f;
      this.f.g = this.g;
      this.f = null;
      this.g = null;
      return localp;
    }
  }
  
  public final p a(p paramp)
  {
    paramp.g = this;
    paramp.f = this.f;
    this.f.g = paramp;
    this.f = paramp;
    return paramp;
  }
  
  public final void a(p paramp, int paramInt)
  {
    if (!paramp.e) {
      throw new IllegalArgumentException();
    }
    if (paramp.c + paramInt > 2048)
    {
      if (paramp.d) {
        throw new IllegalArgumentException();
      }
      if (paramp.c + paramInt - paramp.b > 2048) {
        throw new IllegalArgumentException();
      }
      System.arraycopy(paramp.a, paramp.b, paramp.a, 0, paramp.c - paramp.b);
      paramp.c -= paramp.b;
      paramp.b = 0;
    }
    System.arraycopy(this.a, this.b, paramp.a, paramp.c, paramInt);
    paramp.c += paramInt;
    this.b += paramInt;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\c\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */