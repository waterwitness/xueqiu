package com.xiaomi.push.d;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.a.a.c;
import org.apache.a.a.g;
import org.apache.a.b.f;
import org.apache.a.b.h;
import org.apache.a.b.i;
import org.apache.a.b.k;
import org.apache.a.b.m;

public class d
  implements Serializable, Cloneable, org.apache.a.b<d, e>
{
  public static final Map<e, org.apache.a.a.b> d;
  private static final m e = new m("StatsEvents");
  private static final org.apache.a.b.e f = new org.apache.a.b.e("uuid", (byte)11, (short)1);
  private static final org.apache.a.b.e g = new org.apache.a.b.e("operator", (byte)11, (short)2);
  private static final org.apache.a.b.e h = new org.apache.a.b.e("events", (byte)15, (short)3);
  public String a;
  public String b;
  public List<b> c;
  
  static
  {
    EnumMap localEnumMap = new EnumMap(e.class);
    localEnumMap.put(e.a, new org.apache.a.a.b("uuid", (byte)1, new c((byte)11)));
    localEnumMap.put(e.b, new org.apache.a.a.b("operator", (byte)2, new c((byte)11)));
    localEnumMap.put(e.c, new org.apache.a.a.b("events", (byte)1, new org.apache.a.a.d(new g(b.class))));
    d = Collections.unmodifiableMap(localEnumMap);
    org.apache.a.a.b.a(d.class, d);
  }
  
  public d() {}
  
  public d(String paramString, List<b> paramList)
  {
    this();
    this.a = paramString;
    this.c = paramList;
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
  
  private void d()
  {
    if (this.a == null) {
      throw new i("Required field 'uuid' was not present! Struct: " + toString(), (byte)0);
    }
    if (this.c == null) {
      throw new i("Required field 'events' was not present! Struct: " + toString(), (byte)0);
    }
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
        if (((org.apache.a.b.e)localObject).b == 11) {
          this.b = paramh.p();
        } else {
          k.a(paramh, ((org.apache.a.b.e)localObject).b);
        }
        break;
      case 3: 
        if (((org.apache.a.b.e)localObject).b == 15)
        {
          localObject = paramh.h();
          this.c = new ArrayList(((f)localObject).b);
          int i = 0;
          while (i < ((f)localObject).b)
          {
            b localb = new b();
            localb.a(paramh);
            this.c.add(localb);
            i += 1;
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
    d();
  }
  
  public final void b(h paramh)
  {
    d();
    paramh.a();
    if (this.a != null)
    {
      paramh.a(f);
      paramh.a(this.a);
    }
    if ((this.b != null) && (b()))
    {
      paramh.a(g);
      paramh.a(this.b);
    }
    if (this.c != null)
    {
      paramh.a(h);
      paramh.a(new f((byte)12, this.c.size()));
      Iterator localIterator = this.c.iterator();
      while (localIterator.hasNext()) {
        ((b)localIterator.next()).b(paramh);
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
            do
            {
              return false;
            } while (!(paramObject instanceof d));
            paramObject = (d)paramObject;
          } while (paramObject == null);
          bool1 = a();
          bool2 = ((d)paramObject).a();
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.equals(((d)paramObject).a))));
        bool1 = b();
        bool2 = ((d)paramObject).b();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.b.equals(((d)paramObject).b))));
      bool1 = c();
      bool2 = ((d)paramObject).c();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.c.equals(((d)paramObject).c))));
    return true;
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("StatsEvents(");
    localStringBuilder.append("uuid:");
    if (this.a == null)
    {
      localStringBuilder.append("null");
      if (b())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("operator:");
        if (this.b != null) {
          break label128;
        }
        localStringBuilder.append("null");
      }
      label72:
      localStringBuilder.append(", ");
      localStringBuilder.append("events:");
      if (this.c != null) {
        break label140;
      }
      localStringBuilder.append("null");
    }
    for (;;)
    {
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
      break;
      label128:
      localStringBuilder.append(this.b);
      break label72;
      label140:
      localStringBuilder.append(this.c);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\d\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */