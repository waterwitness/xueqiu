package com.sleepycat.b.i.b;

import com.sleepycat.b.i.c.av;
import com.sleepycat.b.i.c.az;

public class z
  extends az
{
  final s a;
  final ai b;
  
  static
  {
    if (!x.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      c = bool;
      return;
    }
  }
  
  z(x paramx, s params, ai paramai)
  {
    super(paramx);
    if ((!c) && (params == null)) {
      throw new AssertionError();
    }
    if ((!c) && (paramai == null)) {
      throw new AssertionError();
    }
    this.a = params;
    this.b = paramai;
  }
  
  public av a()
  {
    return this.d.h;
  }
  
  public final String b()
  {
    return d() + "|" + this.a.a() + "|" + this.b.b();
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
        if (!(paramObject instanceof z)) {
          return false;
        }
        paramObject = (z)paramObject;
        if (this.a == null)
        {
          if (((z)paramObject).a != null) {
            return false;
          }
        }
        else if (!this.a.equals(((z)paramObject).a)) {
          return false;
        }
        if (this.b != null) {
          break;
        }
      } while (((z)paramObject).b == null);
      return false;
    } while (this.b.equals(((z)paramObject).b));
    return false;
  }
  
  public int hashCode()
  {
    int j = 0;
    int k = super.hashCode();
    int i;
    if (this.a == null)
    {
      i = 0;
      if (this.b != null) {
        break label46;
      }
    }
    for (;;)
    {
      return (i + k * 31) * 31 + j;
      i = this.a.hashCode();
      break;
      label46:
      j = this.b.hashCode();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\b\z.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */