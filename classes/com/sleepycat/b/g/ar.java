package com.sleepycat.b.g;

import com.sleepycat.b.p.aq;
import com.sleepycat.b.q.a;
import com.sleepycat.c.e;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

public final class ar
{
  public static final byte[] a = new byte[0];
  private static Charset b = null;
  
  static
  {
    String str = System.getProperty("je.logCharset");
    if ((str != null) && (str.length() > 0)) {}
    try
    {
      b = Charset.forName(str);
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      localRuntimeException.printStackTrace();
    }
  }
  
  public static int a()
  {
    return 4;
  }
  
  public static int a(int paramInt)
  {
    return e.a(paramInt);
  }
  
  public static int a(long paramLong)
  {
    return e.a(paramLong);
  }
  
  public static int a(aq paramaq)
  {
    return e.a(paramaq.getTime());
  }
  
  public static int a(a parama)
  {
    int j = 0;
    byte[] arrayOfByte = parama.b();
    parama = parama.c();
    int i;
    if (arrayOfByte == null)
    {
      i = 0;
      if (parama != null) {
        break label39;
      }
    }
    for (;;)
    {
      return j + (i + 6);
      i = arrayOfByte.length;
      break;
      label39:
      j = parama.length;
    }
  }
  
  public static int a(String paramString)
  {
    return a(paramString.getBytes());
  }
  
  public static int a(ByteBuffer paramByteBuffer, boolean paramBoolean)
  {
    if (paramBoolean) {
      return c(paramByteBuffer);
    }
    return d(paramByteBuffer);
  }
  
  public static int a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return e.a(-1);
    }
    int i = paramArrayOfByte.length;
    return i + e.a(i);
  }
  
  public static long a(ByteBuffer paramByteBuffer)
  {
    return ((paramByteBuffer.get() & 0xFF) << 0) + ((paramByteBuffer.get() & 0xFF) << 8) + ((paramByteBuffer.get() & 0xFF) << 16) + ((paramByteBuffer.get() & 0xFF) << 24);
  }
  
  public static void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    paramByteBuffer.put((byte)(paramInt >> 0 & 0xFF));
    paramByteBuffer.put((byte)(paramInt >> 8 & 0xFF));
    paramByteBuffer.put((byte)(paramInt >> 16 & 0xFF));
    paramByteBuffer.put((byte)(paramInt >> 24 & 0xFF));
  }
  
  public static void a(ByteBuffer paramByteBuffer, long paramLong)
  {
    paramByteBuffer.put((byte)(int)(paramLong >>> 0));
    paramByteBuffer.put((byte)(int)(paramLong >>> 8));
    paramByteBuffer.put((byte)(int)(paramLong >>> 16));
    paramByteBuffer.put((byte)(int)(paramLong >>> 24));
  }
  
  public static void a(ByteBuffer paramByteBuffer, aq paramaq)
  {
    c(paramByteBuffer, paramaq.getTime());
  }
  
  public static void a(ByteBuffer paramByteBuffer, a parama)
  {
    byte[] arrayOfByte1 = parama.b();
    byte[] arrayOfByte2 = parama.c();
    a(paramByteBuffer, parama.a());
    if (arrayOfByte1 == null) {
      paramByteBuffer.put((byte)-1);
    }
    while (arrayOfByte2 == null)
    {
      paramByteBuffer.put((byte)-1);
      return;
      paramByteBuffer.put((byte)arrayOfByte1.length);
      paramByteBuffer.put(arrayOfByte1);
    }
    paramByteBuffer.put((byte)arrayOfByte2.length);
    paramByteBuffer.put(arrayOfByte2);
  }
  
  public static void a(ByteBuffer paramByteBuffer, String paramString)
  {
    a(paramByteBuffer, paramString.getBytes());
  }
  
  public static void a(ByteBuffer paramByteBuffer, short paramShort)
  {
    paramByteBuffer.put((byte)(paramShort >> 0 & 0xFF));
    paramByteBuffer.put((byte)(paramShort >> 8 & 0xFF));
  }
  
  public static void a(ByteBuffer paramByteBuffer, byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
    {
      b(paramByteBuffer, -1);
      return;
    }
    b(paramByteBuffer, paramArrayOfByte.length);
    paramByteBuffer.put(paramArrayOfByte);
  }
  
  public static int b()
  {
    return 8;
  }
  
  public static long b(ByteBuffer paramByteBuffer, boolean paramBoolean)
  {
    if (paramBoolean) {
      return f(paramByteBuffer);
    }
    return g(paramByteBuffer);
  }
  
  public static short b(ByteBuffer paramByteBuffer)
  {
    return (short)(((paramByteBuffer.get() & 0xFF) << 0) + ((paramByteBuffer.get() & 0xFF) << 8));
  }
  
  public static void b(ByteBuffer paramByteBuffer, int paramInt)
  {
    int i = paramByteBuffer.arrayOffset();
    paramByteBuffer.position(e.a(paramByteBuffer.array(), paramByteBuffer.position() + i, paramInt) - i);
  }
  
  public static void b(ByteBuffer paramByteBuffer, long paramLong)
  {
    paramByteBuffer.put((byte)(int)(paramLong >>> 0));
    paramByteBuffer.put((byte)(int)(paramLong >>> 8));
    paramByteBuffer.put((byte)(int)(paramLong >>> 16));
    paramByteBuffer.put((byte)(int)(paramLong >>> 24));
    paramByteBuffer.put((byte)(int)(paramLong >>> 32));
    paramByteBuffer.put((byte)(int)(paramLong >>> 40));
    paramByteBuffer.put((byte)(int)(paramLong >>> 48));
    paramByteBuffer.put((byte)(int)(paramLong >>> 56));
  }
  
  public static void b(ByteBuffer paramByteBuffer, byte[] paramArrayOfByte)
  {
    paramByteBuffer.put(paramArrayOfByte);
  }
  
  public static int c()
  {
    return 1;
  }
  
  public static int c(ByteBuffer paramByteBuffer)
  {
    return ((paramByteBuffer.get() & 0xFF) << 0) + ((paramByteBuffer.get() & 0xFF) << 8) + ((paramByteBuffer.get() & 0xFF) << 16) + ((paramByteBuffer.get() & 0xFF) << 24);
  }
  
  public static void c(ByteBuffer paramByteBuffer, int paramInt)
  {
    paramByteBuffer.put((byte)(paramInt >> 24 & 0xFF));
    paramByteBuffer.put((byte)(paramInt >> 16 & 0xFF));
    paramByteBuffer.put((byte)(paramInt >> 8 & 0xFF));
    paramByteBuffer.put((byte)(paramInt >> 0 & 0xFF));
  }
  
  public static void c(ByteBuffer paramByteBuffer, long paramLong)
  {
    int i = paramByteBuffer.arrayOffset();
    paramByteBuffer.position(e.a(paramByteBuffer.array(), paramByteBuffer.position() + i, paramLong) - i);
  }
  
  public static byte[] c(ByteBuffer paramByteBuffer, boolean paramBoolean)
  {
    int i = a(paramByteBuffer, paramBoolean);
    if (i < 0) {
      return null;
    }
    if (i == 0) {
      return a;
    }
    byte[] arrayOfByte = new byte[i];
    paramByteBuffer.get(arrayOfByte);
    return arrayOfByte;
  }
  
  public static int d(ByteBuffer paramByteBuffer)
  {
    byte[] arrayOfByte = paramByteBuffer.array();
    int i = paramByteBuffer.position();
    int k = paramByteBuffer.arrayOffset() + i;
    int j = e.c(arrayOfByte, k);
    k = e.a(arrayOfByte, k);
    paramByteBuffer.position(i + j);
    return k;
  }
  
  public static String d(ByteBuffer paramByteBuffer, boolean paramBoolean)
  {
    paramByteBuffer = c(paramByteBuffer, paramBoolean);
    if (b != null) {
      return new String(paramByteBuffer, b);
    }
    return new String(paramByteBuffer);
  }
  
  public static byte[] d(ByteBuffer paramByteBuffer, int paramInt)
  {
    if (paramInt == 0) {
      return a;
    }
    byte[] arrayOfByte = new byte[paramInt];
    paramByteBuffer.get(arrayOfByte);
    return arrayOfByte;
  }
  
  public static int e(ByteBuffer paramByteBuffer)
  {
    return ((paramByteBuffer.get() & 0xFF) << 24) + ((paramByteBuffer.get() & 0xFF) << 16) + ((paramByteBuffer.get() & 0xFF) << 8) + ((paramByteBuffer.get() & 0xFF) << 0);
  }
  
  public static aq e(ByteBuffer paramByteBuffer, boolean paramBoolean)
  {
    return new aq(b(paramByteBuffer, paramBoolean));
  }
  
  public static long f(ByteBuffer paramByteBuffer)
  {
    return ((paramByteBuffer.get() & 0xFF) << 0) + ((paramByteBuffer.get() & 0xFF) << 8) + ((paramByteBuffer.get() & 0xFF) << 16) + ((paramByteBuffer.get() & 0xFF) << 24) + ((paramByteBuffer.get() & 0xFF) << 32) + ((paramByteBuffer.get() & 0xFF) << 40) + ((paramByteBuffer.get() & 0xFF) << 48) + ((paramByteBuffer.get() & 0xFF) << 56);
  }
  
  public static void f(ByteBuffer paramByteBuffer, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (byte b1 = 1;; b1 = 0)
    {
      paramByteBuffer.put(b1);
      return;
    }
  }
  
  public static long g(ByteBuffer paramByteBuffer)
  {
    byte[] arrayOfByte = paramByteBuffer.array();
    int i = paramByteBuffer.position();
    int j = paramByteBuffer.arrayOffset() + i;
    int k = e.c(arrayOfByte, j);
    long l = e.b(arrayOfByte, j);
    paramByteBuffer.position(i + k);
    return l;
  }
  
  public static boolean h(ByteBuffer paramByteBuffer)
  {
    return paramByteBuffer.get() == 1;
  }
  
  public static a i(ByteBuffer paramByteBuffer)
  {
    byte[] arrayOfByte2 = null;
    int i = c(paramByteBuffer);
    int j = paramByteBuffer.get();
    byte[] arrayOfByte1;
    if (j >= 0)
    {
      arrayOfByte1 = new byte[j];
      paramByteBuffer.get(arrayOfByte1);
    }
    for (;;)
    {
      j = paramByteBuffer.get();
      if (j >= 0)
      {
        arrayOfByte2 = new byte[j];
        paramByteBuffer.get(arrayOfByte2);
      }
      return new as(i, arrayOfByte1, arrayOfByte2);
      arrayOfByte1 = null;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\ar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */