package u.aly;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum u
  implements fg
{
  private static final Map<String, u> k;
  private final short l;
  private final String m;
  
  static
  {
    k = new HashMap();
    Iterator localIterator = EnumSet.allOf(u.class).iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      u localu = (u)localIterator.next();
      k.put(localu.m, localu);
    }
  }
  
  private u(short paramShort, String paramString1)
  {
    this.l = paramShort;
    this.m = paramString1;
  }
  
  public final short a()
  {
    return this.l;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */