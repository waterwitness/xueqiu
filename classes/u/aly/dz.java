package u.aly;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class dz
  implements Serializable, Cloneable, fa<dz, ee>
{
  public static final Map<ee, fo> j;
  private static final gg k = new gg("UALogEntry");
  private static final fx l = new fx("client_stats", (byte)12, (short)1);
  private static final fx m = new fx("app_info", (byte)12, (short)2);
  private static final fx n = new fx("device_info", (byte)12, (short)3);
  private static final fx o = new fx("misc_info", (byte)12, (short)4);
  private static final fx p = new fx("activate_msg", (byte)12, (short)5);
  private static final fx q = new fx("instant_msgs", (byte)15, (short)6);
  private static final fx r = new fx("sessions", (byte)15, (short)7);
  private static final fx s = new fx("imprint", (byte)12, (short)8);
  private static final fx t = new fx("id_tracking", (byte)12, (short)9);
  private static final Map<Class<? extends gi>, gj> u;
  public v a;
  public p b;
  public ab c;
  public cl d;
  public i e;
  public List<bz> f;
  public List<dn> g;
  public bn h;
  public bh i;
  private ee[] v = { ee.e, ee.f, ee.g, ee.h, ee.i };
  
  static
  {
    Object localObject = new HashMap();
    u = (Map)localObject;
    ((Map)localObject).put(gk.class, new eb((byte)0));
    u.put(gl.class, new ed((byte)0));
    localObject = new EnumMap(ee.class);
    ((Map)localObject).put(ee.a, new fo("client_stats", (byte)1, new fs(v.class)));
    ((Map)localObject).put(ee.b, new fo("app_info", (byte)1, new fs(p.class)));
    ((Map)localObject).put(ee.c, new fo("device_info", (byte)1, new fs(ab.class)));
    ((Map)localObject).put(ee.d, new fo("misc_info", (byte)1, new fs(cl.class)));
    ((Map)localObject).put(ee.e, new fo("activate_msg", (byte)2, new fs(i.class)));
    ((Map)localObject).put(ee.f, new fo("instant_msgs", (byte)2, new fq(new fs(bz.class))));
    ((Map)localObject).put(ee.g, new fo("sessions", (byte)2, new fq(new fs(dn.class))));
    ((Map)localObject).put(ee.h, new fo("imprint", (byte)2, new fs(bn.class)));
    ((Map)localObject).put(ee.i, new fo("id_tracking", (byte)2, new fs(bh.class)));
    j = Collections.unmodifiableMap((Map)localObject);
    fo.a(dz.class, j);
  }
  
  public final void a(bz parambz)
  {
    if (this.f == null) {
      this.f = new ArrayList();
    }
    this.f.add(parambz);
  }
  
  public final void a(ga paramga)
  {
    ((gj)u.get(paramga.s())).a().a(paramga, this);
  }
  
  public final boolean a()
  {
    return this.e != null;
  }
  
  public final int b()
  {
    if (this.f == null) {
      return 0;
    }
    return this.f.size();
  }
  
  public final void b(ga paramga)
  {
    ((gj)u.get(paramga.s())).a().b(paramga, this);
  }
  
  public final boolean c()
  {
    return this.f != null;
  }
  
  public final boolean d()
  {
    return this.g != null;
  }
  
  public final boolean e()
  {
    return this.h != null;
  }
  
  public final boolean f()
  {
    return this.i != null;
  }
  
  public final void g()
  {
    if (this.a == null) {
      throw new gb("Required field 'client_stats' was not present! Struct: " + toString());
    }
    if (this.b == null) {
      throw new gb("Required field 'app_info' was not present! Struct: " + toString());
    }
    if (this.c == null) {
      throw new gb("Required field 'device_info' was not present! Struct: " + toString());
    }
    if (this.d == null) {
      throw new gb("Required field 'misc_info' was not present! Struct: " + toString());
    }
    if (this.a != null) {
      v.e();
    }
    if (this.b != null) {
      this.b.i();
    }
    if (this.c != null) {
      this.c.u();
    }
    if (this.d != null) {
      this.d.p();
    }
    if (this.e != null) {
      i.b();
    }
    if (this.h != null) {
      this.h.b();
    }
    if (this.i != null) {
      this.i.c();
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("UALogEntry(");
    localStringBuilder.append("client_stats:");
    if (this.a == null)
    {
      localStringBuilder.append("null");
      localStringBuilder.append(", ");
      localStringBuilder.append("app_info:");
      if (this.b != null) {
        break label342;
      }
      localStringBuilder.append("null");
      label65:
      localStringBuilder.append(", ");
      localStringBuilder.append("device_info:");
      if (this.c != null) {
        break label354;
      }
      localStringBuilder.append("null");
      label96:
      localStringBuilder.append(", ");
      localStringBuilder.append("misc_info:");
      if (this.d != null) {
        break label366;
      }
      localStringBuilder.append("null");
      label127:
      if (a())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("activate_msg:");
        if (this.e != null) {
          break label378;
        }
        localStringBuilder.append("null");
      }
      label165:
      if (c())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("instant_msgs:");
        if (this.f != null) {
          break label390;
        }
        localStringBuilder.append("null");
      }
      label203:
      if (d())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("sessions:");
        if (this.g != null) {
          break label402;
        }
        localStringBuilder.append("null");
      }
      label241:
      if (e())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("imprint:");
        if (this.h != null) {
          break label414;
        }
        localStringBuilder.append("null");
      }
      label279:
      if (f())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("id_tracking:");
        if (this.i != null) {
          break label426;
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
      label342:
      localStringBuilder.append(this.b);
      break label65;
      label354:
      localStringBuilder.append(this.c);
      break label96;
      label366:
      localStringBuilder.append(this.d);
      break label127;
      label378:
      localStringBuilder.append(this.e);
      break label165;
      label390:
      localStringBuilder.append(this.f);
      break label203;
      label402:
      localStringBuilder.append(this.g);
      break label241;
      label414:
      localStringBuilder.append(this.h);
      break label279;
      label426:
      localStringBuilder.append(this.i);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\dz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */