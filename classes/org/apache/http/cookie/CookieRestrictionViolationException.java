package org.apache.http.cookie;

import org.apache.http.annotation.Immutable;

@Immutable
public class CookieRestrictionViolationException
  extends MalformedCookieException
{
  private static final long serialVersionUID = 7371235577078589013L;
  
  public CookieRestrictionViolationException() {}
  
  public CookieRestrictionViolationException(String paramString)
  {
    super(paramString);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\cookie\CookieRestrictionViolationException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */