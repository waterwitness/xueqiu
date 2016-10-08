package com.e.a.a;

import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.message.BasicHeader;

public final class l
  implements HttpEntity
{
  private final a a;
  private final Header b;
  private final long c;
  
  l(a parama, String paramString, long paramLong)
  {
    this.a = parama;
    this.b = new BasicHeader("Content-Type", paramString);
    this.c = paramLong;
  }
  
  public final void consumeContent()
  {
    if (isStreaming()) {
      throw new UnsupportedOperationException("Streaming entity does not implement #consumeContent()");
    }
  }
  
  public final InputStream getContent()
  {
    throw new UnsupportedOperationException("Multipart form entity does not implement #getContent()");
  }
  
  public final Header getContentEncoding()
  {
    return null;
  }
  
  public final long getContentLength()
  {
    return this.c;
  }
  
  public final Header getContentType()
  {
    return this.b;
  }
  
  public final boolean isChunked()
  {
    return !isRepeatable();
  }
  
  public final boolean isRepeatable()
  {
    return this.c != -1L;
  }
  
  public final boolean isStreaming()
  {
    return !isRepeatable();
  }
  
  public final void writeTo(OutputStream paramOutputStream)
  {
    this.a.a(paramOutputStream);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\e\a\a\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */