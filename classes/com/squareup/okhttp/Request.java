package com.squareup.okhttp;

import com.squareup.okhttp.internal.Platform;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.List;

public final class Request
{
  private final RequestBody body;
  private volatile CacheControl cacheControl;
  private final Headers headers;
  private final String method;
  private final Object tag;
  private volatile URI uri;
  private volatile URL url;
  private final String urlString;
  
  private Request(Request.Builder paramBuilder)
  {
    this.urlString = Request.Builder.access$000(paramBuilder);
    this.method = Request.Builder.access$100(paramBuilder);
    this.headers = Request.Builder.access$200(paramBuilder).build();
    this.body = Request.Builder.access$300(paramBuilder);
    if (Request.Builder.access$400(paramBuilder) != null) {}
    for (Object localObject = Request.Builder.access$400(paramBuilder);; localObject = this)
    {
      this.tag = localObject;
      this.url = Request.Builder.access$500(paramBuilder);
      return;
    }
  }
  
  public final RequestBody body()
  {
    return this.body;
  }
  
  public final CacheControl cacheControl()
  {
    CacheControl localCacheControl = this.cacheControl;
    if (localCacheControl != null) {
      return localCacheControl;
    }
    localCacheControl = CacheControl.parse(this.headers);
    this.cacheControl = localCacheControl;
    return localCacheControl;
  }
  
  public final String header(String paramString)
  {
    return this.headers.get(paramString);
  }
  
  public final Headers headers()
  {
    return this.headers;
  }
  
  public final List<String> headers(String paramString)
  {
    return this.headers.values(paramString);
  }
  
  public final boolean isHttps()
  {
    return url().getProtocol().equals("https");
  }
  
  public final String method()
  {
    return this.method;
  }
  
  public final Request.Builder newBuilder()
  {
    return new Request.Builder(this, null);
  }
  
  public final Object tag()
  {
    return this.tag;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Request{method=").append(this.method).append(", url=").append(this.urlString).append(", tag=");
    if (this.tag != this) {}
    for (Object localObject = this.tag;; localObject = null) {
      return localObject + '}';
    }
  }
  
  public final URI uri()
  {
    try
    {
      URI localURI = this.uri;
      if (localURI != null) {
        return localURI;
      }
      localURI = Platform.get().toUriLenient(url());
      this.uri = localURI;
      return localURI;
    }
    catch (URISyntaxException localURISyntaxException)
    {
      throw new IOException(localURISyntaxException.getMessage());
    }
  }
  
  public final URL url()
  {
    try
    {
      URL localURL = this.url;
      if (localURL != null) {
        return localURL;
      }
      localURL = new URL(this.urlString);
      this.url = localURL;
      return localURL;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      throw new RuntimeException("Malformed URL: " + this.urlString, localMalformedURLException);
    }
  }
  
  public final String urlString()
  {
    return this.urlString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\Request.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */