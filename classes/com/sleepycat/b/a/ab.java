package com.sleepycat.b.a;

final class ab
{
  final int a;
  final int b;
  final int c;
  final int d;
  
  ab(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.a = paramInt1;
    this.b = paramInt2;
    this.c = paramInt3;
    this.d = paramInt4;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof ab)) {}
    do
    {
      return false;
      paramObject = (ab)paramObject;
    } while ((this.a != ((ab)paramObject).a) || (this.b != ((ab)paramObject).b) || (this.c != ((ab)paramObject).c) || (this.d != ((ab)paramObject).d));
    return true;
  }
  
  public final int hashCode()
  {
    return this.a + this.b + this.c + this.d;
  }
  
  public final String toString()
  {
    return "size=" + this.a + " count=" + this.b + " estSize=" + this.c + " estCount=" + this.d;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\a\ab.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */