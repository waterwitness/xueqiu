package com.sleepycat.b.i.g.a;

import com.sleepycat.b.p.au;
import java.util.Arrays;

public final class w
{
  final byte[] a;
  final byte[] b;
  final au c;
  byte[] d;
  
  public w(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, au paramau)
  {
    this.a = paramArrayOfByte1;
    this.b = paramArrayOfByte2;
    this.c = paramau;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    do
    {
      do
      {
        return false;
      } while (!(paramObject instanceof w));
      paramObject = (w)paramObject;
    } while ((!Arrays.equals(((w)paramObject).a, this.a)) || (!Arrays.equals(((w)paramObject).b, this.b)));
    return true;
  }
  
  public final int hashCode()
  {
    if ((this.d == null) && (this.a != null) && (this.b != null))
    {
      this.d = new byte[this.a.length + this.b.length];
      System.arraycopy(this.a, 0, this.d, 0, this.a.length);
      System.arraycopy(this.b, 0, this.d, this.a.length, this.b.length);
    }
    return Arrays.hashCode(this.d);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\g\a\w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */