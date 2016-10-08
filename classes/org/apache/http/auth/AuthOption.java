package org.apache.http.auth;

import org.apache.http.annotation.Immutable;
import org.apache.http.util.Args;

@Immutable
public final class AuthOption
{
  private final AuthScheme authScheme;
  private final Credentials creds;
  
  public AuthOption(AuthScheme paramAuthScheme, Credentials paramCredentials)
  {
    Args.notNull(paramAuthScheme, "Auth scheme");
    Args.notNull(paramCredentials, "User credentials");
    this.authScheme = paramAuthScheme;
    this.creds = paramCredentials;
  }
  
  public final AuthScheme getAuthScheme()
  {
    return this.authScheme;
  }
  
  public final Credentials getCredentials()
  {
    return this.creds;
  }
  
  public final String toString()
  {
    return this.authScheme.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\auth\AuthOption.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */