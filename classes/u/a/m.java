package u.a;

import java.io.File;
import java.io.FileInputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public final class m
{
  public static final String a = System.getProperty("line.separator");
  
  public static String a()
  {
    Date localDate = new Date();
    return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).format(localDate);
  }
  
  public static String a(File paramFile)
  {
    byte[] arrayOfByte = new byte['Ѐ'];
    try
    {
      boolean bool = paramFile.isFile();
      if (!bool) {
        return "";
      }
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      paramFile = new FileInputStream(paramFile);
      for (;;)
      {
        int i = paramFile.read(arrayOfByte, 0, 1024);
        if (i == -1)
        {
          paramFile.close();
          return String.format("%1$032x", new Object[] { new BigInteger(1, localMessageDigest.digest()) });
        }
        localMessageDigest.update(arrayOfByte, 0, i);
      }
      return null;
    }
    catch (Exception paramFile)
    {
      paramFile.printStackTrace();
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
      b.a("helper", "getMD5 error", paramString);
    }
  }
  
  public static String c(String paramString)
  {
    long l;
    try
    {
      l = Long.valueOf(paramString).longValue();
      if (l < 1024L) {
        return (int)l + "B";
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      return paramString;
    }
    if (l < 1048576L) {
      return new DecimalFormat("#0.00").format((float)l / 1024.0D) + "K";
    }
    if (l < 1073741824L) {
      return new DecimalFormat("#0.00").format((float)l / 1048576.0D) + "M";
    }
    return new DecimalFormat("#0.00").format((float)l / 1.073741824E9D) + "G";
  }
  
  public static boolean d(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\a\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */