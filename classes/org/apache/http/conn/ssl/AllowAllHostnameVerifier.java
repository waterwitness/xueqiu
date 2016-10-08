package org.apache.http.conn.ssl;

import org.apache.http.annotation.Immutable;

@Deprecated
@Immutable
public class AllowAllHostnameVerifier
  extends AbstractVerifier
{
  public static final AllowAllHostnameVerifier INSTANCE = new AllowAllHostnameVerifier();
  
  public final String toString()
  {
    return "ALLOW_ALL";
  }
  
  public final void verify(String paramString, String[] paramArrayOfString1, String[] paramArrayOfString2) {}
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\ssl\AllowAllHostnameVerifier.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */