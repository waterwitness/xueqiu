package u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class av
  implements Serializable, Cloneable, fa<av, ba>
{
  public static final Map<ba, fo> f;
  private static final gg g = new gg("IdJournal");
  private static final fx h = new fx("domain", (byte)11, (short)1);
  private static final fx i = new fx("old_id", (byte)11, (short)2);
  private static final fx j = new fx("new_id", (byte)11, (short)3);
  private static final fx k = new fx("ts", (byte)10, (short)4);
  private static final Map<Class<? extends gi>, gj> l;
  public String a;
  public String b;
  public String c;
  public long d;
  byte e = 0;
  private ba[] m = { ba.b };
  
  static
  {
    Object localObject = new HashMap();
    l = (Map)localObject;
    ((Map)localObject).put(gk.class, new ax((byte)0));
    l.put(gl.class, new az((byte)0));
    localObject = new EnumMap(ba.class);
    ((Map)localObject).put(ba.a, new fo("domain", (byte)1, new fp((byte)11)));
    ((Map)localObject).put(ba.b, new fo("old_id", (byte)2, new fp((byte)11)));
    ((Map)localObject).put(ba.c, new fo("new_id", (byte)1, new fp((byte)11)));
    ((Map)localObject).put(ba.d, new fo("ts", (byte)1, new fp((byte)10)));
    f = Collections.unmodifiableMap((Map)localObject);
    fo.a(av.class, f);
  }
  
  public final void a(ga paramga)
  {
    ((gj)l.get(paramga.s())).a().a(paramga, this);
  }
  
  public final boolean a()
  {
    return this.b != null;
  }
  
  public final void b()
  {
    this.e = ((byte)(this.e | 0x1));
  }
  
  public final void b(ga paramga)
  {
    ((gj)l.get(paramga.s())).a().b(paramga, this);
  }
  
  public final void c()
  {
    if (this.a == null) {
      throw new gb("Required field 'domain' was not present! Struct: " + toString());
    }
    if (this.c == null) {
      throw new gb("Required field 'new_id' was not present! Struct: " + toString());
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("IdJournal(");
    localStringBuilder.append("domain:");
    if (this.a == null)
    {
      localStringBuilder.append("null");
      if (a())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("old_id:");
        if (this.b != null) {
          break label141;
        }
        localStringBuilder.append("null");
      }
      label66:
      localStringBuilder.append(", ");
      localStringBuilder.append("new_id:");
      if (this.c != null) {
        break label153;
      }
      localStringBuilder.append("null");
    }
    for (;;)
    {
      localStringBuilder.append(", ");
      localStringBuilder.append("ts:");
      localStringBuilder.append(this.d);
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
      break;
      label141:
      localStringBuilder.append(this.b);
      break label66;
      label153:
      localStringBuilder.append(this.c);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\av.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */