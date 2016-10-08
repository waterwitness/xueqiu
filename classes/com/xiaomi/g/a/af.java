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

public class af
  implements Serializable, Cloneable, org.apache.a.b<af, ag>
{
  public static final Map<ag, org.apache.a.a.b> k;
  private static final m l = new m("XmPushActionUnRegistration");
  private static final e m = new e("debug", (byte)11, (short)1);
  private static final e n = new e("target", (byte)12, (short)2);
  private static final e o = new e("id", (byte)11, (short)3);
  private static final e p = new e("appId", (byte)11, (short)4);
  private static final e q = new e("regId", (byte)11, (short)5);
  private static final e r = new e("appVersion", (byte)11, (short)6);
  private static final e s = new e("packageName", (byte)11, (short)7);
  private static final e t = new e("token", (byte)11, (short)8);
  private static final e u = new e("deviceId", (byte)11, (short)9);
  private static final e v = new e("aliasName", (byte)11, (short)10);
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
    EnumMap localEnumMap = new EnumMap(ag.class);
    localEnumMap.put(ag.a, new org.apache.a.a.b("debug", (byte)2, new c((byte)11)));
    localEnumMap.put(ag.b, new org.apache.a.a.b("target", (byte)2, new g(f.class)));
    localEnumMap.put(ag.c, new org.apache.a.a.b("id", (byte)1, new c((byte)11)));
    localEnumMap.put(ag.d, new org.apache.a.a.b("appId", (byte)1, new c((byte)11)));
    localEnumMap.put(ag.e, new org.apache.a.a.b("regId", (byte)2, new c((byte)11)));
    localEnumMap.put(ag.f, new org.apache.a.a.b("appVersion", (byte)2, new c((byte)11)));
    localEnumMap.put(ag.g, new org.apache.a.a.b("packageName", (byte)2, new c((byte)11)));
    localEnumMap.put(ag.h, new org.apache.a.a.b("token", (byte)2, new c((byte)11)));
    localEnumMap.put(ag.i, new org.apache.a.a.b("deviceId", (byte)2, new c((byte)11)));
    localEnumMap.put(ag.j, new org.apache.a.a.b("aliasName", (byte)2, new c((byte)11)));
    k = Collections.unmodifiableMap(localEnumMap);
    org.apache.a.a.b.a(af.class, k);
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
  
  public final boolean a(af paramaf)
  {
    if (paramaf == null) {}
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
                        bool2 = paramaf.a();
                      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.equals(paramaf.a))));
                      bool1 = b();
                      bool2 = paramaf.b();
                    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.b.a(paramaf.b))));
                    bool1 = c();
                    bool2 = paramaf.c();
                  } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.c.equals(paramaf.c))));
                  bool1 = d();
                  bool2 = paramaf.d();
                } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.d.equals(paramaf.d))));
                bool1 = e();
                bool2 = paramaf.e();
              } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.e.equals(paramaf.e))));
              bool1 = f();
              bool2 = paramaf.f();
            } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.f.equals(paramaf.f))));
            bool1 = g();
            bool2 = paramaf.g();
          } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.g.equals(paramaf.g))));
          bool1 = h();
          bool2 = paramaf.h();
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.h.equals(paramaf.h))));
        bool1 = i();
        bool2 = paramaf.i();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.i.equals(paramaf.i))));
      bool1 = j();
      bool2 = paramaf.j();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.j.equals(paramaf.j))));
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
    if ((this.g != null) && (g()))
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
    while (!(paramObject instanceof af)) {
      return false;
    }
    return a((af)paramObject);
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public String toString()
  {
    int i2 = 0;
    StringBuilder localStringBuilder = new StringBuilder("XmPushActionUnRegistration(");
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
        break label520;
      }
      if (i1 == 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append("target:");
      if (this.b != null) {
        break label410;
      }
      localStringBuilder.append("null");
      i1 = i2;
    }
    label91:
    label126:
    label157:
    label195:
    label233:
    label271:
    label309:
    label347:
    label410:
    label436:
    label448:
    label460:
    label472:
    label484:
    label496:
    label508:
    label520:
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
          break label436;
        }
        localStringBuilder.append("null");
        if (e())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("regId:");
          if (this.e != null) {
            break label448;
          }
          localStringBuilder.append("null");
        }
        if (f())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("appVersion:");
          if (this.f != null) {
            break label460;
          }
          localStringBuilder.append("null");
        }
        if (g())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("packageName:");
          if (this.g != null) {
            break label472;
          }
          localStringBuilder.append("null");
        }
        if (h())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("token:");
          if (this.h != null) {
            break label484;
          }
          localStringBuilder.append("null");
        }
        if (i())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("deviceId:");
          if (this.i != null) {
            break label496;
          }
          localStringBuilder.append("null");
        }
        if (j())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("aliasName:");
          if (this.j != null) {
            break label508;
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
        break label271;
        localStringBuilder.append(this.h);
        break label309;
        localStringBuilder.append(this.i);
        break label347;
        localStringBuilder.append(this.j);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\g\a\af.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */