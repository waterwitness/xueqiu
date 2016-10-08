package com.sleepycat.b.i.b;

import com.sleepycat.b.i.c.av;
import com.sleepycat.b.i.c.ay;

public class ad
  extends ay
{
  protected final s c;
  
  ad(x paramx, s params)
  {
    super(paramx);
    this.c = params;
  }
  
  public av a()
  {
    return this.d.a;
  }
  
  public String b()
  {
    return e() + "|" + this.c.a();
  }
  
  final s d()
  {
    return this.c;
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
        if (!(paramObject instanceof ad)) {
          return false;
        }
        paramObject = (ad)paramObject;
        if (this.c != null) {
          break;
        }
      } while (((ad)paramObject).c == null);
      return false;
    } while (this.c.equals(((ad)paramObject).c));
    return false;
  }
  
  public int hashCode()
  {
    int j = super.hashCode();
    if (this.c == null) {}
    for (int i = 0;; i = this.c.hashCode()) {
      return i + j * 31;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\b\ad.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */