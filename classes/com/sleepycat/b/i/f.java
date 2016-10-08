package com.sleepycat.b.i;

import com.sleepycat.b.c.ac;
import com.sleepycat.b.p.au;
import java.util.Set;

public final class f
  extends y
{
  private final transient com.sleepycat.b.i.c.b.aa c;
  private final au d;
  private final Set<Object> e;
  
  public f(com.sleepycat.b.i.c.b.aa paramaa, au paramau, Set<Object> paramSet)
  {
    super(paramaa.i, ac.o);
    this.c = paramaa;
    this.d = paramau;
    this.e = paramSet;
  }
  
  private f(String paramString, f paramf)
  {
    super(paramString, paramf);
    this.c = paramf.c;
    this.d = paramf.d;
    this.e = paramf.e;
  }
  
  public final com.sleepycat.b.aa b(String paramString)
  {
    return new f(paramString, this);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */