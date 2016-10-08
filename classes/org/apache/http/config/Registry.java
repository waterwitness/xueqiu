package org.apache.http.config;

import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.annotation.ThreadSafe;

@ThreadSafe
public final class Registry<I>
  implements Lookup<I>
{
  private final Map<String, I> map;
  
  Registry(Map<String, I> paramMap)
  {
    this.map = new ConcurrentHashMap(paramMap);
  }
  
  public final I lookup(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return (I)this.map.get(paramString.toLowerCase(Locale.ROOT));
  }
  
  public final String toString()
  {
    return this.map.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\config\Registry.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */