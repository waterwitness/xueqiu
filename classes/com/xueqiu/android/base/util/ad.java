package com.xueqiu.android.base.util;

import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.app.Application;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.media.ExifInterface;
import android.os.Environment;
import android.telephony.TelephonyManager;
import android.view.View;
import com.xueqiu.android.base.b;
import com.xueqiu.android.base.r;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;

public final class ad
{
  public static final String a = Environment.getExternalStorageDirectory() + "/snowball/draft/";
  
  public static int a(Context paramContext)
  {
    paramContext = (TelephonyManager)paramContext.getSystemService("phone");
    if ((paramContext.getNetworkType() == 2) || (paramContext.getNetworkType() == 1)) {
      return 50;
    }
    return 90;
  }
  
  private static int a(BitmapFactory.Options paramOptions, int paramInt1, int paramInt2)
  {
    int k = 1;
    double d1 = paramOptions.outWidth;
    double d2 = paramOptions.outHeight;
    int i;
    int j;
    if (paramInt2 == -1)
    {
      i = 1;
      if (paramInt1 != -1) {
        break label85;
      }
      j = 128;
      label34:
      if (j >= i) {
        break label98;
      }
    }
    for (;;)
    {
      if (i > 8) {
        break label126;
      }
      paramInt1 = k;
      for (;;)
      {
        paramInt2 = paramInt1;
        if (paramInt1 >= i) {
          break;
        }
        paramInt1 <<= 1;
      }
      i = (int)Math.ceil(Math.sqrt(d2 * d1 / paramInt2));
      break;
      label85:
      j = (int)Math.floor(d1 / paramInt1);
      break label34;
      label98:
      if ((paramInt2 == -1) && (paramInt1 == -1)) {
        i = 1;
      } else if (paramInt1 != -1) {
        i = j;
      }
    }
    label126:
    paramInt2 = (i + 7) / 8 * 8;
    return paramInt2;
  }
  
  public static Bitmap a(Bitmap paramBitmap, int paramInt)
  {
    if (paramBitmap == null) {
      return null;
    }
    Paint localPaint = new Paint();
    int i = paramBitmap.getWidth();
    int j = paramBitmap.getHeight();
    Bitmap localBitmap = Bitmap.createBitmap(i, j, Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas(localBitmap);
    Rect localRect = new Rect(0, 0, i, j);
    RectF localRectF = new RectF(localRect);
    float f = paramInt;
    localPaint.setAntiAlias(true);
    localCanvas.drawARGB(0, 0, 0, 0);
    localCanvas.drawRoundRect(localRectF, f, f, localPaint);
    localPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    localCanvas.drawBitmap(paramBitmap, localRect, localRect, localPaint);
    return localBitmap;
  }
  
  public static Bitmap a(Bitmap paramBitmap, int paramInt, boolean paramBoolean)
  {
    Object localObject1 = new Matrix();
    ((Matrix)localObject1).postRotate(paramInt);
    if (paramBoolean) {
      ((Matrix)localObject1).postScale(-1.0F, 1.0F);
    }
    try
    {
      localObject1 = Bitmap.createBitmap(paramBitmap, 0, 0, paramBitmap.getWidth(), paramBitmap.getHeight(), (Matrix)localObject1, true);
      Object localObject3 = localObject1;
      if (localObject1 == null) {
        localObject3 = paramBitmap;
      }
      if (paramBitmap != localObject3) {
        paramBitmap.recycle();
      }
      return (Bitmap)localObject3;
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      for (;;)
      {
        Object localObject2 = null;
      }
    }
  }
  
  public static Bitmap a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    Canvas localCanvas = null;
    Object localObject = localCanvas;
    if (paramInt3 > 0)
    {
      localObject = localCanvas;
      if (paramInt4 > 0)
      {
        localObject = Bitmap.createBitmap(paramInt3, paramInt4, Bitmap.Config.ARGB_8888);
        localCanvas = new Canvas((Bitmap)localObject);
        localCanvas.translate(-paramInt1, -paramInt2);
        paramView.draw(localCanvas);
      }
    }
    return (Bitmap)localObject;
  }
  
  public static Bitmap a(String paramString)
  {
    if (paramString != null)
    {
      Bitmap localBitmap = b(paramString);
      if (localBitmap != null) {
        return b(paramString, localBitmap);
      }
    }
    return null;
  }
  
  public static Bitmap a(String paramString, int paramInt)
  {
    label203:
    for (;;)
    {
      try
      {
        if (new File(paramString).exists())
        {
          BitmapFactory.Options localOptions = new BitmapFactory.Options();
          localOptions.inJustDecodeBounds = true;
          BitmapFactory.decodeFile(paramString, localOptions);
          int[] arrayOfInt = a(localOptions, paramInt);
          int i = arrayOfInt[0];
          int j = arrayOfInt[1];
          long l1 = ((i + 0.5D) * (j + 0.5D) * 4.0D);
          ActivityManager.MemoryInfo localMemoryInfo = new ActivityManager.MemoryInfo();
          b.a();
          ((ActivityManager)b.e().getSystemService("activity")).getMemoryInfo(localMemoryInfo);
          long l2 = localMemoryInfo.availMem;
          if ((float)l1 <= (float)l2 * 0.4F) {
            break label203;
          }
          arrayOfInt = a(localOptions, (int)(paramInt * Math.sqrt((float)l2 * 0.4F / (float)l1)));
          paramInt = Math.min(arrayOfInt[0], arrayOfInt[1]);
          i = arrayOfInt[0];
          localOptions.inSampleSize = a(localOptions, paramInt, arrayOfInt[1] * i);
          localOptions.inJustDecodeBounds = false;
          localOptions.inInputShareable = true;
          localOptions.inPurgeable = true;
          paramString = BitmapFactory.decodeFile(paramString, localOptions);
          return paramString;
        }
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
      }
      return null;
    }
  }
  
  public static Drawable a(Context paramContext, int paramInt)
  {
    int i = paramInt;
    if (paramInt < 0) {
      i = 19;
    }
    paramContext = paramContext.getResources().obtainTypedArray(2131492877);
    Drawable localDrawable = r.h(paramContext.getResourceId(i, 0));
    paramContext.recycle();
    return localDrawable;
  }
  
  public static final WeakReference<Bitmap> a(Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    int j = 0;
    if (paramBitmap == null) {
      return null;
    }
    int m = paramBitmap.getWidth();
    int k = paramBitmap.getHeight();
    int i;
    if (paramInt1 >= m)
    {
      i = 0;
      if (paramInt2 < k) {
        break label74;
      }
      label35:
      if (i != 0) {
        break label91;
      }
      paramInt1 = m;
      break label91;
    }
    for (;;)
    {
      try
      {
        paramBitmap = new WeakReference(Bitmap.createBitmap(paramBitmap, i, j, paramInt1, paramInt2));
        return paramBitmap;
      }
      catch (OutOfMemoryError paramBitmap)
      {
        return null;
      }
      catch (Exception paramBitmap)
      {
        label74:
        return null;
      }
      i = (m - paramInt1) / 2;
      break;
      j = (k - paramInt2) / 2;
      break label35;
      label91:
      if (j == 0) {
        paramInt2 = k;
      }
    }
  }
  
  public static final WeakReference<Bitmap> a(String paramString, int paramInt1, int paramInt2)
  {
    paramString = c(paramString);
    if (paramString != null) {
      return a((Bitmap)paramString.get(), paramInt1, paramInt2);
    }
    return null;
  }
  
  public static void a(String paramString, Bitmap paramBitmap)
  {
    if (paramBitmap == null) {
      return;
    }
    try
    {
      int i = paramString.lastIndexOf("/");
      String str = paramString.substring(0, i + 1);
      paramString = paramString.substring(i + 1);
      File localFile = new File(str);
      if (!localFile.isDirectory()) {
        localFile.mkdirs();
      }
      paramString = new File(str, paramString);
      if (paramString.exists()) {
        paramString.delete();
      }
      paramString = new FileOutputStream(paramString);
      paramBitmap.compress(Bitmap.CompressFormat.JPEG, 100, paramString);
      paramString.flush();
      paramString.close();
      return;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  public static byte[] a(Bitmap paramBitmap)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.JPEG, 100, localByteArrayOutputStream);
    paramBitmap.recycle();
    paramBitmap = localByteArrayOutputStream.toByteArray();
    try
    {
      localByteArrayOutputStream.close();
      return paramBitmap;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return paramBitmap;
  }
  
  private static int[] a(BitmapFactory.Options paramOptions, int paramInt)
  {
    int i = paramOptions.outWidth;
    int j = paramOptions.outHeight;
    paramOptions = new int[2];
    if (paramInt > Math.max(i, j))
    {
      paramOptions[0] = i;
      paramOptions[1] = j;
      return paramOptions;
    }
    if (i >= j)
    {
      j = j * paramInt / i;
      i = paramInt;
      paramInt = j;
    }
    for (;;)
    {
      paramOptions[0] = i;
      paramOptions[1] = paramInt;
      return paramOptions;
      i = i * paramInt / j;
    }
  }
  
  public static Bitmap b(String paramString)
  {
    Bitmap localBitmap = null;
    try
    {
      if (new File(paramString).exists())
      {
        BitmapFactory.Options localOptions = new BitmapFactory.Options();
        localOptions.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(paramString, localOptions);
        int i = localOptions.outWidth;
        if (localOptions.outHeight / i >= 3) {}
        for (paramString = b(paramString, ae.a, 6144);; paramString = b(paramString, ae.a, 2048))
        {
          if (paramString != null) {
            localBitmap = ((Bitmap)paramString.get()).copy(Bitmap.Config.ARGB_8888, true);
          }
          return localBitmap;
        }
      }
    }
    catch (Exception paramString)
    {
      for (;;)
      {
        paramString.printStackTrace();
        paramString = null;
      }
    }
  }
  
  private static Bitmap b(String paramString, Bitmap paramBitmap)
  {
    int i;
    try
    {
      paramString = new ExifInterface(paramString);
      switch (paramString.getAttributeInt("Orientation", 1))
      {
      case 4: 
      case 5: 
      case 7: 
      default: 
        i = 0;
        paramString = paramBitmap;
        if (i != 0)
        {
          paramString = new Matrix();
          paramString.postRotate(i);
          paramString = Bitmap.createBitmap(paramBitmap, 0, 0, paramBitmap.getWidth(), paramBitmap.getHeight(), paramString, true);
        }
        return paramString;
      }
    }
    catch (IOException paramString)
    {
      for (;;)
      {
        paramString.printStackTrace();
        paramString = null;
      }
      i = 270;
    }
    label112:
    i += 90;
    for (;;)
    {
      i += 90;
      break;
      i = 0;
      break label112;
      i = 0;
    }
  }
  
  private static WeakReference<Bitmap> b(String paramString, int paramInt1, int paramInt2)
  {
    if (paramInt2 <= 0) {}
    while (paramInt1 == 0) {
      return null;
    }
    try
    {
      if (!new File(paramString).exists()) {
        break label183;
      }
      localOptions = new BitmapFactory.Options();
      localOptions.inJustDecodeBounds = true;
      BitmapFactory.decodeFile(paramString, localOptions);
      i = localOptions.outWidth;
      j = localOptions.outHeight;
      if (paramInt2 <= 0) {
        break label228;
      }
      k = paramInt2 * j / i;
      if (i >= j) {
        break label218;
      }
      i = paramInt2;
      j = paramInt2;
      paramInt2 = k;
    }
    catch (Exception paramString)
    {
      for (;;)
      {
        BitmapFactory.Options localOptions;
        paramString.printStackTrace();
        paramString = null;
        break;
        localOptions.inPreferredConfig = Bitmap.Config.ALPHA_8;
        continue;
        localOptions.inPreferredConfig = Bitmap.Config.RGB_565;
        continue;
        localOptions.inPreferredConfig = Bitmap.Config.ARGB_4444;
        continue;
        int i = paramInt2;
        int j = k;
        continue;
        int k = -1;
        paramInt2 = i;
        i = k;
      }
    }
    localOptions.inSampleSize = a(localOptions, i, paramInt2 * j);
    localOptions.inJustDecodeBounds = false;
    localOptions.inInputShareable = true;
    localOptions.inPurgeable = true;
    switch (1.a[(paramInt1 - 1)])
    {
    case 1: 
      for (;;)
      {
        paramString = new WeakReference(BitmapFactory.decodeFile(paramString, localOptions));
        break;
        localOptions.inPreferredConfig = Bitmap.Config.ARGB_8888;
      }
    }
    label183:
    label218:
    label228:
    return paramString;
  }
  
  public static Drawable[] b(Context paramContext)
  {
    Drawable[] arrayOfDrawable = new Drawable[54];
    paramContext = paramContext.getResources().obtainTypedArray(2131492877);
    int i = 0;
    while (i < 54)
    {
      arrayOfDrawable[i] = r.h(paramContext.getResourceId(i, 0));
      i += 1;
    }
    paramContext.recycle();
    return arrayOfDrawable;
  }
  
  /* Error */
  private static WeakReference<Bitmap> c(String paramString)
  {
    // Byte code:
    //   0: new 185	java/io/File
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 188	java/io/File:<init>	(Ljava/lang/String;)V
    //   8: astore_0
    //   9: aload_0
    //   10: invokevirtual 192	java/io/File:exists	()Z
    //   13: ifeq +56 -> 69
    //   16: new 406	java/io/FileInputStream
    //   19: dup
    //   20: aload_0
    //   21: invokespecial 407	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   24: astore_1
    //   25: new 409	java/io/BufferedInputStream
    //   28: dup
    //   29: aload_1
    //   30: invokespecial 412	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   33: astore_2
    //   34: new 283	java/lang/ref/WeakReference
    //   37: dup
    //   38: aload_2
    //   39: invokestatic 416	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   42: invokespecial 289	java/lang/ref/WeakReference:<init>	(Ljava/lang/Object;)V
    //   45: astore_0
    //   46: aload_2
    //   47: invokevirtual 417	java/io/BufferedInputStream:close	()V
    //   50: aload_1
    //   51: invokevirtual 418	java/io/FileInputStream:close	()V
    //   54: aload_0
    //   55: areturn
    //   56: astore_1
    //   57: aconst_null
    //   58: astore_0
    //   59: aload_1
    //   60: invokevirtual 256	java/lang/Exception:printStackTrace	()V
    //   63: aload_0
    //   64: areturn
    //   65: astore_1
    //   66: goto -7 -> 59
    //   69: aconst_null
    //   70: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	71	0	paramString	String
    //   24	27	1	localFileInputStream	java.io.FileInputStream
    //   56	4	1	localException1	Exception
    //   65	1	1	localException2	Exception
    //   33	14	2	localBufferedInputStream	java.io.BufferedInputStream
    // Exception table:
    //   from	to	target	type
    //   0	46	56	java/lang/Exception
    //   46	54	65	java/lang/Exception
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\ad.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */