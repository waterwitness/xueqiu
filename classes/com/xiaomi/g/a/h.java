package com.xiaomi.g.a;

import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.Map;
import org.apache.a.a.c;
import org.apache.a.a.g;
import org.apache.a.b.e;
import org.apache.a.b.k;
import org.apache.a.b.m;

public class h
  implements Serializable, Cloneable, org.apache.a.b<h, i>
{
  public static final Map<i, org.apache.a.a.b> k;
  private static final m l = new m("XmPushActionAckMessage");
  private static final e m = new e("debug", (byte)11, (short)1);
  private static final e n = new e("target", (byte)12, (short)2);
  private static final e o = new e("id", (byte)11, (short)3);
  private static final e p = new e("appId", (byte)11, (short)4);
  private static final e q = new e("messageTs", (byte)10, (short)5);
  private static final e r = new e("topic", (byte)11, (short)6);
  private static final e s = new e("aliasName", (byte)11, (short)7);
  private static final e t = new e("request", (byte)12, (short)8);
  private static final e u = new e("packageName", (byte)11, (short)9);
  private static final e v = new e("category", (byte)11, (short)10);
  public String a;
  public f b;
  public String c;
  public String d;
  public long e;
  public String f;
  public String g;
  public z h;
  public String i;
  public String j;
  private BitSet w = new BitSet(1);
  
  static
  {
    EnumMap localEnumMap = new EnumMap(i.class);
    localEnumMap.put(i.a, new org.apache.a.a.b("debug", (byte)2, new c((byte)11)));
    localEnumMap.put(i.b, new org.apache.a.a.b("target", (byte)2, new g(f.class)));
    localEnumMap.put(i.c, new org.apache.a.a.b("id", (byte)1, new c((byte)11)));
    localEnumMap.put(i.d, new org.apache.a.a.b("appId", (byte)1, new c((byte)11)));
    localEnumMap.put(i.e, new org.apache.a.a.b("messageTs", (byte)1, new c((byte)10)));
    localEnumMap.put(i.f, new org.apache.a.a.b("topic", (byte)2, new c((byte)11)));
    localEnumMap.put(i.g, new org.apache.a.a.b("aliasName", (byte)2, new c((byte)11)));
    localEnumMap.put(i.h, new org.apache.a.a.b("request", (byte)2, new g(z.class)));
    localEnumMap.put(i.i, new org.apache.a.a.b("packageName", (byte)2, new c((byte)11)));
    localEnumMap.put(i.j, new org.apache.a.a.b("category", (byte)2, new c((byte)11)));
    k = Collections.unmodifiableMap(localEnumMap);
    org.apache.a.a.b.a(h.class, k);
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
    return this.w.get(0);
  }
  
  private void f()
  {
    this.w.set(0, true);
  }
  
  private boolean g()
  {
    return this.f != null;
  }
  
  private boolean h()
  {
    return this.g != null;
  }
  
  private boolean i()
  {
    return this.h != null;
  }
  
  private boolean j()
  {
    return this.i != null;
  }
  
  private boolean k()
  {
    return this.j != null;
  }
  
  private void l()
  {
    if (this.c == null) {
      throw new org.apache.a.b.i("Required field 'id' was not present! Struct: " + toString(), (byte)0);
    }
    if (this.d == null) {
      throw new org.apache.a.b.i("Required field 'appId' was not present! Struct: " + toString(), (byte)0);
    }
  }
  
  public final h a(long paramLong)
  {
    this.e = paramLong;
    f();
    return this;
  }
  
  public final void a(org.apache.a.b.h paramh)
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
        if (locale.b == 10)
        {
          this.e = paramh.n();
          f();
        }
        else
        {
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
        if (locale.b == 12)
        {
          this.h = new z();
          this.h.a(paramh);
        }
        else
        {
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
    if (!e()) {
      throw new org.apache.a.b.i("Required field 'messageTs' was not found in serialized data! Struct: " + toString(), (byte)0);
    }
    l();
  }
  
  public final void b(org.apache.a.b.h paramh)
  {
    l();
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
    paramh.a(q);
    paramh.a(this.e);
    if ((this.f != null) && (g()))
    {
      paramh.a(r);
      paramh.a(this.f);
    }
    if ((this.g != null) && (h()))
    {
      paramh.a(s);
      paramh.a(this.g);
    }
    if ((this.h != null) && (i()))
    {
      paramh.a(t);
      this.h.b(paramh);
    }
    if ((this.i != null) && (j()))
    {
      paramh.a(u);
      paramh.a(this.i);
    }
    if ((this.j != null) && (k()))
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
                        } while (!(paramObject instanceof h));
                        paramObject = (h)paramObject;
                      } while (paramObject == null);
                      bool1 = a();
                      bool2 = ((h)paramObject).a();
                    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.equals(((h)paramObject).a))));
                    bool1 = b();
                    bool2 = ((h)paramObject).b();
                  } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.b.a(((h)paramObject).b))));
                  bool1 = c();
                  bool2 = ((h)paramObject).c();
                } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.c.equals(((h)paramObject).c))));
                bool1 = d();
                bool2 = ((h)paramObject).d();
              } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.d.equals(((h)paramObject).d)) || (this.e != ((h)paramObject).e)));
              bool1 = g();
              bool2 = ((h)paramObject).g();
            } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.f.equals(((h)paramObject).f))));
            bool1 = h();
            bool2 = ((h)paramObject).h();
          } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.g.equals(((h)paramObject).g))));
          bool1 = i();
          bool2 = ((h)paramObject).i();
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.h.a(((h)paramObject).h))));
        bool1 = j();
        bool2 = ((h)paramObject).j();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.i.equals(((h)paramObject).i))));
      bool1 = k();
      bool2 = ((h)paramObject).k();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.j.equals(((h)paramObject).j))));
    return true;
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public String toString()
  {
    int i2 = 0;
    StringBuilder localStringBuilder = new StringBuilder("XmPushActionAckMessage(");
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
        break label495;
      }
      if (i1 == 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append("target:");
      if (this.b != null) {
        break label397;
      }
      localStringBuilder.append("null");
      i1 = i2;
    }
    label91:
    label126:
    label157:
    label220:
    label258:
    label296:
    label334:
    label397:
    label423:
    label435:
    label447:
    label459:
    label471:
    label483:
    label495:
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
          break label423;
        }
        localStringBuilder.append("null");
        localStringBuilder.append(", ");
        localStringBuilder.append("messageTs:");
        localStringBuilder.append(this.e);
        if (g())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("topic:");
          if (this.f != null) {
            break label435;
          }
          localStringBuilder.append("null");
        }
        if (h())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("aliasName:");
          if (this.g != null) {
            break label447;
          }
          localStringBuilder.append("null");
        }
        if (i())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("request:");
          if (this.h != null) {
            break label459;
          }
          localStringBuilder.append("null");
        }
        if (j())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("packageName:");
          if (this.i != null) {
            break label471;
          }
          localStringBuilder.append("null");
        }
        if (k())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("category:");
          if (this.j != null) {
            break label483;
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
        localStringBuilder.append(this.f);
        break label220;
        localStringBuilder.append(this.g);
        break label258;
        localStringBuilder.append(this.h);
        break label296;
        localStringBuilder.append(this.i);
        break label334;
        localStringBuilder.append(this.j);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\g\a\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */