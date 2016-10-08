package com.xiaomi.g.a;

import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.a.a.c;
import org.apache.a.b.g;
import org.apache.a.b.h;
import org.apache.a.b.i;
import org.apache.a.b.k;
import org.apache.a.b.m;

public class d
  implements Serializable, Cloneable, org.apache.a.b<d, e>
{
  public static final Map<e, org.apache.a.a.b> m;
  private static final m n = new m("PushMetaInfo");
  private static final org.apache.a.b.e o = new org.apache.a.b.e("id", (byte)11, (short)1);
  private static final org.apache.a.b.e p = new org.apache.a.b.e("messageTs", (byte)10, (short)2);
  private static final org.apache.a.b.e q = new org.apache.a.b.e("topic", (byte)11, (short)3);
  private static final org.apache.a.b.e r = new org.apache.a.b.e("title", (byte)11, (short)4);
  private static final org.apache.a.b.e s = new org.apache.a.b.e("description", (byte)11, (short)5);
  private static final org.apache.a.b.e t = new org.apache.a.b.e("notifyType", (byte)8, (short)6);
  private static final org.apache.a.b.e u = new org.apache.a.b.e("url", (byte)11, (short)7);
  private static final org.apache.a.b.e v = new org.apache.a.b.e("passThrough", (byte)8, (short)8);
  private static final org.apache.a.b.e w = new org.apache.a.b.e("notifyId", (byte)8, (short)9);
  private static final org.apache.a.b.e x = new org.apache.a.b.e("extra", (byte)13, (short)10);
  private static final org.apache.a.b.e y = new org.apache.a.b.e("internal", (byte)13, (short)11);
  private static final org.apache.a.b.e z = new org.apache.a.b.e("ignoreRegInfo", (byte)2, (short)12);
  private BitSet A = new BitSet(5);
  public String a;
  public long b;
  public String c;
  public String d;
  public String e;
  public int f;
  public String g;
  public int h;
  public int i;
  public Map<String, String> j;
  public Map<String, String> k;
  public boolean l;
  
  static
  {
    EnumMap localEnumMap = new EnumMap(e.class);
    localEnumMap.put(e.a, new org.apache.a.a.b("id", (byte)1, new c((byte)11)));
    localEnumMap.put(e.b, new org.apache.a.a.b("messageTs", (byte)1, new c((byte)10)));
    localEnumMap.put(e.c, new org.apache.a.a.b("topic", (byte)2, new c((byte)11)));
    localEnumMap.put(e.d, new org.apache.a.a.b("title", (byte)2, new c((byte)11)));
    localEnumMap.put(e.e, new org.apache.a.a.b("description", (byte)2, new c((byte)11)));
    localEnumMap.put(e.f, new org.apache.a.a.b("notifyType", (byte)2, new c((byte)8)));
    localEnumMap.put(e.g, new org.apache.a.a.b("url", (byte)2, new c((byte)11)));
    localEnumMap.put(e.h, new org.apache.a.a.b("passThrough", (byte)2, new c((byte)8)));
    localEnumMap.put(e.i, new org.apache.a.a.b("notifyId", (byte)2, new c((byte)8)));
    localEnumMap.put(e.j, new org.apache.a.a.b("extra", (byte)2, new org.apache.a.a.e(new c((byte)11), new c((byte)11))));
    localEnumMap.put(e.k, new org.apache.a.a.b("internal", (byte)2, new org.apache.a.a.e(new c((byte)11), new c((byte)11))));
    localEnumMap.put(e.l, new org.apache.a.a.b("ignoreRegInfo", (byte)2, new c((byte)2)));
    m = Collections.unmodifiableMap(localEnumMap);
    org.apache.a.a.b.a(d.class, m);
  }
  
  public d()
  {
    this.l = false;
  }
  
  public d(d paramd)
  {
    this.A.clear();
    this.A.or(paramd.A);
    if (paramd.a()) {
      this.a = paramd.a;
    }
    this.b = paramd.b;
    if (paramd.c()) {
      this.c = paramd.c;
    }
    if (paramd.d()) {
      this.d = paramd.d;
    }
    if (paramd.e()) {
      this.e = paramd.e;
    }
    this.f = paramd.f;
    if (paramd.g()) {
      this.g = paramd.g;
    }
    this.h = paramd.h;
    this.i = paramd.i;
    HashMap localHashMap;
    Iterator localIterator;
    Map.Entry localEntry;
    if (paramd.j())
    {
      localHashMap = new HashMap();
      localIterator = paramd.j.entrySet().iterator();
      while (localIterator.hasNext())
      {
        localEntry = (Map.Entry)localIterator.next();
        localHashMap.put((String)localEntry.getKey(), (String)localEntry.getValue());
      }
      this.j = localHashMap;
    }
    if (paramd.k())
    {
      localHashMap = new HashMap();
      localIterator = paramd.k.entrySet().iterator();
      while (localIterator.hasNext())
      {
        localEntry = (Map.Entry)localIterator.next();
        localHashMap.put((String)localEntry.getKey(), (String)localEntry.getValue());
      }
      this.k = localHashMap;
    }
    this.l = paramd.l;
  }
  
  private boolean a()
  {
    return this.a != null;
  }
  
  private boolean b()
  {
    return this.A.get(0);
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
    return this.A.get(1);
  }
  
  private boolean g()
  {
    return this.g != null;
  }
  
  private boolean h()
  {
    return this.A.get(2);
  }
  
  private boolean i()
  {
    return this.A.get(3);
  }
  
  private boolean j()
  {
    return this.j != null;
  }
  
  private boolean k()
  {
    return this.k != null;
  }
  
  private boolean l()
  {
    return this.A.get(4);
  }
  
  private void m()
  {
    if (this.a == null) {
      throw new i("Required field 'id' was not present! Struct: " + toString(), (byte)0);
    }
  }
  
  public final void a(String paramString1, String paramString2)
  {
    if (this.j == null) {
      this.j = new HashMap();
    }
    this.j.put(paramString1, paramString2);
  }
  
  public final void a(h paramh)
  {
    paramh.d();
    for (;;)
    {
      Object localObject = paramh.f();
      if (((org.apache.a.b.e)localObject).b == 0) {
        break;
      }
      int i1;
      String str1;
      String str2;
      switch (((org.apache.a.b.e)localObject).c)
      {
      default: 
        k.a(paramh, ((org.apache.a.b.e)localObject).b);
        break;
      case 1: 
        if (((org.apache.a.b.e)localObject).b == 11) {
          this.a = paramh.p();
        } else {
          k.a(paramh, ((org.apache.a.b.e)localObject).b);
        }
        break;
      case 2: 
        if (((org.apache.a.b.e)localObject).b == 10)
        {
          this.b = paramh.n();
          this.A.set(0, true);
        }
        else
        {
          k.a(paramh, ((org.apache.a.b.e)localObject).b);
        }
        break;
      case 3: 
        if (((org.apache.a.b.e)localObject).b == 11) {
          this.c = paramh.p();
        } else {
          k.a(paramh, ((org.apache.a.b.e)localObject).b);
        }
        break;
      case 4: 
        if (((org.apache.a.b.e)localObject).b == 11) {
          this.d = paramh.p();
        } else {
          k.a(paramh, ((org.apache.a.b.e)localObject).b);
        }
        break;
      case 5: 
        if (((org.apache.a.b.e)localObject).b == 11) {
          this.e = paramh.p();
        } else {
          k.a(paramh, ((org.apache.a.b.e)localObject).b);
        }
        break;
      case 6: 
        if (((org.apache.a.b.e)localObject).b == 8)
        {
          this.f = paramh.m();
          this.A.set(1, true);
        }
        else
        {
          k.a(paramh, ((org.apache.a.b.e)localObject).b);
        }
        break;
      case 7: 
        if (((org.apache.a.b.e)localObject).b == 11) {
          this.g = paramh.p();
        } else {
          k.a(paramh, ((org.apache.a.b.e)localObject).b);
        }
        break;
      case 8: 
        if (((org.apache.a.b.e)localObject).b == 8)
        {
          this.h = paramh.m();
          this.A.set(2, true);
        }
        else
        {
          k.a(paramh, ((org.apache.a.b.e)localObject).b);
        }
        break;
      case 9: 
        if (((org.apache.a.b.e)localObject).b == 8)
        {
          this.i = paramh.m();
          this.A.set(3, true);
        }
        else
        {
          k.a(paramh, ((org.apache.a.b.e)localObject).b);
        }
        break;
      case 10: 
        if (((org.apache.a.b.e)localObject).b == 13)
        {
          localObject = paramh.g();
          this.j = new HashMap(((g)localObject).c * 2);
          i1 = 0;
          while (i1 < ((g)localObject).c)
          {
            str1 = paramh.p();
            str2 = paramh.p();
            this.j.put(str1, str2);
            i1 += 1;
          }
        }
        k.a(paramh, ((org.apache.a.b.e)localObject).b);
        break;
      case 11: 
        if (((org.apache.a.b.e)localObject).b == 13)
        {
          localObject = paramh.g();
          this.k = new HashMap(((g)localObject).c * 2);
          i1 = 0;
          while (i1 < ((g)localObject).c)
          {
            str1 = paramh.p();
            str2 = paramh.p();
            this.k.put(str1, str2);
            i1 += 1;
          }
        }
        k.a(paramh, ((org.apache.a.b.e)localObject).b);
        break;
      case 12: 
        if (((org.apache.a.b.e)localObject).b == 2)
        {
          this.l = paramh.j();
          this.A.set(4, true);
        }
        else
        {
          k.a(paramh, ((org.apache.a.b.e)localObject).b);
        }
        break;
      }
    }
    paramh.e();
    if (!b()) {
      throw new i("Required field 'messageTs' was not found in serialized data! Struct: " + toString(), (byte)0);
    }
    m();
  }
  
  public final boolean a(d paramd)
  {
    if (paramd == null) {}
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
                        do
                        {
                          return false;
                          bool1 = a();
                          bool2 = paramd.a();
                        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.equals(paramd.a)) || (this.b != paramd.b)));
                        bool1 = c();
                        bool2 = paramd.c();
                      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.c.equals(paramd.c))));
                      bool1 = d();
                      bool2 = paramd.d();
                    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.d.equals(paramd.d))));
                    bool1 = e();
                    bool2 = paramd.e();
                  } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.e.equals(paramd.e))));
                  bool1 = f();
                  bool2 = paramd.f();
                } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.f != paramd.f)));
                bool1 = g();
                bool2 = paramd.g();
              } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.g.equals(paramd.g))));
              bool1 = h();
              bool2 = paramd.h();
            } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.h != paramd.h)));
            bool1 = i();
            bool2 = paramd.i();
          } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.i != paramd.i)));
          bool1 = j();
          bool2 = paramd.j();
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.j.equals(paramd.j))));
        bool1 = k();
        bool2 = paramd.k();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.k.equals(paramd.k))));
      bool1 = l();
      bool2 = paramd.l();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.l != paramd.l)));
    return true;
  }
  
  public final void b(h paramh)
  {
    m();
    paramh.a();
    if (this.a != null)
    {
      paramh.a(o);
      paramh.a(this.a);
    }
    paramh.a(p);
    paramh.a(this.b);
    if ((this.c != null) && (c()))
    {
      paramh.a(q);
      paramh.a(this.c);
    }
    if ((this.d != null) && (d()))
    {
      paramh.a(r);
      paramh.a(this.d);
    }
    if ((this.e != null) && (e()))
    {
      paramh.a(s);
      paramh.a(this.e);
    }
    if (f())
    {
      paramh.a(t);
      paramh.a(this.f);
    }
    if ((this.g != null) && (g()))
    {
      paramh.a(u);
      paramh.a(this.g);
    }
    if (h())
    {
      paramh.a(v);
      paramh.a(this.h);
    }
    if (i())
    {
      paramh.a(w);
      paramh.a(this.i);
    }
    Iterator localIterator;
    Map.Entry localEntry;
    if ((this.j != null) && (j()))
    {
      paramh.a(x);
      paramh.a(new g((byte)11, (byte)11, this.j.size()));
      localIterator = this.j.entrySet().iterator();
      while (localIterator.hasNext())
      {
        localEntry = (Map.Entry)localIterator.next();
        paramh.a((String)localEntry.getKey());
        paramh.a((String)localEntry.getValue());
      }
    }
    if ((this.k != null) && (k()))
    {
      paramh.a(y);
      paramh.a(new g((byte)11, (byte)11, this.k.size()));
      localIterator = this.k.entrySet().iterator();
      while (localIterator.hasNext())
      {
        localEntry = (Map.Entry)localIterator.next();
        paramh.a((String)localEntry.getKey());
        paramh.a((String)localEntry.getValue());
      }
    }
    if (l())
    {
      paramh.a(z);
      paramh.a(this.l);
    }
    paramh.c();
    paramh.b();
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    while (!(paramObject instanceof d)) {
      return false;
    }
    return a((d)paramObject);
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("PushMetaInfo(");
    localStringBuilder.append("id:");
    if (this.a == null)
    {
      localStringBuilder.append("null");
      localStringBuilder.append(", ");
      localStringBuilder.append("messageTs:");
      localStringBuilder.append(this.b);
      if (c())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("topic:");
        if (this.c != null) {
          break label440;
        }
        localStringBuilder.append("null");
      }
      label97:
      if (d())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("title:");
        if (this.d != null) {
          break label452;
        }
        localStringBuilder.append("null");
      }
      label135:
      if (e())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("description:");
        if (this.e != null) {
          break label464;
        }
        localStringBuilder.append("null");
      }
      label173:
      if (f())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("notifyType:");
        localStringBuilder.append(this.f);
      }
      if (g())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("url:");
        if (this.g != null) {
          break label476;
        }
        localStringBuilder.append("null");
      }
      label243:
      if (h())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("passThrough:");
        localStringBuilder.append(this.h);
      }
      if (i())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("notifyId:");
        localStringBuilder.append(this.i);
      }
      if (j())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("extra:");
        if (this.j != null) {
          break label488;
        }
        localStringBuilder.append("null");
      }
      label345:
      if (k())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("internal:");
        if (this.k != null) {
          break label500;
        }
        localStringBuilder.append("null");
      }
    }
    for (;;)
    {
      if (l())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("ignoreRegInfo:");
        localStringBuilder.append(this.l);
      }
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
      break;
      label440:
      localStringBuilder.append(this.c);
      break label97;
      label452:
      localStringBuilder.append(this.d);
      break label135;
      label464:
      localStringBuilder.append(this.e);
      break label173;
      label476:
      localStringBuilder.append(this.g);
      break label243;
      label488:
      localStringBuilder.append(this.j);
      break label345;
      label500:
      localStringBuilder.append(this.k);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\g\a\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */