package com.xiaomi.b.a.a.a;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.a.a.c;
import org.apache.a.a.f;
import org.apache.a.a.g;
import org.apache.a.b.e;
import org.apache.a.b.h;

public class k
  implements Serializable, Cloneable, org.apache.a.b<k, l>
{
  public static final Map<l, org.apache.a.a.b> a;
  private static final org.apache.a.b.m b = new org.apache.a.b.m("Passport");
  private static final e c = new e("category", (byte)11, (short)1);
  private static final e d = new e("uuid", (byte)11, (short)2);
  private static final e e = new e("version", (byte)11, (short)3);
  private static final e f = new e("network", (byte)11, (short)4);
  private static final e g = new e("rid", (byte)11, (short)5);
  private static final e h = new e("location", (byte)12, (short)6);
  private static final e i = new e("host_info", (byte)14, (short)7);
  private String j = "";
  private String k;
  private String l;
  private String m;
  private String n;
  private i o;
  private Set<m> p;
  
  static
  {
    EnumMap localEnumMap = new EnumMap(l.class);
    localEnumMap.put(l.a, new org.apache.a.a.b("category", (byte)1, new c((byte)11)));
    localEnumMap.put(l.b, new org.apache.a.a.b("uuid", (byte)1, new c((byte)11)));
    localEnumMap.put(l.c, new org.apache.a.a.b("version", (byte)1, new c((byte)11)));
    localEnumMap.put(l.d, new org.apache.a.a.b("network", (byte)1, new c((byte)11)));
    localEnumMap.put(l.e, new org.apache.a.a.b("rid", (byte)1, new c((byte)11)));
    localEnumMap.put(l.f, new org.apache.a.a.b("location", (byte)2, new g(i.class)));
    localEnumMap.put(l.g, new org.apache.a.a.b("host_info", (byte)2, new f(new g(m.class))));
    a = Collections.unmodifiableMap(localEnumMap);
    org.apache.a.a.b.a(k.class, a);
  }
  
  private boolean a()
  {
    return this.j != null;
  }
  
  private boolean b()
  {
    return this.k != null;
  }
  
  private boolean c()
  {
    return this.l != null;
  }
  
  private boolean d()
  {
    return this.m != null;
  }
  
  private boolean e()
  {
    return this.n != null;
  }
  
  private boolean f()
  {
    return this.o != null;
  }
  
  private boolean g()
  {
    return this.p != null;
  }
  
  private void h()
  {
    if (this.j == null) {
      throw new org.apache.a.b.i("Required field 'category' was not present! Struct: " + toString(), (byte)0);
    }
    if (this.k == null) {
      throw new org.apache.a.b.i("Required field 'uuid' was not present! Struct: " + toString(), (byte)0);
    }
    if (this.l == null) {
      throw new org.apache.a.b.i("Required field 'version' was not present! Struct: " + toString(), (byte)0);
    }
    if (this.m == null) {
      throw new org.apache.a.b.i("Required field 'network' was not present! Struct: " + toString(), (byte)0);
    }
    if (this.n == null) {
      throw new org.apache.a.b.i("Required field 'rid' was not present! Struct: " + toString(), (byte)0);
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
        org.apache.a.b.k.a(paramh, ((e)localObject).b);
        break;
      case 1: 
        if (((e)localObject).b == 11) {
          this.j = paramh.p();
        } else {
          org.apache.a.b.k.a(paramh, ((e)localObject).b);
        }
        break;
      case 2: 
        if (((e)localObject).b == 11) {
          this.k = paramh.p();
        } else {
          org.apache.a.b.k.a(paramh, ((e)localObject).b);
        }
        break;
      case 3: 
        if (((e)localObject).b == 11) {
          this.l = paramh.p();
        } else {
          org.apache.a.b.k.a(paramh, ((e)localObject).b);
        }
        break;
      case 4: 
        if (((e)localObject).b == 11) {
          this.m = paramh.p();
        } else {
          org.apache.a.b.k.a(paramh, ((e)localObject).b);
        }
        break;
      case 5: 
        if (((e)localObject).b == 11) {
          this.n = paramh.p();
        } else {
          org.apache.a.b.k.a(paramh, ((e)localObject).b);
        }
        break;
      case 6: 
        if (((e)localObject).b == 12)
        {
          this.o = new i();
          this.o.a(paramh);
        }
        else
        {
          org.apache.a.b.k.a(paramh, ((e)localObject).b);
        }
        break;
      case 7: 
        if (((e)localObject).b == 14)
        {
          localObject = paramh.i();
          this.p = new HashSet(((org.apache.a.b.l)localObject).b * 2);
          int i1 = 0;
          while (i1 < ((org.apache.a.b.l)localObject).b)
          {
            m localm = new m();
            localm.a(paramh);
            this.p.add(localm);
            i1 += 1;
          }
        }
        else
        {
          org.apache.a.b.k.a(paramh, ((e)localObject).b);
        }
        break;
      }
    }
    paramh.e();
    h();
  }
  
  public final boolean a(k paramk)
  {
    if (paramk == null) {}
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
                  return false;
                  bool1 = a();
                  bool2 = paramk.a();
                } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.j.equals(paramk.j))));
                bool1 = b();
                bool2 = paramk.b();
              } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.k.equals(paramk.k))));
              bool1 = c();
              bool2 = paramk.c();
            } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.l.equals(paramk.l))));
            bool1 = d();
            bool2 = paramk.d();
          } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.m.equals(paramk.m))));
          bool1 = e();
          bool2 = paramk.e();
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.n.equals(paramk.n))));
        bool1 = f();
        bool2 = paramk.f();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.o.a(paramk.o))));
      bool1 = g();
      bool2 = paramk.g();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.p.equals(paramk.p))));
    return true;
  }
  
  public final void b(h paramh)
  {
    h();
    paramh.a();
    if (this.j != null)
    {
      paramh.a(c);
      paramh.a(this.j);
    }
    if (this.k != null)
    {
      paramh.a(d);
      paramh.a(this.k);
    }
    if (this.l != null)
    {
      paramh.a(e);
      paramh.a(this.l);
    }
    if (this.m != null)
    {
      paramh.a(f);
      paramh.a(this.m);
    }
    if (this.n != null)
    {
      paramh.a(g);
      paramh.a(this.n);
    }
    if ((this.o != null) && (f()))
    {
      paramh.a(h);
      this.o.b(paramh);
    }
    if ((this.p != null) && (g()))
    {
      paramh.a(i);
      paramh.a(new org.apache.a.b.l((byte)12, this.p.size()));
      Iterator localIterator = this.p.iterator();
      while (localIterator.hasNext()) {
        ((m)localIterator.next()).b(paramh);
      }
    }
    paramh.c();
    paramh.b();
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    while (!(paramObject instanceof k)) {
      return false;
    }
    return a((k)paramObject);
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Passport(");
    localStringBuilder.append("category:");
    if (this.j == null)
    {
      localStringBuilder.append("null");
      localStringBuilder.append(", ");
      localStringBuilder.append("uuid:");
      if (this.k != null) {
        break label259;
      }
      localStringBuilder.append("null");
      label65:
      localStringBuilder.append(", ");
      localStringBuilder.append("version:");
      if (this.l != null) {
        break label271;
      }
      localStringBuilder.append("null");
      label96:
      localStringBuilder.append(", ");
      localStringBuilder.append("network:");
      if (this.m != null) {
        break label283;
      }
      localStringBuilder.append("null");
      label127:
      localStringBuilder.append(", ");
      localStringBuilder.append("rid:");
      if (this.n != null) {
        break label295;
      }
      localStringBuilder.append("null");
      label158:
      if (f())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("location:");
        if (this.o != null) {
          break label307;
        }
        localStringBuilder.append("null");
      }
      label196:
      if (g())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("host_info:");
        if (this.p != null) {
          break label319;
        }
        localStringBuilder.append("null");
      }
    }
    for (;;)
    {
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.j);
      break;
      label259:
      localStringBuilder.append(this.k);
      break label65;
      label271:
      localStringBuilder.append(this.l);
      break label96;
      label283:
      localStringBuilder.append(this.m);
      break label127;
      label295:
      localStringBuilder.append(this.n);
      break label158;
      label307:
      localStringBuilder.append(this.o);
      break label196;
      label319:
      localStringBuilder.append(this.p);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\b\a\a\a\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */