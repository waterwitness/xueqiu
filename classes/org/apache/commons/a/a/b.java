package org.apache.commons.a.a;

import java.io.InputStream;

public abstract class b
  extends InputStream
{
  public long a = 0L;
  private final byte[] b = new byte[1];
  
  public int read()
  {
    if (read(this.b, 0, 1) == -1) {
      return -1;
    }
    return this.b[0] & 0xFF;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\commons\a\a\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */