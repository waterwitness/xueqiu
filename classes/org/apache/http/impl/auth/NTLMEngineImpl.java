package org.apache.http.impl.auth;

import java.nio.charset.Charset;
import java.security.Key;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.Locale;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import org.apache.http.Consts;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.util.CharsetUtils;

@NotThreadSafe
final class NTLMEngineImpl
  implements NTLMEngine
{
  private static final Charset DEFAULT_CHARSET;
  protected static final int FLAG_DOMAIN_PRESENT = 4096;
  protected static final int FLAG_REQUEST_128BIT_KEY_EXCH = 536870912;
  protected static final int FLAG_REQUEST_56BIT_ENCRYPTION = Integer.MIN_VALUE;
  protected static final int FLAG_REQUEST_ALWAYS_SIGN = 32768;
  protected static final int FLAG_REQUEST_EXPLICIT_KEY_EXCH = 1073741824;
  protected static final int FLAG_REQUEST_LAN_MANAGER_KEY = 128;
  protected static final int FLAG_REQUEST_NTLM2_SESSION = 524288;
  protected static final int FLAG_REQUEST_NTLMv1 = 512;
  protected static final int FLAG_REQUEST_SEAL = 32;
  protected static final int FLAG_REQUEST_SIGN = 16;
  protected static final int FLAG_REQUEST_TARGET = 4;
  protected static final int FLAG_REQUEST_UNICODE_ENCODING = 1;
  protected static final int FLAG_REQUEST_VERSION = 33554432;
  protected static final int FLAG_TARGETINFO_PRESENT = 8388608;
  protected static final int FLAG_WORKSTATION_PRESENT = 8192;
  private static final SecureRandom RND_GEN;
  private static final byte[] SIGNATURE;
  private static final NTLMEngineImpl.Type1Message TYPE_1_MESSAGE = new NTLMEngineImpl.Type1Message();
  private static final Charset UNICODE_LITTLE_UNMARKED = CharsetUtils.lookup("UnicodeLittleUnmarked");
  
  static
  {
    DEFAULT_CHARSET = Consts.ASCII;
    Object localObject = null;
    try
    {
      SecureRandom localSecureRandom = SecureRandom.getInstance("SHA1PRNG");
      localObject = localSecureRandom;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
    RND_GEN = (SecureRandom)localObject;
    localObject = "NTLMSSP".getBytes(Consts.ASCII);
    SIGNATURE = new byte[localObject.length + 1];
    System.arraycopy(localObject, 0, SIGNATURE, 0, localObject.length);
    SIGNATURE[localObject.length] = 0;
  }
  
  static int F(int paramInt1, int paramInt2, int paramInt3)
  {
    return paramInt1 & paramInt2 | (paramInt1 ^ 0xFFFFFFFF) & paramInt3;
  }
  
  static int G(int paramInt1, int paramInt2, int paramInt3)
  {
    return paramInt1 & paramInt2 | paramInt1 & paramInt3 | paramInt2 & paramInt3;
  }
  
  static int H(int paramInt1, int paramInt2, int paramInt3)
  {
    return paramInt1 ^ paramInt2 ^ paramInt3;
  }
  
  static byte[] RC4(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    try
    {
      Cipher localCipher = Cipher.getInstance("RC4");
      localCipher.init(1, new SecretKeySpec(paramArrayOfByte2, "RC4"));
      paramArrayOfByte1 = localCipher.doFinal(paramArrayOfByte1);
      return paramArrayOfByte1;
    }
    catch (Exception paramArrayOfByte1)
    {
      throw new NTLMEngineException(paramArrayOfByte1.getMessage(), paramArrayOfByte1);
    }
  }
  
  private static String convertDomain(String paramString)
  {
    return stripDotSuffix(paramString);
  }
  
  private static String convertHost(String paramString)
  {
    return stripDotSuffix(paramString);
  }
  
  private static byte[] createBlob(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3)
  {
    byte[] arrayOfByte = new byte[paramArrayOfByte3.length + 8 + 8 + 4 + paramArrayOfByte2.length + 4];
    System.arraycopy(new byte[] { 1, 1, 0, 0 }, 0, arrayOfByte, 0, 4);
    System.arraycopy(new byte[] { 0, 0, 0, 0 }, 0, arrayOfByte, 4, 4);
    System.arraycopy(paramArrayOfByte3, 0, arrayOfByte, 8, paramArrayOfByte3.length);
    int i = paramArrayOfByte3.length + 8;
    System.arraycopy(paramArrayOfByte1, 0, arrayOfByte, i, 8);
    i += 8;
    System.arraycopy(new byte[] { 0, 0, 0, 0 }, 0, arrayOfByte, i, 4);
    i += 4;
    System.arraycopy(paramArrayOfByte2, 0, arrayOfByte, i, paramArrayOfByte2.length);
    int j = paramArrayOfByte2.length;
    System.arraycopy(new byte[] { 0, 0, 0, 0 }, 0, arrayOfByte, i + j, 4);
    return arrayOfByte;
  }
  
  private static Key createDESKey(byte[] paramArrayOfByte, int paramInt)
  {
    byte[] arrayOfByte = new byte[7];
    System.arraycopy(paramArrayOfByte, paramInt, arrayOfByte, 0, 7);
    paramArrayOfByte = new byte[8];
    paramArrayOfByte[0] = arrayOfByte[0];
    paramArrayOfByte[1] = ((byte)(arrayOfByte[0] << 7 | (arrayOfByte[1] & 0xFF) >>> 1));
    paramArrayOfByte[2] = ((byte)(arrayOfByte[1] << 6 | (arrayOfByte[2] & 0xFF) >>> 2));
    paramArrayOfByte[3] = ((byte)(arrayOfByte[2] << 5 | (arrayOfByte[3] & 0xFF) >>> 3));
    paramArrayOfByte[4] = ((byte)(arrayOfByte[3] << 4 | (arrayOfByte[4] & 0xFF) >>> 4));
    paramArrayOfByte[5] = ((byte)(arrayOfByte[4] << 3 | (arrayOfByte[5] & 0xFF) >>> 5));
    paramArrayOfByte[6] = ((byte)(arrayOfByte[5] << 2 | (arrayOfByte[6] & 0xFF) >>> 6));
    paramArrayOfByte[7] = ((byte)(arrayOfByte[6] << 1));
    oddParity(paramArrayOfByte);
    return new SecretKeySpec(paramArrayOfByte, "DES");
  }
  
  static String getResponseFor(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    if ((paramString1 == null) || (paramString1.trim().equals(""))) {
      return getType1Message(paramString4, paramString5);
    }
    paramString1 = new NTLMEngineImpl.Type2Message(paramString1);
    return getType3Message(paramString2, paramString3, paramString4, paramString5, paramString1.getChallenge(), paramString1.getFlags(), paramString1.getTarget(), paramString1.getTargetInfo());
  }
  
  static String getType1Message(String paramString1, String paramString2)
  {
    return TYPE_1_MESSAGE.getResponse();
  }
  
  static String getType3Message(String paramString1, String paramString2, String paramString3, String paramString4, byte[] paramArrayOfByte1, int paramInt, String paramString5, byte[] paramArrayOfByte2)
  {
    return new NTLMEngineImpl.Type3Message(paramString4, paramString3, paramString1, paramString2, paramArrayOfByte1, paramInt, paramString5, paramArrayOfByte2).getResponse();
  }
  
  static byte[] hmacMD5(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    paramArrayOfByte2 = new NTLMEngineImpl.HMACMD5(paramArrayOfByte2);
    paramArrayOfByte2.update(paramArrayOfByte1);
    return paramArrayOfByte2.getOutput();
  }
  
  private static byte[] lmHash(String paramString)
  {
    try
    {
      paramString = paramString.toUpperCase(Locale.ROOT).getBytes(Consts.ASCII);
      int i = Math.min(paramString.length, 14);
      Object localObject = new byte[14];
      System.arraycopy(paramString, 0, localObject, 0, i);
      paramString = createDESKey((byte[])localObject, 0);
      localObject = createDESKey((byte[])localObject, 7);
      byte[] arrayOfByte = "KGS!@#$%".getBytes(Consts.ASCII);
      Cipher localCipher = Cipher.getInstance("DES/ECB/NoPadding");
      localCipher.init(1, paramString);
      paramString = localCipher.doFinal(arrayOfByte);
      localCipher.init(1, (Key)localObject);
      localObject = localCipher.doFinal(arrayOfByte);
      arrayOfByte = new byte[16];
      System.arraycopy(paramString, 0, arrayOfByte, 0, 8);
      System.arraycopy(localObject, 0, arrayOfByte, 8, 8);
      return arrayOfByte;
    }
    catch (Exception paramString)
    {
      throw new NTLMEngineException(paramString.getMessage(), paramString);
    }
  }
  
  private static byte[] lmResponse(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    try
    {
      Object localObject2 = new byte[21];
      System.arraycopy(paramArrayOfByte1, 0, localObject2, 0, 16);
      paramArrayOfByte1 = createDESKey((byte[])localObject2, 0);
      Object localObject1 = createDESKey((byte[])localObject2, 7);
      localObject2 = createDESKey((byte[])localObject2, 14);
      Cipher localCipher = Cipher.getInstance("DES/ECB/NoPadding");
      localCipher.init(1, paramArrayOfByte1);
      paramArrayOfByte1 = localCipher.doFinal(paramArrayOfByte2);
      localCipher.init(1, (Key)localObject1);
      localObject1 = localCipher.doFinal(paramArrayOfByte2);
      localCipher.init(1, (Key)localObject2);
      paramArrayOfByte2 = localCipher.doFinal(paramArrayOfByte2);
      localObject2 = new byte[24];
      System.arraycopy(paramArrayOfByte1, 0, localObject2, 0, 8);
      System.arraycopy(localObject1, 0, localObject2, 8, 8);
      System.arraycopy(paramArrayOfByte2, 0, localObject2, 16, 8);
      return (byte[])localObject2;
    }
    catch (Exception paramArrayOfByte1)
    {
      throw new NTLMEngineException(paramArrayOfByte1.getMessage(), paramArrayOfByte1);
    }
  }
  
  private static byte[] lmv2Hash(String paramString1, String paramString2, byte[] paramArrayOfByte)
  {
    if (UNICODE_LITTLE_UNMARKED == null) {
      throw new NTLMEngineException("Unicode not supported");
    }
    paramArrayOfByte = new NTLMEngineImpl.HMACMD5(paramArrayOfByte);
    paramArrayOfByte.update(paramString2.toUpperCase(Locale.ROOT).getBytes(UNICODE_LITTLE_UNMARKED));
    if (paramString1 != null) {
      paramArrayOfByte.update(paramString1.toUpperCase(Locale.ROOT).getBytes(UNICODE_LITTLE_UNMARKED));
    }
    return paramArrayOfByte.getOutput();
  }
  
  private static byte[] lmv2Response(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3)
  {
    paramArrayOfByte1 = new NTLMEngineImpl.HMACMD5(paramArrayOfByte1);
    paramArrayOfByte1.update(paramArrayOfByte2);
    paramArrayOfByte1.update(paramArrayOfByte3);
    paramArrayOfByte1 = paramArrayOfByte1.getOutput();
    paramArrayOfByte2 = new byte[paramArrayOfByte1.length + paramArrayOfByte3.length];
    System.arraycopy(paramArrayOfByte1, 0, paramArrayOfByte2, 0, paramArrayOfByte1.length);
    System.arraycopy(paramArrayOfByte3, 0, paramArrayOfByte2, paramArrayOfByte1.length, paramArrayOfByte3.length);
    return paramArrayOfByte2;
  }
  
  private static byte[] makeRandomChallenge()
  {
    if (RND_GEN == null) {
      throw new NTLMEngineException("Random generator not available");
    }
    byte[] arrayOfByte = new byte[8];
    synchronized (RND_GEN)
    {
      RND_GEN.nextBytes(arrayOfByte);
      return arrayOfByte;
    }
  }
  
  private static byte[] makeSecondaryKey()
  {
    if (RND_GEN == null) {
      throw new NTLMEngineException("Random generator not available");
    }
    byte[] arrayOfByte = new byte[16];
    synchronized (RND_GEN)
    {
      RND_GEN.nextBytes(arrayOfByte);
      return arrayOfByte;
    }
  }
  
  static byte[] ntlm2SessionResponse(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramArrayOfByte2);
      localMessageDigest.update(paramArrayOfByte3);
      paramArrayOfByte2 = localMessageDigest.digest();
      paramArrayOfByte3 = new byte[8];
      System.arraycopy(paramArrayOfByte2, 0, paramArrayOfByte3, 0, 8);
      paramArrayOfByte1 = lmResponse(paramArrayOfByte1, paramArrayOfByte3);
      return paramArrayOfByte1;
    }
    catch (Exception paramArrayOfByte1)
    {
      if ((paramArrayOfByte1 instanceof NTLMEngineException)) {
        throw ((NTLMEngineException)paramArrayOfByte1);
      }
      throw new NTLMEngineException(paramArrayOfByte1.getMessage(), paramArrayOfByte1);
    }
  }
  
  private static byte[] ntlmHash(String paramString)
  {
    if (UNICODE_LITTLE_UNMARKED == null) {
      throw new NTLMEngineException("Unicode not supported");
    }
    paramString = paramString.getBytes(UNICODE_LITTLE_UNMARKED);
    NTLMEngineImpl.MD4 localMD4 = new NTLMEngineImpl.MD4();
    localMD4.update(paramString);
    return localMD4.getOutput();
  }
  
  private static byte[] ntlmv2Hash(String paramString1, String paramString2, byte[] paramArrayOfByte)
  {
    if (UNICODE_LITTLE_UNMARKED == null) {
      throw new NTLMEngineException("Unicode not supported");
    }
    paramArrayOfByte = new NTLMEngineImpl.HMACMD5(paramArrayOfByte);
    paramArrayOfByte.update(paramString2.toUpperCase(Locale.ROOT).getBytes(UNICODE_LITTLE_UNMARKED));
    if (paramString1 != null) {
      paramArrayOfByte.update(paramString1.getBytes(UNICODE_LITTLE_UNMARKED));
    }
    return paramArrayOfByte.getOutput();
  }
  
  private static void oddParity(byte[] paramArrayOfByte)
  {
    int i = 0;
    if (i < paramArrayOfByte.length)
    {
      int j = paramArrayOfByte[i];
      if (((j >>> 1 ^ j >>> 7 ^ j >>> 6 ^ j >>> 5 ^ j >>> 4 ^ j >>> 3 ^ j >>> 2) & 0x1) == 0)
      {
        j = 1;
        label48:
        if (j == 0) {
          break label73;
        }
        paramArrayOfByte[i] = ((byte)(paramArrayOfByte[i] | 0x1));
      }
      for (;;)
      {
        i += 1;
        break;
        j = 0;
        break label48;
        label73:
        paramArrayOfByte[i] = ((byte)(paramArrayOfByte[i] & 0xFFFFFFFE));
      }
    }
  }
  
  private static byte[] readSecurityBuffer(byte[] paramArrayOfByte, int paramInt)
  {
    int i = readUShort(paramArrayOfByte, paramInt);
    paramInt = readULong(paramArrayOfByte, paramInt + 4);
    if (paramArrayOfByte.length < paramInt + i) {
      throw new NTLMEngineException("NTLM authentication - buffer too small for data item");
    }
    byte[] arrayOfByte = new byte[i];
    System.arraycopy(paramArrayOfByte, paramInt, arrayOfByte, 0, i);
    return arrayOfByte;
  }
  
  private static int readULong(byte[] paramArrayOfByte, int paramInt)
  {
    if (paramArrayOfByte.length < paramInt + 4) {
      throw new NTLMEngineException("NTLM authentication - buffer too small for DWORD");
    }
    return paramArrayOfByte[paramInt] & 0xFF | (paramArrayOfByte[(paramInt + 1)] & 0xFF) << 8 | (paramArrayOfByte[(paramInt + 2)] & 0xFF) << 16 | (paramArrayOfByte[(paramInt + 3)] & 0xFF) << 24;
  }
  
  private static int readUShort(byte[] paramArrayOfByte, int paramInt)
  {
    if (paramArrayOfByte.length < paramInt + 2) {
      throw new NTLMEngineException("NTLM authentication - buffer too small for WORD");
    }
    return paramArrayOfByte[paramInt] & 0xFF | (paramArrayOfByte[(paramInt + 1)] & 0xFF) << 8;
  }
  
  static int rotintlft(int paramInt1, int paramInt2)
  {
    return paramInt1 << paramInt2 | paramInt1 >>> 32 - paramInt2;
  }
  
  private static String stripDotSuffix(String paramString)
  {
    String str;
    if (paramString == null) {
      str = null;
    }
    int i;
    do
    {
      return str;
      i = paramString.indexOf(".");
      str = paramString;
    } while (i == -1);
    return paramString.substring(0, i);
  }
  
  static void writeULong(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramArrayOfByte[paramInt2] = ((byte)(paramInt1 & 0xFF));
    paramArrayOfByte[(paramInt2 + 1)] = ((byte)(paramInt1 >> 8 & 0xFF));
    paramArrayOfByte[(paramInt2 + 2)] = ((byte)(paramInt1 >> 16 & 0xFF));
    paramArrayOfByte[(paramInt2 + 3)] = ((byte)(paramInt1 >> 24 & 0xFF));
  }
  
  public final String generateType1Msg(String paramString1, String paramString2)
  {
    return getType1Message(paramString2, paramString1);
  }
  
  public final String generateType3Msg(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    paramString5 = new NTLMEngineImpl.Type2Message(paramString5);
    return getType3Message(paramString1, paramString2, paramString4, paramString3, paramString5.getChallenge(), paramString5.getFlags(), paramString5.getTarget(), paramString5.getTargetInfo());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\auth\NTLMEngineImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */