package com.sleepycat.b.a;

import com.sleepycat.b.c.ao;
import com.sleepycat.b.c.h;
import com.sleepycat.b.l.y;

public final class r
{
  y a;
  h b;
  byte[] c;
  
  public r(y paramy, h paramh, byte[] paramArrayOfByte)
  {
    this.a = paramy;
    this.b = paramh;
    this.c = paramArrayOfByte;
  }
  
  final int a()
  {
    int j = ao.S;
    int i = j;
    if (this.a != null) {
      i = (int)(j + this.a.v_());
    }
    j = i;
    if (this.c != null) {
      j = i + ao.a(this.c.length);
    }
    return j;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\a\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */