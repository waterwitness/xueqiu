package com.snowballfinance.message.io;

import java.util.zip.CRC32;

public final class d
{
  public static int a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    CRC32 localCRC32 = new CRC32();
    localCRC32.update(paramArrayOfByte, paramInt1, paramInt2);
    return (int)(localCRC32.getValue() & 0xFF);
  }
  
  public static long a(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramInt + 1;
    paramInt = paramArrayOfByte[paramInt];
    int j = i + 1;
    return ((paramArrayOfByte[i] & 0xFF) << 16 | (paramInt & 0xFF) << 24 | (paramArrayOfByte[j] & 0xFF) << 8 | paramArrayOfByte[(j + 1)] & 0xFF) & 0xFFFFFFFF;
  }
  
  public static void a(byte[] paramArrayOfByte, int paramInt, long paramLong)
  {
    int i = paramInt + 1;
    paramArrayOfByte[paramInt] = ((byte)(int)(paramLong >>> 24));
    paramInt = i + 1;
    paramArrayOfByte[i] = ((byte)(int)(paramLong >>> 16));
    paramArrayOfByte[paramInt] = ((byte)(int)(paramLong >>> 8));
    paramArrayOfByte[(paramInt + 1)] = ((byte)(int)paramLong);
  }
  
  public static void b(byte[] paramArrayOfByte, int paramInt, long paramLong)
  {
    int i = paramInt + 1;
    paramArrayOfByte[paramInt] = ((byte)(int)(paramLong >>> 56));
    paramInt = i + 1;
    paramArrayOfByte[i] = ((byte)(int)(paramLong >>> 48));
    i = paramInt + 1;
    paramArrayOfByte[paramInt] = ((byte)(int)(paramLong >>> 40));
    paramInt = i + 1;
    paramArrayOfByte[i] = ((byte)(int)(paramLong >>> 32));
    i = paramInt + 1;
    paramArrayOfByte[paramInt] = ((byte)(int)(paramLong >>> 24));
    paramInt = i + 1;
    paramArrayOfByte[i] = ((byte)(int)(paramLong >>> 16));
    paramArrayOfByte[paramInt] = ((byte)(int)(paramLong >>> 8));
    paramArrayOfByte[(paramInt + 1)] = ((byte)(int)paramLong);
  }
  
  public static int c(byte[] paramArrayOfByte, int paramInt, long paramLong)
  {
    byte[] arrayOfByte = new byte[10];
    arrayOfByte[0] = ((byte)(int)paramLong);
    int i = 1;
    for (;;)
    {
      paramLong >>>= 7;
      if (paramLong <= 0L) {
        break;
      }
      arrayOfByte[i] = ((byte)(int)paramLong);
      i += 1;
    }
    int j = i;
    while (j > 0)
    {
      j -= 1;
      paramArrayOfByte[paramInt] = ((byte)(arrayOfByte[j] | 0x80));
      paramInt += 1;
    }
    paramInt -= 1;
    paramArrayOfByte[paramInt] = ((byte)(paramArrayOfByte[paramInt] & 0x7F));
    return i;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\message\io\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */