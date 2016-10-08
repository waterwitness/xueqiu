package u.aly;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum cy
  implements fg
{
  private static final Map<String, cy> c;
  private final short d;
  private final String e;
  
  static
  {
    c = new HashMap();
    Iterator localIterator = EnumSet.allOf(cy.class).iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      cy localcy = (cy)localIterator.next();
      c.put(localcy.e, localcy);
    }
  }
  
  private cy(short paramShort, String paramString1)
  {
    this.d = paramShort;
    this.e = paramString1;
  }
  
  public static cy a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 1: 
      return a;
    }
    return b;
  }
  
  public static cy b(int paramInt)
  {
    cy localcy = a(paramInt);
    if (localcy == null) {
      throw new IllegalArgumentException("Field " + paramInt + " doesn't exist!");
    }
    return localcy;
  }
  
  public final short a()
  {
    return this.d;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\cy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */