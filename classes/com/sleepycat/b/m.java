package com.sleepycat.b;

import com.sleepycat.b.l.w;
import com.sleepycat.b.l.x;
import com.sleepycat.c.a.a;
import java.io.Serializable;

public final class m
  implements Serializable
{
  public static int g = 100;
  public byte[] a;
  public int b = 0;
  public int c = 0;
  public int d = 0;
  public int e = 0;
  public boolean f = false;
  
  public m() {}
  
  public m(byte[] paramArrayOfByte)
  {
    this.a = paramArrayOfByte;
    if (paramArrayOfByte != null) {
      this.e = paramArrayOfByte.length;
    }
  }
  
  public m(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.a = paramArrayOfByte;
    this.d = paramInt1;
    this.e = paramInt2;
  }
  
  final String a()
  {
    return w.a.a(a.a(this, g));
  }
  
  public final void a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    this.c = paramInt1;
    this.b = paramInt2;
    this.f = paramBoolean;
  }
  
  public final void a(byte[] paramArrayOfByte)
  {
    int i = 0;
    this.a = paramArrayOfByte;
    this.d = 0;
    if (paramArrayOfByte == null) {}
    for (;;)
    {
      this.e = i;
      return;
      i = paramArrayOfByte.length;
    }
  }
  
  public final void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.a = paramArrayOfByte;
    this.d = paramInt1;
    this.e = paramInt2;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof m)) {}
    do
    {
      do
      {
        return false;
        paramObject = (m)paramObject;
      } while (((this.f) || (((m)paramObject).f)) && ((this.f != ((m)paramObject).f) || (this.b != ((m)paramObject).b) || (this.c != ((m)paramObject).c)));
      if ((this.a == null) && (((m)paramObject).a == null)) {
        return true;
      }
    } while ((this.a == null) || (((m)paramObject).a == null) || (this.e != ((m)paramObject).e));
    int i = 0;
    for (;;)
    {
      if (i >= this.e) {
        break label144;
      }
      if (this.a[(this.d + i)] != paramObject.a[(paramObject.d + i)]) {
        break;
      }
      i += 1;
    }
    label144:
    return true;
  }
  
  public final int hashCode()
  {
    int j = 0;
    if (this.a != null)
    {
      int i = 0;
      for (;;)
      {
        k = i;
        if (j >= this.e) {
          break;
        }
        i += this.a[(this.d + j)];
        j += 1;
      }
    }
    int k = 0;
    return k;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("<DatabaseEntry");
    if (this.f)
    {
      localStringBuilder.append(" partial=\"true");
      localStringBuilder.append("\" doff=\"").append(this.c);
      localStringBuilder.append("\" dlen=\"").append(this.b);
      localStringBuilder.append("\"");
    }
    localStringBuilder.append(" offset=\"").append(this.d);
    localStringBuilder.append("\" size=\"").append(this.e);
    localStringBuilder.append("\" data=\"").append(a());
    if (this.e - 1 > g) {
      localStringBuilder.append(" ... ").append(this.e - g + " bytes not shown ");
    }
    localStringBuilder.append("\"/>");
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */