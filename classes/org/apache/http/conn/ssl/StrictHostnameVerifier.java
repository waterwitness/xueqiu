package org.apache.http.conn.ssl;

import org.apache.http.annotation.Immutable;

@Deprecated
@Immutable
public class StrictHostnameVerifier
  extends AbstractVerifier
{
  public static final StrictHostnameVerifier INSTANCE = new StrictHostnameVerifier();
  
  public final String toString()
  {
    return "STRICT";
  }
  
  public final void verify(String paramString, String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    verify(paramString, paramArrayOfString1, paramArrayOfString2, true);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\ssl\StrictHostnameVerifier.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */