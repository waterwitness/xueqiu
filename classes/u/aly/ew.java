package u.aly;

import java.io.ByteArrayOutputStream;
import java.util.zip.Deflater;

public final class ew
{
  public static int a;
  
  public static byte[] a(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length <= 0)) {
      return null;
    }
    Deflater localDeflater = new Deflater();
    localDeflater.setInput(paramArrayOfByte);
    localDeflater.finish();
    paramArrayOfByte = new byte[' '];
    a = 0;
    try
    {
      localByteArrayOutputStream = new ByteArrayOutputStream();
      try
      {
        for (;;)
        {
          if (localDeflater.finished())
          {
            localDeflater.end();
            localByteArrayOutputStream.close();
            return localByteArrayOutputStream.toByteArray();
          }
          int i = localDeflater.deflate(paramArrayOfByte);
          a += i;
          localByteArrayOutputStream.write(paramArrayOfByte, 0, i);
        }
        if (localByteArrayOutputStream == null) {
          break label99;
        }
      }
      finally {}
    }
    finally
    {
      label99:
      ByteArrayOutputStream localByteArrayOutputStream = null;
    }
    localByteArrayOutputStream.close();
    throw paramArrayOfByte;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\ew.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */