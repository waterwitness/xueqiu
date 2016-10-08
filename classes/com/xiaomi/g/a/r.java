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

public class r
  implements Serializable, Cloneable, org.apache.a.b<r, s>
{
  public static final Map<s, org.apache.a.a.b> k;
  private static final m l = new m("XmPushActionRegistration");
  private static final e m = new e("debug", (byte)11, (short)1);
  private static final e n = new e("target", (byte)12, (short)2);
  private static final e o = new e("id", (byte)11, (short)3);
  private static final e p = new e("appId", (byte)11, (short)4);
  private static final e q = new e("appVersion", (byte)11, (short)5);
  private static final e r = new e("packageName", (byte)11, (short)6);
  private static final e s = new e("token", (byte)11, (short)7);
  private static final e t = new e("deviceId", (byte)11, (short)8);
  private static final e u = new e("aliasName", (byte)11, (short)9);
  private static final e v = new e("sdkVersion", (byte)11, (short)10);
  public String a;
  public f b;
  public String c;
  public String d;
  public String e;
  public String f;
  public String g;
  public String h;
  public String i;
  public String j;
  
  static
  {
    EnumMap localEnumMap = new EnumMap(s.class);
    localEnumMap.put(s.a, new org.apache.a.a.b("debug", (byte)2, new c((byte)11)));
    localEnumMap.put(s.b, new org.apache.a.a.b("target", (byte)2, new g(f.class)));
    localEnumMap.put(s.c, new org.apache.a.a.b("id", (byte)1, new c((byte)11)));
    localEnumMap.put(s.d, new org.apache.a.a.b("appId", (byte)1, new c((byte)11)));
    localEnumMap.put(s.e, new org.apache.a.a.b("appVersion", (byte)2, new c((byte)11)));
    localEnumMap.put(s.f, new org.apache.a.a.b("packageName", (byte)2, new c((byte)11)));
    localEnumMap.put(s.g, new org.apache.a.a.b("token", (byte)1, new c((byte)11)));
    localEnumMap.put(s.h, new org.apache.a.a.b("deviceId", (byte)2, new c((byte)11)));
    localEnumMap.put(s.i, new org.apache.a.a.b("aliasName", (byte)2, new c((byte)11)));
    localEnumMap.put(s.j, new org.apache.a.a.b("sdkVersion", (byte)2, new c((byte)11)));
    k = Collections.unmodifiableMap(localEnumMap);
    org.apache.a.a.b.a(r.class, k);
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
    if (this.c == null) {
      throw new i("Required field 'id' was not present! Struct: " + toString(), (byte)0);
    }
    if (this.d == null) {
      throw new i("Required field 'appId' was not present! Struct: " + toString(), (byte)0);
    }
    if (this.g == null) {
      throw new i("Required field 'token' was not present! Struct: " + toString(), (byte)0);
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
      case 8: 
        if (locale.b == 11) {
          this.h = paramh.p();
        } else {
          k.a(paramh, locale.b);
        }
        break;
      case 9: 
        if (locale.b == 11) {
          this.i = paramh.p();
        } else {
          k.a(paramh, locale.b);
        }
        break;
      case 10: 
        if (locale.b == 11) {
          this.j = paramh.p();
        } else {
          k.a(paramh, locale.b);
        }
        break;
      }
    }
    paramh.e();
    k();
  }
  
  public final boolean a(r paramr)
  {
    if (paramr == null) {}
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
                        bool2 = paramr.a();
                      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.equals(paramr.a))));
                      bool1 = b();
                      bool2 = paramr.b();
                    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.b.a(paramr.b))));
                    bool1 = c();
                    bool2 = paramr.c();
                  } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.c.equals(paramr.c))));
                  bool1 = d();
                  bool2 = paramr.d();
                } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.d.equals(paramr.d))));
                bool1 = e();
                bool2 = paramr.e();
              } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.e.equals(paramr.e))));
              bool1 = f();
              bool2 = paramr.f();
            } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.f.equals(paramr.f))));
            bool1 = g();
            bool2 = paramr.g();
          } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.g.equals(paramr.g))));
          bool1 = h();
          bool2 = paramr.h();
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.h.equals(paramr.h))));
        bool1 = i();
        bool2 = paramr.i();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.i.equals(paramr.i))));
      bool1 = j();
      bool2 = paramr.j();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.j.equals(paramr.j))));
    return true;
  }
  
  public final void b(h paramh)
  {
    k();
    paramh.a();
    if ((this.a != null) && (a()))
    {
      paramh.a(m);
      paramh.a(this.a);
    }
    if ((this.b != null) && (b()))
    {
      paramh.a(n);
      this.b.b(paramh);
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
      paramh.a(this.f);
    }
    if (this.g != null)
    {
      paramh.a(s);
      paramh.a(this.g);
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
    while (!(paramObject instanceof r)) {
      return false;
    }
    return a((r)paramObject);
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public String toString()
  {
    int i2 = 0;
    StringBuilder localStringBuilder = new StringBuilder("XmPushActionRegistration(");
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
        break label513;
      }
      if (i1 == 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append("target:");
      if (this.b != null) {
        break label403;
      }
      localStringBuilder.append("null");
      i1 = i2;
    }
    label91:
    label126:
    label157:
    label195:
    label233:
    label264:
    label302:
    label340:
    label403:
    label429:
    label441:
    label453:
    label465:
    label477:
    label489:
    label501:
    label513:
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
          break label429;
        }
        localStringBuilder.append("null");
        if (e())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("appVersion:");
          if (this.e != null) {
            break label441;
          }
          localStringBuilder.append("null");
        }
        if (f())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("packageName:");
          if (this.f != null) {
            break label453;
          }
          localStringBuilder.append("null");
        }
        localStringBuilder.append(", ");
        localStringBuilder.append("token:");
        if (this.g != null) {
          break label465;
        }
        localStringBuilder.append("null");
        if (h())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("deviceId:");
          if (this.h != null) {
            break label477;
          }
          localStringBuilder.append("null");
        }
        if (i())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("aliasName:");
          if (this.i != null) {
            break label489;
          }
          localStringBuilder.append("null");
        }
        if (j())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("sdkVersion:");
          if (this.j != null) {
            break label501;
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
        break label195;
        localStringBuilder.append(this.f);
        break label233;
        localStringBuilder.append(this.g);
        break label264;
        localStringBuilder.append(this.h);
        break label302;
        localStringBuilder.append(this.i);
        break label340;
        localStringBuilder.append(this.j);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\g\a\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */