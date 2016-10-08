package com.android.volley.toolbox;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import com.android.volley.e;
import com.android.volley.k;
import com.android.volley.m;
import com.android.volley.n;
import com.android.volley.r;
import com.android.volley.s;
import com.android.volley.t;
import com.android.volley.z;

public final class o
  extends n<Bitmap>
{
  private static final Object p = new Object();
  private final t<Bitmap> l;
  private final Bitmap.Config m;
  private final int n;
  private final int o;
  
  public o(String paramString, t<Bitmap> paramt, int paramInt1, int paramInt2, Bitmap.Config paramConfig, s params)
  {
    super(0, paramString, params);
    this.j = new e(1000, 2, 2.0F);
    this.l = paramt;
    this.m = paramConfig;
    this.n = paramInt1;
    this.o = paramInt2;
  }
  
  private static int a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i;
    if ((paramInt1 == 0) && (paramInt2 == 0)) {
      i = paramInt3;
    }
    double d;
    do
    {
      do
      {
        return i;
        if (paramInt1 == 0) {
          return (int)(paramInt2 / paramInt4 * paramInt3);
        }
        i = paramInt1;
      } while (paramInt2 == 0);
      d = paramInt4 / paramInt3;
      i = paramInt1;
    } while (paramInt1 * d <= paramInt2);
    return (int)(paramInt2 / d);
  }
  
  private static int b(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    double d = Math.min(paramInt1 / paramInt3, paramInt2 / paramInt4);
    for (float f = 1.0F; f * 2.0F <= d; f *= 2.0F) {}
    return (int)f;
  }
  
  protected final r<Bitmap> a(k paramk)
  {
    for (;;)
    {
      synchronized (p)
      {
        try
        {
          Object localObject1 = paramk.b;
          Object localObject2 = new BitmapFactory.Options();
          if ((this.n == 0) && (this.o == 0))
          {
            ((BitmapFactory.Options)localObject2).inPreferredConfig = this.m;
            localObject1 = BitmapFactory.decodeByteArray((byte[])localObject1, 0, localObject1.length, (BitmapFactory.Options)localObject2);
            if (localObject1 != null) {
              break label259;
            }
            localObject1 = r.a(new m(paramk));
            paramk = (k)localObject1;
            return paramk;
          }
          ((BitmapFactory.Options)localObject2).inJustDecodeBounds = true;
          BitmapFactory.decodeByteArray((byte[])localObject1, 0, localObject1.length, (BitmapFactory.Options)localObject2);
          int i = ((BitmapFactory.Options)localObject2).outWidth;
          int j = ((BitmapFactory.Options)localObject2).outHeight;
          int k = a(this.n, this.o, i, j);
          int i1 = a(this.o, this.n, j, i);
          ((BitmapFactory.Options)localObject2).inJustDecodeBounds = false;
          ((BitmapFactory.Options)localObject2).inSampleSize = b(i, j, k, i1);
          localObject1 = BitmapFactory.decodeByteArray((byte[])localObject1, 0, localObject1.length, (BitmapFactory.Options)localObject2);
          if ((localObject1 != null) && ((((Bitmap)localObject1).getWidth() > k) || (((Bitmap)localObject1).getHeight() > i1)))
          {
            localObject2 = Bitmap.createScaledBitmap((Bitmap)localObject1, k, i1, true);
            ((Bitmap)localObject1).recycle();
            localObject1 = localObject2;
            continue;
            paramk = finally;
          }
        }
        catch (OutOfMemoryError localOutOfMemoryError)
        {
          z.c("Caught OOM for %d byte image, url=%s", new Object[] { Integer.valueOf(paramk.b.length), a() });
          paramk = r.a(new m(localOutOfMemoryError));
          return paramk;
        }
      }
      continue;
      label259:
      r localr = r.a(localOutOfMemoryError, f.a(paramk));
      paramk = localr;
    }
  }
  
  public final com.android.volley.o g()
  {
    return com.android.volley.o.a;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\android\volley\toolbox\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */