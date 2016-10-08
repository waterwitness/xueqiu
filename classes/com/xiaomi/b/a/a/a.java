package com.xiaomi.b.a.a;

import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.Map;
import org.apache.a.a.c;
import org.apache.a.b.e;
import org.apache.a.b.h;
import org.apache.a.b.k;
import org.apache.a.b.m;

public class a
  implements Serializable, Cloneable, org.apache.a.b<a, b>
{
  public static final Map<b, org.apache.a.a.b> f;
  private static final m g = new m("Common");
  private static final e h = new e("uuid", (byte)10, (short)1);
  private static final e i = new e("time", (byte)11, (short)2);
  private static final e j = new e("clientIp", (byte)11, (short)3);
  private static final e k = new e("serverIp", (byte)11, (short)4);
  private static final e l = new e("serverHost", (byte)11, (short)5);
  public long a = 0L;
  public String b = "";
  public String c = "";
  public String d = "";
  public String e = "";
  private BitSet m = new BitSet(1);
  
  static
  {
    EnumMap localEnumMap = new EnumMap(b.class);
    localEnumMap.put(b.a, new org.apache.a.a.b("uuid", (byte)2, new c((byte)10)));
    localEnumMap.put(b.b, new org.apache.a.a.b("time", (byte)2, new c((byte)11)));
    localEnumMap.put(b.c, new org.apache.a.a.b("clientIp", (byte)2, new c((byte)11)));
    localEnumMap.put(b.d, new org.apache.a.a.b("serverIp", (byte)2, new c((byte)11)));
    localEnumMap.put(b.e, new org.apache.a.a.b("serverHost", (byte)2, new c((byte)11)));
    f = Collections.unmodifiableMap(localEnumMap);
    org.apache.a.a.b.a(a.class, f);
  }
  
  private boolean a()
  {
    return this.m.get(0);
  }
  
  private boolean b()
  {
    return this.b != null;
  }
  
  private boolean c()
  {
    return this.c != null;
  }
  
  private boolean d()
  {
    return this.d != null;
  }
  
  private boolean e()
  {
    return this.e != null;
  }
  
  public final void a(h paramh)
  {
    paramh.d();
    for (;;)
    {
      e locale = paramh.f();
      if (locale.b == 0) {
        break;
      }
      switch (locale.c)
      {
      default: 
        k.a(paramh, locale.b);
        break;
      case 1: 
        if (locale.b == 10)
        {
          this.a = paramh.n();
          this.m.set(0, true);
        }
        else
        {
          k.a(paramh, locale.b);
        }
        break;
      case 2: 
        if (locale.b == 11) {
          this.b = paramh.p();
        } else {
          k.a(paramh, locale.b);
        }
        break;
      case 3: 
        if (locale.b == 11) {
          this.c = paramh.p();
        } else {
          k.a(paramh, locale.b);
        }
        break;
      case 4: 
        if (locale.b == 11) {
          this.d = paramh.p();
        } else {
          k.a(paramh, locale.b);
        }
        break;
      case 5: 
        if (locale.b == 11) {
          this.e = paramh.p();
        } else {
          k.a(paramh, locale.b);
        }
        break;
      }
    }
    paramh.e();
  }
  
  public final boolean a(a parama)
  {
    if (parama == null) {}
    boolean bool1;
    boolean bool2;
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              return false;
              bool1 = a();
              bool2 = parama.a();
            } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.a != parama.a)));
            bool1 = b();
            bool2 = parama.b();
          } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.b.equals(parama.b))));
          bool1 = c();
          bool2 = parama.c();
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.c.equals(parama.c))));
        bool1 = d();
        bool2 = parama.d();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.d.equals(parama.d))));
      bool1 = e();
      bool2 = parama.e();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.e.equals(parama.e))));
    return true;
  }
  
  public final void b(h paramh)
  {
    paramh.a();
    if (a())
    {
      paramh.a(h);
      paramh.a(this.a);
    }
    if ((this.b != null) && (b()))
    {
      paramh.a(i);
      paramh.a(this.b);
    }
    if ((this.c != null) && (c()))
    {
      paramh.a(j);
      paramh.a(this.c);
    }
    if ((this.d != null) && (d()))
    {
      paramh.a(k);
      paramh.a(this.d);
    }
    if ((this.e != null) && (e()))
    {
      paramh.a(l);
      paramh.a(this.e);
    }
    paramh.c();
    paramh.b();
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    while (!(paramObject instanceof a)) {
      return false;
    }
    return a((a)paramObject);
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public String toString()
  {
    int i2 = 0;
    StringBuilder localStringBuilder = new StringBuilder("Common(");
    int i1 = 1;
    if (a())
    {
      localStringBuilder.append("uuid:");
      localStringBuilder.append(this.a);
      i1 = 0;
    }
    int n = i1;
    if (b())
    {
      if (i1 == 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append("time:");
      if (this.b == null)
      {
        localStringBuilder.append("null");
        n = 0;
      }
    }
    else
    {
      i1 = n;
      if (c())
      {
        if (n == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("clientIp:");
        if (this.c != null) {
          break label244;
        }
        localStringBuilder.append("null");
        label130:
        i1 = 0;
      }
      if (!d()) {
        break label283;
      }
      if (i1 == 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append("serverIp:");
      if (this.d != null) {
        break label256;
      }
      localStringBuilder.append("null");
      n = i2;
    }
    for (;;)
    {
      label177:
      if (e())
      {
        if (n == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("serverHost:");
        if (this.e != null) {
          break label271;
        }
        localStringBuilder.append("null");
      }
      for (;;)
      {
        localStringBuilder.append(")");
        return localStringBuilder.toString();
        localStringBuilder.append(this.b);
        break;
        label244:
        localStringBuilder.append(this.c);
        break label130;
        label256:
        localStringBuilder.append(this.d);
        n = i2;
        break label177;
        label271:
        localStringBuilder.append(this.e);
      }
      label283:
      n = i1;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\b\a\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */