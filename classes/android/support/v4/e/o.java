package android.support.v4.e;

public final class o<E>
  implements Cloneable
{
  public static final Object a = new Object();
  public boolean b = false;
  public int[] c;
  public Object[] d;
  public int e;
  
  public o()
  {
    this((byte)0);
  }
  
  private o(byte paramByte)
  {
    paramByte = b.a(10);
    this.c = new int[paramByte];
    this.d = new Object[paramByte];
    this.e = 0;
  }
  
  private o<E> c()
  {
    try
    {
      o localo = (o)super.clone();
      return localCloneNotSupportedException1;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException1)
    {
      try
      {
        localo.c = ((int[])this.c.clone());
        localo.d = ((Object[])this.d.clone());
        return localo;
      }
      catch (CloneNotSupportedException localCloneNotSupportedException2) {}
      localCloneNotSupportedException1 = localCloneNotSupportedException1;
      return null;
    }
  }
  
  private void d()
  {
    int m = this.e;
    int[] arrayOfInt = this.c;
    Object[] arrayOfObject = this.d;
    int i = 0;
    int k;
    for (int j = 0; i < m; j = k)
    {
      Object localObject = arrayOfObject[i];
      k = j;
      if (localObject != a)
      {
        if (i != j)
        {
          arrayOfInt[j] = arrayOfInt[i];
          arrayOfObject[j] = localObject;
          arrayOfObject[i] = null;
        }
        k = j + 1;
      }
      i += 1;
    }
    this.b = false;
    this.e = j;
  }
  
  public final int a()
  {
    if (this.b) {
      d();
    }
    return this.e;
  }
  
  public final E a(int paramInt)
  {
    paramInt = b.a(this.c, this.e, paramInt);
    if ((paramInt < 0) || (this.d[paramInt] == a)) {
      return null;
    }
    return (E)this.d[paramInt];
  }
  
  public final void a(int paramInt, E paramE)
  {
    int i = b.a(this.c, this.e, paramInt);
    if (i >= 0)
    {
      this.d[i] = paramE;
      return;
    }
    int j = i ^ 0xFFFFFFFF;
    if ((j < this.e) && (this.d[j] == a))
    {
      this.c[j] = paramInt;
      this.d[j] = paramE;
      return;
    }
    i = j;
    if (this.b)
    {
      i = j;
      if (this.e >= this.c.length)
      {
        d();
        i = b.a(this.c, this.e, paramInt) ^ 0xFFFFFFFF;
      }
    }
    if (this.e >= this.c.length)
    {
      j = b.a(this.e + 1);
      int[] arrayOfInt = new int[j];
      Object[] arrayOfObject = new Object[j];
      System.arraycopy(this.c, 0, arrayOfInt, 0, this.c.length);
      System.arraycopy(this.d, 0, arrayOfObject, 0, this.d.length);
      this.c = arrayOfInt;
      this.d = arrayOfObject;
    }
    if (this.e - i != 0)
    {
      System.arraycopy(this.c, i, this.c, i + 1, this.e - i);
      System.arraycopy(this.d, i, this.d, i + 1, this.e - i);
    }
    this.c[i] = paramInt;
    this.d[i] = paramE;
    this.e += 1;
  }
  
  public final int b(int paramInt)
  {
    if (this.b) {
      d();
    }
    return this.c[paramInt];
  }
  
  public final void b()
  {
    int j = this.e;
    Object[] arrayOfObject = this.d;
    int i = 0;
    while (i < j)
    {
      arrayOfObject[i] = null;
      i += 1;
    }
    this.e = 0;
    this.b = false;
  }
  
  public final E c(int paramInt)
  {
    if (this.b) {
      d();
    }
    return (E)this.d[paramInt];
  }
  
  public final String toString()
  {
    if (a() <= 0) {
      return "{}";
    }
    StringBuilder localStringBuilder = new StringBuilder(this.e * 28);
    localStringBuilder.append('{');
    int i = 0;
    if (i < this.e)
    {
      if (i > 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append(b(i));
      localStringBuilder.append('=');
      Object localObject = c(i);
      if (localObject != this) {
        localStringBuilder.append(localObject);
      }
      for (;;)
      {
        i += 1;
        break;
        localStringBuilder.append("(this Map)");
      }
    }
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\e\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */