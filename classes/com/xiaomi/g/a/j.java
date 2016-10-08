package com.xiaomi.g.a;

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
import org.apache.a.b.h;
import org.apache.a.b.i;
import org.apache.a.b.m;

public class j
  implements Serializable, Cloneable, org.apache.a.b<j, k>
{
  public static final Map<k, org.apache.a.a.b> i;
  private static final m j = new m("XmPushActionCommand");
  private static final e k = new e("debug", (byte)11, (short)1);
  private static final e l = new e("target", (byte)12, (short)2);
  private static final e m = new e("id", (byte)11, (short)3);
  private static final e n = new e("appId", (byte)11, (short)4);
  private static final e o = new e("cmdName", (byte)11, (short)5);
  private static final e p = new e("cmdArgs", (byte)15, (short)6);
  private static final e q = new e("packageName", (byte)11, (short)7);
  private static final e r = new e("category", (byte)11, (short)9);
  public String a;
  public f b;
  public String c;
  public String d;
  public String e;
  public List<String> f;
  public String g;
  public String h;
  
  static
  {
    EnumMap localEnumMap = new EnumMap(k.class);
    localEnumMap.put(k.a, new org.apache.a.a.b("debug", (byte)2, new c((byte)11)));
    localEnumMap.put(k.b, new org.apache.a.a.b("target", (byte)2, new g(f.class)));
    localEnumMap.put(k.c, new org.apache.a.a.b("id", (byte)1, new c((byte)11)));
    localEnumMap.put(k.d, new org.apache.a.a.b("appId", (byte)1, new c((byte)11)));
    localEnumMap.put(k.e, new org.apache.a.a.b("cmdName", (byte)1, new c((byte)11)));
    localEnumMap.put(k.f, new org.apache.a.a.b("cmdArgs", (byte)2, new d(new c((byte)11))));
    localEnumMap.put(k.g, new org.apache.a.a.b("packageName", (byte)2, new c((byte)11)));
    localEnumMap.put(k.h, new org.apache.a.a.b("category", (byte)2, new c((byte)11)));
    i = Collections.unmodifiableMap(localEnumMap);
    org.apache.a.a.b.a(j.class, i);
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
  
  private void i()
  {
    if (this.c == null) {
      throw new i("Required field 'id' was not present! Struct: " + toString(), (byte)0);
    }
    if (this.d == null) {
      throw new i("Required field 'appId' was not present! Struct: " + toString(), (byte)0);
    }
    if (this.e == null) {
      throw new i("Required field 'cmdName' was not present! Struct: " + toString(), (byte)0);
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
      case 8: 
      default: 
        org.apache.a.b.k.a(paramh, ((e)localObject).b);
        break;
      case 1: 
        if (((e)localObject).b == 11) {
          this.a = paramh.p();
        } else {
          org.apache.a.b.k.a(paramh, ((e)localObject).b);
        }
        break;
      case 2: 
        if (((e)localObject).b == 12)
        {
          this.b = new f();
          this.b.a(paramh);
        }
        else
        {
          org.apache.a.b.k.a(paramh, ((e)localObject).b);
        }
        break;
      case 3: 
        if (((e)localObject).b == 11) {
          this.c = paramh.p();
        } else {
          org.apache.a.b.k.a(paramh, ((e)localObject).b);
        }
        break;
      case 4: 
        if (((e)localObject).b == 11) {
          this.d = paramh.p();
        } else {
          org.apache.a.b.k.a(paramh, ((e)localObject).b);
        }
        break;
      case 5: 
        if (((e)localObject).b == 11) {
          this.e = paramh.p();
        } else {
          org.apache.a.b.k.a(paramh, ((e)localObject).b);
        }
        break;
      case 6: 
        if (((e)localObject).b == 15)
        {
          localObject = paramh.h();
          this.f = new ArrayList(((org.apache.a.b.f)localObject).b);
          int i1 = 0;
          while (i1 < ((org.apache.a.b.f)localObject).b)
          {
            String str = paramh.p();
            this.f.add(str);
            i1 += 1;
          }
        }
        org.apache.a.b.k.a(paramh, ((e)localObject).b);
        break;
      case 7: 
        if (((e)localObject).b == 11) {
          this.g = paramh.p();
        } else {
          org.apache.a.b.k.a(paramh, ((e)localObject).b);
        }
        break;
      case 9: 
        if (((e)localObject).b == 11) {
          this.h = paramh.p();
        } else {
          org.apache.a.b.k.a(paramh, ((e)localObject).b);
        }
        break;
      }
    }
    paramh.e();
    i();
  }
  
  public final boolean a(j paramj)
  {
    if (paramj == null) {}
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
                    bool2 = paramj.a();
                  } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.equals(paramj.a))));
                  bool1 = b();
                  bool2 = paramj.b();
                } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.b.a(paramj.b))));
                bool1 = c();
                bool2 = paramj.c();
              } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.c.equals(paramj.c))));
              bool1 = d();
              bool2 = paramj.d();
            } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.d.equals(paramj.d))));
            bool1 = e();
            bool2 = paramj.e();
          } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.e.equals(paramj.e))));
          bool1 = f();
          bool2 = paramj.f();
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.f.equals(paramj.f))));
        bool1 = g();
        bool2 = paramj.g();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.g.equals(paramj.g))));
      bool1 = h();
      bool2 = paramj.h();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.h.equals(paramj.h))));
    return true;
  }
  
  public final void b(h paramh)
  {
    i();
    paramh.a();
    if ((this.a != null) && (a()))
    {
      paramh.a(k);
      paramh.a(this.a);
    }
    if ((this.b != null) && (b()))
    {
      paramh.a(l);
      this.b.b(paramh);
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
    if (this.e != null)
    {
      paramh.a(o);
      paramh.a(this.e);
    }
    if ((this.f != null) && (f()))
    {
      paramh.a(p);
      paramh.a(new org.apache.a.b.f((byte)11, this.f.size()));
      Iterator localIterator = this.f.iterator();
      while (localIterator.hasNext()) {
        paramh.a((String)localIterator.next());
      }
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
    while (!(paramObject instanceof j)) {
      return false;
    }
    return a((j)paramObject);
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public String toString()
  {
    int i2 = 0;
    StringBuilder localStringBuilder = new StringBuilder("XmPushActionCommand(");
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
        break label413;
      }
      if (i1 == 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append("target:");
      if (this.b != null) {
        break label327;
      }
      localStringBuilder.append("null");
      i1 = i2;
    }
    label91:
    label126:
    label157:
    label188:
    label226:
    label264:
    label327:
    label353:
    label365:
    label377:
    label389:
    label401:
    label413:
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
          break label353;
        }
        localStringBuilder.append("null");
        localStringBuilder.append(", ");
        localStringBuilder.append("cmdName:");
        if (this.e != null) {
          break label365;
        }
        localStringBuilder.append("null");
        if (f())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("cmdArgs:");
          if (this.f != null) {
            break label377;
          }
          localStringBuilder.append("null");
        }
        if (g())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("packageName:");
          if (this.g != null) {
            break label389;
          }
          localStringBuilder.append("null");
        }
        if (h())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("category:");
          if (this.h != null) {
            break label401;
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
        break label264;
        localStringBuilder.append(this.h);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\g\a\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */