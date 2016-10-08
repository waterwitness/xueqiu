package u.aly;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public enum df
  implements fg
{
  private static final Map<String, df> c;
  private final short d;
  private final String e;
  
  static
  {
    c = new HashMap();
    Iterator localIterator = EnumSet.allOf(df.class).iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      df localdf = (df)localIterator.next();
      c.put(localdf.e, localdf);
    }
  }
  
  private df(short paramShort, String paramString1)
  {
    this.d = paramShort;
    this.e = paramString1;
  }
  
  public final short a()
  {
    return this.d;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\df.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */