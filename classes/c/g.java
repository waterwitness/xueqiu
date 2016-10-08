package c;

import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

public final class g
  implements Serializable
{
  static final char[] a = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  public static final g b = a(new byte[0]);
  public final byte[] c;
  transient int d;
  transient String e;
  
  g(byte[] paramArrayOfByte)
  {
    this.c = paramArrayOfByte;
  }
  
  public static g a(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("s == null");
    }
    g localg = new g(paramString.getBytes(u.a));
    localg.e = paramString;
    return localg;
  }
  
  public static g a(byte... paramVarArgs)
  {
    if (paramVarArgs == null) {
      throw new IllegalArgumentException("data == null");
    }
    return new g((byte[])paramVarArgs.clone());
  }
  
  public static g b(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("base64 == null");
    }
    paramString = c.a(paramString);
    if (paramString != null) {
      return new g(paramString);
    }
    return null;
  }
  
  private g c(String paramString)
  {
    try
    {
      paramString = a(MessageDigest.getInstance(paramString).digest(this.c));
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      throw new AssertionError(paramString);
    }
  }
  
  public final String a()
  {
    String str = this.e;
    if (str != null) {
      return str;
    }
    str = new String(this.c, u.a);
    this.e = str;
    return str;
  }
  
  public final String b()
  {
    int i = 0;
    char[] arrayOfChar = new char[this.c.length * 2];
    byte[] arrayOfByte = this.c;
    int k = arrayOfByte.length;
    int j = 0;
    while (i < k)
    {
      int m = arrayOfByte[i];
      int n = j + 1;
      arrayOfChar[j] = a[(m >> 4 & 0xF)];
      j = n + 1;
      arrayOfChar[n] = a[(m & 0xF)];
      i += 1;
    }
    return new String(arrayOfChar);
  }
  
  public final g c()
  {
    int i = 0;
    for (;;)
    {
      Object localObject = this;
      if (i < this.c.length)
      {
        int j = this.c[i];
        if ((j >= 65) && (j <= 90))
        {
          localObject = (byte[])this.c.clone();
          localObject[i] = ((byte)(j + 32));
          i += 1;
          while (i < localObject.length)
          {
            j = localObject[i];
            if ((j >= 65) && (j <= 90)) {
              localObject[i] = ((byte)(j + 32));
            }
            i += 1;
          }
          localObject = new g((byte[])localObject);
        }
      }
      else
      {
        return (g)localObject;
      }
      i += 1;
    }
  }
  
  public final byte[] d()
  {
    return (byte[])this.c.clone();
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (((paramObject instanceof g)) && (((g)paramObject).c.length == this.c.length))
    {
      paramObject = (g)paramObject;
      byte[] arrayOfByte = this.c;
      int i = this.c.length;
      if ((((g)paramObject).c.length - i >= 0) && (arrayOfByte.length - i >= 0) && (u.a(((g)paramObject).c, arrayOfByte, i))) {}
      for (i = 1; i != 0; i = 0) {
        return true;
      }
    }
    return false;
  }
  
  public final int hashCode()
  {
    int i = this.d;
    if (i != 0) {
      return i;
    }
    i = Arrays.hashCode(this.c);
    this.d = i;
    return i;
  }
  
  public final String toString()
  {
    if (this.c.length == 0) {
      return "ByteString[size=0]";
    }
    if (this.c.length <= 16) {
      return String.format("ByteString[size=%s data=%s]", new Object[] { Integer.valueOf(this.c.length), b() });
    }
    return String.format("ByteString[size=%s md5=%s]", new Object[] { Integer.valueOf(this.c.length), c("MD5").b() });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\c\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */