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
import org.apache.a.b.e;
import org.apache.a.b.f;
import org.apache.a.b.h;
import org.apache.a.b.i;
import org.apache.a.b.k;
import org.apache.a.b.m;

public class a
  implements Serializable, Cloneable, org.apache.a.b<a, b>
{
  public static final Map<b, org.apache.a.a.b> c;
  private static final m d = new m("HostInfo");
  private static final e e = new e("host", (byte)11, (short)1);
  private static final e f = new e("land_node_info", (byte)15, (short)2);
  public String a;
  public List<g> b;
  
  static
  {
    EnumMap localEnumMap = new EnumMap(b.class);
    localEnumMap.put(b.a, new org.apache.a.a.b("host", (byte)1, new c((byte)11)));
    localEnumMap.put(b.b, new org.apache.a.a.b("land_node_info", (byte)1, new d(new org.apache.a.a.g(g.class))));
    c = Collections.unmodifiableMap(localEnumMap);
    org.apache.a.a.b.a(a.class, c);
  }
  
  private boolean a()
  {
    return this.a != null;
  }
  
  private boolean b()
  {
    return this.b != null;
  }
  
  private void c()
  {
    if (this.a == null) {
      throw new i("Required field 'host' was not present! Struct: " + toString(), (byte)0);
    }
    if (this.b == null) {
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
          this.a = paramh.p();
        } else {
          k.a(paramh, ((e)localObject).b);
        }
        break;
      case 2: 
        if (((e)localObject).b == 15)
        {
          localObject = paramh.h();
          this.b = new ArrayList(((f)localObject).b);
          int i = 0;
          while (i < ((f)localObject).b)
          {
            g localg = new g();
            localg.a(paramh);
            this.b.add(localg);
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
    if (this.a != null)
    {
      paramh.a(e);
      paramh.a(this.a);
    }
    if (this.b != null)
    {
      paramh.a(f);
      paramh.a(new f((byte)12, this.b.size()));
      Iterator localIterator = this.b.iterator();
      while (localIterator.hasNext()) {
        ((g)localIterator.next()).b(paramh);
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
          } while (!(paramObject instanceof a));
          paramObject = (a)paramObject;
        } while (paramObject == null);
        bool1 = a();
        bool2 = ((a)paramObject).a();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.equals(((a)paramObject).a))));
      bool1 = b();
      bool2 = ((a)paramObject).b();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.b.equals(((a)paramObject).b))));
    return true;
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("HostInfo(");
    localStringBuilder.append("host:");
    if (this.a == null)
    {
      localStringBuilder.append("null");
      localStringBuilder.append(", ");
      localStringBuilder.append("land_node_info:");
      if (this.b != null) {
        break label90;
      }
      localStringBuilder.append("null");
    }
    for (;;)
    {
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
      break;
      label90:
      localStringBuilder.append(this.b);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\b\a\a\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */