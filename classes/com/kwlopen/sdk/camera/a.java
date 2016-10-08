package com.kwlopen.sdk.camera;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.hardware.Camera;
import android.hardware.Camera.AutoFocusCallback;
import android.hardware.Camera.CameraInfo;
import android.hardware.Camera.PictureCallback;
import android.hardware.Camera.ShutterCallback;
import android.hardware.Camera.Size;
import android.media.ToneGenerator;
import java.util.Iterator;
import java.util.List;

@SuppressLint({"NewApi"})
public final class a
{
  static a c;
  ToneGenerator a;
  boolean b;
  public Camera d;
  MaskSurfaceView e;
  float f;
  float g;
  int h;
  private final String i = "CameraHelper";
  
  static Camera.Size a(List<Camera.Size> paramList, int paramInt1, int paramInt2)
  {
    double d2 = paramInt1 / paramInt2;
    Object localObject2;
    if (paramList == null)
    {
      localObject2 = null;
      return (Camera.Size)localObject2;
    }
    Object localObject1 = null;
    double d1 = Double.MAX_VALUE;
    Iterator localIterator = paramList.iterator();
    label32:
    while (localIterator.hasNext())
    {
      localObject2 = (Camera.Size)localIterator.next();
      if (Math.abs(((Camera.Size)localObject2).width / ((Camera.Size)localObject2).height - d2) <= 0.1D)
      {
        if (Math.abs(((Camera.Size)localObject2).height - paramInt2) >= d1) {
          break label199;
        }
        d1 = Math.abs(((Camera.Size)localObject2).height - paramInt2);
        localObject1 = localObject2;
      }
    }
    label199:
    for (;;)
    {
      break label32;
      localObject2 = localObject1;
      if (localObject1 != null) {
        break;
      }
      d1 = Double.MAX_VALUE;
      localIterator = paramList.iterator();
      localObject2 = localObject1;
      if (!localIterator.hasNext()) {
        break;
      }
      paramList = (Camera.Size)localIterator.next();
      if (Math.abs(paramList.height - paramInt2) < d1) {
        d1 = Math.abs(paramList.height - paramInt2);
      }
      for (;;)
      {
        localObject1 = paramList;
        break;
        paramList = (List<Camera.Size>)localObject1;
      }
    }
  }
  
  public static a a()
  {
    try
    {
      if (c == null) {
        c = new a();
      }
      a locala = c;
      return locala;
    }
    finally {}
  }
  
  static int b()
  {
    Camera.CameraInfo localCameraInfo = new Camera.CameraInfo();
    int k = Camera.getNumberOfCameras();
    int j = 0;
    while (j < k)
    {
      Camera.getCameraInfo(j, localCameraInfo);
      if (localCameraInfo.facing == 1) {
        return j;
      }
      j += 1;
    }
    return -1;
  }
  
  /* Error */
  final String a(android.content.Context paramContext, byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 106	java/io/File
    //   5: dup
    //   6: new 108	java/lang/StringBuilder
    //   9: dup
    //   10: invokespecial 109	java/lang/StringBuilder:<init>	()V
    //   13: aload_1
    //   14: invokestatic 114	com/b/a/a/i:a	(Landroid/content/Context;)Ljava/lang/String;
    //   17: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   20: ldc 120
    //   22: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   25: invokevirtual 124	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   28: invokespecial 127	java/io/File:<init>	(Ljava/lang/String;)V
    //   31: astore_1
    //   32: aload_1
    //   33: invokevirtual 130	java/io/File:exists	()Z
    //   36: ifne +12 -> 48
    //   39: aload_1
    //   40: invokevirtual 133	java/io/File:mkdirs	()Z
    //   43: ifne +5 -> 48
    //   46: aconst_null
    //   47: areturn
    //   48: new 108	java/lang/StringBuilder
    //   51: dup
    //   52: invokespecial 109	java/lang/StringBuilder:<init>	()V
    //   55: aload_1
    //   56: invokevirtual 136	java/io/File:getPath	()Ljava/lang/String;
    //   59: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   62: getstatic 139	java/io/File:separator	Ljava/lang/String;
    //   65: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: astore_1
    //   69: new 141	java/text/SimpleDateFormat
    //   72: dup
    //   73: ldc -113
    //   75: invokestatic 149	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   78: invokespecial 152	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;Ljava/util/Locale;)V
    //   81: new 154	java/util/Date
    //   84: dup
    //   85: invokespecial 155	java/util/Date:<init>	()V
    //   88: invokevirtual 159	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   91: astore 4
    //   93: aload_1
    //   94: new 108	java/lang/StringBuilder
    //   97: dup
    //   98: ldc -95
    //   100: invokespecial 162	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   103: aload 4
    //   105: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   108: ldc -92
    //   110: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   113: invokevirtual 124	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   116: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   119: invokevirtual 124	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   122: astore 4
    //   124: aload_2
    //   125: iconst_0
    //   126: aload_2
    //   127: arraylength
    //   128: invokestatic 170	android/graphics/BitmapFactory:decodeByteArray	([BII)Landroid/graphics/Bitmap;
    //   131: astore_2
    //   132: aload_2
    //   133: astore_1
    //   134: aload_0
    //   135: getfield 172	com/kwlopen/sdk/camera/a:e	Lcom/kwlopen/sdk/camera/MaskSurfaceView;
    //   138: invokevirtual 177	com/kwlopen/sdk/camera/MaskSurfaceView:getWidth	()I
    //   141: aload_0
    //   142: getfield 172	com/kwlopen/sdk/camera/a:e	Lcom/kwlopen/sdk/camera/MaskSurfaceView;
    //   145: invokevirtual 180	com/kwlopen/sdk/camera/MaskSurfaceView:getHeight	()I
    //   148: if_icmpge +38 -> 186
    //   151: new 182	android/graphics/Matrix
    //   154: dup
    //   155: invokespecial 183	android/graphics/Matrix:<init>	()V
    //   158: astore_1
    //   159: aload_1
    //   160: invokevirtual 186	android/graphics/Matrix:reset	()V
    //   163: aload_1
    //   164: ldc -69
    //   166: invokevirtual 191	android/graphics/Matrix:setRotate	(F)V
    //   169: aload_2
    //   170: iconst_0
    //   171: iconst_0
    //   172: aload_2
    //   173: invokevirtual 194	android/graphics/Bitmap:getWidth	()I
    //   176: aload_2
    //   177: invokevirtual 195	android/graphics/Bitmap:getHeight	()I
    //   180: aload_1
    //   181: iconst_1
    //   182: invokestatic 199	android/graphics/Bitmap:createBitmap	(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    //   185: astore_1
    //   186: aload_0
    //   187: getfield 201	com/kwlopen/sdk/camera/a:h	I
    //   190: i2f
    //   191: invokestatic 207	java/lang/Float:valueOf	(F)Ljava/lang/Float;
    //   194: invokevirtual 211	java/lang/Float:floatValue	()F
    //   197: aload_0
    //   198: getfield 213	com/kwlopen/sdk/camera/a:f	F
    //   201: fdiv
    //   202: aload_1
    //   203: invokevirtual 194	android/graphics/Bitmap:getWidth	()I
    //   206: i2f
    //   207: fmul
    //   208: f2i
    //   209: istore 6
    //   211: iload 6
    //   213: i2f
    //   214: ldc -42
    //   216: fmul
    //   217: f2i
    //   218: istore 7
    //   220: aload_1
    //   221: iconst_0
    //   222: aload_1
    //   223: invokevirtual 195	android/graphics/Bitmap:getHeight	()I
    //   226: iload 7
    //   228: isub
    //   229: iconst_1
    //   230: ishr
    //   231: iload 6
    //   233: iload 7
    //   235: invokestatic 217	android/graphics/Bitmap:createBitmap	(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    //   238: astore 5
    //   240: new 106	java/io/File
    //   243: dup
    //   244: aload 4
    //   246: invokespecial 127	java/io/File:<init>	(Ljava/lang/String;)V
    //   249: astore_1
    //   250: new 219	java/io/FileOutputStream
    //   253: dup
    //   254: aload_1
    //   255: invokespecial 222	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   258: astore_2
    //   259: new 224	java/io/BufferedOutputStream
    //   262: dup
    //   263: aload_2
    //   264: invokespecial 227	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   267: astore_1
    //   268: aload 5
    //   270: getstatic 233	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   273: bipush 100
    //   275: aload_2
    //   276: invokevirtual 237	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   279: pop
    //   280: aload_2
    //   281: invokevirtual 240	java/io/FileOutputStream:flush	()V
    //   284: aload_2
    //   285: invokevirtual 243	java/io/FileOutputStream:close	()V
    //   288: aload_1
    //   289: invokevirtual 244	java/io/BufferedOutputStream:flush	()V
    //   292: aload_1
    //   293: invokevirtual 245	java/io/BufferedOutputStream:close	()V
    //   296: aload 4
    //   298: areturn
    //   299: astore_1
    //   300: aconst_null
    //   301: astore_1
    //   302: aconst_null
    //   303: astore_2
    //   304: aload_2
    //   305: ifnull +11 -> 316
    //   308: aload_2
    //   309: invokevirtual 240	java/io/FileOutputStream:flush	()V
    //   312: aload_2
    //   313: invokevirtual 243	java/io/FileOutputStream:close	()V
    //   316: aload_1
    //   317: ifnull +11 -> 328
    //   320: aload_1
    //   321: invokevirtual 244	java/io/BufferedOutputStream:flush	()V
    //   324: aload_1
    //   325: invokevirtual 245	java/io/BufferedOutputStream:close	()V
    //   328: aconst_null
    //   329: areturn
    //   330: astore_1
    //   331: aconst_null
    //   332: astore_2
    //   333: aload_2
    //   334: ifnull +11 -> 345
    //   337: aload_2
    //   338: invokevirtual 240	java/io/FileOutputStream:flush	()V
    //   341: aload_2
    //   342: invokevirtual 243	java/io/FileOutputStream:close	()V
    //   345: aload_3
    //   346: ifnull +11 -> 357
    //   349: aload_3
    //   350: invokevirtual 244	java/io/BufferedOutputStream:flush	()V
    //   353: aload_3
    //   354: invokevirtual 245	java/io/BufferedOutputStream:close	()V
    //   357: aload_1
    //   358: athrow
    //   359: astore_2
    //   360: goto -3 -> 357
    //   363: astore_1
    //   364: goto -31 -> 333
    //   367: astore 4
    //   369: aload_1
    //   370: astore_3
    //   371: aload 4
    //   373: astore_1
    //   374: goto -41 -> 333
    //   377: astore_1
    //   378: goto -50 -> 328
    //   381: astore_1
    //   382: aconst_null
    //   383: astore_1
    //   384: goto -80 -> 304
    //   387: astore_3
    //   388: goto -84 -> 304
    //   391: astore_1
    //   392: goto -96 -> 296
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	395	0	this	a
    //   0	395	1	paramContext	android.content.Context
    //   0	395	2	paramArrayOfByte	byte[]
    //   1	370	3	localContext	android.content.Context
    //   387	1	3	localException	Exception
    //   91	206	4	str	String
    //   367	5	4	localObject	Object
    //   238	31	5	localBitmap	android.graphics.Bitmap
    //   209	23	6	j	int
    //   218	16	7	k	int
    // Exception table:
    //   from	to	target	type
    //   250	259	299	java/lang/Exception
    //   250	259	330	finally
    //   337	345	359	java/io/IOException
    //   349	357	359	java/io/IOException
    //   259	268	363	finally
    //   268	280	367	finally
    //   308	316	377	java/io/IOException
    //   320	328	377	java/io/IOException
    //   259	268	381	java/lang/Exception
    //   268	280	387	java/lang/Exception
    //   280	296	391	java/io/IOException
  }
  
  final void c()
  {
    if ((this.d != null) && (this.b))
    {
      this.d.stopPreview();
      this.b = false;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\kwlopen\sdk\camera\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */