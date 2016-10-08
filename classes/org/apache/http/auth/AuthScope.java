package org.apache.http.auth;

import java.util.Locale;
import org.apache.http.HttpHost;
import org.apache.http.annotation.Immutable;
import org.apache.http.util.Args;
import org.apache.http.util.LangUtils;

@Immutable
public class AuthScope
{
  public static final AuthScope ANY = new AuthScope(ANY_HOST, -1, ANY_REALM, ANY_SCHEME);
  public static final String ANY_HOST = null;
  public static final int ANY_PORT = -1;
  public static final String ANY_REALM = null;
  public static final String ANY_SCHEME = null;
  private final String host;
  private final HttpHost origin;
  private final int port;
  private final String realm;
  private final String scheme;
  
  public AuthScope(String paramString, int paramInt)
  {
    this(paramString, paramInt, ANY_REALM, ANY_SCHEME);
  }
  
  public AuthScope(String paramString1, int paramInt, String paramString2)
  {
    this(paramString1, paramInt, paramString2, ANY_SCHEME);
  }
  
  public AuthScope(String paramString1, int paramInt, String paramString2, String paramString3)
  {
    if (paramString1 == null)
    {
      paramString1 = ANY_HOST;
      this.host = paramString1;
      int i = paramInt;
      if (paramInt < 0) {
        i = -1;
      }
      this.port = i;
      paramString1 = paramString2;
      if (paramString2 == null) {
        paramString1 = ANY_REALM;
      }
      this.realm = paramString1;
      if (paramString3 != null) {
        break label79;
      }
    }
    label79:
    for (paramString1 = ANY_SCHEME;; paramString1 = paramString3.toUpperCase(Locale.ROOT))
    {
      this.scheme = paramString1;
      this.origin = null;
      return;
      paramString1 = paramString1.toLowerCase(Locale.ROOT);
      break;
    }
  }
  
  public AuthScope(HttpHost paramHttpHost)
  {
    this(paramHttpHost, ANY_REALM, ANY_SCHEME);
  }
  
  public AuthScope(HttpHost paramHttpHost, String paramString1, String paramString2)
  {
    Args.notNull(paramHttpHost, "Host");
    this.host = paramHttpHost.getHostName().toLowerCase(Locale.ROOT);
    int i;
    if (paramHttpHost.getPort() < 0)
    {
      i = -1;
      this.port = i;
      String str = paramString1;
      if (paramString1 == null) {
        str = ANY_REALM;
      }
      this.realm = str;
      if (paramString2 != null) {
        break label87;
      }
    }
    label87:
    for (paramString1 = ANY_SCHEME;; paramString1 = paramString2.toUpperCase(Locale.ROOT))
    {
      this.scheme = paramString1;
      this.origin = paramHttpHost;
      return;
      i = paramHttpHost.getPort();
      break;
    }
  }
  
  public AuthScope(AuthScope paramAuthScope)
  {
    Args.notNull(paramAuthScope, "Scope");
    this.host = paramAuthScope.getHost();
    this.port = paramAuthScope.getPort();
    this.realm = paramAuthScope.getRealm();
    this.scheme = paramAuthScope.getScheme();
    this.origin = paramAuthScope.getOrigin();
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    do
    {
      return false;
      if (paramObject == this) {
        return true;
      }
      if (!(paramObject instanceof AuthScope)) {
        return super.equals(paramObject);
      }
      paramObject = (AuthScope)paramObject;
    } while ((!LangUtils.equals(this.host, ((AuthScope)paramObject).host)) || (this.port != ((AuthScope)paramObject).port) || (!LangUtils.equals(this.realm, ((AuthScope)paramObject).realm)) || (!LangUtils.equals(this.scheme, ((AuthScope)paramObject).scheme)));
    return true;
  }
  
  public String getHost()
  {
    return this.host;
  }
  
  public HttpHost getOrigin()
  {
    return this.origin;
  }
  
  public int getPort()
  {
    return this.port;
  }
  
  public String getRealm()
  {
    return this.realm;
  }
  
  public String getScheme()
  {
    return this.scheme;
  }
  
  public int hashCode()
  {
    return LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(17, this.host), this.port), this.realm), this.scheme);
  }
  
  public int match(AuthScope paramAuthScope)
  {
    int j = 0;
    int i;
    if (LangUtils.equals(this.scheme, paramAuthScope.scheme))
    {
      i = 1;
      if (!LangUtils.equals(this.realm, paramAuthScope.realm)) {
        break label98;
      }
      j = i + 2;
      label36:
      if (this.port != paramAuthScope.port) {
        break label124;
      }
      i = j + 4;
      label51:
      if (!LangUtils.equals(this.host, paramAuthScope.host)) {
        break label146;
      }
      j = i + 8;
    }
    label98:
    label124:
    label146:
    do
    {
      do
      {
        return j;
        i = j;
        if (this.scheme == ANY_SCHEME) {
          break;
        }
        i = j;
        if (paramAuthScope.scheme == ANY_SCHEME) {
          break;
        }
        return -1;
        j = i;
        if (this.realm == ANY_REALM) {
          break label36;
        }
        j = i;
        if (paramAuthScope.realm == ANY_REALM) {
          break label36;
        }
        return -1;
        i = j;
        if (this.port == -1) {
          break label51;
        }
        i = j;
        if (paramAuthScope.port == -1) {
          break label51;
        }
        return -1;
        j = i;
      } while (this.host == ANY_HOST);
      j = i;
    } while (paramAuthScope.host == ANY_HOST);
    return -1;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (this.scheme != null)
    {
      localStringBuilder.append(this.scheme.toUpperCase(Locale.ROOT));
      localStringBuilder.append(' ');
    }
    if (this.realm != null)
    {
      localStringBuilder.append('\'');
      localStringBuilder.append(this.realm);
      localStringBuilder.append('\'');
    }
    for (;;)
    {
      if (this.host != null)
      {
        localStringBuilder.append('@');
        localStringBuilder.append(this.host);
        if (this.port >= 0)
        {
          localStringBuilder.append(':');
          localStringBuilder.append(this.port);
        }
      }
      return localStringBuilder.toString();
      localStringBuilder.append("<any realm>");
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\auth\AuthScope.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */