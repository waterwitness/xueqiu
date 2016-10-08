package com.paic.openapi.demo.util.rsa;

import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.Signature;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;
import org.apache.commons.codec.binary.Base64;

public class RSA
{
  public static final String CHAR_ENCODING = "UTF-8";
  private static final String CIPHER_ALGORITHM = "RSA/ECB/PKCS1Padding";
  public static final String KEY_ALGORITHM = "RSA";
  private static final int KEY_LEANGTH = 1024;
  private static final int MAX_DECRYPT_BLOCK = 128;
  private static final int MAX_ENCRYPT_BLOCK = 117;
  public static final String SIGNATURE_ALGORITHM = "MD5withRSA";
  private static final KeyFactory keyFactory = ;
  private static final KeyPairGenerator keyPairGen = getKeyPairGenerator();
  
  public static String base64DecryptByPrivateKey(String paramString1, String paramString2)
  {
    return new String(decryptByPrivateKey(Base64.decodeBase64(paramString1), Base64.decodeBase64(paramString2)), "UTF-8");
  }
  
  public static String base64DecryptByPublicKey(String paramString1, String paramString2)
  {
    return new String(decryptByPublicKey(Base64.decodeBase64(paramString1), Base64.decodeBase64(paramString2)));
  }
  
  public static String base64EncryptByPrivateKey(String paramString1, String paramString2)
  {
    return Base64.encodeBase64String(encryptByPrivateKey(paramString1.getBytes(), Base64.decodeBase64(paramString2)));
  }
  
  public static String base64EncryptByPublicKey(String paramString1, String paramString2)
  {
    return base64EncryptByPublicKey(paramString1, paramString2, "UTF-8");
  }
  
  public static String base64EncryptByPublicKey(String paramString1, String paramString2, String paramString3)
  {
    return Base64.encodeBase64String(encryptByPublicKey(paramString1.getBytes(paramString3), Base64.decodeBase64(paramString2)));
  }
  
  public static byte[] decryptByPrivateKey(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    Cipher localCipher = getCipher(paramArrayOfByte2, false, false);
    int k = paramArrayOfByte1.length;
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    int j = 0;
    int i = 0;
    if (k - i > 0)
    {
      if (k - i > 128) {}
      for (paramArrayOfByte2 = localCipher.doFinal(paramArrayOfByte1, i, 128);; paramArrayOfByte2 = localCipher.doFinal(paramArrayOfByte1, i, k - i))
      {
        localByteArrayOutputStream.write(paramArrayOfByte2, 0, paramArrayOfByte2.length);
        j += 1;
        i = j * 128;
        break;
      }
    }
    paramArrayOfByte1 = localByteArrayOutputStream.toByteArray();
    localByteArrayOutputStream.close();
    return paramArrayOfByte1;
  }
  
  public static byte[] decryptByPublicKey(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    Cipher localCipher = getCipher(paramArrayOfByte2, true, false);
    int k = paramArrayOfByte1.length;
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    int j = 0;
    int i = 0;
    if (k - i > 0)
    {
      if (k - i > 128) {}
      for (paramArrayOfByte2 = localCipher.doFinal(paramArrayOfByte1, i, 128);; paramArrayOfByte2 = localCipher.doFinal(paramArrayOfByte1, i, k - i))
      {
        localByteArrayOutputStream.write(paramArrayOfByte2, 0, paramArrayOfByte2.length);
        j += 1;
        i = j * 128;
        break;
      }
    }
    paramArrayOfByte1 = localByteArrayOutputStream.toByteArray();
    localByteArrayOutputStream.close();
    return paramArrayOfByte1;
  }
  
  public static byte[] encryptByPrivateKey(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    Cipher localCipher = getCipher(paramArrayOfByte2, false, true);
    int k = paramArrayOfByte1.length;
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    int j = 0;
    int i = 0;
    if (k - i > 0)
    {
      if (k - i > 117) {}
      for (paramArrayOfByte2 = localCipher.doFinal(paramArrayOfByte1, i, 117);; paramArrayOfByte2 = localCipher.doFinal(paramArrayOfByte1, i, k - i))
      {
        localByteArrayOutputStream.write(paramArrayOfByte2, 0, paramArrayOfByte2.length);
        j += 1;
        i = j * 117;
        break;
      }
    }
    paramArrayOfByte1 = localByteArrayOutputStream.toByteArray();
    localByteArrayOutputStream.close();
    return paramArrayOfByte1;
  }
  
  public static byte[] encryptByPublicKey(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    Cipher localCipher = getCipher(paramArrayOfByte2, true, true);
    int k = paramArrayOfByte1.length;
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    int j = 0;
    int i = 0;
    if (k - i > 0)
    {
      if (k - i > 117) {}
      for (paramArrayOfByte2 = localCipher.doFinal(paramArrayOfByte1, i, 117);; paramArrayOfByte2 = localCipher.doFinal(paramArrayOfByte1, i, k - i))
      {
        localByteArrayOutputStream.write(paramArrayOfByte2, 0, paramArrayOfByte2.length);
        j += 1;
        i = j * 117;
        break;
      }
    }
    paramArrayOfByte1 = localByteArrayOutputStream.toByteArray();
    localByteArrayOutputStream.close();
    return paramArrayOfByte1;
  }
  
  public static Cipher getCipher(byte[] paramArrayOfByte, boolean paramBoolean1, boolean paramBoolean2)
  {
    int j = 1;
    int i = 1;
    if (paramBoolean1)
    {
      paramArrayOfByte = new X509EncodedKeySpec(paramArrayOfByte);
      paramArrayOfByte = keyFactory.generatePublic(paramArrayOfByte);
      localCipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
      if (paramBoolean2) {}
      for (;;)
      {
        localCipher.init(i, paramArrayOfByte);
        return localCipher;
        i = 2;
      }
    }
    paramArrayOfByte = new PKCS8EncodedKeySpec(paramArrayOfByte);
    paramArrayOfByte = keyFactory.generatePrivate(paramArrayOfByte);
    Cipher localCipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
    if (paramBoolean2) {}
    for (i = j;; i = 2)
    {
      localCipher.init(i, paramArrayOfByte);
      return localCipher;
    }
  }
  
  private static KeyFactory getKeyFactory()
  {
    try
    {
      KeyFactory localKeyFactory = KeyFactory.getInstance("RSA");
      return localKeyFactory;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
  
  private static KeyPairGenerator getKeyPairGenerator()
  {
    try
    {
      KeyPairGenerator localKeyPairGenerator = KeyPairGenerator.getInstance("RSA");
      localKeyPairGenerator.initialize(1024);
      return localKeyPairGenerator;
    }
    catch (Exception localException) {}
    return null;
  }
  
  public static RSASecurityKey getRsaSecurityKey()
  {
    return getRsaSecurityKey(initKey());
  }
  
  public static RSASecurityKey getRsaSecurityKey(KeyPair paramKeyPair)
  {
    RSASecurityKey localRSASecurityKey = new RSASecurityKey();
    localRSASecurityKey.setBase64PrivateKey(Base64.encodeBase64String(paramKeyPair.getPrivate().getEncoded()));
    localRSASecurityKey.setBase64PublicKey(Base64.encodeBase64String(paramKeyPair.getPublic().getEncoded()));
    localRSASecurityKey.setBytePrivateKey(paramKeyPair.getPrivate().getEncoded());
    localRSASecurityKey.setBytePublicKey(paramKeyPair.getPublic().getEncoded());
    return localRSASecurityKey;
  }
  
  public static Signature getSignature(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramArrayOfByte = new X509EncodedKeySpec(paramArrayOfByte);
      paramArrayOfByte = keyFactory.generatePublic(paramArrayOfByte);
      localSignature = Signature.getInstance("MD5withRSA");
      localSignature.initVerify(paramArrayOfByte);
      return localSignature;
    }
    paramArrayOfByte = new PKCS8EncodedKeySpec(paramArrayOfByte);
    paramArrayOfByte = keyFactory.generatePrivate(paramArrayOfByte);
    Signature localSignature = Signature.getInstance("MD5withRSA");
    localSignature.initSign(paramArrayOfByte);
    return localSignature;
  }
  
  public static KeyPair initKey()
  {
    return keyPairGen.generateKeyPair();
  }
  
  public static void main(String[] paramArrayOfString)
  {
    Object localObject = getRsaSecurityKey();
    paramArrayOfString = ((RSASecurityKey)localObject).getBase64PublicKey();
    System.out.println("生成的公钥串:" + paramArrayOfString);
    localObject = ((RSASecurityKey)localObject).getBase64PrivateKey();
    System.out.println("生成的私钥串:" + (String)localObject);
    System.out.println("加密前数据：" + "测试一个很长的报文dfasdfdasffffffffffadfasaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
    paramArrayOfString = base64EncryptByPublicKey("测试一个很长的报文dfasdfdasffffffffffadfasaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", paramArrayOfString);
    System.out.println("公钥加密后的base64数据串:" + paramArrayOfString);
    paramArrayOfString = base64DecryptByPrivateKey(paramArrayOfString, (String)localObject);
    System.out.println("解密结果串：" + paramArrayOfString);
  }
  
  public static byte[] sign(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    paramArrayOfByte2 = getSignature(paramArrayOfByte2, false);
    paramArrayOfByte2.update(paramArrayOfByte1);
    return paramArrayOfByte2.sign();
  }
  
  public static boolean verify(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3)
  {
    paramArrayOfByte2 = getSignature(paramArrayOfByte2, false);
    paramArrayOfByte2.update(paramArrayOfByte1);
    return paramArrayOfByte2.verify(paramArrayOfByte3);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\paic\openapi\demo\util\rsa\RSA.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */