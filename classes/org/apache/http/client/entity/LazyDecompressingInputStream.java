package org.apache.http.client.entity;

import java.io.InputStream;
import org.apache.http.annotation.NotThreadSafe;

@NotThreadSafe
class LazyDecompressingInputStream
  extends InputStream
{
  private final InputStreamFactory inputStreamFactory;
  private final InputStream wrappedStream;
  private InputStream wrapperStream;
  
  public LazyDecompressingInputStream(InputStream paramInputStream, InputStreamFactory paramInputStreamFactory)
  {
    this.wrappedStream = paramInputStream;
    this.inputStreamFactory = paramInputStreamFactory;
  }
  
  private void initWrapper()
  {
    if (this.wrapperStream == null) {
      this.wrapperStream = this.inputStreamFactory.create(this.wrappedStream);
    }
  }
  
  public int available()
  {
    initWrapper();
    return this.wrapperStream.available();
  }
  
  public void close()
  {
    try
    {
      if (this.wrapperStream != null) {
        this.wrapperStream.close();
      }
      return;
    }
    finally
    {
      this.wrappedStream.close();
    }
  }
  
  public boolean markSupported()
  {
    return false;
  }
  
  public int read()
  {
    initWrapper();
    return this.wrapperStream.read();
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    initWrapper();
    return this.wrapperStream.read(paramArrayOfByte);
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    initWrapper();
    return this.wrapperStream.read(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public long skip(long paramLong)
  {
    initWrapper();
    return this.wrapperStream.skip(paramLong);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\entity\LazyDecompressingInputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */