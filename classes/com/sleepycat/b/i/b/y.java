package com.sleepycat.b.i.b;

import com.sleepycat.b.i.c.av;

public class y
  extends ad
{
  final ai a;
  
  y(x paramx, s params, ai paramai)
  {
    super(paramx, params);
    this.a = paramai;
  }
  
  public av a()
  {
    return this.b.b;
  }
  
  public final String b()
  {
    return super.b() + "|" + this.a.b();
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (!super.equals(paramObject)) {
          return false;
        }
        if (!(paramObject instanceof y)) {
          return false;
        }
        paramObject = (y)paramObject;
        if (this.a != null) {
          break;
        }
      } while (((y)paramObject).a == null);
      return false;
    } while (this.a.equals(((y)paramObject).a));
    return false;
  }
  
  public int hashCode()
  {
    int j = super.hashCode();
    if (this.a == null) {}
    for (int i = 0;; i = this.a.hashCode()) {
      return i + j * 31;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\b\y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */