package com.d.a.b.b;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.media.ExifInterface;
import com.d.a.b.a.f;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;

public final class a
  implements d
{
  protected final boolean a;
  
  public a(boolean paramBoolean)
  {
    this.a = paramBoolean;
  }
  
  private static b a(String paramString)
  {
    int j = 0;
    boolean bool2 = true;
    boolean bool3 = true;
    boolean bool4 = true;
    boolean bool1 = true;
    try
    {
      int k = new ExifInterface(com.d.a.b.d.c.c.c(paramString)).getAttributeInt("Orientation", 1);
      i = j;
      switch (k)
      {
      }
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        int i;
        com.d.a.c.d.c("Can't read EXIF tags from file [%s]", new Object[] { paramString });
      }
    }
    bool1 = false;
    i = j;
    for (;;)
    {
      return new b(i, bool1);
      bool2 = false;
      i = 90;
      bool1 = bool2;
      continue;
      bool3 = false;
      i = 180;
      bool1 = bool3;
      continue;
      bool4 = false;
      i = 270;
      bool1 = bool4;
    }
  }
  
  private static InputStream a(InputStream paramInputStream, e parame)
  {
    try
    {
      paramInputStream.reset();
      return paramInputStream;
    }
    catch (IOException localIOException)
    {
      com.d.a.c.b.a(paramInputStream);
    }
    return b(parame);
  }
  
  private static InputStream b(e parame)
  {
    return parame.f.a(parame.b, parame.g);
  }
  
  public final Bitmap a(e parame)
  {
    Object localObject3 = b(parame);
    Object localObject1 = localObject3;
    Object localObject4;
    Object localObject2;
    for (;;)
    {
      try
      {
        localObject4 = new BitmapFactory.Options();
        localObject1 = localObject3;
        ((BitmapFactory.Options)localObject4).inJustDecodeBounds = true;
        localObject1 = localObject3;
        BitmapFactory.decodeStream((InputStream)localObject3, null, (BitmapFactory.Options)localObject4);
        localObject1 = localObject3;
        localObject2 = parame.b;
        localObject1 = localObject3;
        if (parame.h)
        {
          localObject1 = localObject3;
          if ("image/jpeg".equalsIgnoreCase(((BitmapFactory.Options)localObject4).outMimeType))
          {
            localObject1 = localObject3;
            if (com.d.a.b.d.c.a((String)localObject2) == com.d.a.b.d.c.c)
            {
              i = 1;
              if (i == 0) {
                continue;
              }
              localObject1 = localObject3;
              localObject2 = a((String)localObject2);
              localObject1 = localObject3;
              localObject4 = new c(new f(((BitmapFactory.Options)localObject4).outWidth, ((BitmapFactory.Options)localObject4).outHeight, ((b)localObject2).a), (b)localObject2);
              localObject1 = localObject3;
              localObject2 = a((InputStream)localObject3, parame);
              localObject1 = localObject2;
              localObject3 = ((c)localObject4).a;
              localObject1 = localObject2;
              i = parame.d;
              localObject1 = localObject2;
              if (i != com.d.a.b.a.e.a) {
                break label349;
              }
              i = 1;
              if (i > 1)
              {
                localObject1 = localObject2;
                if (this.a)
                {
                  localObject1 = localObject2;
                  com.d.a.c.d.a("Subsample original image (%1$s) to %2$s (scale = %3$d) [%4$s]", new Object[] { localObject3, new f(((f)localObject3).a / i, ((f)localObject3).b / i), Integer.valueOf(i), parame.a });
                }
              }
              localObject1 = localObject2;
              localObject3 = parame.i;
              localObject1 = localObject2;
              ((BitmapFactory.Options)localObject3).inSampleSize = i;
              localObject1 = localObject2;
              localObject3 = BitmapFactory.decodeStream((InputStream)localObject2, null, (BitmapFactory.Options)localObject3);
              com.d.a.c.b.a((Closeable)localObject2);
              if (localObject3 != null) {
                break label423;
              }
              com.d.a.c.d.d("Image can't be decoded [%s]", new Object[] { parame.a });
              return (Bitmap)localObject3;
            }
          }
          i = 0;
          continue;
        }
        localObject1 = localObject3;
        localObject2 = new b();
        continue;
        localObject1 = localObject2;
      }
      finally
      {
        com.d.a.c.b.a((Closeable)localObject1);
      }
      label349:
      if (i != com.d.a.b.a.e.b) {
        break;
      }
      localObject1 = localObject2;
      i = com.d.a.c.a.a((f)localObject3);
    }
    localObject1 = localObject2;
    f localf = parame.c;
    localObject1 = localObject2;
    if (i == com.d.a.b.a.e.c) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      localObject1 = localObject2;
      i = com.d.a.c.a.a((f)localObject3, localf, parame.e, bool1);
      break;
    }
    label423:
    int i = ((c)localObject4).b.a;
    boolean bool2 = ((c)localObject4).b.b;
    localObject1 = new Matrix();
    int j = parame.d;
    int k;
    if ((j == com.d.a.b.a.e.e) || (j == com.d.a.b.a.e.f))
    {
      localObject2 = new f(((Bitmap)localObject3).getWidth(), ((Bitmap)localObject3).getHeight(), i);
      localObject4 = parame.c;
      k = parame.e;
      if (j != com.d.a.b.a.e.f) {
        break label719;
      }
    }
    label719:
    for (bool1 = true;; bool1 = false)
    {
      float f = com.d.a.c.a.b((f)localObject2, (f)localObject4, k, bool1);
      if (Float.compare(f, 1.0F) != 0)
      {
        ((Matrix)localObject1).setScale(f, f);
        if (this.a) {
          com.d.a.c.d.a("Scale subsampled image (%1$s) to %2$s (scale = %3$.5f) [%4$s]", new Object[] { localObject2, new f((int)(((f)localObject2).a * f), (int)(((f)localObject2).b * f)), Float.valueOf(f), parame.a });
        }
      }
      if (bool2)
      {
        ((Matrix)localObject1).postScale(-1.0F, 1.0F);
        if (this.a) {
          com.d.a.c.d.a("Flip image horizontally [%s]", new Object[] { parame.a });
        }
      }
      if (i != 0)
      {
        ((Matrix)localObject1).postRotate(i);
        if (this.a) {
          com.d.a.c.d.a("Rotate image on %1$d° [%2$s]", new Object[] { Integer.valueOf(i), parame.a });
        }
      }
      parame = Bitmap.createBitmap((Bitmap)localObject3, 0, 0, ((Bitmap)localObject3).getWidth(), ((Bitmap)localObject3).getHeight(), (Matrix)localObject1, true);
      if (parame != localObject3) {
        ((Bitmap)localObject3).recycle();
      }
      return parame;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\d\a\b\b\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */