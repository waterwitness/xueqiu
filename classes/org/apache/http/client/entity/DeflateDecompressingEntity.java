package org.apache.http.client.entity;

import java.io.InputStream;
import org.apache.http.HttpEntity;

public class DeflateDecompressingEntity
  extends DecompressingEntity
{
  public DeflateDecompressingEntity(HttpEntity paramHttpEntity)
  {
    super(paramHttpEntity, new InputStreamFactory()
    {
      public InputStream create(InputStream paramAnonymousInputStream)
      {
        return new DeflateInputStream(paramAnonymousInputStream);
      }
    });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\entity\DeflateDecompressingEntity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */