package org.apache.commons.logging;

import java.security.PrivilegedAction;

final class LogFactory$2
  implements PrivilegedAction
{
  private final ClassLoader val$classLoader;
  private final String val$factoryClass;
  
  LogFactory$2(String paramString, ClassLoader paramClassLoader)
  {
    this.val$factoryClass = paramString;
    this.val$classLoader = paramClassLoader;
  }
  
  public final Object run()
  {
    return LogFactory.createFactory(this.val$factoryClass, this.val$classLoader);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\commons\logging\LogFactory$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */