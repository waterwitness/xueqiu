package org.apache.http.impl.cookie;

import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.http.annotation.Immutable;
import org.apache.http.cookie.CommonCookieAttributeHandler;
import org.apache.http.cookie.SetCookie;
import org.apache.http.util.Args;
import org.apache.http.util.TextUtils;

@Immutable
public class LaxMaxAgeHandler
  extends AbstractCookieAttributeHandler
  implements CommonCookieAttributeHandler
{
  private static final Pattern MAX_AGE_PATTERN = Pattern.compile("^\\-?[0-9]+$");
  
  public String getAttributeName()
  {
    return "max-age";
  }
  
  public void parse(SetCookie paramSetCookie, String paramString)
  {
    Args.notNull(paramSetCookie, "Cookie");
    if (TextUtils.isBlank(paramString)) {}
    while (!MAX_AGE_PATTERN.matcher(paramString).matches()) {
      return;
    }
    try
    {
      int i = Integer.parseInt(paramString);
      if (i >= 0) {}
      for (paramString = new Date(System.currentTimeMillis() + i * 1000L);; paramString = new Date(Long.MIN_VALUE))
      {
        paramSetCookie.setExpiryDate(paramString);
        return;
      }
      return;
    }
    catch (NumberFormatException paramSetCookie) {}
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\cookie\LaxMaxAgeHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */