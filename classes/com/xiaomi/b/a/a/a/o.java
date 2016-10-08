package com.xiaomi.b.a.a.a;

import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.Map;
import org.apache.a.a.c;
import org.apache.a.b.e;
import org.apache.a.b.h;
import org.apache.a.b.i;
import org.apache.a.b.k;
import org.apache.a.b.m;

public class o
  implements Serializable, Cloneable, org.apache.a.b<o, p>
{
  public static final Map<p, org.apache.a.a.b> a;
  private static final m b = new m("PassportLandNodeInfo");
  private static final e c = new e("ip", (byte)8, (short)1);
  private static final e d = new e("eid", (byte)8, (short)2);
  private static final e e = new e("rt", (byte)8, (short)3);
  private int f;
  private int g;
  private int h;
  private BitSet i = new BitSet(3);
  
  static
  {
    EnumMap localEnumMap = new EnumMap(p.class);
    localEnumMap.put(p.a, new org.apache.a.a.b("ip", (byte)1, new c((byte)8)));
    localEnumMap.put(p.b, new org.apache.a.a.b("eid", (byte)1, new c((byte)8)));
    localEnumMap.put(p.c, new org.apache.a.a.b("rt", (byte)1, new c((byte)8)));
    a = Collections.unmodifiableMap(localEnumMap);
    org.apache.a.a.b.a(o.class, a);
  }
  
  private boolean a()
  {
    return this.i.get(0);
  }
  
  private boolean b()
  {
    return this.i.get(1);
  }
  
  private boolean c()
  {
    return this.i.get(2);
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
        if (locale.b == 8)
        {
          this.f = paramh.m();
          this.i.set(0, true);
        }
        else
        {
          k.a(paramh, locale.b);
        }
        break;
      case 2: 
        if (locale.b == 8)
        {
          this.g = paramh.m();
          this.i.set(1, true);
        }
        else
        {
          k.a(paramh, locale.b);
        }
        break;
      case 3: 
        if (locale.b == 8)
        {
          this.h = paramh.m();
          this.i.set(2, true);
        }
        else
        {
          k.a(paramh, locale.b);
        }
        break;
      }
    }
    paramh.e();
    if (!a()) {
      throw new i("Required field 'ip' was not found in serialized data! Struct: " + toString(), (byte)0);
    }
    if (!b()) {
      throw new i("Required field 'eid' was not found in serialized data! Struct: " + toString(), (byte)0);
    }
    if (!c()) {
      throw new i("Required field 'rt' was not found in serialized data! Struct: " + toString(), (byte)0);
    }
  }
  
  public final void b(h paramh)
  {
    paramh.a();
    paramh.a(c);
    paramh.a(this.f);
    paramh.a(d);
    paramh.a(this.g);
    paramh.a(e);
    paramh.a(this.h);
    paramh.c();
    paramh.b();
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    do
    {
      do
      {
        return false;
      } while (!(paramObject instanceof o));
      paramObject = (o)paramObject;
    } while ((paramObject == null) || (this.f != ((o)paramObject).f) || (this.g != ((o)paramObject).g) || (this.h != ((o)paramObject).h));
    return true;
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("PassportLandNodeInfo(");
    localStringBuilder.append("ip:");
    localStringBuilder.append(this.f);
    localStringBuilder.append(", ");
    localStringBuilder.append("eid:");
    localStringBuilder.append(this.g);
    localStringBuilder.append(", ");
    localStringBuilder.append("rt:");
    localStringBuilder.append(this.h);
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\b\a\a\a\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */