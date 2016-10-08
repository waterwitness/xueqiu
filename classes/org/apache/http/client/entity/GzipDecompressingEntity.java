package org.apache.http.client.entity;

import java.io.InputStream;
import java.util.zip.GZIPInputStream;
import org.apache.http.HttpEntity;

public class GzipDecompressingEntity
  extends DecompressingEntity
{
  public GzipDecompressingEntity(HttpEntity paramHttpEntity)
  {
    super(paramHttpEntity, new InputStreamFactory()
    {
      public InputStream create(InputStream paramAnonymousInputStream)
      {
        return new GZIPInputStream(paramAnonymousInputStream);
      }
    });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\entity\GzipDecompressingEntity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */