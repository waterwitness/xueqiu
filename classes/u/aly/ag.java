package u.aly;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum ag
  implements fg
{
  private static final Map<String, ag> r;
  private final short s;
  private final String t;
  
  static
  {
    r = new HashMap();
    Iterator localIterator = EnumSet.allOf(ag.class).iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      ag localag = (ag)localIterator.next();
      r.put(localag.t, localag);
    }
  }
  
  private ag(short paramShort, String paramString1)
  {
    this.s = paramShort;
    this.t = paramString1;
  }
  
  public final short a()
  {
    return this.s;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\ag.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */