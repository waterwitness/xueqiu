package u.aly;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum cw
  implements fg
{
  private static final Map<String, cw> c;
  private final short d;
  private final String e;
  
  static
  {
    c = new HashMap();
    Iterator localIterator = EnumSet.allOf(cw.class).iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      cw localcw = (cw)localIterator.next();
      c.put(localcw.e, localcw);
    }
  }
  
  private cw(short paramShort, String paramString1)
  {
    this.d = paramShort;
    this.e = paramString1;
  }
  
  public final short a()
  {
    return this.d;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\cw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */