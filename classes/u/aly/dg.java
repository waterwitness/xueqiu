package u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class dg
  implements Serializable, Cloneable, fa<dg, dl>
{
  public static final Map<dl, fo> e;
  private static final gg f = new gg("Response");
  private static final fx g = new fx("resp_code", (byte)8, (short)1);
  private static final fx h = new fx("msg", (byte)11, (short)2);
  private static final fx i = new fx("imprint", (byte)12, (short)3);
  private static final Map<Class<? extends gi>, gj> j;
  public int a;
  public String b;
  public bn c;
  byte d = 0;
  private dl[] k = { dl.b, dl.c };
  
  static
  {
    Object localObject = new HashMap();
    j = (Map)localObject;
    ((Map)localObject).put(gk.class, new di((byte)0));
    j.put(gl.class, new dk((byte)0));
    localObject = new EnumMap(dl.class);
    ((Map)localObject).put(dl.a, new fo("resp_code", (byte)1, new fp((byte)8)));
    ((Map)localObject).put(dl.b, new fo("msg", (byte)2, new fp((byte)11)));
    ((Map)localObject).put(dl.c, new fo("imprint", (byte)2, new fs(bn.class)));
    e = Collections.unmodifiableMap((Map)localObject);
    fo.a(dg.class, e);
  }
  
  public final void a()
  {
    this.d = ((byte)(this.d | 0x1));
  }
  
  public final void a(ga paramga)
  {
    ((gj)j.get(paramga.s())).a().a(paramga, this);
  }
  
  public final void b(ga paramga)
  {
    ((gj)j.get(paramga.s())).a().b(paramga, this);
  }
  
  public final boolean b()
  {
    return this.b != null;
  }
  
  public final boolean c()
  {
    return this.c != null;
  }
  
  public final void d()
  {
    if (this.c != null) {
      this.c.b();
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Response(");
    localStringBuilder.append("resp_code:");
    localStringBuilder.append(this.a);
    if (b())
    {
      localStringBuilder.append(", ");
      localStringBuilder.append("msg:");
      if (this.b == null) {
        localStringBuilder.append("null");
      }
    }
    else if (c())
    {
      localStringBuilder.append(", ");
      localStringBuilder.append("imprint:");
      if (this.c != null) {
        break label120;
      }
      localStringBuilder.append("null");
    }
    for (;;)
    {
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.b);
      break;
      label120:
      localStringBuilder.append(this.c);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\dg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */