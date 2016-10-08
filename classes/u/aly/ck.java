package u.aly;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum ck
  implements fg
{
  private static final Map<String, ck> d;
  private final short e;
  private final String f;
  
  static
  {
    d = new HashMap();
    Iterator localIterator = EnumSet.allOf(ck.class).iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      ck localck = (ck)localIterator.next();
      d.put(localck.f, localck);
    }
  }
  
  private ck(short paramShort, String paramString1)
  {
    this.e = paramShort;
    this.f = paramString1;
  }
  
  public final short a()
  {
    return this.e;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\ck.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */