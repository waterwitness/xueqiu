package u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class dt
  implements Serializable, Cloneable, fa<dt, dy>
{
  public static final Map<dy, fo> d;
  private static final gg e = new gg("Traffic");
  private static final fx f = new fx("upload_traffic", (byte)8, (short)1);
  private static final fx g = new fx("download_traffic", (byte)8, (short)2);
  private static final Map<Class<? extends gi>, gj> h;
  public int a;
  public int b;
  byte c = 0;
  
  static
  {
    Object localObject = new HashMap();
    h = (Map)localObject;
    ((Map)localObject).put(gk.class, new dv((byte)0));
    h.put(gl.class, new dx((byte)0));
    localObject = new EnumMap(dy.class);
    ((Map)localObject).put(dy.a, new fo("upload_traffic", (byte)1, new fp((byte)8)));
    ((Map)localObject).put(dy.b, new fo("download_traffic", (byte)1, new fp((byte)8)));
    d = Collections.unmodifiableMap((Map)localObject);
    fo.a(dt.class, d);
  }
  
  public static void c() {}
  
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
    this.c = ((byte)(this.c | 0x2));
  }
  
  public final void b(ga paramga)
  {
    ((gj)h.get(paramga.s())).a().b(paramga, this);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Traffic(");
    localStringBuilder.append("upload_traffic:");
    localStringBuilder.append(this.a);
    localStringBuilder.append(", ");
    localStringBuilder.append("download_traffic:");
    localStringBuilder.append(this.b);
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\dt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */