package u.aly;

import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;

public abstract class fi<T extends fi<?, ?>, F extends fg>
  implements fa<T, F>
{
  private static final Map<Class<? extends gi>, gj> a;
  protected Object b = null;
  protected F c = null;
  
  static
  {
    HashMap localHashMap = new HashMap();
    a = localHashMap;
    localHashMap.put(gk.class, new fk((byte)0));
    a.put(gl.class, new fm((byte)0));
  }
  
  protected abstract Object a(ga paramga, fx paramfx);
  
  protected abstract Object a(ga paramga, short paramShort);
  
  protected abstract F a(short paramShort);
  
  protected abstract fx a(F paramF);
  
  protected abstract gg a();
  
  public final void a(ga paramga)
  {
    ((gj)a.get(paramga.s())).a().a(paramga, this);
  }
  
  public final F b()
  {
    return this.c;
  }
  
  public final void b(ga paramga)
  {
    ((gj)a.get(paramga.s())).a().b(paramga, this);
  }
  
  public final Object c()
  {
    return this.b;
  }
  
  protected abstract void c(ga paramga);
  
  protected abstract void d(ga paramga);
  
  public final boolean d()
  {
    return this.c != null;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("<");
    localStringBuilder.append(getClass().getSimpleName());
    localStringBuilder.append(" ");
    Object localObject;
    if (this.c != null)
    {
      localObject = this.b;
      localStringBuilder.append(a(this.c).a);
      localStringBuilder.append(":");
      if (!(localObject instanceof ByteBuffer)) {
        break label96;
      }
      fc.a((ByteBuffer)localObject, localStringBuilder);
    }
    for (;;)
    {
      localStringBuilder.append(">");
      return localStringBuilder.toString();
      label96:
      localStringBuilder.append(localObject.toString());
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\fi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */