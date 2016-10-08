package u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class ah
  implements Serializable, Cloneable, fa<ah, am>
{
  public static final Map<am, fo> e;
  private static final gg f = new gg("Error");
  private static final fx g = new fx("ts", (byte)10, (short)1);
  private static final fx h = new fx("context", (byte)11, (short)2);
  private static final fx i = new fx("source", (byte)8, (short)3);
  private static final Map<Class<? extends gi>, gj> j;
  public long a;
  public String b;
  public an c;
  byte d = 0;
  private am[] k = { am.c };
  
  static
  {
    Object localObject = new HashMap();
    j = (Map)localObject;
    ((Map)localObject).put(gk.class, new aj((byte)0));
    j.put(gl.class, new al((byte)0));
    localObject = new EnumMap(am.class);
    ((Map)localObject).put(am.a, new fo("ts", (byte)1, new fp((byte)10)));
    ((Map)localObject).put(am.b, new fo("context", (byte)1, new fp((byte)11)));
    ((Map)localObject).put(am.c, new fo("source", (byte)2, new fn(an.class)));
    e = Collections.unmodifiableMap((Map)localObject);
    fo.a(ah.class, e);
  }
  
  public final void a(ga paramga)
  {
    ((gj)j.get(paramga.s())).a().a(paramga, this);
  }
  
  public final void b()
  {
    this.d = ((byte)(this.d | 0x1));
  }
  
  public final void b(ga paramga)
  {
    ((gj)j.get(paramga.s())).a().b(paramga, this);
  }
  
  public final boolean c()
  {
    return this.c != null;
  }
  
  public final void d()
  {
    if (this.b == null) {
      throw new gb("Required field 'context' was not present! Struct: " + toString());
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Error(");
    localStringBuilder.append("ts:");
    localStringBuilder.append(this.a);
    localStringBuilder.append(", ");
    localStringBuilder.append("context:");
    if (this.b == null)
    {
      localStringBuilder.append("null");
      if (c())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("source:");
        if (this.c != null) {
          break label113;
        }
        localStringBuilder.append("null");
      }
    }
    for (;;)
    {
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.b);
      break;
      label113:
      localStringBuilder.append(this.c);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\ah.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */