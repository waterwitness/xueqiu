package com.sleepycat.b.g;

import com.sleepycat.b.q.a;

public final class as
  implements a
{
  private int a;
  private byte[] b;
  private byte[] c;
  
  public as(int paramInt, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    this.a = paramInt;
    this.b = paramArrayOfByte1;
    this.c = paramArrayOfByte2;
  }
  
  private static boolean a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    boolean bool2 = false;
    boolean bool1;
    if ((paramArrayOfByte1 == null) || (paramArrayOfByte2 == null))
    {
      bool1 = bool2;
      if (paramArrayOfByte1 == paramArrayOfByte2) {
        bool1 = true;
      }
    }
    do
    {
      return bool1;
      bool1 = bool2;
    } while (paramArrayOfByte1.length != paramArrayOfByte2.length);
    int i = 0;
    for (;;)
    {
      if (i >= paramArrayOfByte1.length) {
        break label60;
      }
      bool1 = bool2;
      if (paramArrayOfByte1[i] != paramArrayOfByte2[i]) {
        break;
      }
      i += 1;
    }
    label60:
    return true;
  }
  
  public final int a()
  {
    return this.a;
  }
  
  public final byte[] b()
  {
    return this.b;
  }
  
  public final byte[] c()
  {
    return this.c;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof as)) {}
    do
    {
      return false;
      paramObject = (as)paramObject;
    } while ((((as)paramObject).a != this.a) || (!a(((as)paramObject).b, this.b)) || (!a(((as)paramObject).c, this.c)));
    return true;
  }
  
  public final int hashCode()
  {
    int m = 0;
    int j = this.a;
    int k;
    if (this.b != null)
    {
      k = 0;
      for (;;)
      {
        i = j;
        if (k >= this.b.length) {
          break;
        }
        j += this.b[k];
        k += 1;
      }
    }
    int i = j;
    j = i;
    if (this.c != null)
    {
      k = m;
      for (;;)
      {
        j = i;
        if (k >= this.c.length) {
          break;
        }
        i += this.c[k];
        k += 1;
      }
    }
    return j;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("<Xid formatId=\"").append(this.a);
    localStringBuilder.append("\" gTxnId=\"");
    if (this.b == null)
    {
      localStringBuilder.append("null");
      localStringBuilder.append("\" bqual=\"");
      if (this.c != null) {
        break label95;
      }
      localStringBuilder.append("null");
    }
    for (;;)
    {
      localStringBuilder.append("\"/>");
      return localStringBuilder.toString();
      localStringBuilder.append(new String(this.b));
      break;
      label95:
      localStringBuilder.append(new String(this.c));
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\as.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */