package u.aly;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.StringWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class ex
{
  public static final String a = System.getProperty("line.separator");
  
  public static String a(InputStream paramInputStream)
  {
    paramInputStream = new InputStreamReader(paramInputStream);
    char[] arrayOfChar = new char['Ѐ'];
    StringWriter localStringWriter = new StringWriter();
    for (;;)
    {
      int i = paramInputStream.read(arrayOfChar);
      if (-1 == i) {
        return localStringWriter.toString();
      }
      localStringWriter.write(arrayOfChar, 0, i);
    }
  }
  
  public static String a(String paramString)
  {
    int i = 0;
    if (paramString == null) {
      return null;
    }
    try
    {
      byte[] arrayOfByte = paramString.getBytes();
      Object localObject = MessageDigest.getInstance("MD5");
      ((MessageDigest)localObject).reset();
      ((MessageDigest)localObject).update(arrayOfByte);
      arrayOfByte = ((MessageDigest)localObject).digest();
      localObject = new StringBuffer();
      for (;;)
      {
        if (i >= arrayOfByte.length) {
          return ((StringBuffer)localObject).toString();
        }
        ((StringBuffer)localObject).append(String.format("%02X", new Object[] { Byte.valueOf(arrayOfByte[i]) }));
        i += 1;
      }
      return paramString.replaceAll("[^[a-z][A-Z][0-9][.][_]]", "");
    }
    catch (Exception localException) {}
  }
  
  public static void a(File paramFile, byte[] paramArrayOfByte)
  {
    paramFile = new FileOutputStream(paramFile);
    try
    {
      paramFile.write(paramArrayOfByte);
      paramFile.flush();
      return;
    }
    finally
    {
      try
      {
        paramFile.close();
        return;
      }
      catch (Exception paramFile) {}
      paramArrayOfByte = finally;
      try
      {
        paramFile.close();
        throw paramArrayOfByte;
      }
      catch (Exception paramFile)
      {
        for (;;) {}
      }
    }
  }
  
  public static String b(String paramString)
  {
    try
    {
      Object localObject = MessageDigest.getInstance("MD5");
      ((MessageDigest)localObject).update(paramString.getBytes());
      paramString = ((MessageDigest)localObject).digest();
      localObject = new StringBuffer();
      int i = 0;
      for (;;)
      {
        if (i >= paramString.length) {
          return ((StringBuffer)localObject).toString();
        }
        ((StringBuffer)localObject).append(Integer.toHexString(paramString[i] & 0xFF));
        i += 1;
      }
      return "";
    }
    catch (NoSuchAlgorithmException paramString)
    {
      es.a("helper", "getMD5 error", paramString);
    }
  }
  
  public static byte[] b(InputStream paramInputStream)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    byte[] arrayOfByte = new byte['Ѐ'];
    for (;;)
    {
      int i = paramInputStream.read(arrayOfByte);
      if (-1 == i) {
        return localByteArrayOutputStream.toByteArray();
      }
      localByteArrayOutputStream.write(arrayOfByte, 0, i);
    }
  }
  
  public static void c(InputStream paramInputStream)
  {
    if (paramInputStream != null) {}
    try
    {
      paramInputStream.close();
      return;
    }
    catch (Exception paramInputStream) {}
  }
  
  public static boolean c(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\ex.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */