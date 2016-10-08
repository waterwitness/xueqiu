package org.apache.commons.logging;

import java.security.PrivilegedAction;

final class LogFactory$3
  implements PrivilegedAction
{
  private final ClassLoader val$loader;
  private final String val$name;
  
  LogFactory$3(ClassLoader paramClassLoader, String paramString)
  {
    this.val$loader = paramClassLoader;
    this.val$name = paramString;
  }
  
  public final Object run()
  {
    if (this.val$loader != null) {
      return this.val$loader.getResourceAsStream(this.val$name);
    }
    return ClassLoader.getSystemResourceAsStream(this.val$name);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\commons\logging\LogFactory$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */