package org.apache.http.ssl;

import java.net.Socket;
import java.security.Principal;
import java.security.PrivateKey;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import java.util.Map;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.X509ExtendedKeyManager;

class SSLContextBuilder$KeyManagerDelegate
  extends X509ExtendedKeyManager
{
  private final PrivateKeyStrategy aliasStrategy;
  private final X509ExtendedKeyManager keyManager;
  
  SSLContextBuilder$KeyManagerDelegate(X509ExtendedKeyManager paramX509ExtendedKeyManager, PrivateKeyStrategy paramPrivateKeyStrategy)
  {
    this.keyManager = paramX509ExtendedKeyManager;
    this.aliasStrategy = paramPrivateKeyStrategy;
  }
  
  public String chooseClientAlias(String[] paramArrayOfString, Principal[] paramArrayOfPrincipal, Socket paramSocket)
  {
    paramArrayOfString = getClientAliasMap(paramArrayOfString, paramArrayOfPrincipal);
    return this.aliasStrategy.chooseAlias(paramArrayOfString, paramSocket);
  }
  
  public String chooseEngineClientAlias(String[] paramArrayOfString, Principal[] paramArrayOfPrincipal, SSLEngine paramSSLEngine)
  {
    paramArrayOfString = getClientAliasMap(paramArrayOfString, paramArrayOfPrincipal);
    return this.aliasStrategy.chooseAlias(paramArrayOfString, null);
  }
  
  public String chooseEngineServerAlias(String paramString, Principal[] paramArrayOfPrincipal, SSLEngine paramSSLEngine)
  {
    paramString = getServerAliasMap(paramString, paramArrayOfPrincipal);
    return this.aliasStrategy.chooseAlias(paramString, null);
  }
  
  public String chooseServerAlias(String paramString, Principal[] paramArrayOfPrincipal, Socket paramSocket)
  {
    paramString = getServerAliasMap(paramString, paramArrayOfPrincipal);
    return this.aliasStrategy.chooseAlias(paramString, paramSocket);
  }
  
  public X509Certificate[] getCertificateChain(String paramString)
  {
    return this.keyManager.getCertificateChain(paramString);
  }
  
  public Map<String, PrivateKeyDetails> getClientAliasMap(String[] paramArrayOfString, Principal[] paramArrayOfPrincipal)
  {
    HashMap localHashMap = new HashMap();
    int k = paramArrayOfString.length;
    int i = 0;
    while (i < k)
    {
      String str1 = paramArrayOfString[i];
      String[] arrayOfString = this.keyManager.getClientAliases(str1, paramArrayOfPrincipal);
      if (arrayOfString != null)
      {
        int m = arrayOfString.length;
        int j = 0;
        while (j < m)
        {
          String str2 = arrayOfString[j];
          localHashMap.put(str2, new PrivateKeyDetails(str1, this.keyManager.getCertificateChain(str2)));
          j += 1;
        }
      }
      i += 1;
    }
    return localHashMap;
  }
  
  public String[] getClientAliases(String paramString, Principal[] paramArrayOfPrincipal)
  {
    return this.keyManager.getClientAliases(paramString, paramArrayOfPrincipal);
  }
  
  public PrivateKey getPrivateKey(String paramString)
  {
    return this.keyManager.getPrivateKey(paramString);
  }
  
  public Map<String, PrivateKeyDetails> getServerAliasMap(String paramString, Principal[] paramArrayOfPrincipal)
  {
    HashMap localHashMap = new HashMap();
    paramArrayOfPrincipal = this.keyManager.getServerAliases(paramString, paramArrayOfPrincipal);
    if (paramArrayOfPrincipal != null)
    {
      int j = paramArrayOfPrincipal.length;
      int i = 0;
      while (i < j)
      {
        Principal localPrincipal = paramArrayOfPrincipal[i];
        localHashMap.put(localPrincipal, new PrivateKeyDetails(paramString, this.keyManager.getCertificateChain(localPrincipal)));
        i += 1;
      }
    }
    return localHashMap;
  }
  
  public String[] getServerAliases(String paramString, Principal[] paramArrayOfPrincipal)
  {
    return this.keyManager.getServerAliases(paramString, paramArrayOfPrincipal);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\ssl\SSLContextBuilder$KeyManagerDelegate.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */