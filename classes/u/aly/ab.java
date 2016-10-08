package u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class ab
  implements Serializable, Cloneable, fa<ab, ag>
{
  private static final fx A;
  private static final fx B;
  private static final fx C;
  private static final fx D;
  private static final fx E;
  private static final fx F;
  private static final fx G;
  private static final fx H;
  private static final fx I;
  private static final fx J;
  private static final Map<Class<? extends gi>, gj> K;
  public static final Map<ag, fo> r;
  private static final gg s = new gg("DeviceInfo");
  private static final fx t = new fx("device_id", (byte)11, (short)1);
  private static final fx u = new fx("idmd5", (byte)11, (short)2);
  private static final fx v = new fx("mac_address", (byte)11, (short)3);
  private static final fx w = new fx("open_udid", (byte)11, (short)4);
  private static final fx x = new fx("model", (byte)11, (short)5);
  private static final fx y = new fx("cpu", (byte)11, (short)6);
  private static final fx z = new fx("os", (byte)11, (short)7);
  private byte L = 0;
  private ag[] M = { ag.a, ag.b, ag.c, ag.d, ag.e, ag.f, ag.g, ag.h, ag.i, ag.j, ag.k, ag.l, ag.m, ag.n, ag.o, ag.p, ag.q };
  public String a;
  public String b;
  public String c;
  public String d;
  public String e;
  public String f;
  public String g;
  public String h;
  public da i;
  public boolean j;
  public boolean k;
  public String l;
  public String m;
  public long n;
  public String o;
  public String p;
  public String q;
  
  static
  {
    A = new fx("os_version", (byte)11, (short)8);
    B = new fx("resolution", (byte)12, (short)9);
    C = new fx("is_jailbroken", (byte)2, (short)10);
    D = new fx("is_pirated", (byte)2, (short)11);
    E = new fx("device_board", (byte)11, (short)12);
    F = new fx("device_brand", (byte)11, (short)13);
    G = new fx("device_manutime", (byte)10, (short)14);
    H = new fx("device_manufacturer", (byte)11, (short)15);
    I = new fx("device_manuid", (byte)11, (short)16);
    J = new fx("device_name", (byte)11, (short)17);
    Object localObject = new HashMap();
    K = (Map)localObject;
    ((Map)localObject).put(gk.class, new ad((byte)0));
    K.put(gl.class, new af((byte)0));
    localObject = new EnumMap(ag.class);
    ((Map)localObject).put(ag.a, new fo("device_id", (byte)2, new fp((byte)11)));
    ((Map)localObject).put(ag.b, new fo("idmd5", (byte)2, new fp((byte)11)));
    ((Map)localObject).put(ag.c, new fo("mac_address", (byte)2, new fp((byte)11)));
    ((Map)localObject).put(ag.d, new fo("open_udid", (byte)2, new fp((byte)11)));
    ((Map)localObject).put(ag.e, new fo("model", (byte)2, new fp((byte)11)));
    ((Map)localObject).put(ag.f, new fo("cpu", (byte)2, new fp((byte)11)));
    ((Map)localObject).put(ag.g, new fo("os", (byte)2, new fp((byte)11)));
    ((Map)localObject).put(ag.h, new fo("os_version", (byte)2, new fp((byte)11)));
    ((Map)localObject).put(ag.i, new fo("resolution", (byte)2, new fs(da.class)));
    ((Map)localObject).put(ag.j, new fo("is_jailbroken", (byte)2, new fp((byte)2)));
    ((Map)localObject).put(ag.k, new fo("is_pirated", (byte)2, new fp((byte)2)));
    ((Map)localObject).put(ag.l, new fo("device_board", (byte)2, new fp((byte)11)));
    ((Map)localObject).put(ag.m, new fo("device_brand", (byte)2, new fp((byte)11)));
    ((Map)localObject).put(ag.n, new fo("device_manutime", (byte)2, new fp((byte)10)));
    ((Map)localObject).put(ag.o, new fo("device_manufacturer", (byte)2, new fp((byte)11)));
    ((Map)localObject).put(ag.p, new fo("device_manuid", (byte)2, new fp((byte)11)));
    ((Map)localObject).put(ag.q, new fo("device_name", (byte)2, new fp((byte)11)));
    r = Collections.unmodifiableMap((Map)localObject);
    fo.a(ab.class, r);
  }
  
  public final void a(ga paramga)
  {
    ((gj)K.get(paramga.s())).a().a(paramga, this);
  }
  
  public final boolean a()
  {
    return this.a != null;
  }
  
  public final void b(ga paramga)
  {
    ((gj)K.get(paramga.s())).a().b(paramga, this);
  }
  
  public final boolean b()
  {
    return this.b != null;
  }
  
  public final boolean c()
  {
    return this.c != null;
  }
  
  public final boolean d()
  {
    return this.d != null;
  }
  
  public final boolean e()
  {
    return this.e != null;
  }
  
  public final boolean f()
  {
    return this.f != null;
  }
  
  public final boolean g()
  {
    return this.g != null;
  }
  
  public final boolean h()
  {
    return this.h != null;
  }
  
  public final boolean i()
  {
    return this.i != null;
  }
  
  public final boolean j()
  {
    return ey.a(this.L, 0);
  }
  
  public final void k()
  {
    this.L = ((byte)(this.L | 0x1));
  }
  
  public final boolean l()
  {
    return ey.a(this.L, 1);
  }
  
  public final void m()
  {
    this.L = ((byte)(this.L | 0x2));
  }
  
  public final boolean n()
  {
    return this.l != null;
  }
  
  public final boolean o()
  {
    return this.m != null;
  }
  
  public final boolean p()
  {
    return ey.a(this.L, 2);
  }
  
  public final void q()
  {
    this.L = ((byte)(this.L | 0x4));
  }
  
  public final boolean r()
  {
    return this.o != null;
  }
  
  public final boolean s()
  {
    return this.p != null;
  }
  
  public final boolean t()
  {
    return this.q != null;
  }
  
  public String toString()
  {
    int i3 = 0;
    StringBuilder localStringBuilder = new StringBuilder("DeviceInfo(");
    int i2 = 1;
    int i1;
    if (a())
    {
      localStringBuilder.append("device_id:");
      if (this.a == null)
      {
        localStringBuilder.append("null");
        i2 = 0;
      }
    }
    else
    {
      i1 = i2;
      if (b())
      {
        if (i2 == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("idmd5:");
        if (this.b != null) {
          break label786;
        }
        localStringBuilder.append("null");
        label92:
        i1 = 0;
      }
      i2 = i1;
      if (c())
      {
        if (i1 == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("mac_address:");
        if (this.c != null) {
          break label798;
        }
        localStringBuilder.append("null");
        label138:
        i2 = 0;
      }
      i1 = i2;
      if (d())
      {
        if (i2 == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("open_udid:");
        if (this.d != null) {
          break label810;
        }
        localStringBuilder.append("null");
        label184:
        i1 = 0;
      }
      i2 = i1;
      if (e())
      {
        if (i1 == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("model:");
        if (this.e != null) {
          break label822;
        }
        localStringBuilder.append("null");
        label230:
        i2 = 0;
      }
      i1 = i2;
      if (f())
      {
        if (i2 == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("cpu:");
        if (this.f != null) {
          break label834;
        }
        localStringBuilder.append("null");
        label276:
        i1 = 0;
      }
      i2 = i1;
      if (g())
      {
        if (i1 == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("os:");
        if (this.g != null) {
          break label846;
        }
        localStringBuilder.append("null");
        label322:
        i2 = 0;
      }
      i1 = i2;
      if (h())
      {
        if (i2 == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("os_version:");
        if (this.h != null) {
          break label858;
        }
        localStringBuilder.append("null");
        label368:
        i1 = 0;
      }
      i2 = i1;
      if (i())
      {
        if (i1 == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("resolution:");
        if (this.i != null) {
          break label870;
        }
        localStringBuilder.append("null");
        label414:
        i2 = 0;
      }
      i1 = i2;
      if (j())
      {
        if (i2 == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("is_jailbroken:");
        localStringBuilder.append(this.j);
        i1 = 0;
      }
      i2 = i1;
      if (l())
      {
        if (i1 == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("is_pirated:");
        localStringBuilder.append(this.k);
        i2 = 0;
      }
      i1 = i2;
      if (n())
      {
        if (i2 == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("device_board:");
        if (this.l != null) {
          break label882;
        }
        localStringBuilder.append("null");
        label540:
        i1 = 0;
      }
      i2 = i1;
      if (o())
      {
        if (i1 == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("device_brand:");
        if (this.m != null) {
          break label894;
        }
        localStringBuilder.append("null");
        label586:
        i2 = 0;
      }
      i1 = i2;
      if (p())
      {
        if (i2 == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("device_manutime:");
        localStringBuilder.append(this.n);
        i1 = 0;
      }
      i2 = i1;
      if (r())
      {
        if (i1 == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("device_manufacturer:");
        if (this.o != null) {
          break label906;
        }
        localStringBuilder.append("null");
        label672:
        i2 = 0;
      }
      if (!s()) {
        break label945;
      }
      if (i2 == 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append("device_manuid:");
      if (this.p != null) {
        break label918;
      }
      localStringBuilder.append("null");
      i1 = i3;
    }
    for (;;)
    {
      label719:
      if (t())
      {
        if (i1 == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("device_name:");
        if (this.q != null) {
          break label933;
        }
        localStringBuilder.append("null");
      }
      for (;;)
      {
        localStringBuilder.append(")");
        return localStringBuilder.toString();
        localStringBuilder.append(this.a);
        break;
        label786:
        localStringBuilder.append(this.b);
        break label92;
        label798:
        localStringBuilder.append(this.c);
        break label138;
        label810:
        localStringBuilder.append(this.d);
        break label184;
        label822:
        localStringBuilder.append(this.e);
        break label230;
        label834:
        localStringBuilder.append(this.f);
        break label276;
        label846:
        localStringBuilder.append(this.g);
        break label322;
        label858:
        localStringBuilder.append(this.h);
        break label368;
        label870:
        localStringBuilder.append(this.i);
        break label414;
        label882:
        localStringBuilder.append(this.l);
        break label540;
        label894:
        localStringBuilder.append(this.m);
        break label586;
        label906:
        localStringBuilder.append(this.o);
        break label672;
        label918:
        localStringBuilder.append(this.p);
        i1 = i3;
        break label719;
        label933:
        localStringBuilder.append(this.q);
      }
      label945:
      i1 = i2;
    }
  }
  
  public final void u()
  {
    if (this.i != null) {
      da.c();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\ab.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */