package org.apache.http.util;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.entity.ContentType;
import org.apache.http.protocol.HTTP;

public final class EntityUtils
{
  public static void consume(HttpEntity paramHttpEntity)
  {
    if (paramHttpEntity == null) {}
    do
    {
      do
      {
        return;
      } while (!paramHttpEntity.isStreaming());
      paramHttpEntity = paramHttpEntity.getContent();
    } while (paramHttpEntity == null);
    paramHttpEntity.close();
  }
  
  public static void consumeQuietly(HttpEntity paramHttpEntity)
  {
    try
    {
      consume(paramHttpEntity);
      return;
    }
    catch (IOException paramHttpEntity) {}
  }
  
  @Deprecated
  public static String getContentCharSet(HttpEntity paramHttpEntity)
  {
    Args.notNull(paramHttpEntity, "Entity");
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (paramHttpEntity.getContentType() != null)
    {
      paramHttpEntity = paramHttpEntity.getContentType().getElements();
      localObject1 = localObject2;
      if (paramHttpEntity.length > 0)
      {
        paramHttpEntity = paramHttpEntity[0].getParameterByName("charset");
        localObject1 = localObject2;
        if (paramHttpEntity != null) {
          localObject1 = paramHttpEntity.getValue();
        }
      }
    }
    return (String)localObject1;
  }
  
  @Deprecated
  public static String getContentMimeType(HttpEntity paramHttpEntity)
  {
    Args.notNull(paramHttpEntity, "Entity");
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (paramHttpEntity.getContentType() != null)
    {
      paramHttpEntity = paramHttpEntity.getContentType().getElements();
      localObject1 = localObject2;
      if (paramHttpEntity.length > 0) {
        localObject1 = paramHttpEntity[0].getName();
      }
    }
    return (String)localObject1;
  }
  
  public static byte[] toByteArray(HttpEntity paramHttpEntity)
  {
    int i = 4096;
    boolean bool = false;
    Args.notNull(paramHttpEntity, "Entity");
    InputStream localInputStream = paramHttpEntity.getContent();
    if (localInputStream == null) {
      return null;
    }
    for (;;)
    {
      int j;
      try
      {
        if (paramHttpEntity.getContentLength() <= 2147483647L) {
          bool = true;
        }
        Args.check(bool, "HTTP entity too large to be buffered in memory");
        j = (int)paramHttpEntity.getContentLength();
        if (j >= 0) {
          break label118;
        }
        paramHttpEntity = new ByteArrayBuffer(i);
        byte[] arrayOfByte = new byte['က'];
        i = localInputStream.read(arrayOfByte);
        if (i != -1)
        {
          paramHttpEntity.append(arrayOfByte, 0, i);
          continue;
        }
        paramHttpEntity = paramHttpEntity.toByteArray();
      }
      finally
      {
        localInputStream.close();
      }
      localInputStream.close();
      return paramHttpEntity;
      label118:
      i = j;
    }
  }
  
  public static String toString(HttpEntity paramHttpEntity)
  {
    return toString(paramHttpEntity, null);
  }
  
  public static String toString(HttpEntity paramHttpEntity, String paramString)
  {
    if (paramString != null) {}
    for (paramString = Charset.forName(paramString);; paramString = null) {
      return toString(paramHttpEntity, paramString);
    }
  }
  
  public static String toString(HttpEntity paramHttpEntity, Charset paramCharset)
  {
    Object localObject = null;
    boolean bool = false;
    Args.notNull(paramHttpEntity, "Entity");
    InputStream localInputStream = paramHttpEntity.getContent();
    if (localInputStream == null) {
      return null;
    }
    for (;;)
    {
      try
      {
        if (paramHttpEntity.getContentLength() <= 2147483647L) {
          bool = true;
        }
        Args.check(bool, "HTTP entity too large to be buffered in memory");
        long l = paramHttpEntity.getContentLength();
        int j = (int)l;
        i = j;
        if (j < 0) {
          i = 4096;
        }
      }
      finally
      {
        int i;
        ContentType localContentType;
        localInputStream.close();
      }
      try
      {
        localContentType = ContentType.get(paramHttpEntity);
        paramHttpEntity = (HttpEntity)localObject;
        if (localContentType != null) {
          paramHttpEntity = localContentType.getCharset();
        }
      }
      catch (UnsupportedCharsetException localUnsupportedCharsetException)
      {
        paramHttpEntity = (HttpEntity)localObject;
        if (paramCharset != null) {
          continue;
        }
        throw new UnsupportedEncodingException(localUnsupportedCharsetException.getMessage());
      }
    }
    localObject = paramHttpEntity;
    if (paramHttpEntity == null) {
      localObject = paramCharset;
    }
    paramHttpEntity = (HttpEntity)localObject;
    if (localObject == null) {
      paramHttpEntity = HTTP.DEF_CONTENT_CHARSET;
    }
    paramHttpEntity = new InputStreamReader(localInputStream, paramHttpEntity);
    paramCharset = new CharArrayBuffer(i);
    localObject = new char['Ѐ'];
    for (;;)
    {
      i = paramHttpEntity.read((char[])localObject);
      if (i == -1) {
        break;
      }
      paramCharset.append((char[])localObject, 0, i);
    }
    paramHttpEntity = paramCharset.toString();
    localInputStream.close();
    return paramHttpEntity;
  }
  
  public static void updateEntity(HttpResponse paramHttpResponse, HttpEntity paramHttpEntity)
  {
    Args.notNull(paramHttpResponse, "Response");
    consume(paramHttpResponse.getEntity());
    paramHttpResponse.setEntity(paramHttpEntity);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\util\EntityUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */