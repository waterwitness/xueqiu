package org.apache.http.ssl;

import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import javax.net.ssl.SSLContext;
import org.apache.http.annotation.Immutable;

@Immutable
public class SSLContexts
{
  public static SSLContext createDefault()
  {
    try
    {
      SSLContext localSSLContext = SSLContext.getInstance("TLS");
      localSSLContext.init(null, null, null);
      return localSSLContext;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      throw new SSLInitializationException(localNoSuchAlgorithmException.getMessage(), localNoSuchAlgorithmException);
    }
    catch (KeyManagementException localKeyManagementException)
    {
      throw new SSLInitializationException(localKeyManagementException.getMessage(), localKeyManagementException);
    }
  }
  
  public static SSLContext createSystemDefault()
  {
    try
    {
      SSLContext localSSLContext = SSLContext.getDefault();
      return localSSLContext;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException) {}
    return createDefault();
  }
  
  public static SSLContextBuilder custom()
  {
    return SSLContextBuilder.create();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\ssl\SSLContexts.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */