package com.sleepycat.b.i.b;

import com.sleepycat.b.i.c.b.x;

public final class l
  extends ah
{
  private static final aj e = new aj() {};
  public final String a;
  public final int b;
  public final x c;
  
  public l(String paramString, int paramInt, x paramx)
  {
    super(paramString + "$$$" + paramInt + "$$$" + paramx.a + "$$$" + paramx.b);
    this.a = paramString;
    this.b = paramInt;
    this.c = paramx;
  }
  
  public static aj a()
  {
    return e;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!super.equals(paramObject)) {
        return false;
      }
      if (!(paramObject instanceof l)) {
        return false;
      }
      paramObject = (l)paramObject;
      if (this.a == null)
      {
        if (((l)paramObject).a != null) {
          return false;
        }
      }
      else if (!this.a.equals(((l)paramObject).a)) {
        return false;
      }
      if (!this.c.equals(((l)paramObject).c)) {
        return false;
      }
    } while (this.b == ((l)paramObject).b);
    return false;
  }
  
  public final int hashCode()
  {
    int j = super.hashCode();
    if (this.a == null) {}
    for (int i = 0;; i = this.a.hashCode()) {
      return ((i + j * 31) * 31 + this.c.hashCode()) * 31 + this.b;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\b\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */