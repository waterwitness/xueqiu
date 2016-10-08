package u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class bb
  implements Serializable, Cloneable, fa<bb, bg>
{
  public static final Map<bg, fo> e;
  private static final gg f = new gg("IdSnapshot");
  private static final fx g = new fx("identity", (byte)11, (short)1);
  private static final fx h = new fx("ts", (byte)10, (short)2);
  private static final fx i = new fx("version", (byte)8, (short)3);
  private static final Map<Class<? extends gi>, gj> j;
  public String a;
  public long b;
  public int c;
  byte d = 0;
  
  static
  {
    Object localObject = new HashMap();
    j = (Map)localObject;
    ((Map)localObject).put(gk.class, new bd((byte)0));
    j.put(gl.class, new bf((byte)0));
    localObject = new EnumMap(bg.class);
    ((Map)localObject).put(bg.a, new fo("identity", (byte)1, new fp((byte)11)));
    ((Map)localObject).put(bg.b, new fo("ts", (byte)1, new fp((byte)10)));
    ((Map)localObject).put(bg.c, new fo("version", (byte)1, new fp((byte)8)));
    e = Collections.unmodifiableMap((Map)localObject);
    fo.a(bb.class, e);
  }
  
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
    if (this.a == null) {
      throw new gb("Required field 'identity' was not present! Struct: " + toString());
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("IdSnapshot(");
    localStringBuilder.append("identity:");
    if (this.a == null) {
      localStringBuilder.append("null");
    }
    for (;;)
    {
      localStringBuilder.append(", ");
      localStringBuilder.append("ts:");
      localStringBuilder.append(this.b);
      localStringBuilder.append(", ");
      localStringBuilder.append("version:");
      localStringBuilder.append(this.c);
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\bb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */