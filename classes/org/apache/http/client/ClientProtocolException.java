package org.apache.http.client;

import java.io.IOException;
import org.apache.http.annotation.Immutable;

@Immutable
public class ClientProtocolException
  extends IOException
{
  private static final long serialVersionUID = -5596590843227115865L;
  
  public ClientProtocolException() {}
  
  public ClientProtocolException(String paramString)
  {
    super(paramString);
  }
  
  public ClientProtocolException(String paramString, Throwable paramThrowable)
  {
    super(paramString);
    initCause(paramThrowable);
  }
  
  public ClientProtocolException(Throwable paramThrowable)
  {
    initCause(paramThrowable);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\ClientProtocolException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */