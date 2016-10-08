package com.tencent.bugly.proguard;

public final class aj
  extends j
  implements Cloneable
{
  private static byte[] d;
  private byte a = 0;
  private String b = "";
  private byte[] c = null;
  
  public aj() {}
  
  public aj(byte paramByte, String paramString, byte[] paramArrayOfByte)
  {
    this.a = paramByte;
    this.b = paramString;
    this.c = paramArrayOfByte;
  }
  
  public final void a(h paramh)
  {
    this.a = paramh.a(this.a, 0, true);
    this.b = paramh.b(1, true);
    if (d == null)
    {
      byte[] arrayOfByte = (byte[])new byte[1];
      d = arrayOfByte;
      ((byte[])arrayOfByte)[0] = 0;
    }
    this.c = ((byte[])paramh.c(2, false));
  }
  
  public final void a(i parami)
  {
    parami.a(this.a, 0);
    parami.a(this.b, 1);
    if (this.c != null) {
      parami.a(this.c, 2);
    }
  }
  
  public final void a(StringBuilder paramStringBuilder, int paramInt) {}
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\proguard\aj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */