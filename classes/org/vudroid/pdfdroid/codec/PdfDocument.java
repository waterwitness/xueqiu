package org.vudroid.pdfdroid.codec;

import org.vudroid.a.a.b;
import org.vudroid.a.a.c;

public class PdfDocument
  implements b
{
  private long a;
  
  private PdfDocument(long paramLong)
  {
    this.a = paramLong;
  }
  
  static PdfDocument a(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = new PdfDocument(open(524288, paramString1, paramString2));
      return paramString1;
    }
    catch (Throwable paramString1)
    {
      paramString1.printStackTrace();
    }
    return null;
  }
  
  private void b()
  {
    try
    {
      if (this.a != 0L)
      {
        free(this.a);
        this.a = 0L;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private static native void free(long paramLong);
  
  private static native int getPageCount(long paramLong);
  
  private static native long open(int paramInt, String paramString1, String paramString2);
  
  public final int a()
  {
    return getPageCount(this.a);
  }
  
  public final c a(int paramInt)
  {
    return PdfPage.a(this.a, paramInt + 1);
  }
  
  protected void finalize()
  {
    b();
    super.finalize();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\vudroid\pdfdroid\codec\PdfDocument.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */