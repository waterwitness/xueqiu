package org.apache.commons.logging;

import java.security.PrivilegedAction;

final class LogFactory$1
  implements PrivilegedAction
{
  public final Object run()
  {
    return LogFactory.directGetContextClassLoader();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\commons\logging\LogFactory$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */