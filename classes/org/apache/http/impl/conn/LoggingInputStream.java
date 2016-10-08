package org.apache.http.impl.conn;

import java.io.IOException;
import java.io.InputStream;
import org.apache.http.annotation.NotThreadSafe;

@NotThreadSafe
class LoggingInputStream
  extends InputStream
{
  private final InputStream in;
  private final Wire wire;
  
  public LoggingInputStream(InputStream paramInputStream, Wire paramWire)
  {
    this.in = paramInputStream;
    this.wire = paramWire;
  }
  
  public int available()
  {
    try
    {
      int i = this.in.available();
      return i;
    }
    catch (IOException localIOException)
    {
      this.wire.input("[available] I/O error : " + localIOException.getMessage());
      throw localIOException;
    }
  }
  
  public void close()
  {
    try
    {
      this.in.close();
      return;
    }
    catch (IOException localIOException)
    {
      this.wire.input("[close] I/O error: " + localIOException.getMessage());
      throw localIOException;
    }
  }
  
  public void mark(int paramInt)
  {
    super.mark(paramInt);
  }
  
  public boolean markSupported()
  {
    return false;
  }
  
  public int read()
  {
    try
    {
      int i = this.in.read();
      if (i == -1)
      {
        this.wire.input("end of stream");
        return i;
      }
      this.wire.input(i);
      return i;
    }
    catch (IOException localIOException)
    {
      this.wire.input("[read] I/O error: " + localIOException.getMessage());
      throw localIOException;
    }
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    int i;
    try
    {
      i = this.in.read(paramArrayOfByte);
      if (i == -1)
      {
        this.wire.input("end of stream");
        return i;
      }
      if (i > 0)
      {
        this.wire.input(paramArrayOfByte, 0, i);
        return i;
      }
    }
    catch (IOException paramArrayOfByte)
    {
      this.wire.input("[read] I/O error: " + paramArrayOfByte.getMessage());
      throw paramArrayOfByte;
    }
    return i;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      paramInt2 = this.in.read(paramArrayOfByte, paramInt1, paramInt2);
      if (paramInt2 == -1)
      {
        this.wire.input("end of stream");
        return paramInt2;
      }
      if (paramInt2 > 0)
      {
        this.wire.input(paramArrayOfByte, paramInt1, paramInt2);
        return paramInt2;
      }
    }
    catch (IOException paramArrayOfByte)
    {
      this.wire.input("[read] I/O error: " + paramArrayOfByte.getMessage());
      throw paramArrayOfByte;
    }
    return paramInt2;
  }
  
  public void reset()
  {
    super.reset();
  }
  
  public long skip(long paramLong)
  {
    try
    {
      paramLong = super.skip(paramLong);
      return paramLong;
    }
    catch (IOException localIOException)
    {
      this.wire.input("[skip] I/O error: " + localIOException.getMessage());
      throw localIOException;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\conn\LoggingInputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */