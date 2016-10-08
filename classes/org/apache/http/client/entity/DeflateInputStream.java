package org.apache.http.client.entity;

import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

public class DeflateInputStream
  extends InputStream
{
  private InputStream sourceStream;
  
  public DeflateInputStream(InputStream paramInputStream)
  {
    byte[] arrayOfByte1 = new byte[6];
    PushbackInputStream localPushbackInputStream = new PushbackInputStream(paramInputStream, 6);
    int i = localPushbackInputStream.read(arrayOfByte1);
    if (i == -1) {
      throw new IOException("Unable to read the response");
    }
    byte[] arrayOfByte3 = new byte[1];
    paramInputStream = new Inflater();
    int j;
    try
    {
      j = paramInputStream.inflate(arrayOfByte3);
      if (j == 0) {
        if (paramInputStream.finished()) {
          throw new IOException("Unable to read the response");
        }
      }
    }
    catch (DataFormatException localDataFormatException)
    {
      for (;;)
      {
        localPushbackInputStream.unread(arrayOfByte1, 0, i);
        this.sourceStream = new DeflateInputStream.DeflateStream(localPushbackInputStream, new Inflater(true));
        return;
        if (paramInputStream.needsDictionary()) {
          break;
        }
        if (paramInputStream.needsInput()) {
          paramInputStream.setInput(arrayOfByte1);
        }
      }
    }
    finally
    {
      paramInputStream.end();
    }
    if (j == -1) {
      throw new IOException("Unable to read the response");
    }
    localPushbackInputStream.unread(arrayOfByte2, 0, i);
    this.sourceStream = new DeflateInputStream.DeflateStream(localPushbackInputStream, new Inflater());
    paramInputStream.end();
  }
  
  public int available()
  {
    return this.sourceStream.available();
  }
  
  public void close()
  {
    this.sourceStream.close();
  }
  
  public void mark(int paramInt)
  {
    this.sourceStream.mark(paramInt);
  }
  
  public boolean markSupported()
  {
    return this.sourceStream.markSupported();
  }
  
  public int read()
  {
    return this.sourceStream.read();
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    return this.sourceStream.read(paramArrayOfByte);
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return this.sourceStream.read(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public void reset()
  {
    this.sourceStream.reset();
  }
  
  public long skip(long paramLong)
  {
    return this.sourceStream.skip(paramLong);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\client\entity\DeflateInputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */