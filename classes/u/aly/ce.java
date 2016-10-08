package u.aly;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum ce
  implements fg
{
  private static final Map<String, ce> e;
  private final short f;
  private final String g;
  
  static
  {
    e = new HashMap();
    Iterator localIterator = EnumSet.allOf(ce.class).iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      ce localce = (ce)localIterator.next();
      e.put(localce.g, localce);
    }
  }
  
  private ce(short paramShort, String paramString1)
  {
    this.f = paramShort;
    this.g = paramString1;
  }
  
  public final short a()
  {
    return this.f;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\ce.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */