package com.sleepycat.b.i.g.a;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Formatter;

public final class a
  implements Serializable
{
  final int a;
  int b;
  byte[] c;
  byte[] d;
  long e;
  byte[] f;
  
  public a(int paramInt)
  {
    this.a = paramInt;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    do
    {
      do
      {
        return false;
      } while (!(paramObject instanceof a));
      paramObject = (a)paramObject;
    } while ((this.a != ((a)paramObject).a) || (this.b != ((a)paramObject).b) || (!Arrays.equals(this.c, ((a)paramObject).c)) || (!Arrays.equals(this.d, ((a)paramObject).d)) || (this.e != ((a)paramObject).e) || (!Arrays.equals(this.f, ((a)paramObject).f)));
    return true;
  }
  
  public final String toString()
  {
    Formatter localFormatter = new Formatter();
    localFormatter.format("Block %d: rollingChksum=%x md5Hash=%s numRecords=%d", new Object[] { Integer.valueOf(this.a), Long.valueOf(this.e), Arrays.toString(this.f), Integer.valueOf(this.b) });
    return localFormatter.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\g\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */