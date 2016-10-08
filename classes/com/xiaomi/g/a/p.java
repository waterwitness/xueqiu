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

public class p
  implements Serializable, Cloneable, org.apache.a.b<p, q>
{
  public static final Map<q, org.apache.a.a.b> k;
  private static final m l = new m("XmPushActionNotification");
  private static final org.apache.a.b.e m = new org.apache.a.b.e("debug", (byte)11, (short)1);
  private static final org.apache.a.b.e n = new org.apache.a.b.e("target", (byte)12, (short)2);
  private static final org.apache.a.b.e o = new org.apache.a.b.e("id", (byte)11, (short)3);
  private static final org.apache.a.b.e p = new org.apache.a.b.e("appId", (byte)11, (short)4);
  private static final org.apache.a.b.e q = new org.apache.a.b.e("type", (byte)11, (short)5);
  private static final org.apache.a.b.e r = new org.apache.a.b.e("requireAck", (byte)2, (short)6);
  private static final org.apache.a.b.e s = new org.apache.a.b.e("payload", (byte)11, (short)7);
  private static final org.apache.a.b.e t = new org.apache.a.b.e("extra", (byte)13, (short)8);
  private static final org.apache.a.b.e u = new org.apache.a.b.e("packageName", (byte)11, (short)9);
  private static final org.apache.a.b.e v = new org.apache.a.b.e("category", (byte)11, (short)10);
  public String a;
  public f b;
  public String c;
  public String d;
  public String e;
  public boolean f = true;
  public String g;
  public Map<String, String> h;
  public String i;
  public String j;
  private BitSet w = new BitSet(1);
  
  static
  {
    EnumMap localEnumMap = new EnumMap(q.class);
    localEnumMap.put(q.a, new org.apache.a.a.b("debug", (byte)2, new c((byte)11)));
    localEnumMap.put(q.b, new org.apache.a.a.b("target", (byte)2, new org.apache.a.a.g(f.class)));
    localEnumMap.put(q.c, new org.apache.a.a.b("id", (byte)1, new c((byte)11)));
    localEnumMap.put(q.d, new org.apache.a.a.b("appId", (byte)2, new c((byte)11)));
    localEnumMap.put(q.e, new org.apache.a.a.b("type", (byte)2, new c((byte)11)));
    localEnumMap.put(q.f, new org.apache.a.a.b("requireAck", (byte)1, new c((byte)2)));
    localEnumMap.put(q.g, new org.apache.a.a.b("payload", (byte)2, new c((byte)11)));
    localEnumMap.put(q.h, new org.apache.a.a.b("extra", (byte)2, new org.apache.a.a.e(new c((byte)11), new c((byte)11))));
    localEnumMap.put(q.i, new org.apache.a.a.b("packageName", (byte)2, new c((byte)11)));
    localEnumMap.put(q.j, new org.apache.a.a.b("category", (byte)2, new c((byte)11)));
    k = Collections.unmodifiableMap(localEnumMap);
    org.apache.a.a.b.a(p.class, k);
  }
  
  private boolean b()
  {
    return this.a != null;
  }
  
  private boolean c()
  {
    return this.b != null;
  }
  
  private boolean d()
  {
    return this.c != null;
  }
  
  private boolean e()
  {
    return this.d != null;
  }
  
  private boolean f()
  {
    return this.e != null;
  }
  
  private boolean g()
  {
    return this.w.get(0);
  }
  
  private void h()
  {
    this.w.set(0, true);
  }
  
  private boolean i()
  {
    return this.g != null;
  }
  
  private boolean j()
  {
    return this.h != null;
  }
  
  private boolean k()
  {
    return this.i != null;
  }
  
  private boolean l()
  {
    return this.j != null;
  }
  
  private void m()
  {
    if (this.c == null) {
      throw new i("Required field 'id' was not present! Struct: " + toString(), (byte)0);
    }
  }
  
  public final p a()
  {
    this.f = false;
    h();
    return this;
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
        if (((org.apache.a.b.e)localObject).b == 2)
        {
          this.f = paramh.j();
          h();
        }
        else
        {
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
        if (((org.apache.a.b.e)localObject).b == 13)
        {
          localObject = paramh.g();
          this.h = new HashMap(((org.apache.a.b.g)localObject).c * 2);
          int i1 = 0;
          while (i1 < ((org.apache.a.b.g)localObject).c)
          {
            String str1 = paramh.p();
            String str2 = paramh.p();
            this.h.put(str1, str2);
            i1 += 1;
          }
        }
        k.a(paramh, ((org.apache.a.b.e)localObject).b);
        break;
      case 9: 
        if (((org.apache.a.b.e)localObject).b == 11) {
          this.i = paramh.p();
        } else {
          k.a(paramh, ((org.apache.a.b.e)localObject).b);
        }
        break;
      case 10: 
        if (((org.apache.a.b.e)localObject).b == 11) {
          this.j = paramh.p();
        } else {
          k.a(paramh, ((org.apache.a.b.e)localObject).b);
        }
        break;
      }
    }
    paramh.e();
    if (!g()) {
      throw new i("Required field 'requireAck' was not found in serialized data! Struct: " + toString(), (byte)0);
    }
    m();
  }
  
  public final void b(h paramh)
  {
    m();
    paramh.a();
    if ((this.a != null) && (b()))
    {
      paramh.a(m);
      paramh.a(this.a);
    }
    if ((this.b != null) && (c()))
    {
      paramh.a(n);
      this.b.b(paramh);
    }
    if (this.c != null)
    {
      paramh.a(o);
      paramh.a(this.c);
    }
    if ((this.d != null) && (e()))
    {
      paramh.a(p);
      paramh.a(this.d);
    }
    if ((this.e != null) && (f()))
    {
      paramh.a(q);
      paramh.a(this.e);
    }
    paramh.a(r);
    paramh.a(this.f);
    if ((this.g != null) && (i()))
    {
      paramh.a(s);
      paramh.a(this.g);
    }
    if ((this.h != null) && (j()))
    {
      paramh.a(t);
      paramh.a(new org.apache.a.b.g((byte)11, (byte)11, this.h.size()));
      Iterator localIterator = this.h.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        paramh.a((String)localEntry.getKey());
        paramh.a((String)localEntry.getValue());
      }
    }
    if ((this.i != null) && (k()))
    {
      paramh.a(u);
      paramh.a(this.i);
    }
    if ((this.j != null) && (l()))
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
                        } while (!(paramObject instanceof p));
                        paramObject = (p)paramObject;
                      } while (paramObject == null);
                      bool1 = b();
                      bool2 = ((p)paramObject).b();
                    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.equals(((p)paramObject).a))));
                    bool1 = c();
                    bool2 = ((p)paramObject).c();
                  } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.b.a(((p)paramObject).b))));
                  bool1 = d();
                  bool2 = ((p)paramObject).d();
                } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.c.equals(((p)paramObject).c))));
                bool1 = e();
                bool2 = ((p)paramObject).e();
              } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.d.equals(((p)paramObject).d))));
              bool1 = f();
              bool2 = ((p)paramObject).f();
            } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.e.equals(((p)paramObject).e)) || (this.f != ((p)paramObject).f)));
            bool1 = i();
            bool2 = ((p)paramObject).i();
          } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.g.equals(((p)paramObject).g))));
          bool1 = j();
          bool2 = ((p)paramObject).j();
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.h.equals(((p)paramObject).h))));
        bool1 = k();
        bool2 = ((p)paramObject).k();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.i.equals(((p)paramObject).i))));
      bool1 = l();
      bool2 = ((p)paramObject).l();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.j.equals(((p)paramObject).j))));
    return true;
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public String toString()
  {
    int i2 = 0;
    StringBuilder localStringBuilder = new StringBuilder("XmPushActionNotification(");
    int i1 = 1;
    if (b())
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
      if (!c()) {
        break label502;
      }
      if (i1 == 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append("target:");
      if (this.b != null) {
        break label404;
      }
      localStringBuilder.append("null");
      i1 = i2;
    }
    label91:
    label126:
    label164:
    label202:
    label265:
    label303:
    label341:
    label404:
    label430:
    label442:
    label454:
    label466:
    label478:
    label490:
    label502:
    for (;;)
    {
      if (i1 == 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append("id:");
      if (this.c == null)
      {
        localStringBuilder.append("null");
        if (e())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("appId:");
          if (this.d != null) {
            break label430;
          }
          localStringBuilder.append("null");
        }
        if (f())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("type:");
          if (this.e != null) {
            break label442;
          }
          localStringBuilder.append("null");
        }
        localStringBuilder.append(", ");
        localStringBuilder.append("requireAck:");
        localStringBuilder.append(this.f);
        if (i())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("payload:");
          if (this.g != null) {
            break label454;
          }
          localStringBuilder.append("null");
        }
        if (j())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("extra:");
          if (this.h != null) {
            break label466;
          }
          localStringBuilder.append("null");
        }
        if (k())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("packageName:");
          if (this.i != null) {
            break label478;
          }
          localStringBuilder.append("null");
        }
        if (l())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("category:");
          if (this.j != null) {
            break label490;
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
        break label164;
        localStringBuilder.append(this.e);
        break label202;
        localStringBuilder.append(this.g);
        break label265;
        localStringBuilder.append(this.h);
        break label303;
        localStringBuilder.append(this.i);
        break label341;
        localStringBuilder.append(this.j);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\g\a\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */