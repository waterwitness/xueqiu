package com.squareup.okhttp;

import c.d;
import c.f;
import c.u;
import com.squareup.okhttp.internal.Util;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;

public abstract class ResponseBody
  implements Closeable
{
  private Reader reader;
  
  private Charset charset()
  {
    MediaType localMediaType = contentType();
    if (localMediaType != null) {
      return localMediaType.charset(Util.UTF_8);
    }
    return Util.UTF_8;
  }
  
  public static ResponseBody create(MediaType paramMediaType, final long paramLong, f paramf)
  {
    if (paramf == null) {
      throw new NullPointerException("source == null");
    }
    new ResponseBody()
    {
      public final long contentLength()
      {
        return paramLong;
      }
      
      public final MediaType contentType()
      {
        return ResponseBody.this;
      }
      
      public final f source()
      {
        return this.val$content;
      }
    };
  }
  
  public static ResponseBody create(MediaType paramMediaType, String paramString)
  {
    Object localObject = Util.UTF_8;
    MediaType localMediaType = paramMediaType;
    if (paramMediaType != null)
    {
      Charset localCharset = paramMediaType.charset();
      localObject = localCharset;
      localMediaType = paramMediaType;
      if (localCharset == null)
      {
        localObject = Util.UTF_8;
        localMediaType = MediaType.parse(paramMediaType + "; charset=utf-8");
      }
    }
    paramMediaType = new d();
    if (paramString == null) {
      throw new IllegalArgumentException("string == null");
    }
    if (localObject == null) {
      throw new IllegalArgumentException("charset == null");
    }
    if (((Charset)localObject).equals(u.a)) {}
    for (paramMediaType = paramMediaType.a(paramString);; paramMediaType = paramMediaType.b(paramString, 0, paramString.length))
    {
      return create(localMediaType, paramMediaType.b, paramMediaType);
      paramString = paramString.getBytes((Charset)localObject);
    }
  }
  
  public static ResponseBody create(MediaType paramMediaType, byte[] paramArrayOfByte)
  {
    d locald = new d().a(paramArrayOfByte);
    return create(paramMediaType, paramArrayOfByte.length, locald);
  }
  
  public final InputStream byteStream()
  {
    return source().e();
  }
  
  public final byte[] bytes()
  {
    long l = contentLength();
    if (l > 2147483647L) {
      throw new IOException("Cannot buffer entire body for content length: " + l);
    }
    f localf = source();
    try
    {
      byte[] arrayOfByte1 = localf.o();
      Util.closeQuietly(localf);
      if ((l != -1L) && (l != arrayOfByte1.length)) {
        throw new IOException("Content-Length and stream length disagree");
      }
    }
    finally
    {
      Util.closeQuietly(localf);
    }
    return arrayOfByte2;
  }
  
  public final Reader charStream()
  {
    Object localObject = this.reader;
    if (localObject != null) {
      return (Reader)localObject;
    }
    localObject = new InputStreamReader(byteStream(), charset());
    this.reader = ((Reader)localObject);
    return (Reader)localObject;
  }
  
  public void close()
  {
    source().close();
  }
  
  public abstract long contentLength();
  
  public abstract MediaType contentType();
  
  public abstract f source();
  
  public final String string()
  {
    return new String(bytes(), charset().name());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\ResponseBody.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */