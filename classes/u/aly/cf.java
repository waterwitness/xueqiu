package u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class cf
  implements Serializable, Cloneable, fa<cf, ck>
{
  public static final Map<ck, fo> e;
  private static final gg f = new gg("Location");
  private static final fx g = new fx("lat", (byte)4, (short)1);
  private static final fx h = new fx("lng", (byte)4, (short)2);
  private static final fx i = new fx("ts", (byte)10, (short)3);
  private static final Map<Class<? extends gi>, gj> j;
  public double a;
  public double b;
  public long c;
  byte d = 0;
  
  static
  {
    Object localObject = new HashMap();
    j = (Map)localObject;
    ((Map)localObject).put(gk.class, new ch((byte)0));
    j.put(gl.class, new cj((byte)0));
    localObject = new EnumMap(ck.class);
    ((Map)localObject).put(ck.a, new fo("lat", (byte)1, new fp((byte)4)));
    ((Map)localObject).put(ck.b, new fo("lng", (byte)1, new fp((byte)4)));
    ((Map)localObject).put(ck.c, new fo("ts", (byte)1, new fp((byte)10)));
    e = Collections.unmodifiableMap((Map)localObject);
    fo.a(cf.class, e);
  }
  
  public cf() {}
  
  public cf(double paramDouble1, double paramDouble2, long paramLong)
  {
    this();
    this.a = paramDouble1;
    a();
    this.b = paramDouble2;
    b();
    this.c = paramLong;
    c();
  }
  
  public static void d() {}
  
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
  
  public final void c()
  {
    this.d = ((byte)(this.d | 0x4));
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Location(");
    localStringBuilder.append("lat:");
    localStringBuilder.append(this.a);
    localStringBuilder.append(", ");
    localStringBuilder.append("lng:");
    localStringBuilder.append(this.b);
    localStringBuilder.append(", ");
    localStringBuilder.append("ts:");
    localStringBuilder.append(this.c);
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\cf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */