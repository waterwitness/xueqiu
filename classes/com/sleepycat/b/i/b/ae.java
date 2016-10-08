package com.sleepycat.b.i.b;

import com.sleepycat.b.i.c.av;
import com.sleepycat.b.i.c.az;

public class ae
  extends az
{
  private final s b;
  
  ae(x paramx, s params)
  {
    super(paramx);
    this.b = params;
  }
  
  public final av a()
  {
    return this.a.f;
  }
  
  public final String b()
  {
    return d() + "|" + this.b.a();
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
        if (!(paramObject instanceof ae)) {
          return false;
        }
        paramObject = (ae)paramObject;
        if (this.b != null) {
          break;
        }
      } while (((ae)paramObject).b == null);
      return false;
    } while (this.b.equals(((ae)paramObject).b));
    return false;
  }
  
  public int hashCode()
  {
    int j = super.hashCode();
    if (this.b == null) {}
    for (int i = 0;; i = this.b.hashCode()) {
      return i + j * 31;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\b\ae.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */