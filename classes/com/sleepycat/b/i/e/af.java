package com.sleepycat.b.i.e;

import com.sleepycat.b.g.ar;
import com.sleepycat.b.i.h.a;
import com.sleepycat.b.i.h.d;
import com.sleepycat.b.i.h.e;
import com.sleepycat.b.p.au;
import java.nio.ByteBuffer;

public class af
  extends d
{
  public final au a;
  public final au b;
  
  public af(t paramt, au paramau1, au paramau2)
  {
    super(paramt);
    this.a = paramau1;
    this.b = paramau2;
  }
  
  public final e a()
  {
    return t.o;
  }
  
  public final ByteBuffer b()
  {
    int i;
    if (this.c.B >= t.b())
    {
      i = 1;
      if (i == 0) {
        break label66;
      }
    }
    label66:
    for (int j = 16;; j = 8)
    {
      ByteBuffer localByteBuffer = a(j);
      ar.b(localByteBuffer, this.a.c);
      if (i != 0) {
        ar.b(localByteBuffer, this.b.c);
      }
      localByteBuffer.flip();
      return localByteBuffer;
      i = 0;
      break;
    }
  }
  
  public String toString()
  {
    return super.toString() + " syncupVLSN=" + this.a;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\e\af.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */