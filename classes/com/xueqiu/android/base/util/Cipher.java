package com.xueqiu.android.base.util;

public class Cipher
{
  static
  {
    try
    {
      System.loadLibrary("snbcipher");
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }
  
  public native int decrypt(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt1, int paramInt2);
  
  public native int encrypt(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt1, int paramInt2);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\Cipher.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */