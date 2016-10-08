package com.sleepycat.b;

public final class am
  implements Comparable<am>
{
  public static final am a = new am();
  private final int b = 5;
  private final int c = 0;
  private final int d = 104;
  private final String e = null;
  
  public final int a(am paramam)
  {
    if (this.b == paramam.b) {
      if (this.c == paramam.c)
      {
        if (this.d > paramam.d) {
          return 1;
        }
        if (this.d >= paramam.d) {
          break label74;
        }
      }
    }
    while (this.b <= paramam.b)
    {
      do
      {
        return -1;
      } while (this.c > paramam.c);
      return -1;
    }
    return 1;
    label74:
    return 0;
  }
  
  public final String a()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.b).append(".");
    localStringBuilder.append(this.c).append(".");
    localStringBuilder.append(this.d);
    if (this.e != null)
    {
      localStringBuilder.append(".");
      localStringBuilder.append(this.e);
    }
    return localStringBuilder.toString();
  }
  
  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof am)) && (a((am)paramObject) == 0);
  }
  
  public final int hashCode()
  {
    return this.b * 1000 * 1000 + this.c * 1000 + this.d;
  }
  
  public final String toString()
  {
    return a();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\am.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */