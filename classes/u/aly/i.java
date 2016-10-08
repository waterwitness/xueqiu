package u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class i
  implements Serializable, Cloneable, fa<i, o>
{
  public static final Map<o, fo> c;
  private static final gg d = new gg("ActivateMsg");
  private static final fx e = new fx("ts", (byte)10, (short)1);
  private static final Map<Class<? extends gi>, gj> f;
  public long a;
  byte b = 0;
  
  static
  {
    Object localObject = new HashMap();
    f = (Map)localObject;
    ((Map)localObject).put(gk.class, new l((byte)0));
    f.put(gl.class, new n((byte)0));
    localObject = new EnumMap(o.class);
    ((Map)localObject).put(o.a, new fo("ts", (byte)1, new fp((byte)10)));
    c = Collections.unmodifiableMap((Map)localObject);
    fo.a(i.class, c);
  }
  
  public i() {}
  
  public i(long paramLong)
  {
    this();
    this.a = paramLong;
    a();
  }
  
  public static void b() {}
  
  public final void a()
  {
    this.b = ((byte)(this.b | 0x1));
  }
  
  public final void a(ga paramga)
  {
    ((gj)f.get(paramga.s())).a().a(paramga, this);
  }
  
  public final void b(ga paramga)
  {
    ((gj)f.get(paramga.s())).a().b(paramga, this);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("ActivateMsg(");
    localStringBuilder.append("ts:");
    localStringBuilder.append(this.a);
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */