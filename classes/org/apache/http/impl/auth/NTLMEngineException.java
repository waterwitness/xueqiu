package org.apache.http.impl.auth;

import org.apache.http.annotation.Immutable;
import org.apache.http.auth.AuthenticationException;

@Immutable
public class NTLMEngineException
  extends AuthenticationException
{
  private static final long serialVersionUID = 6027981323731768824L;
  
  public NTLMEngineException() {}
  
  public NTLMEngineException(String paramString)
  {
    super(paramString);
  }
  
  public NTLMEngineException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\auth\NTLMEngineException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */