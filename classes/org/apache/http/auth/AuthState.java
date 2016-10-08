package org.apache.http.auth;

import java.util.Queue;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.util.Args;

@NotThreadSafe
public class AuthState
{
  private Queue<AuthOption> authOptions;
  private AuthScheme authScheme;
  private AuthScope authScope;
  private Credentials credentials;
  private AuthProtocolState state = AuthProtocolState.UNCHALLENGED;
  
  public Queue<AuthOption> getAuthOptions()
  {
    return this.authOptions;
  }
  
  public AuthScheme getAuthScheme()
  {
    return this.authScheme;
  }
  
  @Deprecated
  public AuthScope getAuthScope()
  {
    return this.authScope;
  }
  
  public Credentials getCredentials()
  {
    return this.credentials;
  }
  
  public AuthProtocolState getState()
  {
    return this.state;
  }
  
  public boolean hasAuthOptions()
  {
    return (this.authOptions != null) && (!this.authOptions.isEmpty());
  }
  
  @Deprecated
  public void invalidate()
  {
    reset();
  }
  
  @Deprecated
  public boolean isValid()
  {
    return this.authScheme != null;
  }
  
  public void reset()
  {
    this.state = AuthProtocolState.UNCHALLENGED;
    this.authOptions = null;
    this.authScheme = null;
    this.authScope = null;
    this.credentials = null;
  }
  
  @Deprecated
  public void setAuthScheme(AuthScheme paramAuthScheme)
  {
    if (paramAuthScheme == null)
    {
      reset();
      return;
    }
    this.authScheme = paramAuthScheme;
  }
  
  @Deprecated
  public void setAuthScope(AuthScope paramAuthScope)
  {
    this.authScope = paramAuthScope;
  }
  
  @Deprecated
  public void setCredentials(Credentials paramCredentials)
  {
    this.credentials = paramCredentials;
  }
  
  public void setState(AuthProtocolState paramAuthProtocolState)
  {
    if (paramAuthProtocolState != null) {}
    for (;;)
    {
      this.state = paramAuthProtocolState;
      return;
      paramAuthProtocolState = AuthProtocolState.UNCHALLENGED;
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("state:").append(this.state).append(";");
    if (this.authScheme != null) {
      localStringBuilder.append("auth scheme:").append(this.authScheme.getSchemeName()).append(";");
    }
    if (this.credentials != null) {
      localStringBuilder.append("credentials present");
    }
    return localStringBuilder.toString();
  }
  
  public void update(Queue<AuthOption> paramQueue)
  {
    Args.notEmpty(paramQueue, "Queue of auth options");
    this.authOptions = paramQueue;
    this.authScheme = null;
    this.credentials = null;
  }
  
  public void update(AuthScheme paramAuthScheme, Credentials paramCredentials)
  {
    Args.notNull(paramAuthScheme, "Auth scheme");
    Args.notNull(paramCredentials, "Credentials");
    this.authScheme = paramAuthScheme;
    this.credentials = paramCredentials;
    this.authOptions = null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\auth\AuthState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */