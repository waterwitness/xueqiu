package u.aly;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum ee
  implements fg
{
  private static final Map<String, ee> j;
  private final short k;
  private final String l;
  
  static
  {
    j = new HashMap();
    Iterator localIterator = EnumSet.allOf(ee.class).iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      ee localee = (ee)localIterator.next();
      j.put(localee.l, localee);
    }
  }
  
  private ee(short paramShort, String paramString1)
  {
    this.k = paramShort;
    this.l = paramString1;
  }
  
  public final short a()
  {
    return this.k;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\ee.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */