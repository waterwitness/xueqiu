package org.apache.http.impl.io;

import java.io.InputStream;

public final class EmptyInputStream
  extends InputStream
{
  public static final EmptyInputStream INSTANCE = new EmptyInputStream();
  
  public final int available()
  {
    return 0;
  }
  
  public final void close() {}
  
  public final void mark(int paramInt) {}
  
  public final boolean markSupported()
  {
    return true;
  }
  
  public final int read()
  {
    return -1;
  }
  
  public final int read(byte[] paramArrayOfByte)
  {
    return -1;
  }
  
  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return -1;
  }
  
  public final void reset() {}
  
  public final long skip(long paramLong)
  {
    return 0L;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\io\EmptyInputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */