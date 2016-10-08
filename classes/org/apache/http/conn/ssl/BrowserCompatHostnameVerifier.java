package org.apache.http.conn.ssl;

import org.apache.http.annotation.Immutable;

@Deprecated
@Immutable
public class BrowserCompatHostnameVerifier
  extends AbstractVerifier
{
  public static final BrowserCompatHostnameVerifier INSTANCE = new BrowserCompatHostnameVerifier();
  
  public final String toString()
  {
    return "BROWSER_COMPATIBLE";
  }
  
  public final void verify(String paramString, String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    verify(paramString, paramArrayOfString1, paramArrayOfString2, false);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\ssl\BrowserCompatHostnameVerifier.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */