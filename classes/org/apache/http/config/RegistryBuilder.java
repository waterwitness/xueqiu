package org.apache.http.config;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.util.Args;

@NotThreadSafe
public final class RegistryBuilder<I>
{
  private final Map<String, I> items = new HashMap();
  
  public static <I> RegistryBuilder<I> create()
  {
    return new RegistryBuilder();
  }
  
  public final Registry<I> build()
  {
    return new Registry(this.items);
  }
  
  public final RegistryBuilder<I> register(String paramString, I paramI)
  {
    Args.notEmpty(paramString, "ID");
    Args.notNull(paramI, "Item");
    this.items.put(paramString.toLowerCase(Locale.ROOT), paramI);
    return this;
  }
  
  public final String toString()
  {
    return this.items.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\config\RegistryBuilder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */