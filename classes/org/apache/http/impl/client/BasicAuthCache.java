package org.apache.http.impl.client;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HttpHost;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.auth.AuthScheme;
import org.apache.http.client.AuthCache;
import org.apache.http.conn.SchemePortResolver;
import org.apache.http.conn.UnsupportedSchemeException;
import org.apache.http.impl.conn.DefaultSchemePortResolver;
import org.apache.http.util.Args;

@ThreadSafe
public class BasicAuthCache
  implements AuthCache
{
  private final Log log = LogFactory.getLog(getClass());
  private final Map<HttpHost, byte[]> map = new ConcurrentHashMap();
  private final SchemePortResolver schemePortResolver;
  
  public BasicAuthCache()
  {
    this(null);
  }
  
  public BasicAuthCache(SchemePortResolver paramSchemePortResolver)
  {
    if (paramSchemePortResolver != null) {}
    for (;;)
    {
      this.schemePortResolver = paramSchemePortResolver;
      return;
      paramSchemePortResolver = DefaultSchemePortResolver.INSTANCE;
    }
  }
  
  public void clear()
  {
    this.map.clear();
  }
  
  public AuthScheme get(HttpHost paramHttpHost)
  {
    Args.notNull(paramHttpHost, "HTTP host");
    paramHttpHost = (byte[])this.map.get(getKey(paramHttpHost));
    if (paramHttpHost != null) {
      try
      {
        paramHttpHost = new ObjectInputStream(new ByteArrayInputStream(paramHttpHost));
        AuthScheme localAuthScheme = (AuthScheme)paramHttpHost.readObject();
        paramHttpHost.close();
        return localAuthScheme;
      }
      catch (IOException paramHttpHost)
      {
        if (this.log.isWarnEnabled()) {
          this.log.warn("Unexpected I/O error while de-serializing auth scheme", paramHttpHost);
        }
        return null;
      }
      catch (ClassNotFoundException paramHttpHost)
      {
        if (this.log.isWarnEnabled()) {
          this.log.warn("Unexpected error while de-serializing auth scheme", paramHttpHost);
        }
        return null;
      }
    }
    return null;
  }
  
  protected HttpHost getKey(HttpHost paramHttpHost)
  {
    HttpHost localHttpHost = paramHttpHost;
    if (paramHttpHost.getPort() <= 0) {}
    try
    {
      int i = this.schemePortResolver.resolve(paramHttpHost);
      localHttpHost = new HttpHost(paramHttpHost.getHostName(), i, paramHttpHost.getSchemeName());
      return localHttpHost;
    }
    catch (UnsupportedSchemeException localUnsupportedSchemeException) {}
    return paramHttpHost;
  }
  
  public void put(HttpHost paramHttpHost, AuthScheme paramAuthScheme)
  {
    Args.notNull(paramHttpHost, "HTTP host");
    if (paramAuthScheme == null) {}
    do
    {
      do
      {
        return;
        if (!(paramAuthScheme instanceof Serializable)) {
          break;
        }
        try
        {
          ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
          ObjectOutputStream localObjectOutputStream = new ObjectOutputStream(localByteArrayOutputStream);
          localObjectOutputStream.writeObject(paramAuthScheme);
          localObjectOutputStream.close();
          this.map.put(getKey(paramHttpHost), localByteArrayOutputStream.toByteArray());
          return;
        }
        catch (IOException paramHttpHost) {}
      } while (!this.log.isWarnEnabled());
      this.log.warn("Unexpected I/O error while serializing auth scheme", paramHttpHost);
      return;
    } while (!this.log.isDebugEnabled());
    this.log.debug("Auth scheme " + paramAuthScheme.getClass() + " is not serializable");
  }
  
  public void remove(HttpHost paramHttpHost)
  {
    Args.notNull(paramHttpHost, "HTTP host");
    this.map.remove(getKey(paramHttpHost));
  }
  
  public String toString()
  {
    return this.map.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\client\BasicAuthCache.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */