package org.apache.http.impl.client;

import org.apache.http.annotation.Immutable;
import org.apache.http.client.UserTokenHandler;
import org.apache.http.protocol.HttpContext;

@Immutable
public class NoopUserTokenHandler
  implements UserTokenHandler
{
  public static final NoopUserTokenHandler INSTANCE = new NoopUserTokenHandler();
  
  public Object getUserToken(HttpContext paramHttpContext)
  {
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\client\NoopUserTokenHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */