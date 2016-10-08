package org.apache.http.impl.cookie;

import java.util.Date;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.utils.DateUtils;
import org.apache.http.cookie.CommonCookieAttributeHandler;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;
import org.apache.http.util.Args;

@Immutable
public class BasicExpiresHandler
  extends AbstractCookieAttributeHandler
  implements CommonCookieAttributeHandler
{
  private final String[] datepatterns;
  
  public BasicExpiresHandler(String[] paramArrayOfString)
  {
    Args.notNull(paramArrayOfString, "Array of date patterns");
    this.datepatterns = paramArrayOfString;
  }
  
  public String getAttributeName()
  {
    return "expires";
  }
  
  public void parse(SetCookie paramSetCookie, String paramString)
  {
    Args.notNull(paramSetCookie, "Cookie");
    if (paramString == null) {
      throw new MalformedCookieException("Missing value for 'expires' attribute");
    }
    Date localDate = DateUtils.parseDate(paramString, this.datepatterns);
    if (localDate == null) {
      throw new MalformedCookieException("Invalid 'expires' attribute: " + paramString);
    }
    paramSetCookie.setExpiryDate(localDate);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\cookie\BasicExpiresHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */