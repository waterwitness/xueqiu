package com.xiaomi.g.a;

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

public class f
  implements Serializable, Cloneable, org.apache.a.b<f, g>
{
  public static final Map<g, org.apache.a.a.b> f;
  private static final m g = new m("Target");
  private static final e h = new e("channelId", (byte)10, (short)1);
  private static final e i = new e("userId", (byte)11, (short)2);
  private static final e j = new e("server", (byte)11, (short)3);
  private static final e k = new e("resource", (byte)11, (short)4);
  private static final e l = new e("isPreview", (byte)2, (short)5);
  public long a = 5L;
  public String b;
  public String c = "xiaomi.com";
  public String d = "";
  public boolean e = false;
  private BitSet m = new BitSet(2);
  
  static
  {
    EnumMap localEnumMap = new EnumMap(g.class);
    localEnumMap.put(g.a, new org.apache.a.a.b("channelId", (byte)1, new c((byte)10)));
    localEnumMap.put(g.b, new org.apache.a.a.b("userId", (byte)1, new c((byte)11)));
    localEnumMap.put(g.c, new org.apache.a.a.b("server", (byte)2, new c((byte)11)));
    localEnumMap.put(g.d, new org.apache.a.a.b("resource", (byte)2, new c((byte)11)));
    localEnumMap.put(g.e, new org.apache.a.a.b("isPreview", (byte)2, new c((byte)2)));
    f = Collections.unmodifiableMap(localEnumMap);
    org.apache.a.a.b.a(f.class, f);
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
    return this.m.get(1);
  }
  
  private void f()
  {
    if (this.b == null) {
      throw new i("Required field 'userId' was not present! Struct: " + toString(), (byte)0);
    }
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
        if (locale.b == 2)
        {
          this.e = paramh.j();
          this.m.set(1, true);
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
      throw new i("Required field 'channelId' was not found in serialized data! Struct: " + toString(), (byte)0);
    }
    f();
  }
  
  public final boolean a(f paramf)
  {
    if (paramf == null) {}
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
            } while (this.a != paramf.a);
            bool1 = b();
            bool2 = paramf.b();
          } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.b.equals(paramf.b))));
          bool1 = c();
          bool2 = paramf.c();
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.c.equals(paramf.c))));
        bool1 = d();
        bool2 = paramf.d();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.d.equals(paramf.d))));
      bool1 = e();
      bool2 = paramf.e();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.e != paramf.e)));
    return true;
  }
  
  public final void b(h paramh)
  {
    f();
    paramh.a();
    paramh.a(h);
    paramh.a(this.a);
    if (this.b != null)
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
    if (e())
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
    while (!(paramObject instanceof f)) {
      return false;
    }
    return a((f)paramObject);
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Target(");
    localStringBuilder.append("channelId:");
    localStringBuilder.append(this.a);
    localStringBuilder.append(", ");
    localStringBuilder.append("userId:");
    if (this.b == null)
    {
      localStringBuilder.append("null");
      if (c())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("server:");
        if (this.c != null) {
          break label192;
        }
        localStringBuilder.append("null");
      }
      label97:
      if (d())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("resource:");
        if (this.d != null) {
          break label204;
        }
        localStringBuilder.append("null");
      }
    }
    for (;;)
    {
      if (e())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("isPreview:");
        localStringBuilder.append(this.e);
      }
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.b);
      break;
      label192:
      localStringBuilder.append(this.c);
      break label97;
      label204:
      localStringBuilder.append(this.d);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\g\a\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */