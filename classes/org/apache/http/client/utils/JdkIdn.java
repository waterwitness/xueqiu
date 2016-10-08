package org.apache.http.client.utils;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.apache.http.annotation.Immutable;

@Deprecated
@Immutable
public class JdkIdn
  implements Idn
{
  private final Method toUnicode;
  
  public JdkIdn()
  {
    Class localClass = Class.forName("java.net.IDN");
    try
    {
      this.toUnicode = localClass.getMethod("toUnicode", new Class[] { String.class });
      return;
    }
    catch (SecurityException localSecurityException)
    {
      throw new IllegalStateException(localSecurityException.getMessage(), localSecurityException);
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      throw new IllegalStateException(localNoSuchMethodException.getMessage(), localNoSuchMethodException);
    }
  }
  
  public String toUnicode(String paramString)
  {
    try
    {
      paramString = (String)this.toUnicode.invoke(null, new Object[] { paramString });
      return paramString;
    }
    catch (IllegalAccessException paramString)
    {
      throw new IllegalStateException(paramString.getMessage(), paramString);
    }
    catch (InvocationTargetException paramString)
    {
      paramString = paramString.getCause();
      throw new RuntimeException(paramString.getMessage(), paramString);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\utils\JdkIdn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */