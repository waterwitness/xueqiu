package org.apache.http.auth;

import org.apache.http.annotation.Immutable;

@Immutable
public class InvalidCredentialsException
  extends AuthenticationException
{
  private static final long serialVersionUID = -4834003835215460648L;
  
  public InvalidCredentialsException() {}
  
  public InvalidCredentialsException(String paramString)
  {
    super(paramString);
  }
  
  public InvalidCredentialsException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\auth\InvalidCredentialsException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */