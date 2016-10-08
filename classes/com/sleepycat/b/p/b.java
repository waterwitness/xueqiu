package com.sleepycat.b.p;

import com.sleepycat.b.c.ad;
import java.util.zip.Adler32;
import java.util.zip.Checksum;

public final class b
  implements Checksum
{
  private long a = 1L;
  
  public static Checksum a()
  {
    if (ad.T)
    {
      int i = ad.y();
      if (i > 0) {
        return new c(i);
      }
      return new Adler32();
    }
    return new b();
  }
  
  public final long getValue()
  {
    return this.a;
  }
  
  public final void reset()
  {
    this.a = 1L;
  }
  
  public final void update(int paramInt)
  {
    long l2 = this.a;
    long l1 = this.a;
    l2 = ((l2 & 0xFFFF) + (paramInt & 0xFF)) % 65521L;
    this.a = (l2 | ((l1 >> 16 & 0xFFFF) + l2) % 65521L << 16);
  }
  
  public final void update(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    long l2 = this.a & 0xFFFF;
    long l1 = 0xFFFF & this.a >> 16;
    int i = paramInt1;
    paramInt1 = paramInt2;
    while (paramInt1 > 0)
    {
      if (paramInt1 < 5552) {}
      int j;
      for (paramInt2 = paramInt1;; paramInt2 = 5552)
      {
        j = i;
        i = paramInt2;
        while (i > 0)
        {
          l2 += (paramArrayOfByte[j] & 0xFF);
          l1 += l2;
          j += 1;
          i -= 1;
        }
      }
      l2 %= 65521L;
      l1 %= 65521L;
      paramInt1 -= paramInt2;
      i = j;
    }
    this.a = (l1 << 16 | l2);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\p\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */