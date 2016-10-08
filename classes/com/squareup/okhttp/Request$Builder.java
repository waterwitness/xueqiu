package com.squareup.okhttp;

import com.squareup.okhttp.internal.Util;
import com.squareup.okhttp.internal.http.HttpMethod;
import java.net.URL;

public class Request$Builder
{
  private RequestBody body;
  private Headers.Builder headers;
  private String method;
  private Object tag;
  private URL url;
  private String urlString;
  
  public Request$Builder()
  {
    this.method = "GET";
    this.headers = new Headers.Builder();
  }
  
  private Request$Builder(Request paramRequest)
  {
    this.urlString = Request.access$700(paramRequest);
    this.url = Request.access$800(paramRequest);
    this.method = Request.access$900(paramRequest);
    this.body = Request.access$1000(paramRequest);
    this.tag = Request.access$1100(paramRequest);
    this.headers = Request.access$1200(paramRequest).newBuilder();
  }
  
  public Builder addHeader(String paramString1, String paramString2)
  {
    this.headers.add(paramString1, paramString2);
    return this;
  }
  
  public Request build()
  {
    if (this.urlString == null) {
      throw new IllegalStateException("url == null");
    }
    return new Request(this, null);
  }
  
  public Builder cacheControl(CacheControl paramCacheControl)
  {
    paramCacheControl = paramCacheControl.toString();
    if (paramCacheControl.isEmpty()) {
      return removeHeader("Cache-Control");
    }
    return header("Cache-Control", paramCacheControl);
  }
  
  public Builder delete()
  {
    return method("DELETE", null);
  }
  
  public Builder delete(RequestBody paramRequestBody)
  {
    return method("DELETE", paramRequestBody);
  }
  
  public Builder get()
  {
    return method("GET", null);
  }
  
  public Builder head()
  {
    return method("HEAD", null);
  }
  
  public Builder header(String paramString1, String paramString2)
  {
    this.headers.set(paramString1, paramString2);
    return this;
  }
  
  public Builder headers(Headers paramHeaders)
  {
    this.headers = paramHeaders.newBuilder();
    return this;
  }
  
  public Builder method(String paramString, RequestBody paramRequestBody)
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      throw new IllegalArgumentException("method == null || method.length() == 0");
    }
    if ((paramRequestBody != null) && (!HttpMethod.permitsRequestBody(paramString))) {
      throw new IllegalArgumentException("method " + paramString + " must not have a request body.");
    }
    RequestBody localRequestBody = paramRequestBody;
    if (paramRequestBody == null)
    {
      localRequestBody = paramRequestBody;
      if (HttpMethod.permitsRequestBody(paramString)) {
        localRequestBody = RequestBody.create(null, Util.EMPTY_BYTE_ARRAY);
      }
    }
    this.method = paramString;
    this.body = localRequestBody;
    return this;
  }
  
  public Builder patch(RequestBody paramRequestBody)
  {
    return method("PATCH", paramRequestBody);
  }
  
  public Builder post(RequestBody paramRequestBody)
  {
    return method("POST", paramRequestBody);
  }
  
  public Builder put(RequestBody paramRequestBody)
  {
    return method("PUT", paramRequestBody);
  }
  
  public Builder removeHeader(String paramString)
  {
    this.headers.removeAll(paramString);
    return this;
  }
  
  public Builder tag(Object paramObject)
  {
    this.tag = paramObject;
    return this;
  }
  
  public Builder url(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("url == null");
    }
    this.urlString = paramString;
    this.url = null;
    return this;
  }
  
  public Builder url(URL paramURL)
  {
    if (paramURL == null) {
      throw new IllegalArgumentException("url == null");
    }
    this.url = paramURL;
    this.urlString = paramURL.toString();
    return this;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\Request$Builder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */