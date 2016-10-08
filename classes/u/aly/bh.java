package u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class bh
  implements Serializable, Cloneable, fa<bh, bm>
{
  public static final Map<bm, fo> d;
  private static final gg e = new gg("IdTracking");
  private static final fx f = new fx("snapshots", (byte)13, (short)1);
  private static final fx g = new fx("journals", (byte)15, (short)2);
  private static final fx h = new fx("checksum", (byte)11, (short)3);
  private static final Map<Class<? extends gi>, gj> i;
  public Map<String, bb> a;
  public List<av> b;
  public String c;
  private bm[] j = { bm.b, bm.c };
  
  static
  {
    Object localObject = new HashMap();
    i = (Map)localObject;
    ((Map)localObject).put(gk.class, new bj((byte)0));
    i.put(gl.class, new bl((byte)0));
    localObject = new EnumMap(bm.class);
    ((Map)localObject).put(bm.a, new fo("snapshots", (byte)1, new fr(new fp((byte)11), new fs(bb.class))));
    ((Map)localObject).put(bm.b, new fo("journals", (byte)2, new fq(new fs(av.class))));
    ((Map)localObject).put(bm.c, new fo("checksum", (byte)2, new fp((byte)11)));
    d = Collections.unmodifiableMap((Map)localObject);
    fo.a(bh.class, d);
  }
  
  public final void a(ga paramga)
  {
    ((gj)i.get(paramga.s())).a().a(paramga, this);
  }
  
  public final void a(boolean paramBoolean)
  {
    if (!paramBoolean) {
      this.b = null;
    }
  }
  
  public final boolean a()
  {
    return this.b != null;
  }
  
  public final void b(ga paramga)
  {
    ((gj)i.get(paramga.s())).a().b(paramga, this);
  }
  
  public final boolean b()
  {
    return this.c != null;
  }
  
  public final void c()
  {
    if (this.a == null) {
      throw new gb("Required field 'snapshots' was not present! Struct: " + toString());
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("IdTracking(");
    localStringBuilder.append("snapshots:");
    if (this.a == null)
    {
      localStringBuilder.append("null");
      if (a())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("journals:");
        if (this.b != null) {
          break label125;
        }
        localStringBuilder.append("null");
      }
      label66:
      if (b())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("checksum:");
        if (this.c != null) {
          break label137;
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
      label125:
      localStringBuilder.append(this.b);
      break label66;
      label137:
      localStringBuilder.append(this.c);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\bh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */