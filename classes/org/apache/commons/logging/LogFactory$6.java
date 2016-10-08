package org.apache.commons.logging;

import java.security.PrivilegedAction;

final class LogFactory$6
  implements PrivilegedAction
{
  private final String val$def;
  private final String val$key;
  
  LogFactory$6(String paramString1, String paramString2)
  {
    this.val$key = paramString1;
    this.val$def = paramString2;
  }
  
  public final Object run()
  {
    return System.getProperty(this.val$key, this.val$def);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\commons\logging\LogFactory$6.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */