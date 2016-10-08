package org.apache.http.cookie;

import java.util.Locale;
import org.apache.http.annotation.Immutable;
import org.apache.http.util.Args;
import org.apache.http.util.TextUtils;

@Immutable
public final class CookieOrigin
{
  private final String host;
  private final String path;
  private final int port;
  private final boolean secure;
  
  public CookieOrigin(String paramString1, int paramInt, String paramString2, boolean paramBoolean)
  {
    Args.notBlank(paramString1, "Host");
    Args.notNegative(paramInt, "Port");
    Args.notNull(paramString2, "Path");
    this.host = paramString1.toLowerCase(Locale.ROOT);
    this.port = paramInt;
    if (!TextUtils.isBlank(paramString2)) {}
    for (this.path = paramString2;; this.path = "/")
    {
      this.secure = paramBoolean;
      return;
    }
  }
  
  public final String getHost()
  {
    return this.host;
  }
  
  public final String getPath()
  {
    return this.path;
  }
  
  public final int getPort()
  {
    return this.port;
  }
  
  public final boolean isSecure()
  {
    return this.secure;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append('[');
    if (this.secure) {
      localStringBuilder.append("(secure)");
    }
    localStringBuilder.append(this.host);
    localStringBuilder.append(':');
    localStringBuilder.append(Integer.toString(this.port));
    localStringBuilder.append(this.path);
    localStringBuilder.append(']');
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\cookie\CookieOrigin.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */