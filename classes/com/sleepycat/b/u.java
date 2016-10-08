package com.sleepycat.b;

import java.util.StringTokenizer;

public final class u
{
  public static final u a = new u(w.a, w.b, v.c);
  public static final u b = new u(w.b, w.b, v.c);
  public static final u c = new u(w.c, w.b, v.c);
  public static final u d = new u(w.b, w.b, v.b);
  public final w e;
  public final w f;
  public final v g;
  
  public u(w paramw1, w paramw2, v paramv)
  {
    this.e = paramw1;
    this.f = paramw2;
    this.g = paramv;
  }
  
  public static u a(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    Object localObject = new StringTokenizer(paramString.toUpperCase(), ",");
    if (!((StringTokenizer)localObject).hasMoreTokens()) {
      throw new IllegalArgumentException("Bad string format: \"" + paramString + '"');
    }
    w localw = w.valueOf(((StringTokenizer)localObject).nextToken());
    if (((StringTokenizer)localObject).hasMoreTokens())
    {
      paramString = w.valueOf(((StringTokenizer)localObject).nextToken());
      if (!((StringTokenizer)localObject).hasMoreTokens()) {
        break label112;
      }
    }
    label112:
    for (localObject = v.valueOf(((StringTokenizer)localObject).nextToken());; localObject = v.c)
    {
      return new u(localw, paramString, (v)localObject);
      paramString = w.b;
      break;
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (!(paramObject instanceof u)) {
          return false;
        }
        paramObject = (u)paramObject;
        if (this.e == null)
        {
          if (((u)paramObject).e != null) {
            return false;
          }
        }
        else if (!this.e.equals(((u)paramObject).e)) {
          return false;
        }
        if (this.g == null)
        {
          if (((u)paramObject).g != null) {
            return false;
          }
        }
        else if (!this.g.equals(((u)paramObject).g)) {
          return false;
        }
        if (this.f != null) {
          break;
        }
      } while (((u)paramObject).f == null);
      return false;
    } while (this.f.equals(((u)paramObject).f));
    return false;
  }
  
  public final int hashCode()
  {
    int k = 0;
    int i;
    int j;
    if (this.e == null)
    {
      i = 0;
      if (this.g != null) {
        break label53;
      }
      j = 0;
      label20:
      if (this.f != null) {
        break label64;
      }
    }
    for (;;)
    {
      return (j + (i + 31) * 31) * 31 + k;
      i = this.e.hashCode();
      break;
      label53:
      j = this.g.hashCode();
      break label20;
      label64:
      k = this.f.hashCode();
    }
  }
  
  public final String toString()
  {
    return this.e.toString() + "," + this.f.toString() + "," + this.g.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */