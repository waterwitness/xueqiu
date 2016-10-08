package u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class bn
  implements Serializable, Cloneable, fa<bn, bs>
{
  public static final Map<bs, fo> e;
  private static final gg f = new gg("Imprint");
  private static final fx g = new fx("property", (byte)13, (short)1);
  private static final fx h = new fx("version", (byte)8, (short)2);
  private static final fx i = new fx("checksum", (byte)11, (short)3);
  private static final Map<Class<? extends gi>, gj> j;
  public Map<String, bt> a;
  public int b;
  public String c;
  byte d = 0;
  
  static
  {
    Object localObject = new HashMap();
    j = (Map)localObject;
    ((Map)localObject).put(gk.class, new bp((byte)0));
    j.put(gl.class, new br((byte)0));
    localObject = new EnumMap(bs.class);
    ((Map)localObject).put(bs.a, new fo("property", (byte)1, new fr(new fp((byte)11), new fs(bt.class))));
    ((Map)localObject).put(bs.b, new fo("version", (byte)1, new fp((byte)8)));
    ((Map)localObject).put(bs.c, new fo("checksum", (byte)1, new fp((byte)11)));
    e = Collections.unmodifiableMap((Map)localObject);
    fo.a(bn.class, e);
  }
  
  public final void a()
  {
    this.d = ((byte)(this.d | 0x1));
  }
  
  public final void a(ga paramga)
  {
    ((gj)j.get(paramga.s())).a().a(paramga, this);
  }
  
  public final void b()
  {
    if (this.a == null) {
      throw new gb("Required field 'property' was not present! Struct: " + toString());
    }
    if (this.c == null) {
      throw new gb("Required field 'checksum' was not present! Struct: " + toString());
    }
  }
  
  public final void b(ga paramga)
  {
    ((gj)j.get(paramga.s())).a().b(paramga, this);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Imprint(");
    localStringBuilder.append("property:");
    if (this.a == null)
    {
      localStringBuilder.append("null");
      localStringBuilder.append(", ");
      localStringBuilder.append("version:");
      localStringBuilder.append(this.b);
      localStringBuilder.append(", ");
      localStringBuilder.append("checksum:");
      if (this.c != null) {
        break label106;
      }
      localStringBuilder.append("null");
    }
    for (;;)
    {
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
      break;
      label106:
      localStringBuilder.append(this.c);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\bn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */