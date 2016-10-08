package u.aly;

import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class el
  implements Serializable, Cloneable, fa<el, eq>
{
  public static final Map<eq, fo> k;
  private static final gg l = new gg("UMEnvelope");
  private static final fx m = new fx("version", (byte)11, (short)1);
  private static final fx n = new fx("address", (byte)11, (short)2);
  private static final fx o = new fx("signature", (byte)11, (short)3);
  private static final fx p = new fx("serial_num", (byte)8, (short)4);
  private static final fx q = new fx("ts_secs", (byte)8, (short)5);
  private static final fx r = new fx("length", (byte)8, (short)6);
  private static final fx s = new fx("entity", (byte)11, (short)7);
  private static final fx t = new fx("guid", (byte)11, (short)8);
  private static final fx u = new fx("checksum", (byte)11, (short)9);
  private static final Map<Class<? extends gi>, gj> v;
  public String a;
  public String b;
  public String c;
  public int d;
  public int e;
  public int f;
  public ByteBuffer g;
  public String h;
  public String i;
  byte j = 0;
  
  static
  {
    Object localObject = new HashMap();
    v = (Map)localObject;
    ((Map)localObject).put(gk.class, new en((byte)0));
    v.put(gl.class, new ep((byte)0));
    localObject = new EnumMap(eq.class);
    ((Map)localObject).put(eq.a, new fo("version", (byte)1, new fp((byte)11)));
    ((Map)localObject).put(eq.b, new fo("address", (byte)1, new fp((byte)11)));
    ((Map)localObject).put(eq.c, new fo("signature", (byte)1, new fp((byte)11)));
    ((Map)localObject).put(eq.d, new fo("serial_num", (byte)1, new fp((byte)8)));
    ((Map)localObject).put(eq.e, new fo("ts_secs", (byte)1, new fp((byte)8)));
    ((Map)localObject).put(eq.f, new fo("length", (byte)1, new fp((byte)8)));
    ((Map)localObject).put(eq.g, new fo("entity", (byte)1, new fp((byte)11, true)));
    ((Map)localObject).put(eq.h, new fo("guid", (byte)1, new fp((byte)11)));
    ((Map)localObject).put(eq.i, new fo("checksum", (byte)1, new fp((byte)11)));
    k = Collections.unmodifiableMap((Map)localObject);
    fo.a(el.class, k);
  }
  
  public final void a()
  {
    this.j = ((byte)(this.j | 0x1));
  }
  
  public final void a(ga paramga)
  {
    ((gj)v.get(paramga.s())).a().a(paramga, this);
  }
  
  public final void b()
  {
    this.j = ((byte)(this.j | 0x2));
  }
  
  public final void b(ga paramga)
  {
    ((gj)v.get(paramga.s())).a().b(paramga, this);
  }
  
  public final void c()
  {
    this.j = ((byte)(this.j | 0x4));
  }
  
  public final void d()
  {
    if (this.a == null) {
      throw new gb("Required field 'version' was not present! Struct: " + toString());
    }
    if (this.b == null) {
      throw new gb("Required field 'address' was not present! Struct: " + toString());
    }
    if (this.c == null) {
      throw new gb("Required field 'signature' was not present! Struct: " + toString());
    }
    if (this.g == null) {
      throw new gb("Required field 'entity' was not present! Struct: " + toString());
    }
    if (this.h == null) {
      throw new gb("Required field 'guid' was not present! Struct: " + toString());
    }
    if (this.i == null) {
      throw new gb("Required field 'checksum' was not present! Struct: " + toString());
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("UMEnvelope(");
    localStringBuilder.append("version:");
    if (this.a == null)
    {
      localStringBuilder.append("null");
      localStringBuilder.append(", ");
      localStringBuilder.append("address:");
      if (this.b != null) {
        break label269;
      }
      localStringBuilder.append("null");
      label59:
      localStringBuilder.append(", ");
      localStringBuilder.append("signature:");
      if (this.c != null) {
        break label281;
      }
      localStringBuilder.append("null");
      label87:
      localStringBuilder.append(", ");
      localStringBuilder.append("serial_num:");
      localStringBuilder.append(this.d);
      localStringBuilder.append(", ");
      localStringBuilder.append("ts_secs:");
      localStringBuilder.append(this.e);
      localStringBuilder.append(", ");
      localStringBuilder.append("length:");
      localStringBuilder.append(this.f);
      localStringBuilder.append(", ");
      localStringBuilder.append("entity:");
      if (this.g != null) {
        break label293;
      }
      localStringBuilder.append("null");
      label186:
      localStringBuilder.append(", ");
      localStringBuilder.append("guid:");
      if (this.h != null) {
        break label304;
      }
      localStringBuilder.append("null");
      label215:
      localStringBuilder.append(", ");
      localStringBuilder.append("checksum:");
      if (this.i != null) {
        break label316;
      }
      localStringBuilder.append("null");
    }
    for (;;)
    {
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
      break;
      label269:
      localStringBuilder.append(this.b);
      break label59;
      label281:
      localStringBuilder.append(this.c);
      break label87;
      label293:
      fc.a(this.g, localStringBuilder);
      break label186;
      label304:
      localStringBuilder.append(this.h);
      break label215;
      label316:
      localStringBuilder.append(this.i);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\el.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */