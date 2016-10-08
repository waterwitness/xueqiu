package u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class p
  implements Serializable, Cloneable, fa<p, u>
{
  public static final Map<u, fo> k;
  private static final gg l = new gg("AppInfo");
  private static final fx m = new fx("key", (byte)11, (short)1);
  private static final fx n = new fx("version", (byte)11, (short)2);
  private static final fx o = new fx("version_index", (byte)8, (short)3);
  private static final fx p = new fx("package_name", (byte)11, (short)4);
  private static final fx q = new fx("sdk_type", (byte)8, (short)5);
  private static final fx r = new fx("sdk_version", (byte)11, (short)6);
  private static final fx s = new fx("channel", (byte)11, (short)7);
  private static final fx t = new fx("wrapper_type", (byte)11, (short)8);
  private static final fx u = new fx("wrapper_version", (byte)11, (short)9);
  private static final fx v = new fx("vertical_type", (byte)8, (short)10);
  private static final Map<Class<? extends gi>, gj> w;
  public String a;
  public String b;
  public int c;
  public String d;
  public dm e;
  public String f;
  public String g;
  public String h;
  public String i;
  public int j;
  private byte x = 0;
  private u[] y = { u.b, u.c, u.d, u.h, u.i, u.j };
  
  static
  {
    Object localObject = new HashMap();
    w = (Map)localObject;
    ((Map)localObject).put(gk.class, new r((byte)0));
    w.put(gl.class, new t((byte)0));
    localObject = new EnumMap(u.class);
    ((Map)localObject).put(u.a, new fo("key", (byte)1, new fp((byte)11)));
    ((Map)localObject).put(u.b, new fo("version", (byte)2, new fp((byte)11)));
    ((Map)localObject).put(u.c, new fo("version_index", (byte)2, new fp((byte)8)));
    ((Map)localObject).put(u.d, new fo("package_name", (byte)2, new fp((byte)11)));
    ((Map)localObject).put(u.e, new fo("sdk_type", (byte)1, new fn(dm.class)));
    ((Map)localObject).put(u.f, new fo("sdk_version", (byte)1, new fp((byte)11)));
    ((Map)localObject).put(u.g, new fo("channel", (byte)1, new fp((byte)11)));
    ((Map)localObject).put(u.h, new fo("wrapper_type", (byte)2, new fp((byte)11)));
    ((Map)localObject).put(u.i, new fo("wrapper_version", (byte)2, new fp((byte)11)));
    ((Map)localObject).put(u.j, new fo("vertical_type", (byte)2, new fp((byte)8)));
    k = Collections.unmodifiableMap((Map)localObject);
    fo.a(p.class, k);
  }
  
  public final void a(ga paramga)
  {
    ((gj)w.get(paramga.s())).a().a(paramga, this);
  }
  
  public final boolean a()
  {
    return this.b != null;
  }
  
  public final void b(ga paramga)
  {
    ((gj)w.get(paramga.s())).a().b(paramga, this);
  }
  
  public final boolean b()
  {
    return ey.a(this.x, 0);
  }
  
  public final void c()
  {
    this.x = ((byte)(this.x | 0x1));
  }
  
  public final boolean d()
  {
    return this.d != null;
  }
  
  public final boolean e()
  {
    return this.h != null;
  }
  
  public final boolean f()
  {
    return this.i != null;
  }
  
  public final boolean g()
  {
    return ey.a(this.x, 1);
  }
  
  public final void h()
  {
    this.x = ((byte)(this.x | 0x2));
  }
  
  public final void i()
  {
    if (this.a == null) {
      throw new gb("Required field 'key' was not present! Struct: " + toString());
    }
    if (this.e == null) {
      throw new gb("Required field 'sdk_type' was not present! Struct: " + toString());
    }
    if (this.f == null) {
      throw new gb("Required field 'sdk_version' was not present! Struct: " + toString());
    }
    if (this.g == null) {
      throw new gb("Required field 'channel' was not present! Struct: " + toString());
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("AppInfo(");
    localStringBuilder.append("key:");
    if (this.a == null)
    {
      localStringBuilder.append("null");
      if (a())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("version:");
        if (this.b != null) {
          break label368;
        }
        localStringBuilder.append("null");
      }
      label72:
      if (b())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("version_index:");
        localStringBuilder.append(this.c);
      }
      if (d())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("package_name:");
        if (this.d != null) {
          break label380;
        }
        localStringBuilder.append("null");
      }
      label142:
      localStringBuilder.append(", ");
      localStringBuilder.append("sdk_type:");
      if (this.e != null) {
        break label392;
      }
      localStringBuilder.append("null");
      label173:
      localStringBuilder.append(", ");
      localStringBuilder.append("sdk_version:");
      if (this.f != null) {
        break label404;
      }
      localStringBuilder.append("null");
      label204:
      localStringBuilder.append(", ");
      localStringBuilder.append("channel:");
      if (this.g != null) {
        break label416;
      }
      localStringBuilder.append("null");
      label235:
      if (e())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("wrapper_type:");
        if (this.h != null) {
          break label428;
        }
        localStringBuilder.append("null");
      }
      label273:
      if (f())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("wrapper_version:");
        if (this.i != null) {
          break label440;
        }
        localStringBuilder.append("null");
      }
    }
    for (;;)
    {
      if (g())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("vertical_type:");
        localStringBuilder.append(this.j);
      }
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
      break;
      label368:
      localStringBuilder.append(this.b);
      break label72;
      label380:
      localStringBuilder.append(this.d);
      break label142;
      label392:
      localStringBuilder.append(this.e);
      break label173;
      label404:
      localStringBuilder.append(this.f);
      break label204;
      label416:
      localStringBuilder.append(this.g);
      break label235;
      label428:
      localStringBuilder.append(this.h);
      break label273;
      label440:
      localStringBuilder.append(this.i);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */