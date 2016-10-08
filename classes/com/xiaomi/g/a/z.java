package com.xiaomi.g.a;

import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.a.a.c;
import org.apache.a.b.h;
import org.apache.a.b.i;
import org.apache.a.b.k;
import org.apache.a.b.m;

public class z
  implements Serializable, Cloneable, org.apache.a.b<z, aa>
{
  public static final Map<aa, org.apache.a.a.b> m;
  private static final m n = new m("XmPushActionSendMessage");
  private static final org.apache.a.b.e o = new org.apache.a.b.e("debug", (byte)11, (short)1);
  private static final org.apache.a.b.e p = new org.apache.a.b.e("target", (byte)12, (short)2);
  private static final org.apache.a.b.e q = new org.apache.a.b.e("id", (byte)11, (short)3);
  private static final org.apache.a.b.e r = new org.apache.a.b.e("appId", (byte)11, (short)4);
  private static final org.apache.a.b.e s = new org.apache.a.b.e("packageName", (byte)11, (short)5);
  private static final org.apache.a.b.e t = new org.apache.a.b.e("topic", (byte)11, (short)6);
  private static final org.apache.a.b.e u = new org.apache.a.b.e("aliasName", (byte)11, (short)7);
  private static final org.apache.a.b.e v = new org.apache.a.b.e("message", (byte)12, (short)8);
  private static final org.apache.a.b.e w = new org.apache.a.b.e("needAck", (byte)2, (short)9);
  private static final org.apache.a.b.e x = new org.apache.a.b.e("params", (byte)13, (short)10);
  private static final org.apache.a.b.e y = new org.apache.a.b.e("category", (byte)11, (short)11);
  private static final org.apache.a.b.e z = new org.apache.a.b.e("userAccount", (byte)11, (short)12);
  private BitSet A = new BitSet(1);
  public String a;
  public f b;
  public String c;
  public String d;
  public String e;
  public String f;
  public String g;
  public b h;
  public boolean i = true;
  public Map<String, String> j;
  public String k;
  public String l;
  
  static
  {
    EnumMap localEnumMap = new EnumMap(aa.class);
    localEnumMap.put(aa.a, new org.apache.a.a.b("debug", (byte)2, new c((byte)11)));
    localEnumMap.put(aa.b, new org.apache.a.a.b("target", (byte)2, new org.apache.a.a.g(f.class)));
    localEnumMap.put(aa.c, new org.apache.a.a.b("id", (byte)1, new c((byte)11)));
    localEnumMap.put(aa.d, new org.apache.a.a.b("appId", (byte)1, new c((byte)11)));
    localEnumMap.put(aa.e, new org.apache.a.a.b("packageName", (byte)2, new c((byte)11)));
    localEnumMap.put(aa.f, new org.apache.a.a.b("topic", (byte)2, new c((byte)11)));
    localEnumMap.put(aa.g, new org.apache.a.a.b("aliasName", (byte)2, new c((byte)11)));
    localEnumMap.put(aa.h, new org.apache.a.a.b("message", (byte)2, new org.apache.a.a.g(b.class)));
    localEnumMap.put(aa.i, new org.apache.a.a.b("needAck", (byte)2, new c((byte)2)));
    localEnumMap.put(aa.j, new org.apache.a.a.b("params", (byte)2, new org.apache.a.a.e(new c((byte)11), new c((byte)11))));
    localEnumMap.put(aa.k, new org.apache.a.a.b("category", (byte)2, new c((byte)11)));
    localEnumMap.put(aa.l, new org.apache.a.a.b("userAccount", (byte)2, new c((byte)11)));
    m = Collections.unmodifiableMap(localEnumMap);
    org.apache.a.a.b.a(z.class, m);
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
    return this.A.get(0);
  }
  
  private boolean j()
  {
    return this.j != null;
  }
  
  private boolean k()
  {
    return this.k != null;
  }
  
  private boolean l()
  {
    return this.l != null;
  }
  
  private void m()
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
        if (((org.apache.a.b.e)localObject).b == 12)
        {
          this.b = new f();
          this.b.a(paramh);
        }
        else
        {
          k.a(paramh, ((org.apache.a.b.e)localObject).b);
        }
        break;
      case 3: 
        if (((org.apache.a.b.e)localObject).b == 11) {
          this.c = paramh.p();
        } else {
          k.a(paramh, ((org.apache.a.b.e)localObject).b);
        }
        break;
      case 4: 
        if (((org.apache.a.b.e)localObject).b == 11) {
          this.d = paramh.p();
        } else {
          k.a(paramh, ((org.apache.a.b.e)localObject).b);
        }
        break;
      case 5: 
        if (((org.apache.a.b.e)localObject).b == 11) {
          this.e = paramh.p();
        } else {
          k.a(paramh, ((org.apache.a.b.e)localObject).b);
        }
        break;
      case 6: 
        if (((org.apache.a.b.e)localObject).b == 11) {
          this.f = paramh.p();
        } else {
          k.a(paramh, ((org.apache.a.b.e)localObject).b);
        }
        break;
      case 7: 
        if (((org.apache.a.b.e)localObject).b == 11) {
          this.g = paramh.p();
        } else {
          k.a(paramh, ((org.apache.a.b.e)localObject).b);
        }
        break;
      case 8: 
        if (((org.apache.a.b.e)localObject).b == 12)
        {
          this.h = new b();
          this.h.a(paramh);
        }
        else
        {
          k.a(paramh, ((org.apache.a.b.e)localObject).b);
        }
        break;
      case 9: 
        if (((org.apache.a.b.e)localObject).b == 2)
        {
          this.i = paramh.j();
          this.A.set(0, true);
        }
        else
        {
          k.a(paramh, ((org.apache.a.b.e)localObject).b);
        }
        break;
      case 10: 
        if (((org.apache.a.b.e)localObject).b == 13)
        {
          localObject = paramh.g();
          this.j = new HashMap(((org.apache.a.b.g)localObject).c * 2);
          int i1 = 0;
          while (i1 < ((org.apache.a.b.g)localObject).c)
          {
            String str1 = paramh.p();
            String str2 = paramh.p();
            this.j.put(str1, str2);
            i1 += 1;
          }
        }
        k.a(paramh, ((org.apache.a.b.e)localObject).b);
        break;
      case 11: 
        if (((org.apache.a.b.e)localObject).b == 11) {
          this.k = paramh.p();
        } else {
          k.a(paramh, ((org.apache.a.b.e)localObject).b);
        }
        break;
      case 12: 
        if (((org.apache.a.b.e)localObject).b == 11) {
          this.l = paramh.p();
        } else {
          k.a(paramh, ((org.apache.a.b.e)localObject).b);
        }
        break;
      }
    }
    paramh.e();
    m();
  }
  
  public final boolean a(z paramz)
  {
    if (paramz == null) {}
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
                          do
                          {
                            return false;
                            bool1 = a();
                            bool2 = paramz.a();
                          } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.equals(paramz.a))));
                          bool1 = b();
                          bool2 = paramz.b();
                        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.b.a(paramz.b))));
                        bool1 = c();
                        bool2 = paramz.c();
                      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.c.equals(paramz.c))));
                      bool1 = d();
                      bool2 = paramz.d();
                    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.d.equals(paramz.d))));
                    bool1 = e();
                    bool2 = paramz.e();
                  } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.e.equals(paramz.e))));
                  bool1 = f();
                  bool2 = paramz.f();
                } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.f.equals(paramz.f))));
                bool1 = g();
                bool2 = paramz.g();
              } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.g.equals(paramz.g))));
              bool1 = h();
              bool2 = paramz.h();
            } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.h.a(paramz.h))));
            bool1 = i();
            bool2 = paramz.i();
          } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.i != paramz.i)));
          bool1 = j();
          bool2 = paramz.j();
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.j.equals(paramz.j))));
        bool1 = k();
        bool2 = paramz.k();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.k.equals(paramz.k))));
      bool1 = l();
      bool2 = paramz.l();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.l.equals(paramz.l))));
    return true;
  }
  
  public final void b(h paramh)
  {
    m();
    paramh.a();
    if ((this.a != null) && (a()))
    {
      paramh.a(o);
      paramh.a(this.a);
    }
    if ((this.b != null) && (b()))
    {
      paramh.a(p);
      this.b.b(paramh);
    }
    if (this.c != null)
    {
      paramh.a(q);
      paramh.a(this.c);
    }
    if (this.d != null)
    {
      paramh.a(r);
      paramh.a(this.d);
    }
    if ((this.e != null) && (e()))
    {
      paramh.a(s);
      paramh.a(this.e);
    }
    if ((this.f != null) && (f()))
    {
      paramh.a(t);
      paramh.a(this.f);
    }
    if ((this.g != null) && (g()))
    {
      paramh.a(u);
      paramh.a(this.g);
    }
    if ((this.h != null) && (h()))
    {
      paramh.a(v);
      this.h.b(paramh);
    }
    if (i())
    {
      paramh.a(w);
      paramh.a(this.i);
    }
    if ((this.j != null) && (j()))
    {
      paramh.a(x);
      paramh.a(new org.apache.a.b.g((byte)11, (byte)11, this.j.size()));
      Iterator localIterator = this.j.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        paramh.a((String)localEntry.getKey());
        paramh.a((String)localEntry.getValue());
      }
    }
    if ((this.k != null) && (k()))
    {
      paramh.a(y);
      paramh.a(this.k);
    }
    if ((this.l != null) && (l()))
    {
      paramh.a(z);
      paramh.a(this.l);
    }
    paramh.c();
    paramh.b();
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    while (!(paramObject instanceof z)) {
      return false;
    }
    return a((z)paramObject);
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public String toString()
  {
    int i2 = 0;
    StringBuilder localStringBuilder = new StringBuilder("XmPushActionSendMessage(");
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
        break label602;
      }
      if (i1 == 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append("target:");
      if (this.b != null) {
        break label480;
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
    label379:
    label417:
    label480:
    label506:
    label518:
    label530:
    label542:
    label554:
    label566:
    label578:
    label590:
    label602:
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
          break label506;
        }
        localStringBuilder.append("null");
        if (e())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("packageName:");
          if (this.e != null) {
            break label518;
          }
          localStringBuilder.append("null");
        }
        if (f())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("topic:");
          if (this.f != null) {
            break label530;
          }
          localStringBuilder.append("null");
        }
        if (g())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("aliasName:");
          if (this.g != null) {
            break label542;
          }
          localStringBuilder.append("null");
        }
        if (h())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("message:");
          if (this.h != null) {
            break label554;
          }
          localStringBuilder.append("null");
        }
        if (i())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("needAck:");
          localStringBuilder.append(this.i);
        }
        if (j())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("params:");
          if (this.j != null) {
            break label566;
          }
          localStringBuilder.append("null");
        }
        if (k())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("category:");
          if (this.k != null) {
            break label578;
          }
          localStringBuilder.append("null");
        }
        if (l())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("userAccount:");
          if (this.l != null) {
            break label590;
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
        localStringBuilder.append(this.j);
        break label379;
        localStringBuilder.append(this.k);
        break label417;
        localStringBuilder.append(this.l);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\g\a\z.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */