package org.apache.commons.a.c;

import java.io.UnsupportedEncodingException;

public final class a
{
  public static boolean a(String paramString, byte[] paramArrayOfByte)
  {
    try
    {
      paramString = paramString.getBytes("ASCII");
      return a(paramString, paramString.length, paramArrayOfByte);
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new RuntimeException(paramString);
    }
  }
  
  private static boolean a(byte[] paramArrayOfByte1, int paramInt, byte[] paramArrayOfByte2)
  {
    int i;
    int j;
    if (paramInt < 6)
    {
      i = paramInt;
      j = 0;
    }
    for (;;)
    {
      if (j >= i) {
        break label51;
      }
      if (paramArrayOfByte1[(j + 0)] != paramArrayOfByte2[(j + 257)])
      {
        return false;
        i = 6;
        break;
      }
      j += 1;
    }
    label51:
    return paramInt == 6;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\commons\a\c\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */