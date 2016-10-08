package com.bairuitech.anychat;

import android.content.Context;
import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.hardware.Camera.PreviewCallback;
import android.view.Display;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.WindowManager;

public final class e
  implements SurfaceHolder.Callback
{
  public Camera a = null;
  public boolean b = false;
  boolean c = false;
  public int d = 0;
  public SurfaceHolder e = null;
  public int f = -1;
  public Context g = null;
  int h = 0;
  public final int i = 0;
  public final int j = 1;
  private final int k = 3;
  private int l = 0;
  private int m = 0;
  
  public static int b()
  {
    try
    {
      int n = Camera.getNumberOfCameras();
      return n;
    }
    catch (Exception localException) {}
    return 0;
  }
  
  /* Error */
  public final void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 32	com/bairuitech/anychat/e:a	Landroid/hardware/Camera;
    //   4: ifnonnull +4 -> 8
    //   7: return
    //   8: aload_0
    //   9: getfield 34	com/bairuitech/anychat/e:b	Z
    //   12: ifeq +18 -> 30
    //   15: aload_0
    //   16: getfield 32	com/bairuitech/anychat/e:a	Landroid/hardware/Camera;
    //   19: invokevirtual 70	android/hardware/Camera:stopPreview	()V
    //   22: aload_0
    //   23: getfield 32	com/bairuitech/anychat/e:a	Landroid/hardware/Camera;
    //   26: aconst_null
    //   27: invokevirtual 74	android/hardware/Camera:setPreviewCallbackWithBuffer	(Landroid/hardware/Camera$PreviewCallback;)V
    //   30: new 76	android/hardware/Camera$CameraInfo
    //   33: dup
    //   34: invokespecial 77	android/hardware/Camera$CameraInfo:<init>	()V
    //   37: astore_1
    //   38: aload_0
    //   39: getfield 38	com/bairuitech/anychat/e:d	I
    //   42: aload_1
    //   43: invokestatic 81	android/hardware/Camera:getCameraInfo	(ILandroid/hardware/Camera$CameraInfo;)V
    //   46: aload_0
    //   47: aload_1
    //   48: getfield 84	android/hardware/Camera$CameraInfo:orientation	I
    //   51: putfield 48	com/bairuitech/anychat/e:l	I
    //   54: aload_0
    //   55: aload_1
    //   56: getfield 87	android/hardware/Camera$CameraInfo:facing	I
    //   59: putfield 50	com/bairuitech/anychat/e:h	I
    //   62: aload_0
    //   63: getfield 46	com/bairuitech/anychat/e:g	Landroid/content/Context;
    //   66: ifnull +612 -> 678
    //   69: aload_0
    //   70: getfield 46	com/bairuitech/anychat/e:g	Landroid/content/Context;
    //   73: ldc 89
    //   75: invokevirtual 95	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   78: checkcast 97	android/view/WindowManager
    //   81: invokeinterface 101 1 0
    //   86: invokevirtual 106	android/view/Display:getRotation	()I
    //   89: tableswitch	default:+595->684, 1:+601->690, 2:+608->697, 3:+616->705
    //   116: aload_0
    //   117: iload 5
    //   119: putfield 52	com/bairuitech/anychat/e:m	I
    //   122: ldc 108
    //   124: new 110	java/lang/StringBuilder
    //   127: dup
    //   128: ldc 112
    //   130: invokespecial 115	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   133: aload_0
    //   134: getfield 52	com/bairuitech/anychat/e:m	I
    //   137: invokevirtual 119	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   140: ldc 121
    //   142: invokevirtual 124	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   145: aload_0
    //   146: getfield 48	com/bairuitech/anychat/e:l	I
    //   149: invokevirtual 119	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   152: ldc 126
    //   154: invokevirtual 124	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   157: aload_0
    //   158: getfield 50	com/bairuitech/anychat/e:h	I
    //   161: invokevirtual 119	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   164: invokevirtual 130	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   167: invokestatic 135	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   170: pop
    //   171: aload_0
    //   172: invokevirtual 137	com/bairuitech/anychat/e:c	()V
    //   175: aload_0
    //   176: getfield 32	com/bairuitech/anychat/e:a	Landroid/hardware/Camera;
    //   179: invokevirtual 141	android/hardware/Camera:getParameters	()Landroid/hardware/Camera$Parameters;
    //   182: astore_2
    //   183: aload_0
    //   184: getfield 32	com/bairuitech/anychat/e:a	Landroid/hardware/Camera;
    //   187: invokevirtual 141	android/hardware/Camera:getParameters	()Landroid/hardware/Camera$Parameters;
    //   190: invokevirtual 147	android/hardware/Camera$Parameters:getSupportedPreviewSizes	()Ljava/util/List;
    //   193: astore_3
    //   194: bipush 38
    //   196: invokestatic 153	com/bairuitech/anychat/AnyChatCoreSDK:GetSDKOptionInt	(I)I
    //   199: istore 6
    //   201: bipush 39
    //   203: invokestatic 153	com/bairuitech/anychat/AnyChatCoreSDK:GetSDKOptionInt	(I)I
    //   206: istore 7
    //   208: iconst_0
    //   209: istore 5
    //   211: iload 5
    //   213: aload_3
    //   214: invokeinterface 158 1 0
    //   219: if_icmpge +453 -> 672
    //   222: aload_3
    //   223: iload 5
    //   225: invokeinterface 162 2 0
    //   230: checkcast 164	android/hardware/Camera$Size
    //   233: astore 4
    //   235: aload 4
    //   237: getfield 167	android/hardware/Camera$Size:width	I
    //   240: iload 6
    //   242: if_icmpne +471 -> 713
    //   245: aload 4
    //   247: getfield 170	android/hardware/Camera$Size:height	I
    //   250: iload 7
    //   252: if_icmpne +461 -> 713
    //   255: aload_2
    //   256: iload 6
    //   258: iload 7
    //   260: invokevirtual 174	android/hardware/Camera$Parameters:setPreviewSize	(II)V
    //   263: iconst_1
    //   264: istore 5
    //   266: iload 5
    //   268: ifne +13 -> 281
    //   271: aload_2
    //   272: sipush 320
    //   275: sipush 240
    //   278: invokevirtual 174	android/hardware/Camera$Parameters:setPreviewSize	(II)V
    //   281: aload_2
    //   282: invokevirtual 177	android/hardware/Camera$Parameters:getSupportedPreviewFpsRange	()Ljava/util/List;
    //   285: astore_3
    //   286: iconst_0
    //   287: istore 5
    //   289: iload 5
    //   291: aload_3
    //   292: invokeinterface 158 1 0
    //   297: if_icmpge +48 -> 345
    //   300: aload_3
    //   301: iload 5
    //   303: invokeinterface 162 2 0
    //   308: checkcast 179	[I
    //   311: astore 4
    //   313: aload 4
    //   315: iconst_0
    //   316: iaload
    //   317: sipush 25000
    //   320: if_icmplt +402 -> 722
    //   323: aload 4
    //   325: iconst_1
    //   326: iaload
    //   327: sipush 25000
    //   330: if_icmplt +392 -> 722
    //   333: aload_2
    //   334: aload 4
    //   336: iconst_0
    //   337: iaload
    //   338: aload 4
    //   340: iconst_1
    //   341: iaload
    //   342: invokevirtual 182	android/hardware/Camera$Parameters:setPreviewFpsRange	(II)V
    //   345: aload_2
    //   346: bipush 17
    //   348: invokevirtual 186	android/hardware/Camera$Parameters:setPreviewFormat	(I)V
    //   351: aload_0
    //   352: getfield 32	com/bairuitech/anychat/e:a	Landroid/hardware/Camera;
    //   355: aload_2
    //   356: invokevirtual 190	android/hardware/Camera:setParameters	(Landroid/hardware/Camera$Parameters;)V
    //   359: aload_0
    //   360: getfield 32	com/bairuitech/anychat/e:a	Landroid/hardware/Camera;
    //   363: invokevirtual 141	android/hardware/Camera:getParameters	()Landroid/hardware/Camera$Parameters;
    //   366: invokevirtual 194	android/hardware/Camera$Parameters:getPreviewSize	()Landroid/hardware/Camera$Size;
    //   369: astore_3
    //   370: aload_3
    //   371: getfield 167	android/hardware/Camera$Size:width	I
    //   374: istore 5
    //   376: aload_3
    //   377: getfield 170	android/hardware/Camera$Size:height	I
    //   380: iload 5
    //   382: imul
    //   383: bipush 17
    //   385: invokestatic 199	android/graphics/ImageFormat:getBitsPerPixel	(I)I
    //   388: imul
    //   389: bipush 8
    //   391: idiv
    //   392: istore 6
    //   394: iconst_0
    //   395: istore 5
    //   397: iload 5
    //   399: iconst_3
    //   400: if_icmpge +23 -> 423
    //   403: aload_0
    //   404: getfield 32	com/bairuitech/anychat/e:a	Landroid/hardware/Camera;
    //   407: iload 6
    //   409: newarray <illegal type>
    //   411: invokevirtual 203	android/hardware/Camera:addCallbackBuffer	([B)V
    //   414: iload 5
    //   416: iconst_1
    //   417: iadd
    //   418: istore 5
    //   420: goto -23 -> 397
    //   423: aload_0
    //   424: getfield 32	com/bairuitech/anychat/e:a	Landroid/hardware/Camera;
    //   427: new 8	com/bairuitech/anychat/e$1
    //   430: dup
    //   431: aload_0
    //   432: invokespecial 206	com/bairuitech/anychat/e$1:<init>	(Lcom/bairuitech/anychat/e;)V
    //   435: invokevirtual 74	android/hardware/Camera:setPreviewCallbackWithBuffer	(Landroid/hardware/Camera$PreviewCallback;)V
    //   438: aload_0
    //   439: getfield 32	com/bairuitech/anychat/e:a	Landroid/hardware/Camera;
    //   442: invokevirtual 209	android/hardware/Camera:startPreview	()V
    //   445: aload_0
    //   446: iconst_1
    //   447: putfield 34	com/bairuitech/anychat/e:b	Z
    //   450: aload_0
    //   451: getfield 32	com/bairuitech/anychat/e:a	Landroid/hardware/Camera;
    //   454: invokevirtual 141	android/hardware/Camera:getParameters	()Landroid/hardware/Camera$Parameters;
    //   457: invokevirtual 212	android/hardware/Camera$Parameters:getPreviewFormat	()I
    //   460: bipush 17
    //   462: if_icmpne +80 -> 542
    //   465: aload_0
    //   466: bipush 8
    //   468: putfield 42	com/bairuitech/anychat/e:f	I
    //   471: aload_0
    //   472: getfield 32	com/bairuitech/anychat/e:a	Landroid/hardware/Camera;
    //   475: invokevirtual 141	android/hardware/Camera:getParameters	()Landroid/hardware/Camera$Parameters;
    //   478: invokevirtual 194	android/hardware/Camera$Parameters:getPreviewSize	()Landroid/hardware/Camera$Size;
    //   481: astore_3
    //   482: bipush 26
    //   484: iconst_1
    //   485: invokestatic 216	com/bairuitech/anychat/AnyChatCoreSDK:SetSDKOptionInt	(II)I
    //   488: pop
    //   489: iconst_2
    //   490: newarray <illegal type>
    //   492: astore 4
    //   494: aload_2
    //   495: aload 4
    //   497: invokevirtual 220	android/hardware/Camera$Parameters:getPreviewFpsRange	([I)V
    //   500: aload_0
    //   501: getfield 42	com/bairuitech/anychat/e:f	I
    //   504: aload_3
    //   505: getfield 167	android/hardware/Camera$Size:width	I
    //   508: aload_3
    //   509: getfield 170	android/hardware/Camera$Size:height	I
    //   512: aload 4
    //   514: iconst_1
    //   515: iaload
    //   516: sipush 1000
    //   519: idiv
    //   520: iconst_0
    //   521: invokestatic 224	com/bairuitech/anychat/AnyChatCoreSDK:SetInputVideoFormat	(IIIII)I
    //   524: pop
    //   525: bipush 100
    //   527: aload_1
    //   528: getfield 87	android/hardware/Camera$CameraInfo:facing	I
    //   531: invokestatic 216	com/bairuitech/anychat/AnyChatCoreSDK:SetSDKOptionInt	(II)I
    //   534: pop
    //   535: return
    //   536: astore_1
    //   537: aload_1
    //   538: invokevirtual 227	java/lang/Exception:printStackTrace	()V
    //   541: return
    //   542: aload_0
    //   543: getfield 32	com/bairuitech/anychat/e:a	Landroid/hardware/Camera;
    //   546: invokevirtual 141	android/hardware/Camera:getParameters	()Landroid/hardware/Camera$Parameters;
    //   549: invokevirtual 212	android/hardware/Camera$Parameters:getPreviewFormat	()I
    //   552: ldc -28
    //   554: if_icmpne +11 -> 565
    //   557: aload_0
    //   558: iconst_2
    //   559: putfield 42	com/bairuitech/anychat/e:f	I
    //   562: goto -91 -> 471
    //   565: aload_0
    //   566: getfield 32	com/bairuitech/anychat/e:a	Landroid/hardware/Camera;
    //   569: invokevirtual 141	android/hardware/Camera:getParameters	()Landroid/hardware/Camera$Parameters;
    //   572: invokevirtual 212	android/hardware/Camera$Parameters:getPreviewFormat	()I
    //   575: bipush 16
    //   577: if_icmpne +12 -> 589
    //   580: aload_0
    //   581: bipush 9
    //   583: putfield 42	com/bairuitech/anychat/e:f	I
    //   586: goto -115 -> 471
    //   589: aload_0
    //   590: getfield 32	com/bairuitech/anychat/e:a	Landroid/hardware/Camera;
    //   593: invokevirtual 141	android/hardware/Camera:getParameters	()Landroid/hardware/Camera$Parameters;
    //   596: invokevirtual 212	android/hardware/Camera$Parameters:getPreviewFormat	()I
    //   599: bipush 20
    //   601: if_icmpne +11 -> 612
    //   604: aload_0
    //   605: iconst_3
    //   606: putfield 42	com/bairuitech/anychat/e:f	I
    //   609: goto -138 -> 471
    //   612: aload_0
    //   613: getfield 32	com/bairuitech/anychat/e:a	Landroid/hardware/Camera;
    //   616: invokevirtual 141	android/hardware/Camera:getParameters	()Landroid/hardware/Camera$Parameters;
    //   619: invokevirtual 212	android/hardware/Camera$Parameters:getPreviewFormat	()I
    //   622: iconst_4
    //   623: if_icmpne +11 -> 634
    //   626: aload_0
    //   627: iconst_5
    //   628: putfield 42	com/bairuitech/anychat/e:f	I
    //   631: goto -160 -> 471
    //   634: ldc 108
    //   636: new 110	java/lang/StringBuilder
    //   639: dup
    //   640: ldc -26
    //   642: invokespecial 115	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   645: aload_0
    //   646: getfield 32	com/bairuitech/anychat/e:a	Landroid/hardware/Camera;
    //   649: invokevirtual 141	android/hardware/Camera:getParameters	()Landroid/hardware/Camera$Parameters;
    //   652: invokevirtual 212	android/hardware/Camera$Parameters:getPreviewFormat	()I
    //   655: invokevirtual 119	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   658: invokevirtual 130	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   661: invokestatic 232	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   664: pop
    //   665: goto -194 -> 471
    //   668: astore_3
    //   669: goto -310 -> 359
    //   672: iconst_0
    //   673: istore 5
    //   675: goto -409 -> 266
    //   678: iconst_0
    //   679: istore 5
    //   681: goto -565 -> 116
    //   684: iconst_0
    //   685: istore 5
    //   687: goto -571 -> 116
    //   690: bipush 90
    //   692: istore 5
    //   694: goto -578 -> 116
    //   697: sipush 180
    //   700: istore 5
    //   702: goto -586 -> 116
    //   705: sipush 270
    //   708: istore 5
    //   710: goto -594 -> 116
    //   713: iload 5
    //   715: iconst_1
    //   716: iadd
    //   717: istore 5
    //   719: goto -508 -> 211
    //   722: iload 5
    //   724: iconst_1
    //   725: iadd
    //   726: istore 5
    //   728: goto -439 -> 289
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	731	0	this	e
    //   37	491	1	localCameraInfo	Camera.CameraInfo
    //   536	2	1	localException1	Exception
    //   182	313	2	localParameters	android.hardware.Camera.Parameters
    //   193	316	3	localObject1	Object
    //   668	1	3	localException2	Exception
    //   233	280	4	localObject2	Object
    //   117	610	5	n	int
    //   199	209	6	i1	int
    //   206	53	7	i2	int
    // Exception table:
    //   from	to	target	type
    //   8	30	536	java/lang/Exception
    //   30	116	536	java/lang/Exception
    //   116	208	536	java/lang/Exception
    //   211	263	536	java/lang/Exception
    //   271	281	536	java/lang/Exception
    //   281	286	536	java/lang/Exception
    //   289	313	536	java/lang/Exception
    //   333	345	536	java/lang/Exception
    //   345	351	536	java/lang/Exception
    //   359	394	536	java/lang/Exception
    //   403	414	536	java/lang/Exception
    //   423	471	536	java/lang/Exception
    //   471	535	536	java/lang/Exception
    //   542	562	536	java/lang/Exception
    //   565	586	536	java/lang/Exception
    //   589	609	536	java/lang/Exception
    //   612	631	536	java/lang/Exception
    //   634	665	536	java/lang/Exception
    //   351	359	668	java/lang/Exception
  }
  
  public final void c()
  {
    if (this.g == null) {
      return;
    }
    for (;;)
    {
      try
      {
        Camera.CameraInfo localCameraInfo = new Camera.CameraInfo();
        Camera.getCameraInfo(this.d, localCameraInfo);
        switch (((WindowManager)this.g.getSystemService("window")).getDefaultDisplay().getRotation())
        {
        default: 
          if (localCameraInfo.facing == 1)
          {
            n = (360 - (n + localCameraInfo.orientation) % 360) % 360;
            this.a.setDisplayOrientation(n);
            return;
          }
          n = (localCameraInfo.orientation - n + 360) % 360;
          continue;
          n = 0;
          break;
        case 0: 
          n = 0;
        }
      }
      catch (Exception localException)
      {
        return;
      }
      continue;
      int n = 90;
      continue;
      n = 180;
      continue;
      n = 270;
    }
  }
  
  public final void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    try
    {
      this.a = Camera.open(this.d);
      this.e = paramSurfaceHolder;
      this.a.setPreviewDisplay(paramSurfaceHolder);
      a();
      return;
    }
    catch (Exception paramSurfaceHolder)
    {
      while (this.a == null) {}
      this.a.release();
      this.a = null;
      this.f = -1;
    }
  }
  
  public final void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    if (this.a != null) {}
    try
    {
      this.a.stopPreview();
      this.a.setPreviewCallbackWithBuffer(null);
      this.b = false;
      this.a.release();
      this.a = null;
      this.e = null;
      this.f = -1;
      return;
    }
    catch (Exception paramSurfaceHolder)
    {
      for (;;)
      {
        this.a = null;
        this.b = false;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\bairuitech\anychat\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */