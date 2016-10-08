package com.sleepycat.b.n;

import com.sleepycat.b.c.i;

public final class ab
{
  i a;
  boolean b;
  
  ab(i parami, boolean paramBoolean)
  {
    this.a = parami;
    this.b = paramBoolean;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof ab)) {}
    do
    {
      return false;
      paramObject = (ab)paramObject;
    } while ((!this.a.equals(((ab)paramObject).a)) || (this.b != ((ab)paramObject).b));
    return true;
  }
  
  public final int hashCode()
  {
    return this.a.hashCode();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\n\ab.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */