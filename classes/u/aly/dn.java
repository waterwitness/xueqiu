package u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class dn
  implements Serializable, Cloneable, fa<dn, ds>
{
  public static final Map<ds, fo> i;
  private static final gg j = new gg("Session");
  private static final fx k = new fx("id", (byte)11, (short)1);
  private static final fx l = new fx("start_time", (byte)10, (short)2);
  private static final fx m = new fx("end_time", (byte)10, (short)3);
  private static final fx n = new fx("duration", (byte)10, (short)4);
  private static final fx o = new fx("pages", (byte)15, (short)5);
  private static final fx p = new fx("locations", (byte)15, (short)6);
  private static final fx q = new fx("traffic", (byte)12, (short)7);
  private static final Map<Class<? extends gi>, gj> r;
  public String a;
  public long b;
  public long c;
  public long d;
  public List<cr> e;
  public List<cf> f;
  public dt g;
  byte h = 0;
  private ds[] s = { ds.e, ds.f, ds.g };
  
  static
  {
    Object localObject = new HashMap();
    r = (Map)localObject;
    ((Map)localObject).put(gk.class, new dp((byte)0));
    r.put(gl.class, new dr((byte)0));
    localObject = new EnumMap(ds.class);
    ((Map)localObject).put(ds.a, new fo("id", (byte)1, new fp((byte)11)));
    ((Map)localObject).put(ds.b, new fo("start_time", (byte)1, new fp((byte)10)));
    ((Map)localObject).put(ds.c, new fo("end_time", (byte)1, new fp((byte)10)));
    ((Map)localObject).put(ds.d, new fo("duration", (byte)1, new fp((byte)10)));
    ((Map)localObject).put(ds.e, new fo("pages", (byte)2, new fq(new fs(cr.class))));
    ((Map)localObject).put(ds.f, new fo("locations", (byte)2, new fq(new fs(cf.class))));
    ((Map)localObject).put(ds.g, new fo("traffic", (byte)2, new fs(dt.class)));
    i = Collections.unmodifiableMap((Map)localObject);
    fo.a(dn.class, i);
  }
  
  public final void a()
  {
    this.h = ((byte)(this.h | 0x1));
  }
  
  public final void a(ga paramga)
  {
    ((gj)r.get(paramga.s())).a().a(paramga, this);
  }
  
  public final void b()
  {
    this.h = ((byte)(this.h | 0x2));
  }
  
  public final void b(ga paramga)
  {
    ((gj)r.get(paramga.s())).a().b(paramga, this);
  }
  
  public final void c()
  {
    this.h = ((byte)(this.h | 0x4));
  }
  
  public final boolean d()
  {
    return this.e != null;
  }
  
  public final boolean e()
  {
    return this.f != null;
  }
  
  public final boolean f()
  {
    return this.g != null;
  }
  
  public final void g()
  {
    if (this.a == null) {
      throw new gb("Required field 'id' was not present! Struct: " + toString());
    }
    if (this.g != null) {
      dt.c();
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Session(");
    localStringBuilder.append("id:");
    if (this.a == null)
    {
      localStringBuilder.append("null");
      localStringBuilder.append(", ");
      localStringBuilder.append("start_time:");
      localStringBuilder.append(this.b);
      localStringBuilder.append(", ");
      localStringBuilder.append("end_time:");
      localStringBuilder.append(this.c);
      localStringBuilder.append(", ");
      localStringBuilder.append("duration:");
      localStringBuilder.append(this.d);
      if (d())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("pages:");
        if (this.e != null) {
          break label232;
        }
        localStringBuilder.append("null");
      }
      label135:
      if (e())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("locations:");
        if (this.f != null) {
          break label244;
        }
        localStringBuilder.append("null");
      }
      label171:
      if (f())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("traffic:");
        if (this.g != null) {
          break label256;
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
      label232:
      localStringBuilder.append(this.e);
      break label135;
      label244:
      localStringBuilder.append(this.f);
      break label171;
      label256:
      localStringBuilder.append(this.g);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\dn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */