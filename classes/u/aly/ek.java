package u.aly;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum ek
  implements fg
{
  private static final Map<String, ek> e;
  private final short f;
  private final String g;
  
  static
  {
    e = new HashMap();
    Iterator localIterator = EnumSet.allOf(ek.class).iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      ek localek = (ek)localIterator.next();
      e.put(localek.g, localek);
    }
  }
  
  private ek(short paramShort, String paramString1)
  {
    this.f = paramShort;
    this.g = paramString1;
  }
  
  public final short a()
  {
    return this.f;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\ek.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */