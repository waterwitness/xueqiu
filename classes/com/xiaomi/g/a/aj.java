package com.xiaomi.g.a;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.Map;
import org.apache.a.a.c;
import org.apache.a.a.g;
import org.apache.a.b.e;
import org.apache.a.b.h;
import org.apache.a.b.i;
import org.apache.a.b.k;
import org.apache.a.b.m;

public class aj
  implements Serializable, Cloneable, org.apache.a.b<aj, ak>
{
  public static final Map<ak, org.apache.a.a.b> h;
  private static final m i = new m("XmPushActionUnSubscription");
  private static final e j = new e("debug", (byte)11, (short)1);
  private static final e k = new e("target", (byte)12, (short)2);
  private static final e l = new e("id", (byte)11, (short)3);
  private static final e m = new e("appId", (byte)11, (short)4);
  private static final e n = new e("topic", (byte)11, (short)5);
  private static final e o = new e("packageName", (byte)11, (short)6);
  private static final e p = new e("category", (byte)11, (short)7);
  public String a;
  public f b;
  public String c;
  public String d;
  public String e;
  public String f;
  public String g;
  
  static
  {
    EnumMap localEnumMap = new EnumMap(ak.class);
    localEnumMap.put(ak.a, new org.apache.a.a.b("debug", (byte)2, new c((byte)11)));
    localEnumMap.put(ak.b, new org.apache.a.a.b("target", (byte)2, new g(f.class)));
    localEnumMap.put(ak.c, new org.apache.a.a.b("id", (byte)1, new c((byte)11)));
    localEnumMap.put(ak.d, new org.apache.a.a.b("appId", (byte)1, new c((byte)11)));
    localEnumMap.put(ak.e, new org.apache.a.a.b("topic", (byte)1, new c((byte)11)));
    localEnumMap.put(ak.f, new org.apache.a.a.b("packageName", (byte)2, new c((byte)11)));
    localEnumMap.put(ak.g, new org.apache.a.a.b("category", (byte)2, new c((byte)11)));
    h = Collections.unmodifiableMap(localEnumMap);
    org.apache.a.a.b.a(aj.class, h);
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
  
  private void h()
  {
    if (this.c == null) {
      throw new i("Required field 'id' was not present! Struct: " + toString(), (byte)0);
    }
    if (this.d == null) {
      throw new i("Required field 'appId' was not present! Struct: " + toString(), (byte)0);
    }
    if (this.e == null) {
      throw new i("Required field 'topic' was not present! Struct: " + toString(), (byte)0);
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
        if (locale.b == 11) {
          this.a = paramh.p();
        } else {
          k.a(paramh, locale.b);
        }
        break;
      case 2: 
        if (locale.b == 12)
        {
          this.b = new f();
          this.b.a(paramh);
        }
        else
        {
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
        if (locale.b == 11) {
          this.e = paramh.p();
        } else {
          k.a(paramh, locale.b);
        }
        break;
      case 6: 
        if (locale.b == 11) {
          this.f = paramh.p();
        } else {
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
      }
    }
    paramh.e();
    h();
  }
  
  public final boolean a(aj paramaj)
  {
    if (paramaj == null) {}
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
                  bool2 = paramaj.a();
                } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.equals(paramaj.a))));
                bool1 = b();
                bool2 = paramaj.b();
              } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.b.a(paramaj.b))));
              bool1 = c();
              bool2 = paramaj.c();
            } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.c.equals(paramaj.c))));
            bool1 = d();
            bool2 = paramaj.d();
          } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.d.equals(paramaj.d))));
          bool1 = e();
          bool2 = paramaj.e();
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.e.equals(paramaj.e))));
        bool1 = f();
        bool2 = paramaj.f();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.f.equals(paramaj.f))));
      bool1 = g();
      bool2 = paramaj.g();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.g.equals(paramaj.g))));
    return true;
  }
  
  public final void b(h paramh)
  {
    h();
    paramh.a();
    if ((this.a != null) && (a()))
    {
      paramh.a(j);
      paramh.a(this.a);
    }
    if ((this.b != null) && (b()))
    {
      paramh.a(k);
      this.b.b(paramh);
    }
    if (this.c != null)
    {
      paramh.a(l);
      paramh.a(this.c);
    }
    if (this.d != null)
    {
      paramh.a(m);
      paramh.a(this.d);
    }
    if (this.e != null)
    {
      paramh.a(n);
      paramh.a(this.e);
    }
    if ((this.f != null) && (f()))
    {
      paramh.a(o);
      paramh.a(this.f);
    }
    if ((this.g != null) && (g()))
    {
      paramh.a(p);
      paramh.a(this.g);
    }
    paramh.c();
    paramh.b();
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    while (!(paramObject instanceof aj)) {
      return false;
    }
    return a((aj)paramObject);
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public String toString()
  {
    int i2 = 0;
    StringBuilder localStringBuilder = new StringBuilder("XmPushActionUnSubscription(");
    int i1 = 1;
    if (a())
    {
      localStringBuilder.append("debug:");
      if (this.a == null)
      {
        localStringBuilder.append("null");
        i1 = 0;
      }
    }
    else
    {
      if (!b()) {
        break label363;
      }
      if (i1 == 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append("target:");
      if (this.b != null) {
        break label289;
      }
      localStringBuilder.append("null");
      i1 = i2;
    }
    label91:
    label126:
    label157:
    label188:
    label226:
    label289:
    label315:
    label327:
    label339:
    label351:
    label363:
    for (;;)
    {
      if (i1 == 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append("id:");
      if (this.c == null)
      {
        localStringBuilder.append("null");
        localStringBuilder.append(", ");
        localStringBuilder.append("appId:");
        if (this.d != null) {
          break label315;
        }
        localStringBuilder.append("null");
        localStringBuilder.append(", ");
        localStringBuilder.append("topic:");
        if (this.e != null) {
          break label327;
        }
        localStringBuilder.append("null");
        if (f())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("packageName:");
          if (this.f != null) {
            break label339;
          }
          localStringBuilder.append("null");
        }
        if (g())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("category:");
          if (this.g != null) {
            break label351;
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
        localStringBuilder.append(this.b);
        i1 = i2;
        break label91;
        localStringBuilder.append(this.c);
        break label126;
        localStringBuilder.append(this.d);
        break label157;
        localStringBuilder.append(this.e);
        break label188;
        localStringBuilder.append(this.f);
        break label226;
        localStringBuilder.append(this.g);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\g\a\aj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */