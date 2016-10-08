package u.aly;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum cq
  implements fg
{
  private static final Map<String, cq> l;
  private final short m;
  private final String n;
  
  static
  {
    l = new HashMap();
    Iterator localIterator = EnumSet.allOf(cq.class).iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      cq localcq = (cq)localIterator.next();
      l.put(localcq.n, localcq);
    }
  }
  
  private cq(short paramShort, String paramString1)
  {
    this.m = paramShort;
    this.n = paramString1;
  }
  
  public final short a()
  {
    return this.m;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\cq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */