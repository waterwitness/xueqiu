package com.sleepycat.b.i.e;

import com.sleepycat.b.i.c.am;
import com.sleepycat.b.i.h.e;
import com.sleepycat.b.i.h.k;
import com.sleepycat.b.p.au;
import java.nio.ByteBuffer;

public class ap
  extends k
{
  final au a;
  final am[] b;
  
  public ap(t paramt, au paramau, am[] paramArrayOfam)
  {
    super(paramt);
    this.a = paramau;
    this.b = paramArrayOfam;
  }
  
  public final e a()
  {
    return t.v;
  }
  
  public final ByteBuffer b()
  {
    return a(new Object[] { Long.valueOf(this.a.c), this.b });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\e\ap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */