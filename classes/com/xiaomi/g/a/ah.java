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

public class ah
  implements Serializable, Cloneable, org.apache.a.b<ah, ai>
{
  public static final Map<ai, org.apache.a.a.b> i;
  private static final m j = new m("XmPushActionUnRegistrationResult");
  private static final e k = new e("debug", (byte)11, (short)1);
  private static final e l = new e("target", (byte)12, (short)2);
  private static final e m = new e("id", (byte)11, (short)3);
  private static final e n = new e("appId", (byte)11, (short)4);
  private static final e o = new e("request", (byte)12, (short)5);
  private static final e p = new e("errorCode", (byte)10, (short)6);
  private static final e q = new e("reason", (byte)11, (short)7);
  private static final e r = new e("packageName", (byte)11, (short)8);
  public String a;
  public f b;
  public String c;
  public String d;
  public af e;
  public long f;
  public String g;
  public String h;
  private BitSet s = new BitSet(1);
  
  static
  {
    EnumMap localEnumMap = new EnumMap(ai.class);
    localEnumMap.put(ai.a, new org.apache.a.a.b("debug", (byte)2, new c((byte)11)));
    localEnumMap.put(ai.b, new org.apache.a.a.b("target", (byte)2, new g(f.class)));
    localEnumMap.put(ai.c, new org.apache.a.a.b("id", (byte)1, new c((byte)11)));
    localEnumMap.put(ai.d, new org.apache.a.a.b("appId", (byte)1, new c((byte)11)));
    localEnumMap.put(ai.e, new org.apache.a.a.b("request", (byte)2, new g(af.class)));
    localEnumMap.put(ai.f, new org.apache.a.a.b("errorCode", (byte)1, new c((byte)10)));
    localEnumMap.put(ai.g, new org.apache.a.a.b("reason", (byte)2, new c((byte)11)));
    localEnumMap.put(ai.h, new org.apache.a.a.b("packageName", (byte)2, new c((byte)11)));
    i = Collections.unmodifiableMap(localEnumMap);
    org.apache.a.a.b.a(ah.class, i);
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
    return this.s.get(0);
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
          this.e = new af();
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
          this.s.set(0, true);
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
      }
    }
    paramh.e();
    if (!f()) {
      throw new i("Required field 'errorCode' was not found in serialized data! Struct: " + toString(), (byte)0);
    }
    i();
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
    if ((this.e != null) && (e()))
    {
      paramh.a(o);
      this.e.b(paramh);
    }
    paramh.a(p);
    paramh.a(this.f);
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
                    } while (!(paramObject instanceof ah));
                    paramObject = (ah)paramObject;
                  } while (paramObject == null);
                  bool1 = a();
                  bool2 = ((ah)paramObject).a();
                } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.equals(((ah)paramObject).a))));
                bool1 = b();
                bool2 = ((ah)paramObject).b();
              } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.b.a(((ah)paramObject).b))));
              bool1 = c();
              bool2 = ((ah)paramObject).c();
            } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.c.equals(((ah)paramObject).c))));
            bool1 = d();
            bool2 = ((ah)paramObject).d();
          } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.d.equals(((ah)paramObject).d))));
          bool1 = e();
          bool2 = ((ah)paramObject).e();
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.e.a(((ah)paramObject).e)) || (this.f != ((ah)paramObject).f)));
        bool1 = g();
        bool2 = ((ah)paramObject).g();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.g.equals(((ah)paramObject).g))));
      bool1 = h();
      bool2 = ((ah)paramObject).h();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.h.equals(((ah)paramObject).h))));
    return true;
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public String toString()
  {
    int i2 = 0;
    StringBuilder localStringBuilder = new StringBuilder("XmPushActionUnRegistrationResult(");
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
        break label395;
      }
      if (i1 == 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append("target:");
      if (this.b != null) {
        break label321;
      }
      localStringBuilder.append("null");
      i1 = i2;
    }
    label91:
    label126:
    label157:
    label195:
    label258:
    label321:
    label347:
    label359:
    label371:
    label383:
    label395:
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
          break label347;
        }
        localStringBuilder.append("null");
        if (e())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("request:");
          if (this.e != null) {
            break label359;
          }
          localStringBuilder.append("null");
        }
        localStringBuilder.append(", ");
        localStringBuilder.append("errorCode:");
        localStringBuilder.append(this.f);
        if (g())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("reason:");
          if (this.g != null) {
            break label371;
          }
          localStringBuilder.append("null");
        }
        if (h())
        {
          localStringBuilder.append(", ");
          localStringBuilder.append("packageName:");
          if (this.h != null) {
            break label383;
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
        localStringBuilder.append(this.g);
        break label258;
        localStringBuilder.append(this.h);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\g\a\ah.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */