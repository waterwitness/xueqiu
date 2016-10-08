package u.aly;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum eq
  implements fg
{
  private static final Map<String, eq> j;
  private final short k;
  private final String l;
  
  static
  {
    j = new HashMap();
    Iterator localIterator = EnumSet.allOf(eq.class).iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      eq localeq = (eq)localIterator.next();
      j.put(localeq.l, localeq);
    }
  }
  
  private eq(short paramShort, String paramString1)
  {
    this.k = paramShort;
    this.l = paramString1;
  }
  
  public final short a()
  {
    return this.k;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\eq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */