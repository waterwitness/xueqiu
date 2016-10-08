package org.apache.http.auth;

import org.apache.http.ProtocolException;
import org.apache.http.annotation.Immutable;

@Immutable
public class MalformedChallengeException
  extends ProtocolException
{
  private static final long serialVersionUID = 814586927989932284L;
  
  public MalformedChallengeException() {}
  
  public MalformedChallengeException(String paramString)
  {
    super(paramString);
  }
  
  public MalformedChallengeException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\auth\MalformedChallengeException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */