package u.aly;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum ba
  implements fg
{
  private static final Map<String, ba> e;
  private final short f;
  private final String g;
  
  static
  {
    e = new HashMap();
    Iterator localIterator = EnumSet.allOf(ba.class).iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      ba localba = (ba)localIterator.next();
      e.put(localba.g, localba);
    }
  }
  
  private ba(short paramShort, String paramString1)
  {
    this.f = paramShort;
    this.g = paramString1;
  }
  
  public final short a()
  {
    return this.f;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\ba.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */