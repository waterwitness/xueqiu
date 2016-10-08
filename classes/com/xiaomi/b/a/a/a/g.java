package com.xiaomi.b.a.a.a;

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
import org.apache.a.b.i;
import org.apache.a.b.k;
import org.apache.a.b.m;

public class g
  implements Serializable, Cloneable, org.apache.a.b<g, h>
{
  public static final Map<h, org.apache.a.a.b> g;
  private static final m h = new m("LandNodeInfo");
  private static final org.apache.a.b.e i = new org.apache.a.b.e("ip", (byte)11, (short)1);
  private static final org.apache.a.b.e j = new org.apache.a.b.e("failed_count", (byte)8, (short)2);
  private static final org.apache.a.b.e k = new org.apache.a.b.e("success_count", (byte)8, (short)3);
  private static final org.apache.a.b.e l = new org.apache.a.b.e("duration", (byte)10, (short)4);
  private static final org.apache.a.b.e m = new org.apache.a.b.e("size", (byte)8, (short)5);
  private static final org.apache.a.b.e n = new org.apache.a.b.e("exp_info", (byte)13, (short)6);
  private static final org.apache.a.b.e o = new org.apache.a.b.e("http_info", (byte)13, (short)7);
  public String a;
  public int b;
  public int c;
  public long d;
  public int e;
  public Map<String, Integer> f;
  private Map<Integer, Integer> p;
  private BitSet q = new BitSet(4);
  
  static
  {
    EnumMap localEnumMap = new EnumMap(h.class);
    localEnumMap.put(h.a, new org.apache.a.a.b("ip", (byte)1, new c((byte)11)));
    localEnumMap.put(h.b, new org.apache.a.a.b("failed_count", (byte)1, new c((byte)8)));
    localEnumMap.put(h.c, new org.apache.a.a.b("success_count", (byte)1, new c((byte)8)));
    localEnumMap.put(h.d, new org.apache.a.a.b("duration", (byte)1, new c((byte)10)));
    localEnumMap.put(h.e, new org.apache.a.a.b("size", (byte)1, new c((byte)8)));
    localEnumMap.put(h.f, new org.apache.a.a.b("exp_info", (byte)2, new org.apache.a.a.e(new c((byte)11), new c((byte)8))));
    localEnumMap.put(h.g, new org.apache.a.a.b("http_info", (byte)2, new org.apache.a.a.e(new c((byte)8), new c((byte)8))));
    g = Collections.unmodifiableMap(localEnumMap);
    org.apache.a.a.b.a(g.class, g);
  }
  
  private boolean e()
  {
    return this.a != null;
  }
  
  private boolean f()
  {
    return this.q.get(0);
  }
  
  private boolean g()
  {
    return this.q.get(1);
  }
  
  private boolean h()
  {
    return this.q.get(2);
  }
  
  private boolean i()
  {
    return this.q.get(3);
  }
  
  private boolean j()
  {
    return this.f != null;
  }
  
  private boolean k()
  {
    return this.p != null;
  }
  
  private void l()
  {
    if (this.a == null) {
      throw new i("Required field 'ip' was not present! Struct: " + toString(), (byte)0);
    }
  }
  
  public final void a()
  {
    this.q.set(0, true);
  }
  
  public final void a(org.apache.a.b.h paramh)
  {
    paramh.d();
    for (;;)
    {
      Object localObject = paramh.f();
      if (((org.apache.a.b.e)localObject).b == 0) {
        break;
      }
      int i1;
      int i2;
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
        if (((org.apache.a.b.e)localObject).b == 8)
        {
          this.b = paramh.m();
          a();
        }
        else
        {
          k.a(paramh, ((org.apache.a.b.e)localObject).b);
        }
        break;
      case 3: 
        if (((org.apache.a.b.e)localObject).b == 8)
        {
          this.c = paramh.m();
          b();
        }
        else
        {
          k.a(paramh, ((org.apache.a.b.e)localObject).b);
        }
        break;
      case 4: 
        if (((org.apache.a.b.e)localObject).b == 10)
        {
          this.d = paramh.n();
          c();
        }
        else
        {
          k.a(paramh, ((org.apache.a.b.e)localObject).b);
        }
        break;
      case 5: 
        if (((org.apache.a.b.e)localObject).b == 8)
        {
          this.e = paramh.m();
          d();
        }
        else
        {
          k.a(paramh, ((org.apache.a.b.e)localObject).b);
        }
        break;
      case 6: 
        if (((org.apache.a.b.e)localObject).b == 13)
        {
          localObject = paramh.g();
          this.f = new HashMap(((org.apache.a.b.g)localObject).c * 2);
          i1 = 0;
          while (i1 < ((org.apache.a.b.g)localObject).c)
          {
            String str = paramh.p();
            i2 = paramh.m();
            this.f.put(str, Integer.valueOf(i2));
            i1 += 1;
          }
        }
        k.a(paramh, ((org.apache.a.b.e)localObject).b);
        break;
      case 7: 
        if (((org.apache.a.b.e)localObject).b == 13)
        {
          localObject = paramh.g();
          this.p = new HashMap(((org.apache.a.b.g)localObject).c * 2);
          i1 = 0;
          while (i1 < ((org.apache.a.b.g)localObject).c)
          {
            i2 = paramh.m();
            int i3 = paramh.m();
            this.p.put(Integer.valueOf(i2), Integer.valueOf(i3));
            i1 += 1;
          }
        }
        else
        {
          k.a(paramh, ((org.apache.a.b.e)localObject).b);
        }
        break;
      }
    }
    paramh.e();
    if (!f()) {
      throw new i("Required field 'failed_count' was not found in serialized data! Struct: " + toString(), (byte)0);
    }
    if (!g()) {
      throw new i("Required field 'success_count' was not found in serialized data! Struct: " + toString(), (byte)0);
    }
    if (!h()) {
      throw new i("Required field 'duration' was not found in serialized data! Struct: " + toString(), (byte)0);
    }
    if (!i()) {
      throw new i("Required field 'size' was not found in serialized data! Struct: " + toString(), (byte)0);
    }
    l();
  }
  
  public final void b()
  {
    this.q.set(1, true);
  }
  
  public final void b(org.apache.a.b.h paramh)
  {
    l();
    paramh.a();
    if (this.a != null)
    {
      paramh.a(i);
      paramh.a(this.a);
    }
    paramh.a(j);
    paramh.a(this.b);
    paramh.a(k);
    paramh.a(this.c);
    paramh.a(l);
    paramh.a(this.d);
    paramh.a(m);
    paramh.a(this.e);
    Iterator localIterator;
    Map.Entry localEntry;
    if ((this.f != null) && (j()))
    {
      paramh.a(n);
      paramh.a(new org.apache.a.b.g((byte)11, (byte)8, this.f.size()));
      localIterator = this.f.entrySet().iterator();
      while (localIterator.hasNext())
      {
        localEntry = (Map.Entry)localIterator.next();
        paramh.a((String)localEntry.getKey());
        paramh.a(((Integer)localEntry.getValue()).intValue());
      }
    }
    if ((this.p != null) && (k()))
    {
      paramh.a(o);
      paramh.a(new org.apache.a.b.g((byte)8, (byte)8, this.p.size()));
      localIterator = this.p.entrySet().iterator();
      while (localIterator.hasNext())
      {
        localEntry = (Map.Entry)localIterator.next();
        paramh.a(((Integer)localEntry.getKey()).intValue());
        paramh.a(((Integer)localEntry.getValue()).intValue());
      }
    }
    paramh.c();
    paramh.b();
  }
  
  public final void c()
  {
    this.q.set(2, true);
  }
  
  public final void d()
  {
    this.q.set(3, true);
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
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
            } while (!(paramObject instanceof g));
            paramObject = (g)paramObject;
          } while (paramObject == null);
          bool1 = e();
          bool2 = ((g)paramObject).e();
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.equals(((g)paramObject).a)) || (this.b != ((g)paramObject).b) || (this.c != ((g)paramObject).c) || (this.d != ((g)paramObject).d) || (this.e != ((g)paramObject).e)));
        bool1 = j();
        bool2 = ((g)paramObject).j();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.f.equals(((g)paramObject).f))));
      bool1 = k();
      bool2 = ((g)paramObject).k();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.p.equals(((g)paramObject).p))));
    return true;
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("LandNodeInfo(");
    localStringBuilder.append("ip:");
    if (this.a == null)
    {
      localStringBuilder.append("null");
      localStringBuilder.append(", ");
      localStringBuilder.append("failed_count:");
      localStringBuilder.append(this.b);
      localStringBuilder.append(", ");
      localStringBuilder.append("success_count:");
      localStringBuilder.append(this.c);
      localStringBuilder.append(", ");
      localStringBuilder.append("duration:");
      localStringBuilder.append(this.d);
      localStringBuilder.append(", ");
      localStringBuilder.append("size:");
      localStringBuilder.append(this.e);
      if (j())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("exp_info:");
        if (this.f != null) {
          break label235;
        }
        localStringBuilder.append("null");
      }
      label172:
      if (k())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("http_info:");
        if (this.p != null) {
          break label247;
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
      label235:
      localStringBuilder.append(this.f);
      break label172;
      label247:
      localStringBuilder.append(this.p);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\b\a\a\a\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */