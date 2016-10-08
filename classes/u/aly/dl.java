package u.aly;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum dl
  implements fg
{
  private static final Map<String, dl> d;
  private final short e;
  private final String f;
  
  static
  {
    d = new HashMap();
    Iterator localIterator = EnumSet.allOf(dl.class).iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      dl localdl = (dl)localIterator.next();
      d.put(localdl.f, localdl);
    }
  }
  
  private dl(short paramShort, String paramString1)
  {
    this.e = paramShort;
    this.f = paramString1;
  }
  
  public final short a()
  {
    return this.e;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\dl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */