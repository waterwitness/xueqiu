package org.vudroid.pdfdroid.codec;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import org.vudroid.a.a.c;

public class PdfPage
  implements c
{
  private long a;
  private long b;
  
  private PdfPage(long paramLong1, long paramLong2)
  {
    this.a = paramLong1;
    this.b = paramLong2;
  }
  
  static PdfPage a(long paramLong, int paramInt)
  {
    try
    {
      PdfPage localPdfPage = new PdfPage(open(paramLong, paramInt), paramLong);
      return localPdfPage;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return null;
  }
  
  private RectF d()
  {
    float[] arrayOfFloat = new float[4];
    getMediaBox(this.a, arrayOfFloat);
    return new RectF(arrayOfFloat[0], arrayOfFloat[1], arrayOfFloat[2], arrayOfFloat[3]);
  }
  
  private static native void free(long paramLong);
  
  private static native void getMediaBox(long paramLong, float[] paramArrayOfFloat);
  
  private native void nativeCreateView(long paramLong1, long paramLong2, int[] paramArrayOfInt1, float[] paramArrayOfFloat, int[] paramArrayOfInt2);
  
  private static native long open(long paramLong, int paramInt);
  
  public final int a()
  {
    return (int)d().width();
  }
  
  public final Bitmap a(int paramInt1, int paramInt2, RectF paramRectF)
  {
    Matrix localMatrix = new Matrix();
    localMatrix.postScale(paramInt1 / d().width(), -paramInt2 / d().height());
    localMatrix.postTranslate(0.0F, paramInt2);
    localMatrix.postTranslate(-paramRectF.left * paramInt1, -paramRectF.top * paramInt2);
    localMatrix.postScale(1.0F / paramRectF.width(), 1.0F / paramRectF.height());
    paramRectF = new Rect(0, 0, paramInt1, paramInt2);
    paramInt1 = paramRectF.left;
    paramInt2 = paramRectF.top;
    int i = paramRectF.right;
    int j = paramRectF.bottom;
    float[] arrayOfFloat = new float[9];
    localMatrix.getValues(arrayOfFloat);
    float f1 = arrayOfFloat[0];
    float f2 = arrayOfFloat[3];
    float f3 = arrayOfFloat[1];
    float f4 = arrayOfFloat[4];
    float f5 = arrayOfFloat[2];
    float f6 = arrayOfFloat[5];
    int k = paramRectF.width();
    int m = paramRectF.height();
    paramRectF = new int[k * m];
    nativeCreateView(this.b, this.a, new int[] { paramInt1, paramInt2, i, j }, new float[] { f1, f2, f3, f4, f5, f6 }, paramRectF);
    return Bitmap.createBitmap(paramRectF, k, m, Bitmap.Config.RGB_565);
  }
  
  public final int b()
  {
    return (int)d().height();
  }
  
  public final void c()
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
  
  protected void finalize()
  {
    c();
    super.finalize();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\vudroid\pdfdroid\codec\PdfPage.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */