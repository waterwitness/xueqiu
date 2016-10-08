package android.support.v7.widget;

final class c
{
  int a;
  int b;
  int c;
  
  c(int paramInt1, int paramInt2, int paramInt3)
  {
    this.a = paramInt1;
    this.b = paramInt2;
    this.c = paramInt3;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if ((paramObject == null) || (getClass() != paramObject.getClass())) {
          return false;
        }
        paramObject = (c)paramObject;
        if (this.a != ((c)paramObject).a) {
          return false;
        }
      } while ((this.a == 3) && (Math.abs(this.c - this.b) == 1) && (this.c == ((c)paramObject).b) && (this.b == ((c)paramObject).c));
      if (this.c != ((c)paramObject).c) {
        return false;
      }
    } while (this.b == ((c)paramObject).b);
    return false;
  }
  
  public final int hashCode()
  {
    return (this.a * 31 + this.b) * 31 + this.c;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("[");
    String str;
    switch (this.a)
    {
    default: 
      str = "??";
    }
    for (;;)
    {
      return str + ",s:" + this.b + "c:" + this.c + "]";
      str = "add";
      continue;
      str = "rm";
      continue;
      str = "up";
      continue;
      str = "mv";
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\widget\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */