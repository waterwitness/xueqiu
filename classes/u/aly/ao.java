package u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class ao
  implements Serializable, Cloneable, fa<ao, at>
{
  public static final Map<at, fo> g;
  private static final gg h = new gg("Event");
  private static final fx i = new fx("name", (byte)11, (short)1);
  private static final fx j = new fx("properties", (byte)13, (short)2);
  private static final fx k = new fx("duration", (byte)10, (short)3);
  private static final fx l = new fx("acc", (byte)8, (short)4);
  private static final fx m = new fx("ts", (byte)10, (short)5);
  private static final Map<Class<? extends gi>, gj> n;
  public String a;
  public Map<String, cx> b;
  public long c;
  public int d;
  public long e;
  byte f = 0;
  private at[] o = { at.c, at.d };
  
  static
  {
    Object localObject = new HashMap();
    n = (Map)localObject;
    ((Map)localObject).put(gk.class, new aq((byte)0));
    n.put(gl.class, new as((byte)0));
    localObject = new EnumMap(at.class);
    ((Map)localObject).put(at.a, new fo("name", (byte)1, new fp((byte)11)));
    ((Map)localObject).put(at.b, new fo("properties", (byte)1, new fr(new fp((byte)11), new fs(cx.class))));
    ((Map)localObject).put(at.c, new fo("duration", (byte)2, new fp((byte)10)));
    ((Map)localObject).put(at.d, new fo("acc", (byte)2, new fp((byte)8)));
    ((Map)localObject).put(at.e, new fo("ts", (byte)1, new fp((byte)10)));
    g = Collections.unmodifiableMap((Map)localObject);
    fo.a(ao.class, g);
  }
  
  public final ao a(int paramInt)
  {
    this.d = paramInt;
    d();
    return this;
  }
  
  public final ao a(long paramLong)
  {
    this.e = paramLong;
    e();
    return this;
  }
  
  public final void a(ga paramga)
  {
    ((gj)n.get(paramga.s())).a().a(paramga, this);
  }
  
  public final boolean a()
  {
    return ey.a(this.f, 0);
  }
  
  public final void b()
  {
    this.f = ((byte)(this.f | 0x1));
  }
  
  public final void b(ga paramga)
  {
    ((gj)n.get(paramga.s())).a().b(paramga, this);
  }
  
  public final boolean c()
  {
    return ey.a(this.f, 1);
  }
  
  public final void d()
  {
    this.f = ((byte)(this.f | 0x2));
  }
  
  public final void e()
  {
    this.f = ((byte)(this.f | 0x4));
  }
  
  public final void f()
  {
    if (this.a == null) {
      throw new gb("Required field 'name' was not present! Struct: " + toString());
    }
    if (this.b == null) {
      throw new gb("Required field 'properties' was not present! Struct: " + toString());
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Event(");
    localStringBuilder.append("name:");
    if (this.a == null)
    {
      localStringBuilder.append("null");
      localStringBuilder.append(", ");
      localStringBuilder.append("properties:");
      if (this.b != null) {
        break label166;
      }
      localStringBuilder.append("null");
    }
    for (;;)
    {
      if (a())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("duration:");
        localStringBuilder.append(this.c);
      }
      if (c())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("acc:");
        localStringBuilder.append(this.d);
      }
      localStringBuilder.append(", ");
      localStringBuilder.append("ts:");
      localStringBuilder.append(this.e);
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
      break;
      label166:
      localStringBuilder.append(this.b);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\ao.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */