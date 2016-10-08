package com.sleepycat.b.i.c;

import com.sleepycat.b.aa;
import com.sleepycat.b.i.c.b.x;
import com.sleepycat.b.i.e.ai;
import com.sleepycat.b.i.o;
import com.sleepycat.b.p.au;
import java.net.InetSocketAddress;

public class am
{
  public final x a;
  public final o b;
  public boolean c;
  public boolean d;
  public String e;
  public int f;
  public u g;
  int h = -1;
  
  private am(x paramx, o paramo, String paramString, int paramInt)
  {
    this(paramx, paramo, false, false, paramString, paramInt, new u(au.a, System.currentTimeMillis()), -1);
  }
  
  private am(x paramx, o paramo, String paramString, int paramInt, byte paramByte)
  {
    this(paramx, paramo, paramString, paramInt);
  }
  
  public am(x paramx, o paramo, boolean paramBoolean1, boolean paramBoolean2, String paramString, int paramInt1, u paramu, int paramInt2)
  {
    if (paramx.a.equals("$$GROUP_KEY$$")) {
      throw aa.c("Member node ID is the reserved key value: " + paramx);
    }
    if (paramString == null) {
      throw aa.c("The hostname argument must not be null");
    }
    if (paramo == null) {
      throw aa.c("The nodeType argument must not be null");
    }
    this.a = paramx;
    this.b = paramo;
    this.c = paramBoolean1;
    this.e = paramString;
    this.f = paramInt1;
    this.d = paramBoolean2;
    this.h = paramInt2;
    this.g = paramu;
  }
  
  public am(ai paramai)
  {
    this(paramai.d, o.b, paramai.e, paramai.f, (byte)0);
  }
  
  public am(String paramString1, String paramString2, int paramInt)
  {
    this(new x(paramString1, x.c.b), o.b, paramString2, paramInt, (byte)0);
  }
  
  public final InetSocketAddress a()
  {
    return new InetSocketAddress(this.e, this.f);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (!(paramObject instanceof am)) {
        return false;
      }
      paramObject = (am)paramObject;
      if (this.e == null)
      {
        if (((am)paramObject).e != null) {
          return false;
        }
      }
      else if (!this.e.equals(((am)paramObject).e)) {
        return false;
      }
      if (!this.a.equals(((am)paramObject).a)) {
        return false;
      }
      if (this.b != ((am)paramObject).b) {
        return false;
      }
      if (this.f != ((am)paramObject).f) {
        return false;
      }
    } while (this.c == ((am)paramObject).c);
    return false;
  }
  
  public int hashCode()
  {
    int i;
    int k;
    int m;
    if (this.e == null)
    {
      i = 0;
      k = this.a.hashCode();
      m = this.f;
      if (!this.c) {
        break label66;
      }
    }
    label66:
    for (int j = 1231;; j = 1237)
    {
      return j + (((i + 31) * 31 + k) * 31 + m) * 31;
      i = this.e.hashCode();
      break;
    }
  }
  
  public String toString()
  {
    String str = "(is member)";
    if (!this.c) {
      str = " (not yet a durable member)";
    }
    if (this.d) {
      str = " (is removed)";
    }
    return String.format("Node:%s %s:%d %s changeVersion:%d %s\n", new Object[] { this.a.a, this.e, Integer.valueOf(this.f), str, Integer.valueOf(this.h), this.g });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\am.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */