package org.apache.http.impl.client;

import org.apache.http.annotation.Immutable;

@Immutable
public class LaxRedirectStrategy
  extends DefaultRedirectStrategy
{
  private static final String[] REDIRECT_METHODS = { "GET", "POST", "HEAD", "DELETE" };
  
  protected boolean isRedirectable(String paramString)
  {
    boolean bool2 = false;
    String[] arrayOfString = REDIRECT_METHODS;
    int j = arrayOfString.length;
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < j)
      {
        if (arrayOfString[i].equalsIgnoreCase(paramString)) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\client\LaxRedirectStrategy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */