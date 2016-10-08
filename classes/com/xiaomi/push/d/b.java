package com.xiaomi.push.d;

import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.Map;
import org.apache.a.b.e;
import org.apache.a.b.h;
import org.apache.a.b.i;
import org.apache.a.b.k;
import org.apache.a.b.m;

public class b
  implements Serializable, Cloneable, org.apache.a.b<b, c>
{
  public static final Map<c, org.apache.a.a.b> k;
  private static final m l = new m("StatsEvent");
  private static final e m = new e("chid", (byte)3, (short)1);
  private static final e n = new e("type", (byte)8, (short)2);
  private static final e o = new e("value", (byte)8, (short)3);
  private static final e p = new e("connpt", (byte)11, (short)4);
  private static final e q = new e("host", (byte)11, (short)5);
  private static final e r = new e("subvalue", (byte)8, (short)6);
  private static final e s = new e("annotation", (byte)11, (short)7);
  private static final e t = new e("user", (byte)11, (short)8);
  private static final e u = new e("time", (byte)8, (short)9);
  private static final e v = new e("clientIp", (byte)8, (short)10);
  public byte a;
  public int b;
  public int c;
  public String d;
  public String e;
  public int f;
  public String g;
  public String h;
  public int i;
  public int j;
  private BitSet w = new BitSet(6);
  
  static
  {
    EnumMap localEnumMap = new EnumMap(c.class);
    localEnumMap.put(c.a, new org.apache.a.a.b("chid", (byte)1, new org.apache.a.a.c((byte)3)));
    localEnumMap.put(c.b, new org.apache.a.a.b("type", (byte)1, new org.apache.a.a.c((byte)8)));
    localEnumMap.put(c.c, new org.apache.a.a.b("value", (byte)1, new org.apache.a.a.c((byte)8)));
    localEnumMap.put(c.d, new org.apache.a.a.b("connpt", (byte)1, new org.apache.a.a.c((byte)11)));
    localEnumMap.put(c.e, new org.apache.a.a.b("host", (byte)2, new org.apache.a.a.c((byte)11)));
    localEnumMap.put(c.f, new org.apache.a.a.b("subvalue", (byte)2, new org.apache.a.a.c((byte)8)));
    localEnumMap.put(c.g, new org.apache.a.a.b("annotation", (byte)2, new org.apache.a.a.c((byte)11)));
    localEnumMap.put(c.h, new org.apache.a.a.b("user", (byte)2, new org.apache.a.a.c((byte)11)));
    localEnumMap.put(c.i, new org.apache.a.a.b("time", (byte)2, new org.apache.a.a.c((byte)8)));
    localEnumMap.put(c.j, new org.apache.a.a.b("clientIp", (byte)2, new org.apache.a.a.c((byte)8)));
    k = Collections.unmodifiableMap(localEnumMap);
    org.apache.a.a.b.a(b.class, k);
  }
  
  private boolean c()
  {
    return this.w.get(0);
  }
  
  private void d()
  {
    this.w.set(0, true);
  }
  
  private boolean e()
  {
    return this.w.get(1);
  }
  
  private void f()
  {
    this.w.set(1, true);
  }
  
  private boolean g()
  {
    return this.w.get(2);
  }
  
  private void h()
  {
    this.w.set(2, true);
  }
  
  private boolean i()
  {
    return this.d != null;
  }
  
  private boolean j()
  {
    return this.e != null;
  }
  
  private boolean k()
  {
    return this.w.get(3);
  }
  
  private void l()
  {
    this.w.set(3, true);
  }
  
  private boolean m()
  {
    return this.g != null;
  }
  
  private boolean n()
  {
    return this.h != null;
  }
  
  private boolean o()
  {
    return this.w.get(4);
  }
  
  private boolean p()
  {
    return this.w.get(5);
  }
  
  private void q()
  {
    if (this.d == null) {
      throw new i("Required field 'connpt' was not present! Struct: " + toString(), (byte)0);
    }
  }
  
  public final b a(byte paramByte)
  {
    this.a = paramByte;
    d();
    return this;
  }
  
  public final b a(int paramInt)
  {
    this.b = paramInt;
    f();
    return this;
  }
  
  public final void a()
  {
    this.w.set(4, true);
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
        if (locale.b == 3)
        {
          this.a = paramh.k();
          d();
        }
        else
        {
          k.a(paramh, locale.b);
        }
        break;
      case 2: 
        if (locale.b == 8)
        {
          this.b = paramh.m();
          f();
        }
        else
        {
          k.a(paramh, locale.b);
        }
        break;
      case 3: 
        if (locale.b == 8)
        {
          this.c = paramh.m();
          h();
        }
        else
        {
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
        if (locale.b == 8)
        {
          this.f = paramh.m();
          l();
        }
        else
        {
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
        if (locale.b == 8)
        {
          this.i = paramh.m();
          a();
        }
        else
        {
          k.a(paramh, locale.b);
        }
        break;
      case 10: 
        if (locale.b == 8)
        {
          this.j = paramh.m();
          b();
        }
        else
        {
          k.a(paramh, locale.b);
        }
        break;
      }
    }
    paramh.e();
    if (!c()) {
      throw new i("Required field 'chid' was not found in serialized data! Struct: " + toString(), (byte)0);
    }
    if (!e()) {
      throw new i("Required field 'type' was not found in serialized data! Struct: " + toString(), (byte)0);
    }
    if (!g()) {
      throw new i("Required field 'value' was not found in serialized data! Struct: " + toString(), (byte)0);
    }
    q();
  }
  
  public final b b(int paramInt)
  {
    this.c = paramInt;
    h();
    return this;
  }
  
  public final void b()
  {
    this.w.set(5, true);
  }
  
  public final void b(h paramh)
  {
    q();
    paramh.a();
    paramh.a(m);
    paramh.a(this.a);
    paramh.a(n);
    paramh.a(this.b);
    paramh.a(o);
    paramh.a(this.c);
    if (this.d != null)
    {
      paramh.a(p);
      paramh.a(this.d);
    }
    if ((this.e != null) && (j()))
    {
      paramh.a(q);
      paramh.a(this.e);
    }
    if (k())
    {
      paramh.a(r);
      paramh.a(this.f);
    }
    if ((this.g != null) && (m()))
    {
      paramh.a(s);
      paramh.a(this.g);
    }
    if ((this.h != null) && (n()))
    {
      paramh.a(t);
      paramh.a(this.h);
    }
    if (o())
    {
      paramh.a(u);
      paramh.a(this.i);
    }
    if (p())
    {
      paramh.a(v);
      paramh.a(this.j);
    }
    paramh.c();
    paramh.b();
  }
  
  public final b c(int paramInt)
  {
    this.f = paramInt;
    l();
    return this;
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
                      return false;
                    } while (!(paramObject instanceof b));
                    paramObject = (b)paramObject;
                  } while ((paramObject == null) || (this.a != ((b)paramObject).a) || (this.b != ((b)paramObject).b) || (this.c != ((b)paramObject).c));
                  bool1 = i();
                  bool2 = ((b)paramObject).i();
                } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.d.equals(((b)paramObject).d))));
                bool1 = j();
                bool2 = ((b)paramObject).j();
              } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.e.equals(((b)paramObject).e))));
              bool1 = k();
              bool2 = ((b)paramObject).k();
            } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.f != ((b)paramObject).f)));
            bool1 = m();
            bool2 = ((b)paramObject).m();
          } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.g.equals(((b)paramObject).g))));
          bool1 = n();
          bool2 = ((b)paramObject).n();
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.h.equals(((b)paramObject).h))));
        bool1 = o();
        bool2 = ((b)paramObject).o();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.i != ((b)paramObject).i)));
      bool1 = p();
      bool2 = ((b)paramObject).p();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.j != ((b)paramObject).j)));
    return true;
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("StatsEvent(");
    localStringBuilder.append("chid:");
    localStringBuilder.append(this.a);
    localStringBuilder.append(", ");
    localStringBuilder.append("type:");
    localStringBuilder.append(this.b);
    localStringBuilder.append(", ");
    localStringBuilder.append("value:");
    localStringBuilder.append(this.c);
    localStringBuilder.append(", ");
    localStringBuilder.append("connpt:");
    if (this.d == null)
    {
      localStringBuilder.append("null");
      if (j())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("host:");
        if (this.e != null) {
          break label344;
        }
        localStringBuilder.append("null");
      }
      label147:
      if (k())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("subvalue:");
        localStringBuilder.append(this.f);
      }
      if (m())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("annotation:");
        if (this.g != null) {
          break label356;
        }
        localStringBuilder.append("null");
      }
      label217:
      if (n())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("user:");
        if (this.h != null) {
          break label368;
        }
        localStringBuilder.append("null");
      }
    }
    for (;;)
    {
      if (o())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("time:");
        localStringBuilder.append(this.i);
      }
      if (p())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("clientIp:");
        localStringBuilder.append(this.j);
      }
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.d);
      break;
      label344:
      localStringBuilder.append(this.e);
      break label147;
      label356:
      localStringBuilder.append(this.g);
      break label217;
      label368:
      localStringBuilder.append(this.h);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\d\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */