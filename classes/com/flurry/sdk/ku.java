package com.flurry.sdk;

import java.util.UUID;

public class ku
{
  private static final String b = ku.class.getSimpleName();
  String a = null;
  private byte[] c = null;
  
  private ku() {}
  
  public ku(byte[] paramArrayOfByte)
  {
    this.a = UUID.randomUUID().toString();
    this.c = paramArrayOfByte;
  }
  
  public static String a(String paramString)
  {
    return ".yflurrydatasenderblock." + paramString;
  }
  
  public String a()
  {
    return this.a;
  }
  
  public byte[] b()
  {
    return this.c;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\ku.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */