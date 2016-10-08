package org.apache.commons.a.c;

import java.io.InputStream;
import java.io.OutputStream;

public final class b
{
  public static long a(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    return a(paramInputStream, paramOutputStream, 8024);
  }
  
  public static long a(InputStream paramInputStream, OutputStream paramOutputStream, int paramInt)
  {
    byte[] arrayOfByte = new byte[paramInt];
    for (long l = 0L;; l += paramInt)
    {
      paramInt = paramInputStream.read(arrayOfByte);
      if (-1 == paramInt) {
        break;
      }
      paramOutputStream.write(arrayOfByte, 0, paramInt);
    }
    return l;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\commons\a\c\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */