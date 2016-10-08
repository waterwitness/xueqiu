package org.apache.http.client;

import org.apache.http.HttpHost;
import org.apache.http.auth.AuthScheme;

public abstract interface AuthCache
{
  public abstract void clear();
  
  public abstract AuthScheme get(HttpHost paramHttpHost);
  
  public abstract void put(HttpHost paramHttpHost, AuthScheme paramAuthScheme);
  
  public abstract void remove(HttpHost paramHttpHost);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\AuthCache.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */