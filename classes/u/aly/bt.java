package u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class bt
  implements Serializable, Cloneable, fa<bt, by>
{
  public static final Map<by, fo> e;
  private static final gg f = new gg("ImprintValue");
  private static final fx g = new fx("value", (byte)11, (short)1);
  private static final fx h = new fx("ts", (byte)10, (short)2);
  private static final fx i = new fx("guid", (byte)11, (short)3);
  private static final Map<Class<? extends gi>, gj> j;
  public String a;
  public long b;
  public String c;
  byte d = 0;
  private by[] k = { by.a };
  
  static
  {
    Object localObject = new HashMap();
    j = (Map)localObject;
    ((Map)localObject).put(gk.class, new bv((byte)0));
    j.put(gl.class, new bx((byte)0));
    localObject = new EnumMap(by.class);
    ((Map)localObject).put(by.a, new fo("value", (byte)2, new fp((byte)11)));
    ((Map)localObject).put(by.b, new fo("ts", (byte)1, new fp((byte)10)));
    ((Map)localObject).put(by.c, new fo("guid", (byte)1, new fp((byte)11)));
    e = Collections.unmodifiableMap((Map)localObject);
    fo.a(bt.class, e);
  }
  
  public final void a(ga paramga)
  {
    ((gj)j.get(paramga.s())).a().a(paramga, this);
  }
  
  public final boolean a()
  {
    return this.a != null;
  }
  
  public final void b()
  {
    this.d = ((byte)(this.d | 0x1));
  }
  
  public final void b(ga paramga)
  {
    ((gj)j.get(paramga.s())).a().b(paramga, this);
  }
  
  public final void c()
  {
    if (this.c == null) {
      throw new gb("Required field 'guid' was not present! Struct: " + toString());
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("ImprintValue(");
    int m = 1;
    if (a())
    {
      localStringBuilder.append("value:");
      if (this.a == null)
      {
        localStringBuilder.append("null");
        m = 0;
      }
    }
    else
    {
      if (m == 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append("ts:");
      localStringBuilder.append(this.b);
      localStringBuilder.append(", ");
      localStringBuilder.append("guid:");
      if (this.c != null) {
        break label121;
      }
      localStringBuilder.append("null");
    }
    for (;;)
    {
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
      break;
      label121:
      localStringBuilder.append(this.c);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\bt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */