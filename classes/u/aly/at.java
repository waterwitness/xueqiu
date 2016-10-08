package u.aly;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum at
  implements fg
{
  private static final Map<String, at> f;
  private final short g;
  private final String h;
  
  static
  {
    f = new HashMap();
    Iterator localIterator = EnumSet.allOf(at.class).iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      at localat = (at)localIterator.next();
      f.put(localat.h, localat);
    }
  }
  
  private at(short paramShort, String paramString1)
  {
    this.g = paramShort;
    this.h = paramString1;
  }
  
  public final short a()
  {
    return this.g;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\at.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */