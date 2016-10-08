package org.apache.http.client.entity;

import java.io.File;
import java.io.InputStream;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.List;
import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.entity.AbstractHttpEntity;
import org.apache.http.entity.BasicHttpEntity;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.entity.ContentType;
import org.apache.http.entity.FileEntity;
import org.apache.http.entity.InputStreamEntity;
import org.apache.http.entity.SerializableEntity;
import org.apache.http.entity.StringEntity;

@NotThreadSafe
public class EntityBuilder
{
  private byte[] binary;
  private boolean chunked;
  private String contentEncoding;
  private ContentType contentType;
  private File file;
  private boolean gzipCompress;
  private List<NameValuePair> parameters;
  private Serializable serializable;
  private InputStream stream;
  private String text;
  
  private void clearContent()
  {
    this.text = null;
    this.binary = null;
    this.stream = null;
    this.parameters = null;
    this.serializable = null;
    this.file = null;
  }
  
  public static EntityBuilder create()
  {
    return new EntityBuilder();
  }
  
  private ContentType getContentOrDefault(ContentType paramContentType)
  {
    if (this.contentType != null) {
      paramContentType = this.contentType;
    }
    return paramContentType;
  }
  
  public HttpEntity build()
  {
    Object localObject1;
    if (this.text != null) {
      localObject1 = new StringEntity(this.text, getContentOrDefault(ContentType.DEFAULT_TEXT));
    }
    for (;;)
    {
      if ((((AbstractHttpEntity)localObject1).getContentType() != null) && (this.contentType != null)) {
        ((AbstractHttpEntity)localObject1).setContentType(this.contentType.toString());
      }
      ((AbstractHttpEntity)localObject1).setContentEncoding(this.contentEncoding);
      ((AbstractHttpEntity)localObject1).setChunked(this.chunked);
      Object localObject2 = localObject1;
      if (this.gzipCompress) {
        localObject2 = new GzipCompressingEntity((HttpEntity)localObject1);
      }
      return (HttpEntity)localObject2;
      if (this.binary != null)
      {
        localObject1 = new ByteArrayEntity(this.binary, getContentOrDefault(ContentType.DEFAULT_BINARY));
      }
      else if (this.stream != null)
      {
        localObject1 = new InputStreamEntity(this.stream, -1L, getContentOrDefault(ContentType.DEFAULT_BINARY));
      }
      else
      {
        if (this.parameters != null)
        {
          localObject2 = this.parameters;
          if (this.contentType != null) {}
          for (localObject1 = this.contentType.getCharset();; localObject1 = null)
          {
            localObject1 = new UrlEncodedFormEntity((Iterable)localObject2, (Charset)localObject1);
            break;
          }
        }
        if (this.serializable != null)
        {
          localObject1 = new SerializableEntity(this.serializable);
          ((AbstractHttpEntity)localObject1).setContentType(ContentType.DEFAULT_BINARY.toString());
        }
        else if (this.file != null)
        {
          localObject1 = new FileEntity(this.file, getContentOrDefault(ContentType.DEFAULT_BINARY));
        }
        else
        {
          localObject1 = new BasicHttpEntity();
        }
      }
    }
  }
  
  public EntityBuilder chunked()
  {
    this.chunked = true;
    return this;
  }
  
  public byte[] getBinary()
  {
    return this.binary;
  }
  
  public String getContentEncoding()
  {
    return this.contentEncoding;
  }
  
  public ContentType getContentType()
  {
    return this.contentType;
  }
  
  public File getFile()
  {
    return this.file;
  }
  
  public List<NameValuePair> getParameters()
  {
    return this.parameters;
  }
  
  public Serializable getSerializable()
  {
    return this.serializable;
  }
  
  public InputStream getStream()
  {
    return this.stream;
  }
  
  public String getText()
  {
    return this.text;
  }
  
  public EntityBuilder gzipCompress()
  {
    this.gzipCompress = true;
    return this;
  }
  
  public boolean isChunked()
  {
    return this.chunked;
  }
  
  public boolean isGzipCompress()
  {
    return this.gzipCompress;
  }
  
  public EntityBuilder setBinary(byte[] paramArrayOfByte)
  {
    clearContent();
    this.binary = paramArrayOfByte;
    return this;
  }
  
  public EntityBuilder setContentEncoding(String paramString)
  {
    this.contentEncoding = paramString;
    return this;
  }
  
  public EntityBuilder setContentType(ContentType paramContentType)
  {
    this.contentType = paramContentType;
    return this;
  }
  
  public EntityBuilder setFile(File paramFile)
  {
    clearContent();
    this.file = paramFile;
    return this;
  }
  
  public EntityBuilder setParameters(List<NameValuePair> paramList)
  {
    clearContent();
    this.parameters = paramList;
    return this;
  }
  
  public EntityBuilder setParameters(NameValuePair... paramVarArgs)
  {
    return setParameters(Arrays.asList(paramVarArgs));
  }
  
  public EntityBuilder setSerializable(Serializable paramSerializable)
  {
    clearContent();
    this.serializable = paramSerializable;
    return this;
  }
  
  public EntityBuilder setStream(InputStream paramInputStream)
  {
    clearContent();
    this.stream = paramInputStream;
    return this;
  }
  
  public EntityBuilder setText(String paramString)
  {
    clearContent();
    this.text = paramString;
    return this;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\entity\EntityBuilder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */