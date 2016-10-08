package u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class bz
  implements Serializable, Cloneable, fa<bz, ce>
{
  public static final Map<ce, fo> e;
  private static final gg f = new gg("InstantMsg");
  private static final fx g = new fx("id", (byte)11, (short)1);
  private static final fx h = new fx("errors", (byte)15, (short)2);
  private static final fx i = new fx("events", (byte)15, (short)3);
  private static final fx j = new fx("game_events", (byte)15, (short)4);
  private static final Map<Class<? extends gi>, gj> k;
  public String a;
  public List<ah> b;
  public List<ao> c;
  public List<ao> d;
  private ce[] l = { ce.b, ce.c, ce.d };
  
  static
  {
    Object localObject = new HashMap();
    k = (Map)localObject;
    ((Map)localObject).put(gk.class, new cb((byte)0));
    k.put(gl.class, new cd((byte)0));
    localObject = new EnumMap(ce.class);
    ((Map)localObject).put(ce.a, new fo("id", (byte)1, new fp((byte)11)));
    ((Map)localObject).put(ce.b, new fo("errors", (byte)2, new fq(new fs(ah.class))));
    ((Map)localObject).put(ce.c, new fo("events", (byte)2, new fq(new fs(ao.class))));
    ((Map)localObject).put(ce.d, new fo("game_events", (byte)2, new fq(new fs(ao.class))));
    e = Collections.unmodifiableMap((Map)localObject);
    fo.a(bz.class, e);
  }
  
  public final void a(ga paramga)
  {
    ((gj)k.get(paramga.s())).a().a(paramga, this);
  }
  
  public final boolean a()
  {
    return this.b != null;
  }
  
  public final void b(ga paramga)
  {
    ((gj)k.get(paramga.s())).a().b(paramga, this);
  }
  
  public final boolean b()
  {
    return this.c != null;
  }
  
  public final boolean c()
  {
    return this.d != null;
  }
  
  public final void d()
  {
    if (this.a == null) {
      throw new gb("Required field 'id' was not present! Struct: " + toString());
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("InstantMsg(");
    localStringBuilder.append("id:");
    if (this.a == null)
    {
      localStringBuilder.append("null");
      if (a())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("errors:");
        if (this.b != null) {
          break label160;
        }
        localStringBuilder.append("null");
      }
      label66:
      if (b())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("events:");
        if (this.c != null) {
          break label172;
        }
        localStringBuilder.append("null");
      }
      label101:
      if (c())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("game_events:");
        if (this.d != null) {
          break label184;
        }
        localStringBuilder.append("null");
      }
    }
    for (;;)
    {
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
      break;
      label160:
      localStringBuilder.append(this.b);
      break label66;
      label172:
      localStringBuilder.append(this.c);
      break label101;
      label184:
      localStringBuilder.append(this.d);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\bz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */