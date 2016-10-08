package org.apache.http.impl.cookie;

import org.apache.http.annotation.ThreadSafe;
import org.apache.http.cookie.CommonCookieAttributeHandler;

@ThreadSafe
public class RFC6265StrictSpec
  extends RFC6265CookieSpecBase
{
  static final String[] DATE_PATTERNS = { "EEE, dd MMM yyyy HH:mm:ss zzz", "EEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy" };
  
  public RFC6265StrictSpec()
  {
    super(new CommonCookieAttributeHandler[] { new BasicPathHandler(), new BasicDomainHandler(), new BasicMaxAgeHandler(), new BasicSecureHandler(), new BasicExpiresHandler(DATE_PATTERNS) });
  }
  
  RFC6265StrictSpec(CommonCookieAttributeHandler... paramVarArgs)
  {
    super(paramVarArgs);
  }
  
  public String toString()
  {
    return "rfc6265-strict";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\cookie\RFC6265StrictSpec.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */