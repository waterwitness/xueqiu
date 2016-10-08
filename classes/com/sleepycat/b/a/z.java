package com.sleepycat.b.a;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.ao;
import java.util.HashMap;
import java.util.Map;

public final class z
  extends o
{
  b l;
  long m;
  t n;
  public int o;
  boolean p;
  public boolean q = true;
  
  z(b paramb, long paramLong, boolean paramBoolean)
  {
    this.l = paramb;
    this.m = paramLong;
    this.p = paramBoolean;
  }
  
  final void a(int paramInt)
  {
    this.o += paramInt;
    this.l.b.n.e(paramInt);
  }
  
  public final void i()
  {
    this.n = null;
    b localb = this.l;
    if ((this.m < localb.d) && (this.q))
    {
      HashMap localHashMap = new HashMap(localb.f);
      localHashMap.remove(Long.valueOf(this.m));
      localb.f = localHashMap;
    }
    if (this.o > 0) {
      a(0 - this.o);
    }
    super.i();
  }
  
  public final long[] j()
  {
    if (this.n != null) {
      return this.n.a();
    }
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\a\z.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */