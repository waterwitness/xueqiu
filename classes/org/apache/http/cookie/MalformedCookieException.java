package org.apache.http.cookie;

import org.apache.http.ProtocolException;
import org.apache.http.annotation.Immutable;

@Immutable
public class MalformedCookieException
  extends ProtocolException
{
  private static final long serialVersionUID = -6695462944287282185L;
  
  public MalformedCookieException() {}
  
  public MalformedCookieException(String paramString)
  {
    super(paramString);
  }
  
  public MalformedCookieException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\cookie\MalformedCookieException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */