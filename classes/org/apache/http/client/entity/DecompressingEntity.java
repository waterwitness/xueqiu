package org.apache.http.client.entity;

import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.entity.HttpEntityWrapper;
import org.apache.http.util.Args;

public class DecompressingEntity
  extends HttpEntityWrapper
{
  private static final int BUFFER_SIZE = 2048;
  private InputStream content;
  private final InputStreamFactory inputStreamFactory;
  
  public DecompressingEntity(HttpEntity paramHttpEntity, InputStreamFactory paramInputStreamFactory)
  {
    super(paramHttpEntity);
    this.inputStreamFactory = paramInputStreamFactory;
  }
  
  private InputStream getDecompressingStream()
  {
    return new LazyDecompressingInputStream(this.wrappedEntity.getContent(), this.inputStreamFactory);
  }
  
  public InputStream getContent()
  {
    if (this.wrappedEntity.isStreaming())
    {
      if (this.content == null) {
        this.content = getDecompressingStream();
      }
      return this.content;
    }
    return getDecompressingStream();
  }
  
  public Header getContentEncoding()
  {
    return null;
  }
  
  public long getContentLength()
  {
    return -1L;
  }
  
  public void writeTo(OutputStream paramOutputStream)
  {
    Args.notNull(paramOutputStream, "Output stream");
    InputStream localInputStream = getContent();
    try
    {
      byte[] arrayOfByte = new byte['ࠀ'];
      for (;;)
      {
        int i = localInputStream.read(arrayOfByte);
        if (i == -1) {
          break;
        }
        paramOutputStream.write(arrayOfByte, 0, i);
      }
    }
    finally
    {
      localInputStream.close();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\entity\DecompressingEntity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */