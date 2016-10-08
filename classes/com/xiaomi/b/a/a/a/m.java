package com.xiaomi.b.a.a.a;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.a.a.c;
import org.apache.a.a.d;
import org.apache.a.a.g;
import org.apache.a.b.e;
import org.apache.a.b.f;
import org.apache.a.b.h;
import org.apache.a.b.i;
import org.apache.a.b.k;

public class m
  implements Serializable, Cloneable, org.apache.a.b<m, n>
{
  public static final Map<n, org.apache.a.a.b> a;
  private static final org.apache.a.b.m b = new org.apache.a.b.m("PassportHostInfo");
  private static final e c = new e("host", (byte)11, (short)1);
  private static final e d = new e("land_node_info", (byte)15, (short)2);
  private String e;
  private List<o> f;
  
  static
  {
    EnumMap localEnumMap = new EnumMap(n.class);
    localEnumMap.put(n.a, new org.apache.a.a.b("host", (byte)1, new c((byte)11)));
    localEnumMap.put(n.b, new org.apache.a.a.b("land_node_info", (byte)1, new d(new g(o.class))));
    a = Collections.unmodifiableMap(localEnumMap);
    org.apache.a.a.b.a(m.class, a);
  }
  
  private boolean a()
  {
    return this.e != null;
  }
  
  private boolean b()
  {
    return this.f != null;
  }
  
  private void c()
  {
    if (this.e == null) {
      throw new i("Required field 'host' was not present! Struct: " + toString(), (byte)0);
    }
    if (this.f == null) {
      throw new i("Required field 'land_node_info' was not present! Struct: " + toString(), (byte)0);
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
          this.e = paramh.p();
        } else {
          k.a(paramh, ((e)localObject).b);
        }
        break;
      case 2: 
        if (((e)localObject).b == 15)
        {
          localObject = paramh.h();
          this.f = new ArrayList(((f)localObject).b);
          int i = 0;
          while (i < ((f)localObject).b)
          {
            o localo = new o();
            localo.a(paramh);
            this.f.add(localo);
            i += 1;
          }
        }
        else
        {
          k.a(paramh, ((e)localObject).b);
        }
        break;
      }
    }
    paramh.e();
    c();
  }
  
  public final void b(h paramh)
  {
    c();
    paramh.a();
    if (this.e != null)
    {
      paramh.a(c);
      paramh.a(this.e);
    }
    if (this.f != null)
    {
      paramh.a(d);
      paramh.a(new f((byte)12, this.f.size()));
      Iterator localIterator = this.f.iterator();
      while (localIterator.hasNext()) {
        ((o)localIterator.next()).b(paramh);
      }
    }
    paramh.c();
    paramh.b();
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
            return false;
          } while (!(paramObject instanceof m));
          paramObject = (m)paramObject;
        } while (paramObject == null);
        bool1 = a();
        bool2 = ((m)paramObject).a();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.e.equals(((m)paramObject).e))));
      bool1 = b();
      bool2 = ((m)paramObject).b();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.f.equals(((m)paramObject).f))));
    return true;
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("PassportHostInfo(");
    localStringBuilder.append("host:");
    if (this.e == null)
    {
      localStringBuilder.append("null");
      localStringBuilder.append(", ");
      localStringBuilder.append("land_node_info:");
      if (this.f != null) {
        break label90;
      }
      localStringBuilder.append("null");
    }
    for (;;)
    {
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.e);
      break;
      label90:
      localStringBuilder.append(this.f);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\b\a\a\a\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */