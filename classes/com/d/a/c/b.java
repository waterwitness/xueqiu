package com.d.a.c;

import java.io.Closeable;
import java.io.InputStream;
import java.io.OutputStream;

public final class b
{
  public static void a(Closeable paramCloseable)
  {
    try
    {
      paramCloseable.close();
      return;
    }
    catch (Exception paramCloseable) {}
  }
  
  private static boolean a(c paramc, int paramInt1, int paramInt2)
  {
    return (paramc != null) && (!paramc.a(paramInt1, paramInt2)) && (paramInt1 * 100 / paramInt2 < 75);
  }
  
  public static boolean a(InputStream paramInputStream, OutputStream paramOutputStream, c paramc, int paramInt)
  {
    int j = paramInputStream.available();
    int i = j;
    if (j <= 0) {
      i = 512000;
    }
    byte[] arrayOfByte = new byte[paramInt];
    if (a(paramc, 0, i)) {
      return false;
    }
    j = 0;
    int k;
    do
    {
      k = paramInputStream.read(arrayOfByte, 0, paramInt);
      if (k == -1) {
        break;
      }
      paramOutputStream.write(arrayOfByte, 0, k);
      k = j + k;
      j = k;
    } while (!a(paramc, k, i));
    return false;
    paramOutputStream.flush();
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\d\a\c\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */