package u.aly;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public class ef
  implements Serializable, Cloneable, fa<ef, ek>
{
  public static final Map<ek, fo> e;
  private static final gg f = new gg("UserInfo");
  private static final fx g = new fx("gender", (byte)8, (short)1);
  private static final fx h = new fx("age", (byte)8, (short)2);
  private static final fx i = new fx("id", (byte)11, (short)3);
  private static final fx j = new fx("source", (byte)11, (short)4);
  private static final Map<Class<? extends gi>, gj> k;
  public au a;
  public int b;
  public String c;
  public String d;
  private byte l = 0;
  private ek[] m = { ek.a, ek.b, ek.c, ek.d };
  
  static
  {
    Object localObject = new HashMap();
    k = (Map)localObject;
    ((Map)localObject).put(gk.class, new eh((byte)0));
    k.put(gl.class, new ej((byte)0));
    localObject = new EnumMap(ek.class);
    ((Map)localObject).put(ek.a, new fo("gender", (byte)2, new fn(au.class)));
    ((Map)localObject).put(ek.b, new fo("age", (byte)2, new fp((byte)8)));
    ((Map)localObject).put(ek.c, new fo("id", (byte)2, new fp((byte)11)));
    ((Map)localObject).put(ek.d, new fo("source", (byte)2, new fp((byte)11)));
    e = Collections.unmodifiableMap((Map)localObject);
    fo.a(ef.class, e);
  }
  
  public static void f() {}
  
  public final void a(ga paramga)
  {
    ((gj)k.get(paramga.s())).a().a(paramga, this);
  }
  
  public final boolean a()
  {
    return this.a != null;
  }
  
  public final void b(ga paramga)
  {
    ((gj)k.get(paramga.s())).a().b(paramga, this);
  }
  
  public final boolean b()
  {
    return ey.a(this.l, 0);
  }
  
  public final void c()
  {
    this.l = ((byte)(this.l | 0x1));
  }
  
  public final boolean d()
  {
    return this.c != null;
  }
  
  public final boolean e()
  {
    return this.d != null;
  }
  
  public String toString()
  {
    int i2 = 0;
    StringBuilder localStringBuilder = new StringBuilder("UserInfo(");
    int n = 1;
    int i1;
    if (a())
    {
      localStringBuilder.append("gender:");
      if (this.a == null)
      {
        localStringBuilder.append("null");
        n = 0;
      }
    }
    else
    {
      i1 = n;
      if (b())
      {
        if (n == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("age:");
        localStringBuilder.append(this.b);
        i1 = 0;
      }
      if (!d()) {
        break label215;
      }
      if (i1 == 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append("id:");
      if (this.c != null) {
        break label188;
      }
      localStringBuilder.append("null");
      n = i2;
    }
    for (;;)
    {
      label125:
      if (e())
      {
        if (n == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("source:");
        if (this.d != null) {
          break label203;
        }
        localStringBuilder.append("null");
      }
      for (;;)
      {
        localStringBuilder.append(")");
        return localStringBuilder.toString();
        localStringBuilder.append(this.a);
        break;
        label188:
        localStringBuilder.append(this.c);
        n = i2;
        break label125;
        label203:
        localStringBuilder.append(this.d);
      }
      label215:
      n = i1;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\ef.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */