package u.aly;

import java.util.Collections;
import java.util.EnumMap;
import java.util.Map;

public class cx
  extends fi<cx, cy>
{
  public static final Map<cy, fo> a;
  private static final gg d = new gg("PropertyValue");
  private static final fx e = new fx("string_value", (byte)11, (short)1);
  private static final fx f = new fx("long_value", (byte)10, (short)2);
  
  static
  {
    EnumMap localEnumMap = new EnumMap(cy.class);
    localEnumMap.put(cy.a, new fo("string_value", (byte)3, new fp((byte)11)));
    localEnumMap.put(cy.b, new fo("long_value", (byte)3, new fp((byte)10)));
    a = Collections.unmodifiableMap(localEnumMap);
    fo.a(cx.class, a);
  }
  
  protected final Object a(ga paramga, fx paramfx)
  {
    String str = null;
    cy localcy = cy.a(paramfx.c);
    if (localcy != null) {}
    switch (e()[localcy.ordinal()])
    {
    default: 
      throw new IllegalStateException("setField wasn't null, but didn't match any of the case statements!");
    case 1: 
      if (paramfx.b == e.b)
      {
        str = paramga.p();
        return str;
      }
      ge.a(paramga, paramfx.b);
      return null;
    }
    if (paramfx.b == f.b) {
      return Long.valueOf(paramga.n());
    }
    ge.a(paramga, paramfx.b);
    return null;
  }
  
  protected final Object a(ga paramga, short paramShort)
  {
    cy localcy = cy.a(paramShort);
    if (localcy != null)
    {
      switch (e()[localcy.ordinal()])
      {
      default: 
        throw new IllegalStateException("setField wasn't null, but didn't match any of the case statements!");
      case 1: 
        return paramga.p();
      }
      return Long.valueOf(paramga.n());
    }
    throw new gb("Couldn't find a field with field id " + paramShort);
  }
  
  protected final gg a()
  {
    return d;
  }
  
  public final void a(long paramLong)
  {
    this.c = cy.b;
    this.b = Long.valueOf(paramLong);
  }
  
  public final void a(String paramString)
  {
    if (paramString == null) {
      throw new NullPointerException();
    }
    this.c = cy.a;
    this.b = paramString;
  }
  
  protected final void c(ga paramga)
  {
    switch (e()[((cy)this.c).ordinal()])
    {
    default: 
      throw new IllegalStateException("Cannot write union with unknown field " + this.c);
    case 1: 
      paramga.a((String)this.b);
      return;
    }
    paramga.a(((Long)this.b).longValue());
  }
  
  protected final void d(ga paramga)
  {
    switch (e()[((cy)this.c).ordinal()])
    {
    default: 
      throw new IllegalStateException("Cannot write union with unknown field " + this.c);
    case 1: 
      paramga.a((String)this.b);
      return;
    }
    paramga.a(((Long)this.b).longValue());
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof cx))
    {
      paramObject = (cx)paramObject;
      bool1 = bool2;
      if (paramObject != null)
      {
        bool1 = bool2;
        if (b() == ((cx)paramObject).b())
        {
          bool1 = bool2;
          if (c().equals(((cx)paramObject).c())) {
            bool1 = true;
          }
        }
      }
    }
    return bool1;
  }
  
  public int hashCode()
  {
    return 0;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\cx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */