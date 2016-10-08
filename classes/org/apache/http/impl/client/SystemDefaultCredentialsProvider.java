package org.apache.http.impl.client;

import java.net.Authenticator;
import java.net.Authenticator.RequestorType;
import java.net.PasswordAuthentication;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.HttpHost;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.NTCredentials;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.util.Args;

@ThreadSafe
public class SystemDefaultCredentialsProvider
  implements CredentialsProvider
{
  private static final Map<String, String> SCHEME_MAP;
  private final BasicCredentialsProvider internal = new BasicCredentialsProvider();
  
  static
  {
    ConcurrentHashMap localConcurrentHashMap = new ConcurrentHashMap();
    SCHEME_MAP = localConcurrentHashMap;
    localConcurrentHashMap.put("Basic".toUpperCase(Locale.ROOT), "Basic");
    SCHEME_MAP.put("Digest".toUpperCase(Locale.ROOT), "Digest");
    SCHEME_MAP.put("NTLM".toUpperCase(Locale.ROOT), "NTLM");
    SCHEME_MAP.put("Negotiate".toUpperCase(Locale.ROOT), "SPNEGO");
    SCHEME_MAP.put("Kerberos".toUpperCase(Locale.ROOT), "Kerberos");
  }
  
  private static PasswordAuthentication getSystemCreds(AuthScope paramAuthScope, Authenticator.RequestorType paramRequestorType)
  {
    String str = paramAuthScope.getHost();
    int i = paramAuthScope.getPort();
    Object localObject = paramAuthScope.getOrigin();
    if (localObject != null) {
      localObject = ((HttpHost)localObject).getSchemeName();
    }
    for (;;)
    {
      return Authenticator.requestPasswordAuthentication(str, null, i, (String)localObject, null, translateScheme(paramAuthScope.getScheme()), null, paramRequestorType);
      if (i == 443) {
        localObject = "https";
      } else {
        localObject = "http";
      }
    }
  }
  
  private static String translateScheme(String paramString)
  {
    Object localObject;
    if (paramString == null) {
      localObject = null;
    }
    String str;
    do
    {
      return (String)localObject;
      str = (String)SCHEME_MAP.get(paramString);
      localObject = str;
    } while (str != null);
    return paramString;
  }
  
  public void clear()
  {
    this.internal.clear();
  }
  
  public Credentials getCredentials(AuthScope paramAuthScope)
  {
    Args.notNull(paramAuthScope, "Auth scope");
    Object localObject = this.internal.getCredentials(paramAuthScope);
    if (localObject != null) {
      return (Credentials)localObject;
    }
    if (paramAuthScope.getHost() != null)
    {
      localObject = getSystemCreds(paramAuthScope, Authenticator.RequestorType.SERVER);
      if (localObject != null) {
        break label150;
      }
      localObject = getSystemCreds(paramAuthScope, Authenticator.RequestorType.PROXY);
    }
    label150:
    for (;;)
    {
      if (localObject != null)
      {
        String str = System.getProperty("http.auth.ntlm.domain");
        if (str != null) {
          return new NTCredentials(((PasswordAuthentication)localObject).getUserName(), new String(((PasswordAuthentication)localObject).getPassword()), null, str);
        }
        if ("NTLM".equalsIgnoreCase(paramAuthScope.getScheme())) {
          return new NTCredentials(((PasswordAuthentication)localObject).getUserName(), new String(((PasswordAuthentication)localObject).getPassword()), null, null);
        }
        return new UsernamePasswordCredentials(((PasswordAuthentication)localObject).getUserName(), new String(((PasswordAuthentication)localObject).getPassword()));
      }
      return null;
    }
  }
  
  public void setCredentials(AuthScope paramAuthScope, Credentials paramCredentials)
  {
    this.internal.setCredentials(paramAuthScope, paramCredentials);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\client\SystemDefaultCredentialsProvider.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */