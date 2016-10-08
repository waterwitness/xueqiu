package com.sleepycat.b.g;

import com.sleepycat.b.f.a;
import java.io.RandomAccessFile;

public class j
{
  RandomAccessFile a;
  a b;
  public int c;
  long d;
  
  static
  {
    if (!j.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      e = bool;
      return;
    }
  }
  
  j(long paramLong, String paramString)
  {
    this.b = new a("file_" + paramString + "_fileHandle");
    this.d = paramLong;
  }
  
  public void a()
  {
    this.b.c();
  }
  
  final void a(RandomAccessFile paramRandomAccessFile, int paramInt)
  {
    if ((!e) && (this.a != null)) {
      throw new AssertionError();
    }
    this.a = paramRandomAccessFile;
    this.c = paramInt;
  }
  
  final void b()
  {
    if (this.a != null) {}
    try
    {
      this.a.close();
      return;
    }
    finally
    {
      this.a = null;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */