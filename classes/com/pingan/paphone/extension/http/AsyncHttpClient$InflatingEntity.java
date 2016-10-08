package com.pingan.paphone.extension.http;

import java.io.InputStream;
import java.util.zip.GZIPInputStream;
import org.apache.http.HttpEntity;
import org.apache.http.entity.HttpEntityWrapper;

class AsyncHttpClient$InflatingEntity
  extends HttpEntityWrapper
{
  public AsyncHttpClient$InflatingEntity(HttpEntity paramHttpEntity)
  {
    super(paramHttpEntity);
  }
  
  public InputStream getContent()
  {
    return new GZIPInputStream(this.wrappedEntity.getContent());
  }
  
  public long getContentLength()
  {
    return -1L;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\paphone\extension\http\AsyncHttpClient$InflatingEntity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */