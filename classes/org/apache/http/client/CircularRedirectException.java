package org.apache.http.client;

import org.apache.http.annotation.Immutable;

@Immutable
public class CircularRedirectException
  extends RedirectException
{
  private static final long serialVersionUID = 6830063487001091803L;
  
  public CircularRedirectException() {}
  
  public CircularRedirectException(String paramString)
  {
    super(paramString);
  }
  
  public CircularRedirectException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\CircularRedirectException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */