package com.sleepycat.b.p;

import java.io.Serializable;

public final class ag
  implements Serializable, Comparable
{
  public final String a;
  final int b;
  private final String c;
  
  public ag(String paramString1, String paramString2)
  {
    this.a = paramString1;
    this.c = paramString2;
    this.b = ah.a;
  }
  
  public ag(String paramString1, String paramString2, int paramInt)
  {
    this.a = paramString1;
    this.c = paramString2;
    this.b = paramInt;
  }
  
  public final int compareTo(Object paramObject)
  {
    return toString().compareTo(paramObject.toString());
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    while (!(paramObject instanceof ag)) {
      return false;
    }
    paramObject = (ag)paramObject;
    return this.a.equals(((ag)paramObject).a);
  }
  
  public final int hashCode()
  {
    return this.a.hashCode();
  }
  
  public final String toString()
  {
    return this.a + ": " + this.c;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\p\ag.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */