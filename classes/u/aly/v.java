package u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class v
  implements Serializable, Cloneable, fa<v, aa>
{
  public static final Map<aa, fo> e;
  private static final gg f = new gg("ClientStats");
  private static final fx g = new fx("successful_requests", (byte)8, (short)1);
  private static final fx h = new fx("failed_requests", (byte)8, (short)2);
  private static final fx i = new fx("last_request_spent_ms", (byte)8, (short)3);
  private static final Map<Class<? extends gi>, gj> j;
  public int a = 0;
  public int b = 0;
  public int c;
  byte d = 0;
  private aa[] k = { aa.c };
  
  static
  {
    Object localObject = new HashMap();
    j = (Map)localObject;
    ((Map)localObject).put(gk.class, new x((byte)0));
    j.put(gl.class, new z((byte)0));
    localObject = new EnumMap(aa.class);
    ((Map)localObject).put(aa.a, new fo("successful_requests", (byte)1, new fp((byte)8)));
    ((Map)localObject).put(aa.b, new fo("failed_requests", (byte)1, new fp((byte)8)));
    ((Map)localObject).put(aa.c, new fo("last_request_spent_ms", (byte)2, new fp((byte)8)));
    e = Collections.unmodifiableMap((Map)localObject);
    fo.a(v.class, e);
  }
  
  public static void e() {}
  
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
    this.d = ((byte)(this.d | 0x2));
  }
  
  public final void b(ga paramga)
  {
    ((gj)j.get(paramga.s())).a().b(paramga, this);
  }
  
  public final boolean c()
  {
    return ey.a(this.d, 2);
  }
  
  public final void d()
  {
    this.d = ((byte)(this.d | 0x4));
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("ClientStats(");
    localStringBuilder.append("successful_requests:");
    localStringBuilder.append(this.a);
    localStringBuilder.append(", ");
    localStringBuilder.append("failed_requests:");
    localStringBuilder.append(this.b);
    if (c())
    {
      localStringBuilder.append(", ");
      localStringBuilder.append("last_request_spent_ms:");
      localStringBuilder.append(this.c);
    }
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */