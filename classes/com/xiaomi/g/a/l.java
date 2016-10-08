package com.xiaomi.g.a;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.BitSet;
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
import org.apache.a.b.k;

public class l
  implements Serializable, Cloneable, org.apache.a.b<l, m>
{
  public static final Map<m, org.apache.a.a.b> l;
  private static final org.apache.a.b.m m = new org.apache.a.b.m("XmPushActionCommandResult");
  private static final e n = new e("debug", (byte)11, (short)1);
  private static final e o = new e("target", (byte)12, (short)2);
  private static final e p = new e("id", (byte)11, (short)3);
  private static final e q = new e("appId", (byte)11, (short)4);
  private static final e r = new e("cmdName", (byte)11, (short)5);
  private static final e s = new e("request", (byte)12, (short)6);
  private static final e t = new e("errorCode", (byte)10, (short)7);
  private static final e u = new e("reason", (byte)11, (short)8);
  private static final e v = new e("packageName", (byte)11, (short)9);
  private static final e w = new e("cmdArgs", (byte)15, (short)10);
  private static final e x = new e("category", (byte)11, (short)12);
  public String a;
  public f b;
  public String c;
  public String d;
  public String e;
  public j f;
  public long g;
  public String h;
  public String i;
  public List<String> j;
  public String k;
  private BitSet y = new BitSet(1);
  
  static
  {
    EnumMap localEnumMap = new EnumMap(m.class);
    localEnumMap.put(m.a, new org.apache.a.a.b("debug", (byte)2, new c((byte)11)));
    localEnumMap.put(m.b, new org.apache.a.a.b("target", (byte)2, new g(f.class)));
    localEnumMap.put(m.c, new org.apache.a.a.b("id", (byte)1, new c((byte)11)));
    localEnumMap.put(m.d, new org.apache.a.a.b("appId", (byte)1, new c((byte)11)));
    localEnumMap.put(m.e, new org.apache.a.a.b("cmdName", (byte)1, new c((byte)11)));
    localEnumMap.put(m.f, new org.apache.a.a.b("request", (byte)2, new g(j.class)));
    localEnumMap.put(m.g, new org.apache.a.a.b("errorCode", (byte)1, new c((byte)10)));
    localEnumMap.put(m.h, new org.apache.a.a.b("reason", (byte)2, new c((byte)11)));
    localEnumMap.put(m.i, new org.apache.a.a.b("packageName", (byte)2, new c((byte)11)));
    localEnumMap.put(m.j, new org.apache.a.a.b("cmdArgs", (byte)2, new d(new c((byte)11))));
    localEnumMap.put(m.k, new org.apache.a.a.b("category", (byte)2, new c((byte)11)));
    l = Collections.unmodifiableMap(localEnumMap);
    org.apache.a.a.b.a(l.class, l);
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
    return this.y.get(0);
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
  
  private boolean k()
  {
    return this.k != null;
  }
  
  private void l()
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
      case 11: 
      default: 
        k.a(paramh, ((e)localObject).b);
        break;
      case 1: 
        if (((e)localObject).b == 11) {
          this.a = paramh.p();
        } else {
          k.a(paramh, ((e)localObject).b);
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
          k.a(paramh, ((e)localObject).b);
        }
        break;
      case 3: 
        if (((e)localObject).b == 11) {
          this.c = paramh.p();
        } else {
          k.a(paramh, ((e)localObject).b);
        }
        break;
      case 4: 
        if (((e)localObject).b == 11) {
          this.d = paramh.p();
        } else {
          k.a(paramh, ((e)localObject).b);
        }
        break;
      case 5: 
        if (((e)localObject).b == 11) {
          this.e = paramh.p();
        } else {
          k.a(paramh, ((e)localObject).b);
        }
        break;
      case 6: 
        if (((e)localObject).b == 12)
        {
          this.f = new j();
          this.f.a(paramh);
        }
        else
        {
          k.a(paramh, ((e)localObject).b);
        }
        break;
      case 7: 
        if (((e)localObject).b == 10)
        {
          this.g = paramh.n();
          this.y.set(0, true);
        }
        else
        {
          k.a(paramh, ((e)localObject).b);
        }
        break;
      case 8: 
        if (((e)localObject).b == 11) {
          this.h = paramh.p();
        } else {
          k.a(paramh, ((e)localObject).b);
        }
        break;
      case 9: 
        if (((e)localObject).b == 11) {
          this.i = paramh.p();
        } else {
          k.a(paramh, ((e)localObject).b);
        }
        break;
      case 10: 
        if (((e)localObject).b == 15)
        {
          localObject = paramh.h();
          this.j = new ArrayList(((org.apache.a.b.f)localObject).b);
          int i1 = 0;
          while (i1 < ((org.apache.a.b.f)localObject).b)
          {
            String str = paramh.p();
            this.j.add(str);
            i1 += 1;
          }
        }
        k.a(paramh, ((e)localObject).b);
        break;
      case 12: 
        if (((e)localObject).b == 11) {
          this.k = paramh.p();
        } else {
          k.a(paramh, ((e)localObject).b);
        }
        break;
      }
    }
    paramh.e();
    if (!g()) {
      throw new i("Required field 'errorCode' was not found in serialized data! Struct: " + toString(), (byte)0);
    }
    l();
  }
  
  public final void b(h paramh)
  {
    l();
    paramh.a();
    if ((this.a != null) && (a()))
    {
      paramh.a(n);
      paramh.a(this.a);
    }
    if ((this.b != null) && (b()))
    {
      paramh.a(o);
      this.b.b(paramh);
    }
    if (this.c != null)
    {
      paramh.a(p);
      paramh.a(this.c);
    }
    if (this.d != null)
    {
      paramh.a(q);
      paramh.a(this.d);
    }
    if (this.e != null)
    {
      paramh.a(r);
      paramh.a(this.e);
    }
    if ((this.f != null) && (f()))
    {
      paramh.a(s);
      this.f.b(paramh);
    }
    paramh.a(t);
    paramh.a(this.g);
    if ((this.h != null) && (h()))
    {
      paramh.a(u);
      paramh.a(this.h);
    }
    if ((this.i != null) && (i()))
    {
      paramh.a(v);
      paramh.a(this.i);
    }
    if ((this.j != null) && (j()))
    {
      paramh.a(w);
      paramh.a(new org.apache.a.b.f((byte)11, this.j.size()));
      Iterator localIterator = this.j.iterator();
      while (localIterator.hasNext()) {
        paramh.a((String)localIterator.next());
      }
    }
    if ((this.k != null) && (k()))
    {
      paramh.a(x);
      paramh.a(this.k);
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
                          do
                          {
                            return false;
                          } while (!(paramObject instanceof l));
                          paramObject = (l)paramObject;
                        } while (paramObject == null);
                        bool1 = a();
                        bool2 = ((l)paramObject).a();
                      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.equals(((l)paramObject).a))));
                      bool1 = b();
                      bool2 = ((l)paramObject).b();
                    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.b.a(((l)paramObject).b))));
                    bool1 = c();
                    bool2 = ((l)paramObject).c();
                  } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.c.equals(((l)paramObject).c))));
                  bool1 = d();
                  bool2 = ((l)paramObject).d();
                } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.d.equals(((l)paramObject).d))));
                bool1 = e();
                bool2 = ((l)paramObject).e();
              } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.e.equals(((l)paramObject).e))));
              bool1 = f();
              bool2 = ((l)paramObject).f();
            } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.f.a(((l)paramObject).f)) || (this.g != ((l)paramObject).g)));
            bool1 = h();
            bool2 = ((l)paramObject).h();
          } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.h.equals(((l)paramObject).h))));
          bool1 = i();
          bool2 = ((l)paramObject).i();
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.i.equals(((l)paramObject).i))));
        bool1 = j();
        bool2 = ((l)paramObject).j();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.j.equals(((l)paramObject).j))));
      bool1 = k();
      bool2 = ((l)paramObject).k();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.k.equals(((l)paramObject).k))));
    return true;
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public String toString()
  {
    int i2 = 0;
    StringBuilder localStringBuilder = new StringBuilder("XmPushActionCommandResult(");
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
        break label538;
      }
      if (i1 == 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append("target:");
      if (this.b != null) {
        break label428;
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
    label327:
    label365:
    label428:
    label454:
    label466:
    label478:
    label490:
    label502:
    label514:
    label526:
    label538:
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
          break label454;
        }
        localStringBuilder.append("null");
        localStringBuilder.append(", ");
        localStringBuilder.append("cmdName:");
        if (this.e != null) {
          break label466;
        }
        localStringBuilder.append("null");
        if (f())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("request:");
          if (this.f != null) {
            break label478;
          }
          localStringBuilder.append("null");
        }
        localStringBuilder.append(", ");
        localStringBuilder.append("errorCode:");
        localStringBuilder.append(this.g);
        if (h())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("reason:");
          if (this.h != null) {
            break label490;
          }
          localStringBuilder.append("null");
        }
        if (i())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("packageName:");
          if (this.i != null) {
            break label502;
          }
          localStringBuilder.append("null");
        }
        if (j())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("cmdArgs:");
          if (this.j != null) {
            break label514;
          }
          localStringBuilder.append("null");
        }
        if (k())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("category:");
          if (this.k != null) {
            break label526;
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
        localStringBuilder.append(this.h);
        break label289;
        localStringBuilder.append(this.i);
        break label327;
        localStringBuilder.append(this.j);
        break label365;
        localStringBuilder.append(this.k);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\g\a\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */