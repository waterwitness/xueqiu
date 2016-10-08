package com.squareup.okhttp;

import c.f;
import c.j;
import c.m;
import c.s;
import com.squareup.okhttp.internal.DiskLruCache.Snapshot;

class Cache$CacheResponseBody
  extends ResponseBody
{
  private final f bodySource;
  private final String contentLength;
  private final String contentType;
  private final DiskLruCache.Snapshot snapshot;
  
  public Cache$CacheResponseBody(final DiskLruCache.Snapshot paramSnapshot, String paramString1, String paramString2)
  {
    this.snapshot = paramSnapshot;
    this.contentType = paramString1;
    this.contentLength = paramString2;
    this.bodySource = m.a(new j(paramSnapshot.getSource(1))
    {
      public void close()
      {
        paramSnapshot.close();
        super.close();
      }
    });
  }
  
  public long contentLength()
  {
    long l = -1L;
    try
    {
      if (this.contentLength != null) {
        l = Long.parseLong(this.contentLength);
      }
      return l;
    }
    catch (NumberFormatException localNumberFormatException) {}
    return -1L;
  }
  
  public MediaType contentType()
  {
    if (this.contentType != null) {
      return MediaType.parse(this.contentType);
    }
    return null;
  }
  
  public f source()
  {
    return this.bodySource;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\Cache$CacheResponseBody.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */