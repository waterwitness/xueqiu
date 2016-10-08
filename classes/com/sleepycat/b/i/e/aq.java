package com.sleepycat.b.i.e;

import com.sleepycat.b.i.c.b.aa;
import com.sleepycat.b.i.c.b.ab;
import com.sleepycat.b.i.h.e;
import java.nio.ByteBuffer;

public class aq
  extends ad
{
  boolean a = true;
  private final long d;
  private long e = -1L;
  
  public aq(t paramt, boolean paramBoolean)
  {
    super(paramt);
    this.a = paramBoolean;
    this.d = t.b(paramt).n.a();
  }
  
  public final e a()
  {
    return t.j;
  }
  
  public final ByteBuffer b()
  {
    return a(new Object[] { Long.valueOf(this.d), Boolean.valueOf(this.a) });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\e\aq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */