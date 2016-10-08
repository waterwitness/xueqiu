package com.xiaomi.g.a;

import java.io.Serializable;
import java.util.BitSet;
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

public class al
  implements Serializable, Cloneable, org.apache.a.b<al, am>
{
  public static final Map<am, org.apache.a.a.b> k;
  private static final m l = new m("XmPushActionUnSubscriptionResult");
  private static final e m = new e("debug", (byte)11, (short)1);
  private static final e n = new e("target", (byte)12, (short)2);
  private static final e o = new e("id", (byte)11, (short)3);
  private static final e p = new e("appId", (byte)11, (short)4);
  private static final e q = new e("request", (byte)12, (short)5);
  private static final e r = new e("errorCode", (byte)10, (short)6);
  private static final e s = new e("reason", (byte)11, (short)7);
  private static final e t = new e("topic", (byte)11, (short)8);
  private static final e u = new e("packageName", (byte)11, (short)9);
  private static final e v = new e("category", (byte)11, (short)10);
  public String a;
  public f b;
  public String c;
  public String d;
  public aj e;
  public long f;
  public String g;
  public String h;
  public String i;
  public String j;
  private BitSet w = new BitSet(1);
  
  static
  {
    EnumMap localEnumMap = new EnumMap(am.class);
    localEnumMap.put(am.a, new org.apache.a.a.b("debug", (byte)2, new c((byte)11)));
    localEnumMap.put(am.b, new org.apache.a.a.b("target", (byte)2, new g(f.class)));
    localEnumMap.put(am.c, new org.apache.a.a.b("id", (byte)1, new c((byte)11)));
    localEnumMap.put(am.d, new org.apache.a.a.b("appId", (byte)2, new c((byte)11)));
    localEnumMap.put(am.e, new org.apache.a.a.b("request", (byte)2, new g(aj.class)));
    localEnumMap.put(am.f, new org.apache.a.a.b("errorCode", (byte)2, new c((byte)10)));
    localEnumMap.put(am.g, new org.apache.a.a.b("reason", (byte)2, new c((byte)11)));
    localEnumMap.put(am.h, new org.apache.a.a.b("topic", (byte)2, new c((byte)11)));
    localEnumMap.put(am.i, new org.apache.a.a.b("packageName", (byte)2, new c((byte)11)));
    localEnumMap.put(am.j, new org.apache.a.a.b("category", (byte)2, new c((byte)11)));
    k = Collections.unmodifiableMap(localEnumMap);
    org.apache.a.a.b.a(al.class, k);
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
    return this.w.get(0);
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
        if (locale.b == 12)
        {
          this.e = new aj();
          this.e.a(paramh);
        }
        else
        {
          k.a(paramh, locale.b);
        }
        break;
      case 6: 
        if (locale.b == 10)
        {
          this.f = paramh.n();
          this.w.set(0, true);
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
    if ((this.d != null) && (d()))
    {
      paramh.a(p);
      paramh.a(this.d);
    }
    if ((this.e != null) && (e()))
    {
      paramh.a(q);
      this.e.b(paramh);
    }
    if (f())
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
                          } while (!(paramObject instanceof al));
                          paramObject = (al)paramObject;
                        } while (paramObject == null);
                        bool1 = a();
                        bool2 = ((al)paramObject).a();
                      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.equals(((al)paramObject).a))));
                      bool1 = b();
                      bool2 = ((al)paramObject).b();
                    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.b.a(((al)paramObject).b))));
                    bool1 = c();
                    bool2 = ((al)paramObject).c();
                  } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.c.equals(((al)paramObject).c))));
                  bool1 = d();
                  bool2 = ((al)paramObject).d();
                } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.d.equals(((al)paramObject).d))));
                bool1 = e();
                bool2 = ((al)paramObject).e();
              } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.e.a(((al)paramObject).e))));
              bool1 = f();
              bool2 = ((al)paramObject).f();
            } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.f != ((al)paramObject).f)));
            bool1 = g();
            bool2 = ((al)paramObject).g();
          } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.g.equals(((al)paramObject).g))));
          bool1 = h();
          bool2 = ((al)paramObject).h();
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.h.equals(((al)paramObject).h))));
        bool1 = i();
        bool2 = ((al)paramObject).i();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.i.equals(((al)paramObject).i))));
      bool1 = j();
      bool2 = ((al)paramObject).j();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.j.equals(((al)paramObject).j))));
    return true;
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public String toString()
  {
    int i2 = 0;
    StringBuilder localStringBuilder = new StringBuilder("XmPushActionUnSubscriptionResult(");
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
        break label509;
      }
      if (i1 == 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append("target:");
      if (this.b != null) {
        break label411;
      }
      localStringBuilder.append("null");
      i1 = i2;
    }
    label91:
    label126:
    label164:
    label202:
    label272:
    label310:
    label348:
    label411:
    label437:
    label449:
    label461:
    label473:
    label485:
    label497:
    label509:
    for (;;)
    {
      if (i1 == 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append("id:");
      if (this.c == null)
      {
        localStringBuilder.append("null");
        if (d())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("appId:");
          if (this.d != null) {
            break label437;
          }
          localStringBuilder.append("null");
        }
        if (e())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("request:");
          if (this.e != null) {
            break label449;
          }
          localStringBuilder.append("null");
        }
        if (f())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("errorCode:");
          localStringBuilder.append(this.f);
        }
        if (g())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("reason:");
          if (this.g != null) {
            break label461;
          }
          localStringBuilder.append("null");
        }
        if (h())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("topic:");
          if (this.h != null) {
            break label473;
          }
          localStringBuilder.append("null");
        }
        if (i())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("packageName:");
          if (this.i != null) {
            break label485;
          }
          localStringBuilder.append("null");
        }
        if (j())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("category:");
          if (this.j != null) {
            break label497;
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
        break label272;
        localStringBuilder.append(this.h);
        break label310;
        localStringBuilder.append(this.i);
        break label348;
        localStringBuilder.append(this.j);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\g\a\al.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */