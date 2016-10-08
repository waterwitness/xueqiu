package org.apache.http.client.entity;

import java.io.InputStream;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;

class DeflateInputStream$DeflateStream
  extends InflaterInputStream
{
  private boolean closed = false;
  
  public DeflateInputStream$DeflateStream(InputStream paramInputStream, Inflater paramInflater)
  {
    super(paramInputStream, paramInflater);
  }
  
  public void close()
  {
    if (this.closed) {
      return;
    }
    this.closed = true;
    this.inf.end();
    super.close();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\entity\DeflateInputStream$DeflateStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */