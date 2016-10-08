package u.aly;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum bg
  implements fg
{
  private static final Map<String, bg> d;
  private final short e;
  private final String f;
  
  static
  {
    d = new HashMap();
    Iterator localIterator = EnumSet.allOf(bg.class).iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      bg localbg = (bg)localIterator.next();
      d.put(localbg.f, localbg);
    }
  }
  
  private bg(short paramShort, String paramString1)
  {
    this.e = paramShort;
    this.f = paramString1;
  }
  
  public final short a()
  {
    return this.e;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\bg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */