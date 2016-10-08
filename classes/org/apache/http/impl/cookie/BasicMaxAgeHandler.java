package org.apache.http.impl.cookie;

import java.util.Date;
import org.apache.http.annotation.Immutable;
import org.apache.http.cookie.CommonCookieAttributeHandler;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;
import org.apache.http.util.Args;

@Immutable
public class BasicMaxAgeHandler
  extends AbstractCookieAttributeHandler
  implements CommonCookieAttributeHandler
{
  public String getAttributeName()
  {
    return "max-age";
  }
  
  public void parse(SetCookie paramSetCookie, String paramString)
  {
    Args.notNull(paramSetCookie, "Cookie");
    if (paramString == null) {
      throw new MalformedCookieException("Missing value for 'max-age' attribute");
    }
    int i;
    try
    {
      i = Integer.parseInt(paramString);
      if (i < 0) {
        throw new MalformedCookieException("Negative 'max-age' attribute: " + paramString);
      }
    }
    catch (NumberFormatException paramSetCookie)
    {
      throw new MalformedCookieException("Invalid 'max-age' attribute: " + paramString);
    }
    paramSetCookie.setExpiryDate(new Date(System.currentTimeMillis() + i * 1000L));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\cookie\BasicMaxAgeHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */