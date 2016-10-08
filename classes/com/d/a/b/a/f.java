package com.d.a.b.a;

public final class f
{
  public final int a;
  public final int b;
  
  public f(int paramInt1, int paramInt2)
  {
    this.a = paramInt1;
    this.b = paramInt2;
  }
  
  public f(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt3 % 180 == 0)
    {
      this.a = paramInt1;
      this.b = paramInt2;
      return;
    }
    this.a = paramInt2;
    this.b = paramInt1;
  }
  
  public final String toString()
  {
    return 9 + this.a + "x" + this.b;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\d\a\b\a\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */