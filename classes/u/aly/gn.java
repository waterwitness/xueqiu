package u.aly;

public final class gn
  extends go
{
  byte[] a;
  int b;
  int c;
  
  public final int a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int j = c();
    int i = paramInt2;
    if (paramInt2 > j) {
      i = j;
    }
    if (i > 0)
    {
      System.arraycopy(this.a, this.b, paramArrayOfByte, paramInt1, i);
      a(i);
    }
    return i;
  }
  
  public final void a(int paramInt)
  {
    this.b += paramInt;
  }
  
  public final byte[] a()
  {
    return this.a;
  }
  
  public final int b()
  {
    return this.b;
  }
  
  public final void b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    throw new UnsupportedOperationException("No writing allowed!");
  }
  
  public final int c()
  {
    return this.c - this.b;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\gn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */