package com.xiaomi.b.a.a.a;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.a.a.f;
import org.apache.a.a.g;
import org.apache.a.b.e;
import org.apache.a.b.h;
import org.apache.a.b.k;
import org.apache.a.b.l;
import org.apache.a.b.m;

public class c
  implements Serializable, Cloneable, org.apache.a.b<c, d>
{
  public static final Map<d, org.apache.a.a.b> k;
  private static final m l = new m("HttpApi");
  private static final e m = new e("category", (byte)11, (short)1);
  private static final e n = new e("uuid", (byte)11, (short)2);
  private static final e o = new e("version", (byte)11, (short)3);
  private static final e p = new e("network", (byte)11, (short)4);
  private static final e q = new e("client_ip", (byte)11, (short)5);
  private static final e r = new e("location", (byte)12, (short)6);
  private static final e s = new e("host_info", (byte)14, (short)7);
  private static final e t = new e("version_type", (byte)11, (short)8);
  private static final e u = new e("app_name", (byte)11, (short)9);
  private static final e v = new e("app_version", (byte)11, (short)10);
  public String a = "";
  public String b;
  public String c;
  public String d;
  public String e;
  public i f;
  public Set<a> g;
  public String h = "";
  public String i = "";
  public String j = "";
  
  static
  {
    EnumMap localEnumMap = new EnumMap(d.class);
    localEnumMap.put(d.a, new org.apache.a.a.b("category", (byte)1, new org.apache.a.a.c((byte)11)));
    localEnumMap.put(d.b, new org.apache.a.a.b("uuid", (byte)1, new org.apache.a.a.c((byte)11)));
    localEnumMap.put(d.c, new org.apache.a.a.b("version", (byte)1, new org.apache.a.a.c((byte)11)));
    localEnumMap.put(d.d, new org.apache.a.a.b("network", (byte)1, new org.apache.a.a.c((byte)11)));
    localEnumMap.put(d.e, new org.apache.a.a.b("client_ip", (byte)2, new org.apache.a.a.c((byte)11)));
    localEnumMap.put(d.f, new org.apache.a.a.b("location", (byte)2, new g(i.class)));
    localEnumMap.put(d.g, new org.apache.a.a.b("host_info", (byte)2, new f(new g(a.class))));
    localEnumMap.put(d.h, new org.apache.a.a.b("version_type", (byte)2, new org.apache.a.a.c((byte)11)));
    localEnumMap.put(d.i, new org.apache.a.a.b("app_name", (byte)2, new org.apache.a.a.c((byte)11)));
    localEnumMap.put(d.j, new org.apache.a.a.b("app_version", (byte)2, new org.apache.a.a.c((byte)11)));
    k = Collections.unmodifiableMap(localEnumMap);
    org.apache.a.a.b.a(c.class, k);
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
    return this.e != null;
  }
  
  private boolean f()
  {
    return this.f != null;
  }
  
  private boolean g()
  {
    return this.g != null;
  }
  
  private boolean h()
  {
    return this.h != null;
  }
  
  private boolean i()
  {
    return this.i != null;
  }
  
  private boolean j()
  {
    return this.j != null;
  }
  
  private void k()
  {
    if (this.a == null) {
      throw new org.apache.a.b.i("Required field 'category' was not present! Struct: " + toString(), (byte)0);
    }
    if (this.b == null) {
      throw new org.apache.a.b.i("Required field 'uuid' was not present! Struct: " + toString(), (byte)0);
    }
    if (this.c == null) {
      throw new org.apache.a.b.i("Required field 'version' was not present! Struct: " + toString(), (byte)0);
    }
    if (this.d == null) {
      throw new org.apache.a.b.i("Required field 'network' was not present! Struct: " + toString(), (byte)0);
    }
  }
  
  public final void a(h paramh)
  {
    paramh.d();
    for (;;)
    {
      Object localObject = paramh.f();
      if (((e)localObject).b == 0) {
        break;
      }
      switch (((e)localObject).c)
      {
      default: 
        k.a(paramh, ((e)localObject).b);
        break;
      case 1: 
        if (((e)localObject).b == 11) {
          this.a = paramh.p();
        } else {
          k.a(paramh, ((e)localObject).b);
        }
        break;
      case 2: 
        if (((e)localObject).b == 11) {
          this.b = paramh.p();
        } else {
          k.a(paramh, ((e)localObject).b);
        }
        break;
      case 3: 
        if (((e)localObject).b == 11) {
          this.c = paramh.p();
        } else {
          k.a(paramh, ((e)localObject).b);
        }
        break;
      case 4: 
        if (((e)localObject).b == 11) {
          this.d = paramh.p();
        } else {
          k.a(paramh, ((e)localObject).b);
        }
        break;
      case 5: 
        if (((e)localObject).b == 11) {
          this.e = paramh.p();
        } else {
          k.a(paramh, ((e)localObject).b);
        }
        break;
      case 6: 
        if (((e)localObject).b == 12)
        {
          this.f = new i();
          this.f.a(paramh);
        }
        else
        {
          k.a(paramh, ((e)localObject).b);
        }
        break;
      case 7: 
        if (((e)localObject).b == 14)
        {
          localObject = paramh.i();
          this.g = new HashSet(((l)localObject).b * 2);
          int i1 = 0;
          while (i1 < ((l)localObject).b)
          {
            a locala = new a();
            locala.a(paramh);
            this.g.add(locala);
            i1 += 1;
          }
        }
        k.a(paramh, ((e)localObject).b);
        break;
      case 8: 
        if (((e)localObject).b == 11) {
          this.h = paramh.p();
        } else {
          k.a(paramh, ((e)localObject).b);
        }
        break;
      case 9: 
        if (((e)localObject).b == 11) {
          this.i = paramh.p();
        } else {
          k.a(paramh, ((e)localObject).b);
        }
        break;
      case 10: 
        if (((e)localObject).b == 11) {
          this.j = paramh.p();
        } else {
          k.a(paramh, ((e)localObject).b);
        }
        break;
      }
    }
    paramh.e();
    k();
  }
  
  public final boolean a(c paramc)
  {
    if (paramc == null) {}
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
                    do
                    {
                      do
                      {
                        return false;
                        bool1 = a();
                        bool2 = paramc.a();
                      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.equals(paramc.a))));
                      bool1 = b();
                      bool2 = paramc.b();
                    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.b.equals(paramc.b))));
                    bool1 = c();
                    bool2 = paramc.c();
                  } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.c.equals(paramc.c))));
                  bool1 = d();
                  bool2 = paramc.d();
                } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.d.equals(paramc.d))));
                bool1 = e();
                bool2 = paramc.e();
              } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.e.equals(paramc.e))));
              bool1 = f();
              bool2 = paramc.f();
            } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.f.a(paramc.f))));
            bool1 = g();
            bool2 = paramc.g();
          } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.g.equals(paramc.g))));
          bool1 = h();
          bool2 = paramc.h();
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.h.equals(paramc.h))));
        bool1 = i();
        bool2 = paramc.i();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.i.equals(paramc.i))));
      bool1 = j();
      bool2 = paramc.j();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.j.equals(paramc.j))));
    return true;
  }
  
  public final void b(h paramh)
  {
    k();
    paramh.a();
    if (this.a != null)
    {
      paramh.a(m);
      paramh.a(this.a);
    }
    if (this.b != null)
    {
      paramh.a(n);
      paramh.a(this.b);
    }
    if (this.c != null)
    {
      paramh.a(o);
      paramh.a(this.c);
    }
    if (this.d != null)
    {
      paramh.a(p);
      paramh.a(this.d);
    }
    if ((this.e != null) && (e()))
    {
      paramh.a(q);
      paramh.a(this.e);
    }
    if ((this.f != null) && (f()))
    {
      paramh.a(r);
      this.f.b(paramh);
    }
    if ((this.g != null) && (g()))
    {
      paramh.a(s);
      paramh.a(new l((byte)12, this.g.size()));
      Iterator localIterator = this.g.iterator();
      while (localIterator.hasNext()) {
        ((a)localIterator.next()).b(paramh);
      }
    }
    if ((this.h != null) && (h()))
    {
      paramh.a(t);
      paramh.a(this.h);
    }
    if ((this.i != null) && (i()))
    {
      paramh.a(u);
      paramh.a(this.i);
    }
    if ((this.j != null) && (j()))
    {
      paramh.a(v);
      paramh.a(this.j);
    }
    paramh.c();
    paramh.b();
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    while (!(paramObject instanceof c)) {
      return false;
    }
    return a((c)paramObject);
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("HttpApi(");
    localStringBuilder.append("category:");
    if (this.a == null)
    {
      localStringBuilder.append("null");
      localStringBuilder.append(", ");
      localStringBuilder.append("uuid:");
      if (this.b != null) {
        break label380;
      }
      localStringBuilder.append("null");
      label65:
      localStringBuilder.append(", ");
      localStringBuilder.append("version:");
      if (this.c != null) {
        break label392;
      }
      localStringBuilder.append("null");
      label96:
      localStringBuilder.append(", ");
      localStringBuilder.append("network:");
      if (this.d != null) {
        break label404;
      }
      localStringBuilder.append("null");
      label127:
      if (e())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("client_ip:");
        if (this.e != null) {
          break label416;
        }
        localStringBuilder.append("null");
      }
      label165:
      if (f())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("location:");
        if (this.f != null) {
          break label428;
        }
        localStringBuilder.append("null");
      }
      label203:
      if (g())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("host_info:");
        if (this.g != null) {
          break label440;
        }
        localStringBuilder.append("null");
      }
      label241:
      if (h())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("version_type:");
        if (this.h != null) {
          break label452;
        }
        localStringBuilder.append("null");
      }
      label279:
      if (i())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("app_name:");
        if (this.i != null) {
          break label464;
        }
        localStringBuilder.append("null");
      }
      label317:
      if (j())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("app_version:");
        if (this.j != null) {
          break label476;
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
      label380:
      localStringBuilder.append(this.b);
      break label65;
      label392:
      localStringBuilder.append(this.c);
      break label96;
      label404:
      localStringBuilder.append(this.d);
      break label127;
      label416:
      localStringBuilder.append(this.e);
      break label165;
      label428:
      localStringBuilder.append(this.f);
      break label203;
      label440:
      localStringBuilder.append(this.g);
      break label241;
      label452:
      localStringBuilder.append(this.h);
      break label279;
      label464:
      localStringBuilder.append(this.i);
      break label317;
      label476:
      localStringBuilder.append(this.j);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\b\a\a\a\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */