package u.aly;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum o
  implements fg
{
  private static final Map<String, o> b;
  private final short c = 1;
  private final String d;
  
  static
  {
    b = new HashMap();
    Iterator localIterator = EnumSet.allOf(o.class).iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      o localo = (o)localIterator.next();
      b.put(localo.d, localo);
    }
  }
  
  private o()
  {
    this.d = paramString1;
  }
  
  public final short a()
  {
    return this.c;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */