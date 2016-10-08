package com.squareup.okhttp.internal.http;

import c.f;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.MediaType;
import com.squareup.okhttp.ResponseBody;

public final class RealResponseBody
  extends ResponseBody
{
  private final Headers headers;
  private final f source;
  
  public RealResponseBody(Headers paramHeaders, f paramf)
  {
    this.headers = paramHeaders;
    this.source = paramf;
  }
  
  public final long contentLength()
  {
    return OkHeaders.contentLength(this.headers);
  }
  
  public final MediaType contentType()
  {
    String str = this.headers.get("Content-Type");
    if (str != null) {
      return MediaType.parse(str);
    }
    return null;
  }
  
  public final f source()
  {
    return this.source;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\http\RealResponseBody.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */