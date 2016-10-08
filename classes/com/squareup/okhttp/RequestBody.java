package com.squareup.okhttp;

import c.e;
import c.m;
import c.s;
import com.squareup.okhttp.internal.Util;
import java.io.Closeable;
import java.io.File;
import java.nio.charset.Charset;

public abstract class RequestBody
{
  public static RequestBody create(MediaType paramMediaType, final File paramFile)
  {
    if (paramFile == null) {
      throw new NullPointerException("content == null");
    }
    new RequestBody()
    {
      public final long contentLength()
      {
        return paramFile.length();
      }
      
      public final MediaType contentType()
      {
        return RequestBody.this;
      }
      
      public final void writeTo(e paramAnonymouse)
      {
        Object localObject = null;
        try
        {
          s locals = m.a(paramFile);
          localObject = locals;
          paramAnonymouse.a(locals);
          Util.closeQuietly(locals);
          return;
        }
        finally
        {
          Util.closeQuietly((Closeable)localObject);
        }
      }
    };
  }
  
  public static RequestBody create(MediaType paramMediaType, String paramString)
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
    return create(localMediaType, paramString.getBytes((Charset)localObject));
  }
  
  public static RequestBody create(MediaType paramMediaType, byte[] paramArrayOfByte)
  {
    return create(paramMediaType, paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public static RequestBody create(MediaType paramMediaType, final byte[] paramArrayOfByte, final int paramInt1, final int paramInt2)
  {
    if (paramArrayOfByte == null) {
      throw new NullPointerException("content == null");
    }
    Util.checkOffsetAndCount(paramArrayOfByte.length, paramInt1, paramInt2);
    new RequestBody()
    {
      public final long contentLength()
      {
        return paramInt2;
      }
      
      public final MediaType contentType()
      {
        return RequestBody.this;
      }
      
      public final void writeTo(e paramAnonymouse)
      {
        paramAnonymouse.c(paramArrayOfByte, paramInt1, paramInt2);
      }
    };
  }
  
  public long contentLength()
  {
    return -1L;
  }
  
  public abstract MediaType contentType();
  
  public abstract void writeTo(e parame);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\RequestBody.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */