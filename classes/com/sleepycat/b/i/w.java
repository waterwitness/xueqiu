package com.sleepycat.b.i;

import com.sleepycat.b.bc;
import com.sleepycat.b.c.aw;
import com.sleepycat.b.c.m;
import com.sleepycat.b.i.c.an;
import com.sleepycat.b.i.h.q;
import java.util.Properties;

public final class w
  extends x
  implements aw
{
  public static final w a = new w();
  private boolean e = false;
  
  public w() {}
  
  public w(Properties paramProperties, boolean paramBoolean)
  {
    super(paramProperties, paramBoolean);
  }
  
  public static void d()
  {
    throw new NullPointerException();
  }
  
  private String f()
  {
    throw new NullPointerException();
  }
  
  private String g()
  {
    throw new NullPointerException();
  }
  
  public final bc a()
  {
    return q.a(m.a(this.b, an.m));
  }
  
  public final String b()
  {
    return m.a(this.b, an.a);
  }
  
  public final w c()
  {
    try
    {
      w localw = (w)super.clone();
      return localw;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException) {}
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */