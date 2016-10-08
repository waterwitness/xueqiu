package com.xiaomi.g.a;

import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.Map;
import org.apache.a.a.g;
import org.apache.a.b.e;
import org.apache.a.b.h;
import org.apache.a.b.i;
import org.apache.a.b.k;
import org.apache.a.b.m;

public class b
  implements Serializable, Cloneable, org.apache.a.b<b, c>
{
  public static final Map<c, org.apache.a.a.b> i;
  private static final m j = new m("PushMessage");
  private static final e k = new e("to", (byte)12, (short)1);
  private static final e l = new e("id", (byte)11, (short)2);
  private static final e m = new e("appId", (byte)11, (short)3);
  private static final e n = new e("payload", (byte)11, (short)4);
  private static final e o = new e("createAt", (byte)10, (short)5);
  private static final e p = new e("ttl", (byte)10, (short)6);
  private static final e q = new e("collapseKey", (byte)11, (short)7);
  private static final e r = new e("packageName", (byte)11, (short)8);
  public f a;
  public String b;
  public String c;
  public String d;
  public long e;
  public long f;
  public String g;
  public String h;
  private BitSet s = new BitSet(2);
  
  static
  {
    EnumMap localEnumMap = new EnumMap(c.class);
    localEnumMap.put(c.a, new org.apache.a.a.b("to", (byte)2, new g(f.class)));
    localEnumMap.put(c.b, new org.apache.a.a.b("id", (byte)1, new org.apache.a.a.c((byte)11)));
    localEnumMap.put(c.c, new org.apache.a.a.b("appId", (byte)1, new org.apache.a.a.c((byte)11)));
    localEnumMap.put(c.d, new org.apache.a.a.b("payload", (byte)1, new org.apache.a.a.c((byte)11)));
    localEnumMap.put(c.e, new org.apache.a.a.b("createAt", (byte)2, new org.apache.a.a.c((byte)10)));
    localEnumMap.put(c.f, new org.apache.a.a.b("ttl", (byte)2, new org.apache.a.a.c((byte)10)));
    localEnumMap.put(c.g, new org.apache.a.a.b("collapseKey", (byte)2, new org.apache.a.a.c((byte)11)));
    localEnumMap.put(c.h, new org.apache.a.a.b("packageName", (byte)2, new org.apache.a.a.c((byte)11)));
    i = Collections.unmodifiableMap(localEnumMap);
    org.apache.a.a.b.a(b.class, i);
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
  
  private boolean e()
  {
    return this.s.get(0);
  }
  
  private boolean f()
  {
    return this.s.get(1);
  }
  
  private boolean g()
  {
    return this.g != null;
  }
  
  private boolean h()
  {
    return this.h != null;
  }
  
  private void i()
  {
    if (this.b == null) {
      throw new i("Required field 'id' was not present! Struct: " + toString(), (byte)0);
    }
    if (this.c == null) {
      throw new i("Required field 'appId' was not present! Struct: " + toString(), (byte)0);
    }
    if (this.d == null) {
      throw new i("Required field 'payload' was not present! Struct: " + toString(), (byte)0);
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
        if (locale.b == 12)
        {
          this.a = new f();
          this.a.a(paramh);
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
        if (locale.b == 10)
        {
          this.e = paramh.n();
          this.s.set(0, true);
        }
        else
        {
          k.a(paramh, locale.b);
        }
        break;
      case 6: 
        if (locale.b == 10)
        {
          this.f = paramh.n();
          this.s.set(1, true);
        }
        else
        {
          k.a(paramh, locale.b);
        }
        break;
      case 7: 
        if (locale.b == 11) {
          this.g = paramh.p();
        } else {
          k.a(paramh, locale.b);
        }
        break;
      case 8: 
        if (locale.b == 11) {
          this.h = paramh.p();
        } else {
          k.a(paramh, locale.b);
        }
        break;
      }
    }
    paramh.e();
    i();
  }
  
  public final boolean a(b paramb)
  {
    if (paramb == null) {}
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
              do
              {
                do
                {
                  do
                  {
                    return false;
                    bool1 = a();
                    bool2 = paramb.a();
                  } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.a(paramb.a))));
                  bool1 = b();
                  bool2 = paramb.b();
                } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.b.equals(paramb.b))));
                bool1 = c();
                bool2 = paramb.c();
              } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.c.equals(paramb.c))));
              bool1 = d();
              bool2 = paramb.d();
            } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.d.equals(paramb.d))));
            bool1 = e();
            bool2 = paramb.e();
          } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.e != paramb.e)));
          bool1 = f();
          bool2 = paramb.f();
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.f != paramb.f)));
        bool1 = g();
        bool2 = paramb.g();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.g.equals(paramb.g))));
      bool1 = h();
      bool2 = paramb.h();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.h.equals(paramb.h))));
    return true;
  }
  
  public final void b(h paramh)
  {
    i();
    paramh.a();
    if ((this.a != null) && (a()))
    {
      paramh.a(k);
      this.a.b(paramh);
    }
    if (this.b != null)
    {
      paramh.a(l);
      paramh.a(this.b);
    }
    if (this.c != null)
    {
      paramh.a(m);
      paramh.a(this.c);
    }
    if (this.d != null)
    {
      paramh.a(n);
      paramh.a(this.d);
    }
    if (e())
    {
      paramh.a(o);
      paramh.a(this.e);
    }
    if (f())
    {
      paramh.a(p);
      paramh.a(this.f);
    }
    if ((this.g != null) && (g()))
    {
      paramh.a(q);
      paramh.a(this.g);
    }
    if ((this.h != null) && (h()))
    {
      paramh.a(r);
      paramh.a(this.h);
    }
    paramh.c();
    paramh.b();
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    while (!(paramObject instanceof b)) {
      return false;
    }
    return a((b)paramObject);
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("PushMessage(");
    int i1 = 1;
    if (a())
    {
      localStringBuilder.append("to:");
      if (this.a == null)
      {
        localStringBuilder.append("null");
        i1 = 0;
      }
    }
    else
    {
      if (i1 == 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append("id:");
      if (this.b != null) {
        break label307;
      }
      localStringBuilder.append("null");
      label80:
      localStringBuilder.append(", ");
      localStringBuilder.append("appId:");
      if (this.c != null) {
        break label319;
      }
      localStringBuilder.append("null");
      label111:
      localStringBuilder.append(", ");
      localStringBuilder.append("payload:");
      if (this.d != null) {
        break label331;
      }
      localStringBuilder.append("null");
      label142:
      if (e())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("createAt:");
        localStringBuilder.append(this.e);
      }
      if (f())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("ttl:");
        localStringBuilder.append(this.f);
      }
      if (g())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("collapseKey:");
        if (this.g != null) {
          break label343;
        }
        localStringBuilder.append("null");
      }
      label244:
      if (h())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("packageName:");
        if (this.h != null) {
          break label355;
        }
        localStringBuilder.append("null");
      }
    }
    for (;;)
    {
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
      break;
      label307:
      localStringBuilder.append(this.b);
      break label80;
      label319:
      localStringBuilder.append(this.c);
      break label111;
      label331:
      localStringBuilder.append(this.d);
      break label142;
      label343:
      localStringBuilder.append(this.g);
      break label244;
      label355:
      localStringBuilder.append(this.h);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\g\a\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */