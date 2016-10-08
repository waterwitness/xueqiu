package org.apache.http;

import java.io.Serializable;
import java.net.InetAddress;
import java.util.Locale;
import org.apache.http.annotation.Immutable;
import org.apache.http.util.Args;
import org.apache.http.util.LangUtils;

@Immutable
public final class HttpHost
  implements Serializable, Cloneable
{
  public static final String DEFAULT_SCHEME_NAME = "http";
  private static final long serialVersionUID = -7529410654042457626L;
  protected final InetAddress address;
  protected final String hostname;
  protected final String lcHostname;
  protected final int port;
  protected final String schemeName;
  
  public HttpHost(String paramString)
  {
    this(paramString, -1, null);
  }
  
  public HttpHost(String paramString, int paramInt)
  {
    this(paramString, paramInt, null);
  }
  
  public HttpHost(String paramString1, int paramInt, String paramString2)
  {
    this.hostname = ((String)Args.containsNoBlanks(paramString1, "Host name"));
    this.lcHostname = paramString1.toLowerCase(Locale.ROOT);
    if (paramString2 != null) {}
    for (this.schemeName = paramString2.toLowerCase(Locale.ROOT);; this.schemeName = "http")
    {
      this.port = paramInt;
      this.address = null;
      return;
    }
  }
  
  public HttpHost(InetAddress paramInetAddress)
  {
    this(paramInetAddress, -1, null);
  }
  
  public HttpHost(InetAddress paramInetAddress, int paramInt)
  {
    this(paramInetAddress, paramInt, null);
  }
  
  public HttpHost(InetAddress paramInetAddress, int paramInt, String paramString)
  {
    this((InetAddress)Args.notNull(paramInetAddress, "Inet address"), paramInetAddress.getHostName(), paramInt, paramString);
  }
  
  public HttpHost(InetAddress paramInetAddress, String paramString1, int paramInt, String paramString2)
  {
    this.address = ((InetAddress)Args.notNull(paramInetAddress, "Inet address"));
    this.hostname = ((String)Args.notNull(paramString1, "Hostname"));
    this.lcHostname = this.hostname.toLowerCase(Locale.ROOT);
    if (paramString2 != null) {}
    for (this.schemeName = paramString2.toLowerCase(Locale.ROOT);; this.schemeName = "http")
    {
      this.port = paramInt;
      return;
    }
  }
  
  public HttpHost(HttpHost paramHttpHost)
  {
    Args.notNull(paramHttpHost, "HTTP host");
    this.hostname = paramHttpHost.hostname;
    this.lcHostname = paramHttpHost.lcHostname;
    this.schemeName = paramHttpHost.schemeName;
    this.port = paramHttpHost.port;
    this.address = paramHttpHost.address;
  }
  
  public static HttpHost create(String paramString)
  {
    Args.containsNoBlanks(paramString, "HTTP Host");
    String str2 = null;
    int i = paramString.indexOf("://");
    String str1 = paramString;
    if (i > 0)
    {
      str2 = paramString.substring(0, i);
      str1 = paramString.substring(i + 3);
    }
    i = -1;
    int j = str1.lastIndexOf(":");
    paramString = str1;
    if (j > 0) {}
    try
    {
      i = Integer.parseInt(str1.substring(j + 1));
      paramString = str1.substring(0, j);
      return new HttpHost(paramString, i, str2);
    }
    catch (NumberFormatException paramString)
    {
      throw new IllegalArgumentException("Invalid HTTP host: " + str1);
    }
  }
  
  public final Object clone()
  {
    return super.clone();
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof HttpHost)) {
        break label90;
      }
      paramObject = (HttpHost)paramObject;
      if ((!this.lcHostname.equals(((HttpHost)paramObject).lcHostname)) || (this.port != ((HttpHost)paramObject).port) || (!this.schemeName.equals(((HttpHost)paramObject).schemeName))) {
        break;
      }
      if (this.address != null) {
        break label74;
      }
    } while (((HttpHost)paramObject).address == null);
    label74:
    while (!this.address.equals(((HttpHost)paramObject).address)) {
      return false;
    }
    return true;
    label90:
    return false;
  }
  
  public final InetAddress getAddress()
  {
    return this.address;
  }
  
  public final String getHostName()
  {
    return this.hostname;
  }
  
  public final int getPort()
  {
    return this.port;
  }
  
  public final String getSchemeName()
  {
    return this.schemeName;
  }
  
  public final int hashCode()
  {
    int j = LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(17, this.lcHostname), this.port), this.schemeName);
    int i = j;
    if (this.address != null) {
      i = LangUtils.hashCode(j, this.address);
    }
    return i;
  }
  
  public final String toHostString()
  {
    if (this.port != -1)
    {
      StringBuilder localStringBuilder = new StringBuilder(this.hostname.length() + 6);
      localStringBuilder.append(this.hostname);
      localStringBuilder.append(":");
      localStringBuilder.append(Integer.toString(this.port));
      return localStringBuilder.toString();
    }
    return this.hostname;
  }
  
  public final String toString()
  {
    return toURI();
  }
  
  public final String toURI()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.schemeName);
    localStringBuilder.append("://");
    localStringBuilder.append(this.hostname);
    if (this.port != -1)
    {
      localStringBuilder.append(':');
      localStringBuilder.append(Integer.toString(this.port));
    }
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\HttpHost.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */