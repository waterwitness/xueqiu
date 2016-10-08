package u.aly;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum ds
  implements fg
{
  private static final Map<String, ds> h;
  private final short i;
  private final String j;
  
  static
  {
    h = new HashMap();
    Iterator localIterator = EnumSet.allOf(ds.class).iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      ds localds = (ds)localIterator.next();
      h.put(localds.j, localds);
    }
  }
  
  private ds(short paramShort, String paramString1)
  {
    this.i = paramShort;
    this.j = paramString1;
  }
  
  public final short a()
  {
    return this.i;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\ds.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */