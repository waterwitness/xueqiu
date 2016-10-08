package com.xiaomi.g.a;

import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.Map;
import org.apache.a.a.g;
import org.apache.a.b.e;
import org.apache.a.b.h;
import org.apache.a.b.i;
import org.apache.a.b.k;
import org.apache.a.b.m;

public class n
  implements Serializable, Cloneable, org.apache.a.b<n, o>
{
  public static final Map<o, org.apache.a.a.b> i;
  private static final m j = new m("XmPushActionContainer");
  private static final e k = new e("action", (byte)8, (short)1);
  private static final e l = new e("encryptAction", (byte)2, (short)2);
  private static final e m = new e("isRequest", (byte)2, (short)3);
  private static final e n = new e("pushAction", (byte)11, (short)4);
  private static final e o = new e("appid", (byte)11, (short)5);
  private static final e p = new e("packageName", (byte)11, (short)6);
  private static final e q = new e("target", (byte)12, (short)7);
  private static final e r = new e("metaInfo", (byte)12, (short)8);
  public a a;
  public boolean b = true;
  public boolean c = true;
  public ByteBuffer d;
  public String e;
  public String f;
  public f g;
  public d h;
  private BitSet s = new BitSet(2);
  
  static
  {
    EnumMap localEnumMap = new EnumMap(o.class);
    localEnumMap.put(o.a, new org.apache.a.a.b("action", (byte)1, new org.apache.a.a.a(a.class)));
    localEnumMap.put(o.b, new org.apache.a.a.b("encryptAction", (byte)1, new org.apache.a.a.c((byte)2)));
    localEnumMap.put(o.c, new org.apache.a.a.b("isRequest", (byte)1, new org.apache.a.a.c((byte)2)));
    localEnumMap.put(o.d, new org.apache.a.a.b("pushAction", (byte)1, new org.apache.a.a.c((byte)11)));
    localEnumMap.put(o.e, new org.apache.a.a.b("appid", (byte)2, new org.apache.a.a.c((byte)11)));
    localEnumMap.put(o.f, new org.apache.a.a.b("packageName", (byte)2, new org.apache.a.a.c((byte)11)));
    localEnumMap.put(o.g, new org.apache.a.a.b("target", (byte)1, new g(f.class)));
    localEnumMap.put(o.h, new org.apache.a.a.b("metaInfo", (byte)2, new g(d.class)));
    i = Collections.unmodifiableMap(localEnumMap);
    org.apache.a.a.b.a(n.class, i);
  }
  
  private boolean c()
  {
    return this.a != null;
  }
  
  private boolean d()
  {
    return this.s.get(0);
  }
  
  private void e()
  {
    this.s.set(0, true);
  }
  
  private boolean f()
  {
    return this.s.get(1);
  }
  
  private void g()
  {
    this.s.set(1, true);
  }
  
  private boolean h()
  {
    return this.d != null;
  }
  
  private boolean i()
  {
    return this.e != null;
  }
  
  private boolean j()
  {
    return this.f != null;
  }
  
  private boolean k()
  {
    return this.g != null;
  }
  
  private boolean l()
  {
    return this.h != null;
  }
  
  private void m()
  {
    if (this.a == null) {
      throw new i("Required field 'action' was not present! Struct: " + toString(), (byte)0);
    }
    if (this.d == null) {
      throw new i("Required field 'pushAction' was not present! Struct: " + toString(), (byte)0);
    }
    if (this.g == null) {
      throw new i("Required field 'target' was not present! Struct: " + toString(), (byte)0);
    }
  }
  
  public final n a()
  {
    this.c = true;
    g();
    return this;
  }
  
  public final n a(boolean paramBoolean)
  {
    this.b = paramBoolean;
    e();
    return this;
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
        if (locale.b == 8) {
          this.a = a.a(paramh.m());
        } else {
          k.a(paramh, locale.b);
        }
        break;
      case 2: 
        if (locale.b == 2)
        {
          this.b = paramh.j();
          e();
        }
        else
        {
          k.a(paramh, locale.b);
        }
        break;
      case 3: 
        if (locale.b == 2)
        {
          this.c = paramh.j();
          g();
        }
        else
        {
          k.a(paramh, locale.b);
        }
        break;
      case 4: 
        if (locale.b == 11) {
          this.d = paramh.q();
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
        if (locale.b == 12)
        {
          this.g = new f();
          this.g.a(paramh);
        }
        else
        {
          k.a(paramh, locale.b);
        }
        break;
      case 8: 
        if (locale.b == 12)
        {
          this.h = new d();
          this.h.a(paramh);
        }
        else
        {
          k.a(paramh, locale.b);
        }
        break;
      }
    }
    paramh.e();
    if (!d()) {
      throw new i("Required field 'encryptAction' was not found in serialized data! Struct: " + toString(), (byte)0);
    }
    if (!f()) {
      throw new i("Required field 'isRequest' was not found in serialized data! Struct: " + toString(), (byte)0);
    }
    m();
  }
  
  public final void b(h paramh)
  {
    m();
    paramh.a();
    if (this.a != null)
    {
      paramh.a(k);
      paramh.a(this.a.n);
    }
    paramh.a(l);
    paramh.a(this.b);
    paramh.a(m);
    paramh.a(this.c);
    if (this.d != null)
    {
      paramh.a(n);
      paramh.a(this.d);
    }
    if ((this.e != null) && (i()))
    {
      paramh.a(o);
      paramh.a(this.e);
    }
    if ((this.f != null) && (j()))
    {
      paramh.a(p);
      paramh.a(this.f);
    }
    if (this.g != null)
    {
      paramh.a(q);
      this.g.b(paramh);
    }
    if ((this.h != null) && (l()))
    {
      paramh.a(r);
      this.h.b(paramh);
    }
    paramh.c();
    paramh.b();
  }
  
  public final byte[] b()
  {
    this.d = org.apache.a.c.a(this.d);
    return this.d.array();
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
                    return false;
                  } while (!(paramObject instanceof n));
                  paramObject = (n)paramObject;
                } while (paramObject == null);
                bool1 = c();
                bool2 = ((n)paramObject).c();
              } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.a.equals(((n)paramObject).a)) || (this.b != ((n)paramObject).b) || (this.c != ((n)paramObject).c)));
              bool1 = h();
              bool2 = ((n)paramObject).h();
            } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.d.equals(((n)paramObject).d))));
            bool1 = i();
            bool2 = ((n)paramObject).i();
          } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.e.equals(((n)paramObject).e))));
          bool1 = j();
          bool2 = ((n)paramObject).j();
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.f.equals(((n)paramObject).f))));
        bool1 = k();
        bool2 = ((n)paramObject).k();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.g.a(((n)paramObject).g))));
      bool1 = l();
      bool2 = ((n)paramObject).l();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.h.a(((n)paramObject).h))));
    return true;
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("XmPushActionContainer(");
    localStringBuilder.append("action:");
    if (this.a == null)
    {
      localStringBuilder.append("null");
      localStringBuilder.append(", ");
      localStringBuilder.append("encryptAction:");
      localStringBuilder.append(this.b);
      localStringBuilder.append(", ");
      localStringBuilder.append("isRequest:");
      localStringBuilder.append(this.c);
      localStringBuilder.append(", ");
      localStringBuilder.append("pushAction:");
      if (this.d != null) {
        break label285;
      }
      localStringBuilder.append("null");
      label115:
      if (i())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("appid:");
        if (this.e != null) {
          break label296;
        }
        localStringBuilder.append("null");
      }
      label153:
      if (j())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("packageName:");
        if (this.f != null) {
          break label308;
        }
        localStringBuilder.append("null");
      }
      label191:
      localStringBuilder.append(", ");
      localStringBuilder.append("target:");
      if (this.g != null) {
        break label320;
      }
      localStringBuilder.append("null");
      label222:
      if (l())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("metaInfo:");
        if (this.h != null) {
          break label332;
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
      label285:
      org.apache.a.c.a(this.d, localStringBuilder);
      break label115;
      label296:
      localStringBuilder.append(this.e);
      break label153;
      label308:
      localStringBuilder.append(this.f);
      break label191;
      label320:
      localStringBuilder.append(this.g);
      break label222;
      label332:
      localStringBuilder.append(this.h);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\g\a\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */