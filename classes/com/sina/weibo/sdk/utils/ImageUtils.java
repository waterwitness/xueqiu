package com.sina.weibo.sdk.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class ImageUtils
{
  private static void delete(File paramFile)
  {
    if ((paramFile != null) && (paramFile.exists()) && (!paramFile.delete())) {
      throw new RuntimeException(paramFile.getAbsolutePath() + " doesn't be deleted!");
    }
  }
  
  private static boolean deleteDependon(String paramString)
  {
    boolean bool1 = false;
    boolean bool2 = false;
    if (TextUtils.isEmpty(paramString)) {
      return bool2;
    }
    paramString = new File(paramString);
    int i = 1;
    for (;;)
    {
      bool2 = bool1;
      if (bool1) {
        break;
      }
      bool2 = bool1;
      if (i > 5) {
        break;
      }
      bool2 = bool1;
      if (!paramString.isFile()) {
        break;
      }
      bool2 = bool1;
      if (!paramString.exists()) {
        break;
      }
      bool2 = paramString.delete();
      bool1 = bool2;
      if (!bool2)
      {
        i += 1;
        bool1 = bool2;
      }
    }
  }
  
  private static boolean isFileExisted(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    while (!new File(paramString).exists()) {
      return false;
    }
    return true;
  }
  
  private static boolean isParentExist(File paramFile)
  {
    if (paramFile == null) {}
    File localFile;
    do
    {
      return false;
      localFile = paramFile.getParentFile();
    } while ((localFile == null) || (localFile.exists()) || ((!paramFile.exists()) && (!paramFile.mkdirs())));
    return true;
  }
  
  public static boolean isWifi(Context paramContext)
  {
    paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    return (paramContext != null) && (paramContext.getType() == 1);
  }
  
  private static void makesureFileExist(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return;
      paramString = new File(paramString);
    } while ((paramString.exists()) || (!isParentExist(paramString)));
    if (paramString.exists()) {
      delete(paramString);
    }
    try
    {
      paramString.createNewFile();
      return;
    }
    catch (IOException paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  private static void revitionImageSize(String paramString, int paramInt1, int paramInt2)
  {
    if (paramInt1 <= 0) {
      throw new IllegalArgumentException("size must be greater than 0!");
    }
    if (!isFileExisted(paramString))
    {
      localObject = paramString;
      if (paramString == null) {
        localObject = "null";
      }
      throw new FileNotFoundException((String)localObject);
    }
    if (!BitmapHelper.verifyBitmap(paramString)) {
      throw new IOException("");
    }
    FileInputStream localFileInputStream = new FileInputStream(paramString);
    Object localObject = new BitmapFactory.Options();
    ((BitmapFactory.Options)localObject).inJustDecodeBounds = true;
    BitmapFactory.decodeStream(localFileInputStream, null, (BitmapFactory.Options)localObject);
    Bitmap localBitmap;
    try
    {
      localFileInputStream.close();
      i = 0;
      while ((((BitmapFactory.Options)localObject).outWidth >> i > paramInt1) || (((BitmapFactory.Options)localObject).outHeight >> i > paramInt1)) {
        i += 1;
      }
    }
    catch (Exception localException)
    {
      int i;
      for (;;)
      {
        localException.printStackTrace();
      }
      ((BitmapFactory.Options)localObject).inSampleSize = ((int)Math.pow(2.0D, i));
      ((BitmapFactory.Options)localObject).inJustDecodeBounds = false;
      localBitmap = safeDecodeBimtapFile(paramString, (BitmapFactory.Options)localObject);
      if (localBitmap == null) {
        throw new IOException("Bitmap decode error!");
      }
      deleteDependon(paramString);
      makesureFileExist(paramString);
      paramString = new FileOutputStream(paramString);
      if (((BitmapFactory.Options)localObject).outMimeType == null) {
        break label235;
      }
    }
    if (((BitmapFactory.Options)localObject).outMimeType.contains("png")) {
      localBitmap.compress(Bitmap.CompressFormat.PNG, paramInt2, paramString);
    }
    try
    {
      for (;;)
      {
        paramString.close();
        localBitmap.recycle();
        return;
        label235:
        localBitmap.compress(Bitmap.CompressFormat.JPEG, paramInt2, paramString);
      }
    }
    catch (Exception paramString)
    {
      for (;;)
      {
        paramString.printStackTrace();
      }
    }
  }
  
  /* Error */
  private static void revitionImageSizeHD(String paramString, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: iload_1
    //   1: ifgt +13 -> 14
    //   4: new 109	java/lang/IllegalArgumentException
    //   7: dup
    //   8: ldc 111
    //   10: invokespecial 112	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   13: athrow
    //   14: aload_0
    //   15: invokestatic 114	com/sina/weibo/sdk/utils/ImageUtils:isFileExisted	(Ljava/lang/String;)Z
    //   18: ifne +24 -> 42
    //   21: aload_0
    //   22: astore 4
    //   24: aload_0
    //   25: ifnonnull +7 -> 32
    //   28: ldc 116
    //   30: astore 4
    //   32: new 118	java/io/FileNotFoundException
    //   35: dup
    //   36: aload 4
    //   38: invokespecial 119	java/io/FileNotFoundException:<init>	(Ljava/lang/String;)V
    //   41: athrow
    //   42: aload_0
    //   43: invokestatic 124	com/sina/weibo/sdk/utils/BitmapHelper:verifyBitmap	(Ljava/lang/String;)Z
    //   46: ifne +13 -> 59
    //   49: new 93	java/io/IOException
    //   52: dup
    //   53: ldc 126
    //   55: invokespecial 127	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   58: athrow
    //   59: iload_1
    //   60: iconst_2
    //   61: imul
    //   62: istore 10
    //   64: new 129	java/io/FileInputStream
    //   67: dup
    //   68: aload_0
    //   69: invokespecial 130	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   72: astore 4
    //   74: new 132	android/graphics/BitmapFactory$Options
    //   77: dup
    //   78: invokespecial 133	android/graphics/BitmapFactory$Options:<init>	()V
    //   81: astore 6
    //   83: aload 6
    //   85: iconst_1
    //   86: putfield 137	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   89: aload 4
    //   91: aconst_null
    //   92: aload 6
    //   94: invokestatic 143	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   97: pop
    //   98: aload 4
    //   100: invokevirtual 146	java/io/FileInputStream:close	()V
    //   103: iconst_0
    //   104: istore 9
    //   106: aload 6
    //   108: getfield 150	android/graphics/BitmapFactory$Options:outWidth	I
    //   111: iload 9
    //   113: ishr
    //   114: iload 10
    //   116: if_icmpgt +16 -> 132
    //   119: aload 6
    //   121: getfield 153	android/graphics/BitmapFactory$Options:outHeight	I
    //   124: iload 9
    //   126: ishr
    //   127: iload 10
    //   129: if_icmple +22 -> 151
    //   132: iload 9
    //   134: iconst_1
    //   135: iadd
    //   136: istore 9
    //   138: goto -32 -> 106
    //   141: astore 4
    //   143: aload 4
    //   145: invokevirtual 154	java/lang/Exception:printStackTrace	()V
    //   148: goto -45 -> 103
    //   151: aload 6
    //   153: ldc2_w 155
    //   156: iload 9
    //   158: i2d
    //   159: invokestatic 162	java/lang/Math:pow	(DD)D
    //   162: d2i
    //   163: putfield 165	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   166: aload 6
    //   168: iconst_0
    //   169: putfield 137	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   172: aload_0
    //   173: aload 6
    //   175: invokestatic 169	com/sina/weibo/sdk/utils/ImageUtils:safeDecodeBimtapFile	(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   178: astore 5
    //   180: aload 5
    //   182: ifnonnull +13 -> 195
    //   185: new 93	java/io/IOException
    //   188: dup
    //   189: ldc -85
    //   191: invokespecial 127	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   194: athrow
    //   195: aload_0
    //   196: invokestatic 173	com/sina/weibo/sdk/utils/ImageUtils:deleteDependon	(Ljava/lang/String;)Z
    //   199: pop
    //   200: aload_0
    //   201: invokestatic 175	com/sina/weibo/sdk/utils/ImageUtils:makesureFileExist	(Ljava/lang/String;)V
    //   204: aload 5
    //   206: invokevirtual 212	android/graphics/Bitmap:getWidth	()I
    //   209: aload 5
    //   211: invokevirtual 215	android/graphics/Bitmap:getHeight	()I
    //   214: if_icmple +162 -> 376
    //   217: aload 5
    //   219: invokevirtual 212	android/graphics/Bitmap:getWidth	()I
    //   222: istore 9
    //   224: iload_1
    //   225: i2f
    //   226: iload 9
    //   228: i2f
    //   229: fdiv
    //   230: fstore_3
    //   231: aload 5
    //   233: astore 4
    //   235: fload_3
    //   236: fconst_1
    //   237: fcmpg
    //   238: ifge +87 -> 325
    //   241: aload 5
    //   243: invokevirtual 212	android/graphics/Bitmap:getWidth	()I
    //   246: i2f
    //   247: fload_3
    //   248: fmul
    //   249: f2i
    //   250: aload 5
    //   252: invokevirtual 215	android/graphics/Bitmap:getHeight	()I
    //   255: i2f
    //   256: fload_3
    //   257: fmul
    //   258: f2i
    //   259: getstatic 221	android/graphics/Bitmap$Config:ARGB_8888	Landroid/graphics/Bitmap$Config;
    //   262: invokestatic 225	android/graphics/Bitmap:createBitmap	(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    //   265: astore 4
    //   267: aload 4
    //   269: ifnonnull +8 -> 277
    //   272: aload 5
    //   274: invokevirtual 203	android/graphics/Bitmap:recycle	()V
    //   277: new 227	android/graphics/Canvas
    //   280: dup
    //   281: aload 4
    //   283: invokespecial 230	android/graphics/Canvas:<init>	(Landroid/graphics/Bitmap;)V
    //   286: astore 7
    //   288: new 232	android/graphics/Matrix
    //   291: dup
    //   292: invokespecial 233	android/graphics/Matrix:<init>	()V
    //   295: astore 8
    //   297: aload 8
    //   299: fload_3
    //   300: fload_3
    //   301: invokevirtual 237	android/graphics/Matrix:setScale	(FF)V
    //   304: aload 7
    //   306: aload 5
    //   308: aload 8
    //   310: new 239	android/graphics/Paint
    //   313: dup
    //   314: invokespecial 240	android/graphics/Paint:<init>	()V
    //   317: invokevirtual 244	android/graphics/Canvas:drawBitmap	(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    //   320: aload 5
    //   322: invokevirtual 203	android/graphics/Bitmap:recycle	()V
    //   325: new 177	java/io/FileOutputStream
    //   328: dup
    //   329: aload_0
    //   330: invokespecial 178	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   333: astore_0
    //   334: aload 6
    //   336: getfield 182	android/graphics/BitmapFactory$Options:outMimeType	Ljava/lang/String;
    //   339: ifnull +63 -> 402
    //   342: aload 6
    //   344: getfield 182	android/graphics/BitmapFactory$Options:outMimeType	Ljava/lang/String;
    //   347: ldc -72
    //   349: invokevirtual 187	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   352: ifeq +50 -> 402
    //   355: aload 4
    //   357: getstatic 193	android/graphics/Bitmap$CompressFormat:PNG	Landroid/graphics/Bitmap$CompressFormat;
    //   360: iload_2
    //   361: aload_0
    //   362: invokevirtual 199	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   365: pop
    //   366: aload_0
    //   367: invokevirtual 200	java/io/FileOutputStream:close	()V
    //   370: aload 4
    //   372: invokevirtual 203	android/graphics/Bitmap:recycle	()V
    //   375: return
    //   376: aload 5
    //   378: invokevirtual 215	android/graphics/Bitmap:getHeight	()I
    //   381: istore 9
    //   383: goto -159 -> 224
    //   386: astore 4
    //   388: invokestatic 249	java/lang/System:gc	()V
    //   391: fload_3
    //   392: f2d
    //   393: ldc2_w 250
    //   396: dmul
    //   397: d2f
    //   398: fstore_3
    //   399: goto -158 -> 241
    //   402: aload 4
    //   404: getstatic 206	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   407: iload_2
    //   408: aload_0
    //   409: invokevirtual 199	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   412: pop
    //   413: goto -47 -> 366
    //   416: astore_0
    //   417: aload_0
    //   418: invokevirtual 154	java/lang/Exception:printStackTrace	()V
    //   421: goto -51 -> 370
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	424	0	paramString	String
    //   0	424	1	paramInt1	int
    //   0	424	2	paramInt2	int
    //   230	169	3	f	float
    //   22	77	4	localObject1	Object
    //   141	3	4	localException	Exception
    //   233	138	4	localObject2	Object
    //   386	17	4	localOutOfMemoryError	OutOfMemoryError
    //   178	199	5	localBitmap	Bitmap
    //   81	262	6	localOptions	BitmapFactory.Options
    //   286	19	7	localCanvas	android.graphics.Canvas
    //   295	14	8	localMatrix	android.graphics.Matrix
    //   104	278	9	i	int
    //   62	68	10	j	int
    // Exception table:
    //   from	to	target	type
    //   98	103	141	java/lang/Exception
    //   241	267	386	java/lang/OutOfMemoryError
    //   366	370	416	java/lang/Exception
  }
  
  public static boolean revitionPostImageSize(Context paramContext, String paramString)
  {
    try
    {
      if (NetworkHelper.isWifiValid(paramContext)) {
        revitionImageSizeHD(paramString, 1600, 75);
      } else {
        revitionImageSize(paramString, 1024, 75);
      }
    }
    catch (IOException paramContext)
    {
      paramContext.printStackTrace();
      return false;
    }
    return true;
  }
  
  private static Bitmap safeDecodeBimtapFile(String paramString, BitmapFactory.Options paramOptions)
  {
    Object localObject2 = null;
    BitmapFactory.Options localOptions;
    if (paramOptions == null)
    {
      localOptions = new BitmapFactory.Options();
      localOptions.inSampleSize = 1;
    }
    for (;;)
    {
      int i = 0;
      Object localObject1 = null;
      for (;;)
      {
        if (i >= 5) {
          return (Bitmap)localObject1;
        }
        Object localObject3 = localObject1;
        try
        {
          localObject4 = new FileInputStream(paramString);
          localObject2 = localObject1;
          localObject3 = localObject1;
          try
          {
            localObject1 = BitmapFactory.decodeStream((InputStream)localObject4, null, paramOptions);
            localObject2 = localObject1;
            localObject3 = localObject1;
            try
            {
              ((FileInputStream)localObject4).close();
              return (Bitmap)localObject1;
            }
            catch (IOException localIOException2)
            {
              localObject2 = localObject1;
              localObject3 = localObject1;
              localIOException2.printStackTrace();
              return (Bitmap)localObject1;
            }
            ((OutOfMemoryError)localObject4).printStackTrace();
          }
          catch (OutOfMemoryError localOutOfMemoryError2)
          {
            localObject3 = localObject4;
            localObject1 = localObject2;
            localObject4 = localOutOfMemoryError2;
            localObject2 = localObject3;
          }
        }
        catch (FileNotFoundException paramString)
        {
          Object localObject4;
          return localIOException1;
        }
        catch (OutOfMemoryError localOutOfMemoryError1)
        {
          for (;;) {}
        }
        localOptions.inSampleSize *= 2;
        try
        {
          ((FileInputStream)localObject2).close();
          i += 1;
        }
        catch (IOException localIOException1)
        {
          for (;;)
          {
            localIOException1.printStackTrace();
          }
        }
      }
      localOptions = paramOptions;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\utils\ImageUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */