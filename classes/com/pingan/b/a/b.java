package com.pingan.b.a;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.entity.AbstractHttpEntity;

public final class b
  extends AbstractHttpEntity
  implements Cloneable
{
  private final byte[] a;
  private final int b;
  private final int c;
  private final j d;
  private final c e;
  
  public b(byte[] paramArrayOfByte, int paramInt, j paramj, c paramc)
  {
    if ((paramArrayOfByte.length < 0) || (paramInt < 0) || (paramInt + 0 < 0) || (paramInt + 0 > paramArrayOfByte.length)) {
      throw new IndexOutOfBoundsException("off: 0 len: " + paramInt + " b.length: " + paramArrayOfByte.length);
    }
    this.a = paramArrayOfByte;
    this.b = 0;
    this.c = paramInt;
    this.d = paramj;
    this.e = paramc;
  }
  
  public b(byte[] paramArrayOfByte, j paramj, c paramc)
  {
    this(paramArrayOfByte, paramArrayOfByte.length, paramj, paramc);
  }
  
  public final Object clone()
  {
    return super.clone();
  }
  
  public final InputStream getContent()
  {
    return new ByteArrayInputStream(this.a, this.b, this.c);
  }
  
  public final long getContentLength()
  {
    return this.c;
  }
  
  public final boolean isRepeatable()
  {
    return true;
  }
  
  public final boolean isStreaming()
  {
    return false;
  }
  
  public final void writeTo(OutputStream paramOutputStream)
  {
    int i;
    if ((this.d != null) || (this.e != null)) {
      i = 0;
    }
    for (;;)
    {
      if ((i >= this.c) || ((this.e != null) && (this.e.a()))) {}
      try
      {
        paramOutputStream.close();
        throw new d();
        int j = this.c - i;
        if (j < 8192) {}
        for (;;)
        {
          paramOutputStream.write(this.a, this.b + i, j);
          if (this.d != null) {
            this.d.a(i, this.c);
          }
          i += j;
          break;
          j = 8192;
        }
        paramOutputStream.write(this.a, this.b, this.c);
        paramOutputStream.flush();
        return;
      }
      catch (Exception paramOutputStream)
      {
        for (;;) {}
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\b\a\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */