package com.sleepycat.b.a;

import com.sleepycat.b.g.ar;
import com.sleepycat.b.g.at;
import java.nio.ByteBuffer;

public class o
  implements at, Cloneable
{
  public int a;
  public int b;
  public int c;
  public int d;
  public int e;
  public int f;
  public int g;
  public int h;
  public int i;
  public int j;
  public int k;
  
  private int a(int paramInt)
  {
    if (this.b > 0)
    {
      int m = this.b - (this.d + this.f) + (k() + paramInt);
      paramInt = m;
      if (m > this.b) {
        paramInt = this.b;
      }
      return paramInt;
    }
    return 0;
  }
  
  public static int a(long paramLong1, long paramLong2)
  {
    if (paramLong2 == 0L) {
      return 0;
    }
    return Math.round(100.0F * (float)(paramLong2 - paramLong1) / (float)paramLong2);
  }
  
  private int b(float paramFloat)
  {
    if (this.e == 0) {
      return 0;
    }
    int m = Math.min(this.i, this.e);
    int n = Math.min(this.j, this.f);
    int i1 = Math.min(this.k, m);
    long l2 = n;
    m -= i1;
    long l1 = l2;
    if (m > 0)
    {
      float f1 = paramFloat;
      if (Float.isNaN(paramFloat)) {
        f1 = 1.0F;
      }
      paramFloat = e() * f1;
      l1 = l2;
      if (!Float.isNaN(paramFloat)) {
        l1 = l2 + (int)(m * paramFloat);
      }
    }
    if (l1 > this.f) {
      return this.f;
    }
    return (int)l1;
  }
  
  private int j()
  {
    if (this.g == 0) {
      return b(NaN.0F);
    }
    if (this.e == 0) {
      return 0;
    }
    int m = Math.min(this.i, this.e);
    int n = Math.min(this.j, this.f);
    int i1 = Math.min(this.k, m);
    long l2 = n;
    long l3 = m - i1;
    long l1 = l2;
    if (l3 > 0L) {
      l1 = l2 + Math.min(l3 * this.g, this.f - n - (this.e - m) * 16);
    }
    if (l1 > this.f) {
      return this.f;
    }
    return (int)l1;
  }
  
  private int k()
  {
    if (this.c == 0) {
      return 0;
    }
    int m = Math.min(this.h, this.c);
    float f1 = this.d / this.c;
    return (int)(m * f1);
  }
  
  public final int a()
  {
    ar.a();
    return 44;
  }
  
  public final int a(float paramFloat)
  {
    return a(b(paramFloat));
  }
  
  public final void a(o paramo)
  {
    this.a += paramo.a;
    this.b += paramo.b;
    this.c += paramo.c;
    this.d += paramo.d;
    this.e += paramo.e;
    this.f += paramo.f;
    if (this.g < paramo.g) {
      this.g = paramo.g;
    }
    this.h += paramo.h;
    this.i += paramo.i;
    this.j += paramo.j;
    this.k += paramo.k;
  }
  
  public final void a(StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    paramStringBuilder.append("<summary totalCount=\"");
    paramStringBuilder.append(this.a);
    paramStringBuilder.append("\" totalSize=\"");
    paramStringBuilder.append(this.b);
    paramStringBuilder.append("\" totalINCount=\"");
    paramStringBuilder.append(this.c);
    paramStringBuilder.append("\" totalINSize=\"");
    paramStringBuilder.append(this.d);
    paramStringBuilder.append("\" totalLNCount=\"");
    paramStringBuilder.append(this.e);
    paramStringBuilder.append("\" totalLNSize=\"");
    paramStringBuilder.append(this.f);
    paramStringBuilder.append("\" maxLNSize=\"");
    paramStringBuilder.append(this.g);
    paramStringBuilder.append("\" obsoleteINCount=\"");
    paramStringBuilder.append(this.h);
    paramStringBuilder.append("\" obsoleteLNCount=\"");
    paramStringBuilder.append(this.i);
    paramStringBuilder.append("\" obsoleteLNSize=\"");
    paramStringBuilder.append(this.j);
    paramStringBuilder.append("\" obsoleteLNSizeCounted=\"");
    paramStringBuilder.append(this.k);
    paramStringBuilder.append("\" getObsoleteSize=\"");
    paramStringBuilder.append(f());
    paramStringBuilder.append("\" getObsoleteINSize=\"");
    paramStringBuilder.append(k());
    paramStringBuilder.append("\" getObsoleteLNSize=\"");
    paramStringBuilder.append(b(NaN.0F));
    paramStringBuilder.append("\" getMaxObsoleteSize=\"");
    paramStringBuilder.append(g());
    paramStringBuilder.append("\" getMaxObsoleteLNSize=\"");
    paramStringBuilder.append(j());
    paramStringBuilder.append("\" getAvgObsoleteLNSizeNotCounted=\"");
    paramStringBuilder.append(e());
    paramStringBuilder.append("\"/>");
  }
  
  public final void a(ByteBuffer paramByteBuffer)
  {
    ar.a(paramByteBuffer, this.a);
    ar.a(paramByteBuffer, this.b);
    ar.a(paramByteBuffer, this.c);
    ar.a(paramByteBuffer, this.d);
    ar.a(paramByteBuffer, this.e);
    ar.a(paramByteBuffer, this.f);
    ar.a(paramByteBuffer, this.g);
    ar.a(paramByteBuffer, this.h);
    ar.a(paramByteBuffer, this.i);
    ar.a(paramByteBuffer, this.j);
    ar.a(paramByteBuffer, this.k);
  }
  
  public final void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    this.a = ar.c(paramByteBuffer);
    this.b = ar.c(paramByteBuffer);
    this.c = ar.c(paramByteBuffer);
    this.d = ar.c(paramByteBuffer);
    this.e = ar.c(paramByteBuffer);
    this.f = ar.c(paramByteBuffer);
    if (paramInt >= 8) {
      this.g = ar.c(paramByteBuffer);
    }
    this.h = ar.c(paramByteBuffer);
    if (this.h == -1) {
      this.h = this.c;
    }
    this.i = ar.c(paramByteBuffer);
    if (paramInt >= 3)
    {
      this.j = ar.c(paramByteBuffer);
      this.k = ar.c(paramByteBuffer);
      return;
    }
    this.j = 0;
    this.k = 0;
  }
  
  public final boolean a(at paramat)
  {
    return false;
  }
  
  public final long b()
  {
    return 0L;
  }
  
  public final o c()
  {
    try
    {
      o localo = (o)super.clone();
      return localo;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException) {}
    return null;
  }
  
  public final boolean d()
  {
    return (this.a == 0) && (this.b == 0) && (this.h == 0) && (this.i == 0);
  }
  
  public final float e()
  {
    int n = Math.min(this.i, this.e);
    int i1 = Math.min(this.j, this.f);
    int m = Math.min(this.k, n);
    if (n - m <= 0) {}
    do
    {
      return NaN.0F;
      n = this.f - i1;
      m = this.e - m;
    } while ((n <= 0) || (m <= 0));
    return n / m;
  }
  
  public final int f()
  {
    return a(b(NaN.0F));
  }
  
  public final int g()
  {
    return a(j());
  }
  
  public final int h()
  {
    return a(f(), this.b);
  }
  
  public void i()
  {
    this.a = 0;
    this.b = 0;
    this.c = 0;
    this.d = 0;
    this.e = 0;
    this.f = 0;
    this.g = 0;
    this.h = 0;
    this.i = 0;
    this.j = 0;
    this.k = 0;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    a(localStringBuilder, true);
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\a\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */