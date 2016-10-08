package com.xiaomi.b.a.a.a;

import com.xiaomi.b.a.a.a;
import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.Map;
import org.apache.a.a.g;
import org.apache.a.b.h;
import org.apache.a.b.i;
import org.apache.a.b.m;

public class e
  implements Serializable, Cloneable, org.apache.a.b<e, f>
{
  public static final Map<f, org.apache.a.a.b> d;
  private static final m e = new m("HttpLog");
  private static final org.apache.a.b.e f = new org.apache.a.b.e("common", (byte)12, (short)1);
  private static final org.apache.a.b.e g = new org.apache.a.b.e("category", (byte)11, (short)2);
  private static final org.apache.a.b.e h = new org.apache.a.b.e("httpApi", (byte)12, (short)3);
  private static final org.apache.a.b.e i = new org.apache.a.b.e("passport", (byte)12, (short)4);
  public a a;
  public String b = "";
  public c c;
  private k j;
  
  static
  {
    EnumMap localEnumMap = new EnumMap(f.class);
    localEnumMap.put(f.a, new org.apache.a.a.b("common", (byte)1, new g(a.class)));
    localEnumMap.put(f.b, new org.apache.a.a.b("category", (byte)1, new org.apache.a.a.c((byte)11)));
    localEnumMap.put(f.c, new org.apache.a.a.b("httpApi", (byte)2, new g(c.class)));
    localEnumMap.put(f.d, new org.apache.a.a.b("passport", (byte)2, new g(k.class)));
    d = Collections.unmodifiableMap(localEnumMap);
    org.apache.a.a.b.a(e.class, d);
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
    return this.j != null;
  }
  
  private void e()
  {
    if (this.a == null) {
      throw new i("Required field 'common' was not present! Struct: " + toString(), (byte)0);
    }
    if (this.b == null) {
      throw new i("Required field 'category' was not present! Struct: " + toString(), (byte)0);
    }
  }
  
  public final void a(h paramh)
  {
    paramh.d();
    for (;;)
    {
      org.apache.a.b.e locale = paramh.f();
      if (locale.b == 0) {
        break;
      }
      switch (locale.c)
      {
      default: 
        org.apache.a.b.k.a(paramh, locale.b);
        break;
      case 1: 
        if (locale.b == 12)
        {
          this.a = new a();
          this.a.a(paramh);
        }
        else
        {
          org.apache.a.b.k.a(paramh, locale.b);
        }
        break;
      case 2: 
        if (locale.b == 11) {
          this.b = paramh.p();
        } else {
          org.apache.a.b.k.a(paramh, locale.b);
        }
        break;
      case 3: 
        if (locale.b == 12)
        {
          this.c = new c();
          this.c.a(paramh);
        }
        else
        {
          org.apache.a.b.k.a(paramh, locale.b);
        }
        break;
      case 4: 
        if (locale.b == 12)
        {
          this.j = new k();
          this.j.a(paramh);
        }
        else
        {
          org.apache.a.b.k.a(paramh, locale.b);
        }
        break;
      }
    }
    paramh.e();
    e();
  }
  
  public final void b(h paramh)
  {
    e();
    paramh.a();
    if (this.a != null)
    {
      paramh.a(f);
      this.a.b(paramh);
    }
    if (this.b != null)
    {
      paramh.a(g);
      paramh.a(this.b);
    }
    if ((this.c != null) && (c()))
    {
      paramh.a(h);
      this.c.b(paramh);
    }
    if ((this.j != null) && (d()))
    {
      paramh.a(i);
      this.j.b(paramh);
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
              do
              {
                return false;
              } while (!(paramObject instanceof e));
              paramObject = (e)paramObject;
            } while (paramObject == null);
            bool1 = a();
            bool2 = ((e)paramObject).a();
          } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.a(((e)paramObject).a))));
          bool1 = b();
          bool2 = ((e)paramObject).b();
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.b.equals(((e)paramObject).b))));
        bool1 = c();
        bool2 = ((e)paramObject).c();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.c.a(((e)paramObject).c))));
      bool1 = d();
      bool2 = ((e)paramObject).d();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.j.a(((e)paramObject).j))));
    return true;
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("HttpLog(");
    localStringBuilder.append("common:");
    if (this.a == null)
    {
      localStringBuilder.append("null");
      localStringBuilder.append(", ");
      localStringBuilder.append("category:");
      if (this.b != null) {
        break label166;
      }
      localStringBuilder.append("null");
      label65:
      if (c())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("httpApi:");
        if (this.c != null) {
          break label178;
        }
        localStringBuilder.append("null");
      }
      label103:
      if (d())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("passport:");
        if (this.j != null) {
          break label190;
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
      label166:
      localStringBuilder.append(this.b);
      break label65;
      label178:
      localStringBuilder.append(this.c);
      break label103;
      label190:
      localStringBuilder.append(this.j);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\b\a\a\a\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */