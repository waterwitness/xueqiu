package com.d.a.a.a.a.a;

import java.io.Closeable;
import java.io.File;
import java.io.InputStream;

public final class e
  implements Closeable
{
  File[] a;
  private final String c;
  private final long d;
  private final InputStream[] e;
  private final long[] f;
  
  private e(a parama, String paramString, long paramLong, File[] paramArrayOfFile, InputStream[] paramArrayOfInputStream, long[] paramArrayOfLong)
  {
    this.c = paramString;
    this.d = paramLong;
    this.a = paramArrayOfFile;
    this.e = paramArrayOfInputStream;
    this.f = paramArrayOfLong;
  }
  
  public final void close()
  {
    InputStream[] arrayOfInputStream = this.e;
    int j = arrayOfInputStream.length;
    int i = 0;
    while (i < j)
    {
      h.a(arrayOfInputStream[i]);
      i += 1;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\d\a\a\a\a\a\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */