package com.e.a.a.a;

import java.io.OutputStream;

public final class b
  extends a
{
  private final byte[] b;
  private final String c;
  
  private b(byte[] paramArrayOfByte, com.e.a.a parama, String paramString)
  {
    super(parama);
    com.e.b.a.a(paramArrayOfByte, "byte[]");
    this.b = paramArrayOfByte;
    this.c = paramString;
  }
  
  public b(byte[] paramArrayOfByte, String paramString)
  {
    this(paramArrayOfByte, "application/octet-stream", paramString);
  }
  
  @Deprecated
  private b(byte[] paramArrayOfByte, String paramString1, String paramString2)
  {
    this(paramArrayOfByte, com.e.a.a.a(paramString1), paramString2);
  }
  
  public final void a(OutputStream paramOutputStream)
  {
    paramOutputStream.write(this.b);
  }
  
  public final String b()
  {
    return null;
  }
  
  public final String c()
  {
    return this.c;
  }
  
  public final String d()
  {
    return "binary";
  }
  
  public final long e()
  {
    return this.b.length;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\e\a\a\a\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */