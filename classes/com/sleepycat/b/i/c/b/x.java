package com.sleepycat.b.i.c.b;

import com.sleepycat.a.a.l;
import com.sleepycat.b.aa;

public class x
{
  public static final x c = new y("NullNode", -1);
  public static final x d = new y("NoCheckNode", Integer.MIN_VALUE);
  public final String a;
  public int b;
  
  public x(String paramString)
  {
    this(paramString, c.b);
  }
  
  public x(String paramString, int paramInt)
  {
    if (paramString == null) {
      throw aa.c("name argument was null");
    }
    this.a = paramString;
    this.b = paramInt;
  }
  
  public static x a(l paraml)
  {
    return new x(paraml.a(), paraml.d());
  }
  
  public void a(int paramInt)
  {
    if ((paramInt != this.b) && (!a())) {
      throw aa.c("Id was already not null: " + this.b);
    }
    this.b = paramInt;
  }
  
  public final void a(x paramx)
  {
    if (!this.a.equals(paramx.a)) {
      throw aa.c("Pair name mismatch: " + this.a + " <> " + paramx.a);
    }
    a(paramx.b);
  }
  
  public final boolean a()
  {
    return this.b == -1;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (getClass() != paramObject.getClass()) {
        return false;
      }
      paramObject = (x)paramObject;
      if (this.b != ((x)paramObject).b) {
        return false;
      }
    } while (this.a.equals(((x)paramObject).a));
    throw aa.c("Ids: " + this.b + " were equal. But names: " + this.a + ", " + ((x)paramObject).a + " weren't!");
  }
  
  public int hashCode()
  {
    int j = this.b;
    if (this.a == null) {}
    for (int i = 0;; i = this.a.hashCode()) {
      return i + (j + 31) * 31;
    }
  }
  
  public String toString()
  {
    return this.a + "(" + this.b + ")";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\b\x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */