package org.apache.http.impl.conn;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.http.annotation.NotThreadSafe;

@NotThreadSafe
class LoggingOutputStream
  extends OutputStream
{
  private final OutputStream out;
  private final Wire wire;
  
  public LoggingOutputStream(OutputStream paramOutputStream, Wire paramWire)
  {
    this.out = paramOutputStream;
    this.wire = paramWire;
  }
  
  public void close()
  {
    try
    {
      this.out.close();
      return;
    }
    catch (IOException localIOException)
    {
      this.wire.output("[close] I/O error: " + localIOException.getMessage());
      throw localIOException;
    }
  }
  
  public void flush()
  {
    try
    {
      this.out.flush();
      return;
    }
    catch (IOException localIOException)
    {
      this.wire.output("[flush] I/O error: " + localIOException.getMessage());
      throw localIOException;
    }
  }
  
  public void write(int paramInt)
  {
    try
    {
      this.wire.output(paramInt);
      return;
    }
    catch (IOException localIOException)
    {
      this.wire.output("[write] I/O error: " + localIOException.getMessage());
      throw localIOException;
    }
  }
  
  public void write(byte[] paramArrayOfByte)
  {
    try
    {
      this.wire.output(paramArrayOfByte);
      this.out.write(paramArrayOfByte);
      return;
    }
    catch (IOException paramArrayOfByte)
    {
      this.wire.output("[write] I/O error: " + paramArrayOfByte.getMessage());
      throw paramArrayOfByte;
    }
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      this.wire.output(paramArrayOfByte, paramInt1, paramInt2);
      this.out.write(paramArrayOfByte, paramInt1, paramInt2);
      return;
    }
    catch (IOException paramArrayOfByte)
    {
      this.wire.output("[write] I/O error: " + paramArrayOfByte.getMessage());
      throw paramArrayOfByte;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\LoggingOutputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */