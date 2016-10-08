package org.apache.http.conn.ssl;

import java.security.cert.X509Certificate;
import java.util.Arrays;
import org.apache.http.util.Args;

@Deprecated
public final class PrivateKeyDetails
{
  private final X509Certificate[] certChain;
  private final String type;
  
  public PrivateKeyDetails(String paramString, X509Certificate[] paramArrayOfX509Certificate)
  {
    this.type = ((String)Args.notNull(paramString, "Private key type"));
    this.certChain = paramArrayOfX509Certificate;
  }
  
  public final X509Certificate[] getCertChain()
  {
    return this.certChain;
  }
  
  public final String getType()
  {
    return this.type;
  }
  
  public final String toString()
  {
    return this.type + ':' + Arrays.toString(this.certChain);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\ssl\PrivateKeyDetails.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */