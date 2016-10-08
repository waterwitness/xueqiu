package com.flurry.sdk;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class kk<ObjectType>
{
  private static final String a = kk.class.getSimpleName();
  private static final byte[] b = { 113, -92, -8, 125, 121, 107, -65, -61, -74, -114, -32, 0, -57, -87, -35, -56, -6, -52, 51, 126, -104, 49, 79, -52, 118, -84, 99, -52, -14, -126, -27, -64 };
  private String c;
  private lb<ObjectType> d;
  
  public kk(String paramString, lb<ObjectType> paramlb)
  {
    this.c = paramString;
    this.d = paramlb;
  }
  
  public static void a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {}
    for (;;)
    {
      return;
      int j = paramArrayOfByte.length;
      int k = b.length;
      int i = 0;
      while (i < j)
      {
        paramArrayOfByte[i] = ((byte)(paramArrayOfByte[i] ^ b[(i % k)] ^ i * 31 % 251));
        i += 1;
      }
    }
  }
  
  public static void b(byte[] paramArrayOfByte)
  {
    a(paramArrayOfByte);
  }
  
  public static int c(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return 0;
    }
    jy localjy = new jy();
    localjy.update(paramArrayOfByte);
    return localjy.b();
  }
  
  public byte[] a(ObjectType paramObjectType)
  {
    if (paramObjectType == null) {
      throw new IOException("Encoding: " + this.c + ": Nothing to encode");
    }
    Object localObject = new ByteArrayOutputStream();
    this.d.a((OutputStream)localObject, paramObjectType);
    paramObjectType = ((ByteArrayOutputStream)localObject).toByteArray();
    kg.a(3, a, "Encoding " + this.c + ": " + new String(paramObjectType));
    localObject = new kz(new kx());
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    ((lb)localObject).a(localByteArrayOutputStream, paramObjectType);
    paramObjectType = localByteArrayOutputStream.toByteArray();
    a(paramObjectType);
    return paramObjectType;
  }
  
  public ObjectType d(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      throw new IOException("Decoding: " + this.c + ": Nothing to decode");
    }
    b(paramArrayOfByte);
    paramArrayOfByte = (byte[])new kz(new kx()).b(new ByteArrayInputStream(paramArrayOfByte));
    kg.a(3, a, "Decoding: " + this.c + ": " + new String(paramArrayOfByte));
    paramArrayOfByte = new ByteArrayInputStream(paramArrayOfByte);
    return (ObjectType)this.d.b(paramArrayOfByte);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\kk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */