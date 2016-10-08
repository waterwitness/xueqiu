package org.apache.http.client.entity;

import java.io.InputStream;

public abstract interface InputStreamFactory
{
  public abstract InputStream create(InputStream paramInputStream);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\entity\InputStreamFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */