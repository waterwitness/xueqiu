package u.aly;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum am
  implements fg
{
  private static final Map<String, am> d;
  private final short e;
  private final String f;
  
  static
  {
    d = new HashMap();
    Iterator localIterator = EnumSet.allOf(am.class).iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      am localam = (am)localIterator.next();
      d.put(localam.f, localam);
    }
  }
  
  private am(short paramShort, String paramString1)
  {
    this.e = paramShort;
    this.f = paramString1;
  }
  
  public final short a()
  {
    return this.e;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\am.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */