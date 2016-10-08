package com.xiaomi.b.a.a.a;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.Map;
import org.apache.a.a.c;
import org.apache.a.b.e;
import org.apache.a.b.h;
import org.apache.a.b.k;
import org.apache.a.b.m;

public class i
  implements Serializable, Cloneable, org.apache.a.b<i, j>
{
  public static final Map<j, org.apache.a.a.b> e;
  private static final m f = new m("Location");
  private static final e g = new e("contry", (byte)11, (short)1);
  private static final e h = new e("province", (byte)11, (short)2);
  private static final e i = new e("city", (byte)11, (short)3);
  private static final e j = new e("isp", (byte)11, (short)4);
  public String a;
  public String b;
  public String c;
  public String d;
  
  static
  {
    EnumMap localEnumMap = new EnumMap(j.class);
    localEnumMap.put(j.a, new org.apache.a.a.b("contry", (byte)2, new c((byte)11)));
    localEnumMap.put(j.b, new org.apache.a.a.b("province", (byte)2, new c((byte)11)));
    localEnumMap.put(j.c, new org.apache.a.a.b("city", (byte)2, new c((byte)11)));
    localEnumMap.put(j.d, new org.apache.a.a.b("isp", (byte)2, new c((byte)11)));
    e = Collections.unmodifiableMap(localEnumMap);
    org.apache.a.a.b.a(i.class, e);
  }
  
  private boolean a()
  {
    return this.a != null;
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
        if (locale.b == 11) {
          this.a = paramh.p();
        } else {
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
      }
    }
    paramh.e();
  }
  
  public final boolean a(i parami)
  {
    if (parami == null) {}
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
            return false;
            bool1 = a();
            bool2 = parami.a();
          } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.equals(parami.a))));
          bool1 = b();
          bool2 = parami.b();
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.b.equals(parami.b))));
        bool1 = c();
        bool2 = parami.c();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.c.equals(parami.c))));
      bool1 = d();
      bool2 = parami.d();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.d.equals(parami.d))));
    return true;
  }
  
  public final void b(h paramh)
  {
    paramh.a();
    if ((this.a != null) && (a()))
    {
      paramh.a(g);
      paramh.a(this.a);
    }
    if ((this.b != null) && (b()))
    {
      paramh.a(h);
      paramh.a(this.b);
    }
    if ((this.c != null) && (c()))
    {
      paramh.a(i);
      paramh.a(this.c);
    }
    if ((this.d != null) && (d()))
    {
      paramh.a(j);
      paramh.a(this.d);
    }
    paramh.c();
    paramh.b();
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    while (!(paramObject instanceof i)) {
      return false;
    }
    return a((i)paramObject);
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public String toString()
  {
    int n = 0;
    StringBuilder localStringBuilder = new StringBuilder("Location(");
    int k = 1;
    int m;
    if (a())
    {
      localStringBuilder.append("contry:");
      if (this.a == null)
      {
        localStringBuilder.append("null");
        k = 0;
      }
    }
    else
    {
      m = k;
      if (b())
      {
        if (k == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("province:");
        if (this.b != null) {
          break label193;
        }
        localStringBuilder.append("null");
        label86:
        m = 0;
      }
      if (!c()) {
        break label232;
      }
      if (m == 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append("city:");
      if (this.c != null) {
        break label205;
      }
      localStringBuilder.append("null");
      k = n;
    }
    for (;;)
    {
      label130:
      if (d())
      {
        if (k == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("isp:");
        if (this.d != null) {
          break label220;
        }
        localStringBuilder.append("null");
      }
      for (;;)
      {
        localStringBuilder.append(")");
        return localStringBuilder.toString();
        localStringBuilder.append(this.a);
        break;
        label193:
        localStringBuilder.append(this.b);
        break label86;
        label205:
        localStringBuilder.append(this.c);
        k = n;
        break label130;
        label220:
        localStringBuilder.append(this.d);
      }
      label232:
      k = m;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\b\a\a\a\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */