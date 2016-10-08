package org.apache.http.client.utils;

import java.net.URI;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.http.Consts;
import org.apache.http.NameValuePair;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.conn.util.InetAddressUtils;
import org.apache.http.message.BasicNameValuePair;

@NotThreadSafe
public class URIBuilder
{
  private Charset charset;
  private String encodedAuthority;
  private String encodedFragment;
  private String encodedPath;
  private String encodedQuery;
  private String encodedSchemeSpecificPart;
  private String encodedUserInfo;
  private String fragment;
  private String host;
  private String path;
  private int port;
  private String query;
  private List<NameValuePair> queryParams;
  private String scheme;
  private String userInfo;
  
  public URIBuilder()
  {
    this.port = -1;
  }
  
  public URIBuilder(String paramString)
  {
    digestURI(new URI(paramString));
  }
  
  public URIBuilder(URI paramURI)
  {
    digestURI(paramURI);
  }
  
  private String buildString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (this.scheme != null) {
      localStringBuilder.append(this.scheme).append(':');
    }
    if (this.encodedSchemeSpecificPart != null)
    {
      localStringBuilder.append(this.encodedSchemeSpecificPart);
      if (this.encodedFragment == null) {
        break label345;
      }
      localStringBuilder.append("#").append(this.encodedFragment);
    }
    for (;;)
    {
      return localStringBuilder.toString();
      if (this.encodedAuthority != null)
      {
        localStringBuilder.append("//").append(this.encodedAuthority);
        label92:
        if (this.encodedPath == null) {
          break label263;
        }
        localStringBuilder.append(normalizePath(this.encodedPath));
      }
      for (;;)
      {
        if (this.encodedQuery == null) {
          break label289;
        }
        localStringBuilder.append("?").append(this.encodedQuery);
        break;
        if (this.host == null) {
          break label92;
        }
        localStringBuilder.append("//");
        if (this.encodedUserInfo != null)
        {
          localStringBuilder.append(this.encodedUserInfo).append("@");
          label170:
          if (!InetAddressUtils.isIPv6Address(this.host)) {
            break label251;
          }
          localStringBuilder.append("[").append(this.host).append("]");
        }
        for (;;)
        {
          if (this.port < 0) {
            break label261;
          }
          localStringBuilder.append(":").append(this.port);
          break;
          if (this.userInfo == null) {
            break label170;
          }
          localStringBuilder.append(encodeUserInfo(this.userInfo)).append("@");
          break label170;
          label251:
          localStringBuilder.append(this.host);
        }
        label261:
        break label92;
        label263:
        if (this.path != null) {
          localStringBuilder.append(encodePath(normalizePath(this.path)));
        }
      }
      label289:
      if (this.queryParams != null)
      {
        localStringBuilder.append("?").append(encodeUrlForm(this.queryParams));
        break;
      }
      if (this.query == null) {
        break;
      }
      localStringBuilder.append("?").append(encodeUric(this.query));
      break;
      label345:
      if (this.fragment != null) {
        localStringBuilder.append("#").append(encodeUric(this.fragment));
      }
    }
  }
  
  private void digestURI(URI paramURI)
  {
    this.scheme = paramURI.getScheme();
    this.encodedSchemeSpecificPart = paramURI.getRawSchemeSpecificPart();
    this.encodedAuthority = paramURI.getRawAuthority();
    this.host = paramURI.getHost();
    this.port = paramURI.getPort();
    this.encodedUserInfo = paramURI.getRawUserInfo();
    this.userInfo = paramURI.getUserInfo();
    this.encodedPath = paramURI.getRawPath();
    this.path = paramURI.getPath();
    this.encodedQuery = paramURI.getRawQuery();
    String str = paramURI.getRawQuery();
    if (this.charset != null) {}
    for (Charset localCharset = this.charset;; localCharset = Consts.UTF_8)
    {
      this.queryParams = parseQuery(str, localCharset);
      this.encodedFragment = paramURI.getRawFragment();
      this.fragment = paramURI.getFragment();
      return;
    }
  }
  
  private String encodePath(String paramString)
  {
    if (this.charset != null) {}
    for (Charset localCharset = this.charset;; localCharset = Consts.UTF_8) {
      return URLEncodedUtils.encPath(paramString, localCharset);
    }
  }
  
  private String encodeUric(String paramString)
  {
    if (this.charset != null) {}
    for (Charset localCharset = this.charset;; localCharset = Consts.UTF_8) {
      return URLEncodedUtils.encUric(paramString, localCharset);
    }
  }
  
  private String encodeUrlForm(List<NameValuePair> paramList)
  {
    if (this.charset != null) {}
    for (Charset localCharset = this.charset;; localCharset = Consts.UTF_8) {
      return URLEncodedUtils.format(paramList, localCharset);
    }
  }
  
  private String encodeUserInfo(String paramString)
  {
    if (this.charset != null) {}
    for (Charset localCharset = this.charset;; localCharset = Consts.UTF_8) {
      return URLEncodedUtils.encUserInfo(paramString, localCharset);
    }
  }
  
  private static String normalizePath(String paramString)
  {
    String str;
    if (paramString == null) {
      str = null;
    }
    int i;
    do
    {
      return str;
      i = 0;
      while ((i < paramString.length()) && (paramString.charAt(i) == '/')) {
        i += 1;
      }
      str = paramString;
    } while (i <= 1);
    return paramString.substring(i - 1);
  }
  
  private List<NameValuePair> parseQuery(String paramString, Charset paramCharset)
  {
    if ((paramString != null) && (!paramString.isEmpty())) {
      return URLEncodedUtils.parse(paramString, paramCharset);
    }
    return null;
  }
  
  public URIBuilder addParameter(String paramString1, String paramString2)
  {
    if (this.queryParams == null) {
      this.queryParams = new ArrayList();
    }
    this.queryParams.add(new BasicNameValuePair(paramString1, paramString2));
    this.encodedQuery = null;
    this.encodedSchemeSpecificPart = null;
    this.query = null;
    return this;
  }
  
  public URIBuilder addParameters(List<NameValuePair> paramList)
  {
    if (this.queryParams == null) {
      this.queryParams = new ArrayList();
    }
    this.queryParams.addAll(paramList);
    this.encodedQuery = null;
    this.encodedSchemeSpecificPart = null;
    this.query = null;
    return this;
  }
  
  public URI build()
  {
    return new URI(buildString());
  }
  
  public URIBuilder clearParameters()
  {
    this.queryParams = null;
    this.encodedQuery = null;
    this.encodedSchemeSpecificPart = null;
    return this;
  }
  
  public Charset getCharset()
  {
    return this.charset;
  }
  
  public String getFragment()
  {
    return this.fragment;
  }
  
  public String getHost()
  {
    return this.host;
  }
  
  public String getPath()
  {
    return this.path;
  }
  
  public int getPort()
  {
    return this.port;
  }
  
  public List<NameValuePair> getQueryParams()
  {
    if (this.queryParams != null) {
      return new ArrayList(this.queryParams);
    }
    return new ArrayList();
  }
  
  public String getScheme()
  {
    return this.scheme;
  }
  
  public String getUserInfo()
  {
    return this.userInfo;
  }
  
  public boolean isAbsolute()
  {
    return this.scheme != null;
  }
  
  public boolean isOpaque()
  {
    return this.path == null;
  }
  
  public URIBuilder removeQuery()
  {
    this.queryParams = null;
    this.query = null;
    this.encodedQuery = null;
    this.encodedSchemeSpecificPart = null;
    return this;
  }
  
  public URIBuilder setCharset(Charset paramCharset)
  {
    this.charset = paramCharset;
    return this;
  }
  
  public URIBuilder setCustomQuery(String paramString)
  {
    this.query = paramString;
    this.encodedQuery = null;
    this.encodedSchemeSpecificPart = null;
    this.queryParams = null;
    return this;
  }
  
  public URIBuilder setFragment(String paramString)
  {
    this.fragment = paramString;
    this.encodedFragment = null;
    return this;
  }
  
  public URIBuilder setHost(String paramString)
  {
    this.host = paramString;
    this.encodedSchemeSpecificPart = null;
    this.encodedAuthority = null;
    return this;
  }
  
  public URIBuilder setParameter(String paramString1, String paramString2)
  {
    if (this.queryParams == null) {
      this.queryParams = new ArrayList();
    }
    if (!this.queryParams.isEmpty())
    {
      Iterator localIterator = this.queryParams.iterator();
      while (localIterator.hasNext()) {
        if (((NameValuePair)localIterator.next()).getName().equals(paramString1)) {
          localIterator.remove();
        }
      }
    }
    this.queryParams.add(new BasicNameValuePair(paramString1, paramString2));
    this.encodedQuery = null;
    this.encodedSchemeSpecificPart = null;
    this.query = null;
    return this;
  }
  
  public URIBuilder setParameters(List<NameValuePair> paramList)
  {
    if (this.queryParams == null) {
      this.queryParams = new ArrayList();
    }
    for (;;)
    {
      this.queryParams.addAll(paramList);
      this.encodedQuery = null;
      this.encodedSchemeSpecificPart = null;
      this.query = null;
      return this;
      this.queryParams.clear();
    }
  }
  
  public URIBuilder setParameters(NameValuePair... paramVarArgs)
  {
    if (this.queryParams == null) {
      this.queryParams = new ArrayList();
    }
    for (;;)
    {
      int j = paramVarArgs.length;
      int i = 0;
      while (i < j)
      {
        NameValuePair localNameValuePair = paramVarArgs[i];
        this.queryParams.add(localNameValuePair);
        i += 1;
      }
      this.queryParams.clear();
    }
    this.encodedQuery = null;
    this.encodedSchemeSpecificPart = null;
    this.query = null;
    return this;
  }
  
  public URIBuilder setPath(String paramString)
  {
    this.path = paramString;
    this.encodedSchemeSpecificPart = null;
    this.encodedPath = null;
    return this;
  }
  
  public URIBuilder setPort(int paramInt)
  {
    int i = paramInt;
    if (paramInt < 0) {
      i = -1;
    }
    this.port = i;
    this.encodedSchemeSpecificPart = null;
    this.encodedAuthority = null;
    return this;
  }
  
  @Deprecated
  public URIBuilder setQuery(String paramString)
  {
    if (this.charset != null) {}
    for (Charset localCharset = this.charset;; localCharset = Consts.UTF_8)
    {
      this.queryParams = parseQuery(paramString, localCharset);
      this.query = null;
      this.encodedQuery = null;
      this.encodedSchemeSpecificPart = null;
      return this;
    }
  }
  
  public URIBuilder setScheme(String paramString)
  {
    this.scheme = paramString;
    return this;
  }
  
  public URIBuilder setUserInfo(String paramString)
  {
    this.userInfo = paramString;
    this.encodedSchemeSpecificPart = null;
    this.encodedAuthority = null;
    this.encodedUserInfo = null;
    return this;
  }
  
  public URIBuilder setUserInfo(String paramString1, String paramString2)
  {
    return setUserInfo(paramString1 + ':' + paramString2);
  }
  
  public String toString()
  {
    return buildString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\utils\URIBuilder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */