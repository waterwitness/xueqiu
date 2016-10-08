package com.sleepycat.b.p;

import com.sleepycat.b.aa;
import java.io.Serializable;
import java.text.DecimalFormat;
import java.util.Map;

public abstract class af<T>
  implements Serializable, Cloneable
{
  public static final DecimalFormat b = new DecimalFormat("###,###,###,###,###,###,###");
  protected final ag c;
  
  af(ai paramai, ag paramag)
  {
    this.c = paramag;
    paramai = (af)paramai.b.put(this.c, this);
    if ((!ai.c) && (paramai != null)) {
      throw new AssertionError("prev = " + paramai + " oneStat=" + this.c);
    }
  }
  
  public abstract void a();
  
  public abstract void a(af<T> paramaf);
  
  public abstract void a(T paramT);
  
  public abstract af<T> b(af<T> paramaf);
  
  public abstract T c();
  
  public abstract String d();
  
  public af<T> e()
  {
    try
    {
      Object localObject = super.clone();
      return (af)localObject;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw aa.a(localCloneNotSupportedException);
    }
  }
  
  public final ag h()
  {
    return this.c;
  }
  
  public abstract void t_();
  
  public String toString()
  {
    return this.c.a + "=" + d();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\p\af.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */