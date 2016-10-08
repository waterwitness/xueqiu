package com.snowballfinance.message.io.b;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.zip.GZIPInputStream;

public final class d
{
  public static byte[] a(byte[] paramArrayOfByte)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramArrayOfByte = new GZIPInputStream(new ByteArrayInputStream(paramArrayOfByte));
    byte[] arrayOfByte = new byte['Ѐ'];
    for (;;)
    {
      int i = paramArrayOfByte.read(arrayOfByte, 0, 1024);
      if (i == -1) {
        break;
      }
      localByteArrayOutputStream.write(arrayOfByte, 0, i);
    }
    paramArrayOfByte.close();
    return localByteArrayOutputStream.toByteArray();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\message\io\b\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */