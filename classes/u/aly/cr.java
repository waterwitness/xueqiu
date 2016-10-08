package u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class cr
  implements Serializable, Cloneable, fa<cr, cw>
{
  public static final Map<cw, fo> d;
  private static final gg e = new gg("Page");
  private static final fx f = new fx("page_name", (byte)11, (short)1);
  private static final fx g = new fx("duration", (byte)10, (short)2);
  private static final Map<Class<? extends gi>, gj> h;
  public String a;
  public long b;
  byte c = 0;
  
  static
  {
    Object localObject = new HashMap();
    h = (Map)localObject;
    ((Map)localObject).put(gk.class, new ct((byte)0));
    h.put(gl.class, new cv((byte)0));
    localObject = new EnumMap(cw.class);
    ((Map)localObject).put(cw.a, new fo("page_name", (byte)1, new fp((byte)11)));
    ((Map)localObject).put(cw.b, new fo("duration", (byte)1, new fp((byte)10)));
    d = Collections.unmodifiableMap((Map)localObject);
    fo.a(cr.class, d);
  }
  
  public final void a()
  {
    this.c = ((byte)(this.c | 0x1));
  }
  
  public final void a(ga paramga)
  {
    ((gj)h.get(paramga.s())).a().a(paramga, this);
  }
  
  public final void b()
  {
    if (this.a == null) {
      throw new gb("Required field 'page_name' was not present! Struct: " + toString());
    }
  }
  
  public final void b(ga paramga)
  {
    ((gj)h.get(paramga.s())).a().b(paramga, this);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Page(");
    localStringBuilder.append("page_name:");
    if (this.a == null) {
      localStringBuilder.append("null");
    }
    for (;;)
    {
      localStringBuilder.append(", ");
      localStringBuilder.append("duration:");
      localStringBuilder.append(this.b);
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\cr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */