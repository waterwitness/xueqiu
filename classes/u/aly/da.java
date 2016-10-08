package u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class da
  implements Serializable, Cloneable, fa<da, df>
{
  public static final Map<df, fo> d;
  private static final gg e = new gg("Resolution");
  private static final fx f = new fx("height", (byte)8, (short)1);
  private static final fx g = new fx("width", (byte)8, (short)2);
  private static final Map<Class<? extends gi>, gj> h;
  public int a;
  public int b;
  byte c = 0;
  
  static
  {
    Object localObject = new HashMap();
    h = (Map)localObject;
    ((Map)localObject).put(gk.class, new dc((byte)0));
    h.put(gl.class, new de((byte)0));
    localObject = new EnumMap(df.class);
    ((Map)localObject).put(df.a, new fo("height", (byte)1, new fp((byte)8)));
    ((Map)localObject).put(df.b, new fo("width", (byte)1, new fp((byte)8)));
    d = Collections.unmodifiableMap((Map)localObject);
    fo.a(da.class, d);
  }
  
  public da() {}
  
  public da(int paramInt1, int paramInt2)
  {
    this();
    this.a = paramInt1;
    a();
    this.b = paramInt2;
    b();
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
    StringBuilder localStringBuilder = new StringBuilder("Resolution(");
    localStringBuilder.append("height:");
    localStringBuilder.append(this.a);
    localStringBuilder.append(", ");
    localStringBuilder.append("width:");
    localStringBuilder.append(this.b);
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\da.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */