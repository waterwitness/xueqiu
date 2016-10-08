package u.aly;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.Locale;

public final class fb
{
  private final byte[] a = new byte[8];
  private String b = "1.0";
  private String c = null;
  private byte[] d = null;
  private byte[] e = null;
  private byte[] f = null;
  private int g = 0;
  private int h = 0;
  private int i = 0;
  private byte[] j = null;
  private byte[] k = null;
  
  private fb(byte[] paramArrayOfByte1, String paramString, byte[] paramArrayOfByte2)
  {
    if ((paramArrayOfByte1 == null) || (paramArrayOfByte1.length == 0)) {
      throw new Exception("entity is null or empty");
    }
    this.c = paramString;
    this.i = paramArrayOfByte1.length;
    this.j = ew.a(paramArrayOfByte1);
    this.h = ((int)(System.currentTimeMillis() / 1000L));
    this.k = paramArrayOfByte2;
  }
  
  public static fb a(Context paramContext, String paramString, byte[] paramArrayOfByte)
  {
    try
    {
      String str1 = er.k(paramContext);
      String str2 = er.c(paramContext);
      paramContext = paramContext.getSharedPreferences("umeng_general_config", 0);
      String str3 = paramContext.getString("signature", null);
      int m = paramContext.getInt("serial", 1);
      paramString = new fb(paramArrayOfByte, paramString, (str2 + str1).getBytes());
      paramString.b(str3);
      paramString.g = m;
      if (paramString.d == null) {
        paramString.d = paramString.a(paramString.a, (int)(System.currentTimeMillis() / 1000L));
      }
      paramString.e = paramString.a(paramString.d, paramString.h);
      paramArrayOfByte = new StringBuilder();
      paramArrayOfByte.append(b(paramString.d));
      paramArrayOfByte.append(paramString.g);
      paramArrayOfByte.append(paramString.h);
      paramArrayOfByte.append(paramString.i);
      paramArrayOfByte.append(b(paramString.e));
      paramString.f = a(paramArrayOfByte.toString().getBytes());
      paramContext.edit().putInt("serial", m + 1).putString("signature", paramString.b()).commit();
      return paramString;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
    return null;
  }
  
  public static byte[] a(String paramString)
  {
    Object localObject = null;
    if (paramString == null) {}
    int n;
    do
    {
      return (byte[])localObject;
      n = paramString.length();
    } while (n % 2 != 0);
    byte[] arrayOfByte = new byte[n / 2];
    int m = 0;
    for (;;)
    {
      localObject = arrayOfByte;
      if (m >= n) {
        break;
      }
      arrayOfByte[(m / 2)] = ((byte)Integer.valueOf(paramString.substring(m, m + 2), 16).intValue());
      m += 2;
    }
  }
  
  private static byte[] a(byte[] paramArrayOfByte)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.reset();
      localMessageDigest.update(paramArrayOfByte);
      paramArrayOfByte = localMessageDigest.digest();
      return paramArrayOfByte;
    }
    catch (Exception paramArrayOfByte)
    {
      paramArrayOfByte.printStackTrace();
    }
    return null;
  }
  
  private byte[] a(byte[] paramArrayOfByte, int paramInt)
  {
    int i4 = 0;
    byte[] arrayOfByte1 = a(this.k);
    byte[] arrayOfByte2 = a(this.j);
    int i5 = arrayOfByte1.length;
    byte[] arrayOfByte3 = new byte[i5 * 2];
    int i3 = 0;
    label47:
    int m;
    int n;
    int i1;
    int i2;
    if (i3 >= i5)
    {
      i3 = 0;
      if (i3 < 2) {
        break label137;
      }
      m = (byte)(paramInt & 0xFF);
      n = (byte)(paramInt >> 8 & 0xFF);
      i1 = (byte)(paramInt >> 16 & 0xFF);
      i2 = (byte)(paramInt >>> 24);
      paramInt = i4;
    }
    for (;;)
    {
      if (paramInt >= arrayOfByte3.length)
      {
        return arrayOfByte3;
        arrayOfByte3[(i3 * 2)] = arrayOfByte2[i3];
        arrayOfByte3[(i3 * 2 + 1)] = arrayOfByte1[i3];
        i3 += 1;
        break;
        label137:
        arrayOfByte3[i3] = paramArrayOfByte[i3];
        arrayOfByte3[(arrayOfByte3.length - i3 - 1)] = paramArrayOfByte[(paramArrayOfByte.length - i3 - 1)];
        i3 += 1;
        break label47;
      }
      arrayOfByte3[paramInt] = ((byte)(arrayOfByte3[paramInt] ^ new byte[] { m, n, i1, i2 }[(paramInt % 4)]));
      paramInt += 1;
    }
  }
  
  private String b()
  {
    return b(this.d);
  }
  
  private static String b(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int m = 0;
    for (;;)
    {
      if (m >= paramArrayOfByte.length) {
        return localStringBuffer.toString().toLowerCase(Locale.US);
      }
      localStringBuffer.append(String.format("%02X", new Object[] { Byte.valueOf(paramArrayOfByte[m]) }));
      m += 1;
    }
  }
  
  private void b(String paramString)
  {
    this.d = a(paramString);
  }
  
  public final byte[] a()
  {
    el localel = new el();
    localel.a = this.b;
    localel.b = this.c;
    localel.c = b(this.d);
    localel.d = this.g;
    localel.a();
    localel.e = this.h;
    localel.b();
    localel.f = this.i;
    localel.c();
    Object localObject = this.j;
    if (localObject == null) {}
    for (localObject = null;; localObject = ByteBuffer.wrap((byte[])localObject))
    {
      localel.g = ((ByteBuffer)localObject);
      localel.h = b(this.e);
      localel.i = b(this.f);
      try
      {
        localObject = new fh().a(localel);
        return (byte[])localObject;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
    return null;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(String.format("version : %s\n", new Object[] { this.b }));
    localStringBuilder.append(String.format("address : %s\n", new Object[] { this.c }));
    localStringBuilder.append(String.format("signature : %s\n", new Object[] { b(this.d) }));
    localStringBuilder.append(String.format("serial : %s\n", new Object[] { Integer.valueOf(this.g) }));
    localStringBuilder.append(String.format("timestamp : %d\n", new Object[] { Integer.valueOf(this.h) }));
    localStringBuilder.append(String.format("length : %d\n", new Object[] { Integer.valueOf(this.i) }));
    localStringBuilder.append(String.format("guid : %s\n", new Object[] { b(this.e) }));
    localStringBuilder.append(String.format("checksum : %s ", new Object[] { b(this.f) }));
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\fb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */