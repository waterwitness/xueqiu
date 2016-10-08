package u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class cl
  implements Serializable, Cloneable, fa<cl, cq>
{
  public static final Map<cq, fo> l;
  private static final gg m = new gg("MiscInfo");
  private static final fx n = new fx("time_zone", (byte)8, (short)1);
  private static final fx o = new fx("language", (byte)11, (short)2);
  private static final fx p = new fx("country", (byte)11, (short)3);
  private static final fx q = new fx("latitude", (byte)4, (short)4);
  private static final fx r = new fx("longitude", (byte)4, (short)5);
  private static final fx s = new fx("carrier", (byte)11, (short)6);
  private static final fx t = new fx("latency", (byte)8, (short)7);
  private static final fx u = new fx("display_name", (byte)11, (short)8);
  private static final fx v = new fx("access_type", (byte)8, (short)9);
  private static final fx w = new fx("access_subtype", (byte)11, (short)10);
  private static final fx x = new fx("user_info", (byte)12, (short)11);
  private static final Map<Class<? extends gi>, gj> y;
  private cq[] A = { cq.a, cq.b, cq.c, cq.d, cq.e, cq.f, cq.g, cq.h, cq.i, cq.j, cq.k };
  public int a;
  public String b;
  public String c;
  public double d;
  public double e;
  public String f;
  public int g;
  public String h;
  public h i;
  public String j;
  public ef k;
  private byte z = 0;
  
  static
  {
    Object localObject = new HashMap();
    y = (Map)localObject;
    ((Map)localObject).put(gk.class, new cn((byte)0));
    y.put(gl.class, new cp((byte)0));
    localObject = new EnumMap(cq.class);
    ((Map)localObject).put(cq.a, new fo("time_zone", (byte)2, new fp((byte)8)));
    ((Map)localObject).put(cq.b, new fo("language", (byte)2, new fp((byte)11)));
    ((Map)localObject).put(cq.c, new fo("country", (byte)2, new fp((byte)11)));
    ((Map)localObject).put(cq.d, new fo("latitude", (byte)2, new fp((byte)4)));
    ((Map)localObject).put(cq.e, new fo("longitude", (byte)2, new fp((byte)4)));
    ((Map)localObject).put(cq.f, new fo("carrier", (byte)2, new fp((byte)11)));
    ((Map)localObject).put(cq.g, new fo("latency", (byte)2, new fp((byte)8)));
    ((Map)localObject).put(cq.h, new fo("display_name", (byte)2, new fp((byte)11)));
    ((Map)localObject).put(cq.i, new fo("access_type", (byte)2, new fn(h.class)));
    ((Map)localObject).put(cq.j, new fo("access_subtype", (byte)2, new fp((byte)11)));
    ((Map)localObject).put(cq.k, new fo("user_info", (byte)2, new fs(ef.class)));
    l = Collections.unmodifiableMap((Map)localObject);
    fo.a(cl.class, l);
  }
  
  public final void a(ga paramga)
  {
    ((gj)y.get(paramga.s())).a().a(paramga, this);
  }
  
  public final boolean a()
  {
    return ey.a(this.z, 0);
  }
  
  public final void b()
  {
    this.z = ((byte)(this.z | 0x1));
  }
  
  public final void b(ga paramga)
  {
    ((gj)y.get(paramga.s())).a().b(paramga, this);
  }
  
  public final boolean c()
  {
    return this.b != null;
  }
  
  public final boolean d()
  {
    return this.c != null;
  }
  
  public final boolean e()
  {
    return ey.a(this.z, 1);
  }
  
  public final void f()
  {
    this.z = ((byte)(this.z | 0x2));
  }
  
  public final boolean g()
  {
    return ey.a(this.z, 2);
  }
  
  public final void h()
  {
    this.z = ((byte)(this.z | 0x4));
  }
  
  public final boolean i()
  {
    return this.f != null;
  }
  
  public final boolean j()
  {
    return ey.a(this.z, 3);
  }
  
  public final void k()
  {
    this.z = ((byte)(this.z | 0x8));
  }
  
  public final boolean l()
  {
    return this.h != null;
  }
  
  public final boolean m()
  {
    return this.i != null;
  }
  
  public final boolean n()
  {
    return this.j != null;
  }
  
  public final boolean o()
  {
    return this.k != null;
  }
  
  public final void p()
  {
    if (this.k != null) {
      ef.f();
    }
  }
  
  public String toString()
  {
    int i3 = 0;
    StringBuilder localStringBuilder = new StringBuilder("MiscInfo(");
    int i2 = 1;
    if (a())
    {
      localStringBuilder.append("time_zone:");
      localStringBuilder.append(this.a);
      i2 = 0;
    }
    int i1 = i2;
    if (c())
    {
      if (i2 == 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append("language:");
      if (this.b == null)
      {
        localStringBuilder.append("null");
        i1 = 0;
      }
    }
    else
    {
      i2 = i1;
      if (d())
      {
        if (i1 == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("country:");
        if (this.c != null) {
          break label503;
        }
        localStringBuilder.append("null");
        label131:
        i2 = 0;
      }
      i1 = i2;
      if (e())
      {
        if (i2 == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("latitude:");
        localStringBuilder.append(this.d);
        i1 = 0;
      }
      i2 = i1;
      if (g())
      {
        if (i1 == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("longitude:");
        localStringBuilder.append(this.e);
        i2 = 0;
      }
      i1 = i2;
      if (i())
      {
        if (i2 == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("carrier:");
        if (this.f != null) {
          break label515;
        }
        localStringBuilder.append("null");
        label257:
        i1 = 0;
      }
      i2 = i1;
      if (j())
      {
        if (i1 == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("latency:");
        localStringBuilder.append(this.g);
        i2 = 0;
      }
      i1 = i2;
      if (l())
      {
        if (i2 == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("display_name:");
        if (this.h != null) {
          break label527;
        }
        localStringBuilder.append("null");
        label343:
        i1 = 0;
      }
      i2 = i1;
      if (m())
      {
        if (i1 == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("access_type:");
        if (this.i != null) {
          break label539;
        }
        localStringBuilder.append("null");
        label389:
        i2 = 0;
      }
      if (!n()) {
        break label578;
      }
      if (i2 == 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append("access_subtype:");
      if (this.j != null) {
        break label551;
      }
      localStringBuilder.append("null");
      i1 = i3;
    }
    for (;;)
    {
      label436:
      if (o())
      {
        if (i1 == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("user_info:");
        if (this.k != null) {
          break label566;
        }
        localStringBuilder.append("null");
      }
      for (;;)
      {
        localStringBuilder.append(")");
        return localStringBuilder.toString();
        localStringBuilder.append(this.b);
        break;
        label503:
        localStringBuilder.append(this.c);
        break label131;
        label515:
        localStringBuilder.append(this.f);
        break label257;
        label527:
        localStringBuilder.append(this.h);
        break label343;
        label539:
        localStringBuilder.append(this.i);
        break label389;
        label551:
        localStringBuilder.append(this.j);
        i1 = i3;
        break label436;
        label566:
        localStringBuilder.append(this.k);
      }
      label578:
      i1 = i2;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\cl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */