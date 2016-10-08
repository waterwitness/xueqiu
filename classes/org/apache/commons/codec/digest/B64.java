package org.apache.commons.codec.digest;

import java.util.Random;

class B64
{
  static final String B64T = "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
  
  static void b64from24bit(byte paramByte1, byte paramByte2, byte paramByte3, int paramInt, StringBuilder paramStringBuilder)
  {
    paramByte1 = paramByte1 << 16 & 0xFFFFFF | paramByte2 << 8 & 0xFFFF | paramByte3 & 0xFF;
    while (paramInt > 0)
    {
      paramStringBuilder.append("./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz".charAt(paramByte1 & 0x3F));
      paramByte1 >>= 6;
      paramInt -= 1;
    }
  }
  
  static String getRandomSalt(int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 1;
    while (i <= paramInt)
    {
      localStringBuilder.append("./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz".charAt(new Random().nextInt(64)));
      i += 1;
    }
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\commons\codec\digest\B64.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */