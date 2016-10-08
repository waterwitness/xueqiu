package org.apache.http.impl.client;

import java.security.Principal;
import javax.net.ssl.SSLSession;
import org.apache.http.HttpConnection;
import org.apache.http.annotation.Immutable;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthState;
import org.apache.http.auth.Credentials;
import org.apache.http.client.UserTokenHandler;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.conn.ManagedHttpClientConnection;
import org.apache.http.protocol.HttpContext;

@Immutable
public class DefaultUserTokenHandler
  implements UserTokenHandler
{
  public static final DefaultUserTokenHandler INSTANCE = new DefaultUserTokenHandler();
  
  private static Principal getAuthPrincipal(AuthState paramAuthState)
  {
    AuthScheme localAuthScheme = paramAuthState.getAuthScheme();
    if ((localAuthScheme != null) && (localAuthScheme.isComplete()) && (localAuthScheme.isConnectionBased()))
    {
      paramAuthState = paramAuthState.getCredentials();
      if (paramAuthState != null) {
        return paramAuthState.getUserPrincipal();
      }
    }
    return null;
  }
  
  public Object getUserToken(HttpContext paramHttpContext)
  {
    HttpClientContext localHttpClientContext = HttpClientContext.adapt(paramHttpContext);
    paramHttpContext = null;
    Object localObject = localHttpClientContext.getTargetAuthState();
    if (localObject != null)
    {
      localObject = getAuthPrincipal((AuthState)localObject);
      paramHttpContext = (HttpContext)localObject;
      if (localObject == null) {
        paramHttpContext = getAuthPrincipal(localHttpClientContext.getProxyAuthState());
      }
    }
    if (paramHttpContext == null)
    {
      localObject = localHttpClientContext.getConnection();
      if ((((HttpConnection)localObject).isOpen()) && ((localObject instanceof ManagedHttpClientConnection)))
      {
        localObject = ((ManagedHttpClientConnection)localObject).getSSLSession();
        if (localObject != null) {
          return ((SSLSession)localObject).getLocalPrincipal();
        }
      }
    }
    return paramHttpContext;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\client\DefaultUserTokenHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */