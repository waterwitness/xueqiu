package com.d.a.b.a;

import java.io.FilterInputStream;
import java.io.InputStream;

public final class d
  extends FilterInputStream
{
  public d(InputStream paramInputStream)
  {
    super(paramInputStream);
  }
  
  public final long skip(long paramLong)
  {
    long l2;
    for (long l1 = 0L; l1 < paramLong; l1 = l2 + l1)
    {
      long l3 = this.in.skip(paramLong - l1);
      l2 = l3;
      if (l3 == 0L)
      {
        if (read() < 0) {
          break;
        }
        l2 = 1L;
      }
    }
    return l1;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\d\a\b\a\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */