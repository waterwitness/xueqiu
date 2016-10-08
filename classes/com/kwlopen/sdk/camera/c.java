package com.kwlopen.sdk.camera;

import android.content.Context;
import android.hardware.Camera;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;

final class c
  extends SurfaceView
  implements SurfaceHolder.Callback
{
  private SurfaceHolder b = getHolder();
  
  public c(MaskSurfaceView paramMaskSurfaceView, Context paramContext)
  {
    super(paramContext);
    this.b.setFormat(-2);
    this.b.setType(3);
    this.b.addCallback(this);
  }
  
  public final void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3) {}
  
  /* Error */
  public final void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    // Byte code:
    //   0: invokestatic 50	com/kwlopen/sdk/camera/a:a	()Lcom/kwlopen/sdk/camera/a;
    //   3: astore_3
    //   4: aload_0
    //   5: getfield 14	com/kwlopen/sdk/camera/c:a	Lcom/kwlopen/sdk/camera/MaskSurfaceView;
    //   8: invokestatic 56	com/kwlopen/sdk/camera/MaskSurfaceView:c	(Lcom/kwlopen/sdk/camera/MaskSurfaceView;)I
    //   11: istore 7
    //   13: aload_0
    //   14: getfield 14	com/kwlopen/sdk/camera/c:a	Lcom/kwlopen/sdk/camera/MaskSurfaceView;
    //   17: invokestatic 59	com/kwlopen/sdk/camera/MaskSurfaceView:d	(Lcom/kwlopen/sdk/camera/MaskSurfaceView;)I
    //   20: istore 8
    //   22: aload_3
    //   23: getfield 62	com/kwlopen/sdk/camera/a:d	Landroid/hardware/Camera;
    //   26: ifnull +10 -> 36
    //   29: aload_3
    //   30: getfield 62	com/kwlopen/sdk/camera/a:d	Landroid/hardware/Camera;
    //   33: invokevirtual 68	android/hardware/Camera:release	()V
    //   36: new 70	android/hardware/Camera$CameraInfo
    //   39: dup
    //   40: invokespecial 72	android/hardware/Camera$CameraInfo:<init>	()V
    //   43: astore 4
    //   45: invokestatic 76	android/hardware/Camera:getNumberOfCameras	()I
    //   48: istore 6
    //   50: iconst_0
    //   51: istore 5
    //   53: iload 5
    //   55: iload 6
    //   57: if_icmpge +311 -> 368
    //   60: iload 5
    //   62: aload 4
    //   64: invokestatic 80	android/hardware/Camera:getCameraInfo	(ILandroid/hardware/Camera$CameraInfo;)V
    //   67: aload 4
    //   69: getfield 84	android/hardware/Camera$CameraInfo:facing	I
    //   72: ifne +287 -> 359
    //   75: iload 5
    //   77: istore 6
    //   79: iload 5
    //   81: iconst_m1
    //   82: if_icmpne +8 -> 90
    //   85: invokestatic 86	com/kwlopen/sdk/camera/a:b	()I
    //   88: istore 6
    //   90: iload 6
    //   92: iconst_m1
    //   93: if_icmpne +332 -> 425
    //   96: aload_3
    //   97: invokestatic 90	android/hardware/Camera:open	()Landroid/hardware/Camera;
    //   100: putfield 62	com/kwlopen/sdk/camera/a:d	Landroid/hardware/Camera;
    //   103: aload_3
    //   104: getfield 62	com/kwlopen/sdk/camera/a:d	Landroid/hardware/Camera;
    //   107: invokevirtual 94	android/hardware/Camera:getParameters	()Landroid/hardware/Camera$Parameters;
    //   110: astore 4
    //   112: aload_3
    //   113: getfield 62	com/kwlopen/sdk/camera/a:d	Landroid/hardware/Camera;
    //   116: aload_1
    //   117: invokevirtual 97	android/hardware/Camera:setPreviewDisplay	(Landroid/view/SurfaceHolder;)V
    //   120: aload_3
    //   121: getfield 62	com/kwlopen/sdk/camera/a:d	Landroid/hardware/Camera;
    //   124: bipush 90
    //   126: invokevirtual 100	android/hardware/Camera:setDisplayOrientation	(I)V
    //   129: aload 4
    //   131: sipush 256
    //   134: invokevirtual 105	android/hardware/Camera$Parameters:setPictureFormat	(I)V
    //   137: aload 4
    //   139: bipush 100
    //   141: invokevirtual 108	android/hardware/Camera$Parameters:setJpegQuality	(I)V
    //   144: aload 4
    //   146: ldc 110
    //   148: invokevirtual 114	android/hardware/Camera$Parameters:setFlashMode	(Ljava/lang/String;)V
    //   151: aload 4
    //   153: invokevirtual 118	android/hardware/Camera$Parameters:getSupportedPictureSizes	()Ljava/util/List;
    //   156: iload 8
    //   158: iload 7
    //   160: invokestatic 121	com/kwlopen/sdk/camera/a:a	(Ljava/util/List;II)Landroid/hardware/Camera$Size;
    //   163: astore_1
    //   164: aload 4
    //   166: aload_1
    //   167: getfield 126	android/hardware/Camera$Size:width	I
    //   170: aload_1
    //   171: getfield 129	android/hardware/Camera$Size:height	I
    //   174: invokevirtual 133	android/hardware/Camera$Parameters:setPictureSize	(II)V
    //   177: aload 4
    //   179: invokevirtual 136	android/hardware/Camera$Parameters:getSupportedPreviewSizes	()Ljava/util/List;
    //   182: aload_1
    //   183: getfield 126	android/hardware/Camera$Size:width	I
    //   186: aload_1
    //   187: getfield 129	android/hardware/Camera$Size:height	I
    //   190: invokestatic 121	com/kwlopen/sdk/camera/a:a	(Ljava/util/List;II)Landroid/hardware/Camera$Size;
    //   193: astore_1
    //   194: aload 4
    //   196: aload_1
    //   197: getfield 126	android/hardware/Camera$Size:width	I
    //   200: aload_1
    //   201: getfield 129	android/hardware/Camera$Size:height	I
    //   204: invokevirtual 139	android/hardware/Camera$Parameters:setPreviewSize	(II)V
    //   207: aload_3
    //   208: getfield 62	com/kwlopen/sdk/camera/a:d	Landroid/hardware/Camera;
    //   211: aload 4
    //   213: invokevirtual 143	android/hardware/Camera:setParameters	(Landroid/hardware/Camera$Parameters;)V
    //   216: aload_3
    //   217: getfield 62	com/kwlopen/sdk/camera/a:d	Landroid/hardware/Camera;
    //   220: invokevirtual 94	android/hardware/Camera:getParameters	()Landroid/hardware/Camera$Parameters;
    //   223: invokevirtual 147	android/hardware/Camera$Parameters:getPreviewSize	()Landroid/hardware/Camera$Size;
    //   226: astore_1
    //   227: aload_0
    //   228: invokevirtual 150	android/view/SurfaceView:getHeight	()I
    //   231: i2f
    //   232: new 152	java/lang/StringBuilder
    //   235: dup
    //   236: invokespecial 153	java/lang/StringBuilder:<init>	()V
    //   239: aload_1
    //   240: getfield 126	android/hardware/Camera$Size:width	I
    //   243: invokevirtual 157	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   246: invokevirtual 161	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   249: invokestatic 167	java/lang/Float:parseFloat	(Ljava/lang/String;)F
    //   252: fdiv
    //   253: fstore_2
    //   254: aload_3
    //   255: aload_1
    //   256: getfield 129	android/hardware/Camera$Size:height	I
    //   259: i2f
    //   260: fload_2
    //   261: fmul
    //   262: putfield 171	com/kwlopen/sdk/camera/a:f	F
    //   265: aload_3
    //   266: getfield 171	com/kwlopen/sdk/camera/a:f	F
    //   269: aload_3
    //   270: getfield 174	com/kwlopen/sdk/camera/a:h	I
    //   273: i2f
    //   274: fcmpg
    //   275: ifge +162 -> 437
    //   278: aload_0
    //   279: invokevirtual 178	android/view/SurfaceView:getLayoutParams	()Landroid/view/ViewGroup$LayoutParams;
    //   282: aload_3
    //   283: getfield 174	com/kwlopen/sdk/camera/a:h	I
    //   286: putfield 181	android/view/ViewGroup$LayoutParams:width	I
    //   289: aload_0
    //   290: invokevirtual 178	android/view/SurfaceView:getLayoutParams	()Landroid/view/ViewGroup$LayoutParams;
    //   293: aload_0
    //   294: invokevirtual 150	android/view/SurfaceView:getHeight	()I
    //   297: i2f
    //   298: aload_3
    //   299: getfield 174	com/kwlopen/sdk/camera/a:h	I
    //   302: i2f
    //   303: aload_3
    //   304: getfield 171	com/kwlopen/sdk/camera/a:f	F
    //   307: fdiv
    //   308: fmul
    //   309: f2i
    //   310: putfield 182	android/view/ViewGroup$LayoutParams:height	I
    //   313: aload_3
    //   314: aload_0
    //   315: invokevirtual 185	android/view/SurfaceView:getWidth	()I
    //   318: i2f
    //   319: putfield 171	com/kwlopen/sdk/camera/a:f	F
    //   322: aload_3
    //   323: aload_0
    //   324: invokevirtual 150	android/view/SurfaceView:getHeight	()I
    //   327: i2f
    //   328: putfield 188	com/kwlopen/sdk/camera/a:g	F
    //   331: aload_3
    //   332: getfield 62	com/kwlopen/sdk/camera/a:d	Landroid/hardware/Camera;
    //   335: ifnull +23 -> 358
    //   338: aload_3
    //   339: getfield 62	com/kwlopen/sdk/camera/a:d	Landroid/hardware/Camera;
    //   342: invokevirtual 191	android/hardware/Camera:startPreview	()V
    //   345: aload_3
    //   346: getfield 62	com/kwlopen/sdk/camera/a:d	Landroid/hardware/Camera;
    //   349: aconst_null
    //   350: invokevirtual 195	android/hardware/Camera:autoFocus	(Landroid/hardware/Camera$AutoFocusCallback;)V
    //   353: aload_3
    //   354: iconst_1
    //   355: putfield 198	com/kwlopen/sdk/camera/a:b	Z
    //   358: return
    //   359: iload 5
    //   361: iconst_1
    //   362: iadd
    //   363: istore 5
    //   365: goto -312 -> 53
    //   368: iconst_m1
    //   369: istore 5
    //   371: goto -296 -> 75
    //   374: astore 4
    //   376: aload_3
    //   377: invokestatic 76	android/hardware/Camera:getNumberOfCameras	()I
    //   380: iconst_1
    //   381: isub
    //   382: invokestatic 201	android/hardware/Camera:open	(I)Landroid/hardware/Camera;
    //   385: putfield 62	com/kwlopen/sdk/camera/a:d	Landroid/hardware/Camera;
    //   388: getstatic 207	java/lang/System:out	Ljava/io/PrintStream;
    //   391: ldc -47
    //   393: invokevirtual 214	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   396: goto -293 -> 103
    //   399: astore_1
    //   400: aload_0
    //   401: invokevirtual 218	android/view/SurfaceView:getContext	()Landroid/content/Context;
    //   404: aload_0
    //   405: invokevirtual 218	android/view/SurfaceView:getContext	()Landroid/content/Context;
    //   408: ldc -36
    //   410: invokestatic 225	com/b/a/a/f:c	(Landroid/content/Context;Ljava/lang/String;)I
    //   413: iconst_0
    //   414: invokestatic 231	android/widget/Toast:makeText	(Landroid/content/Context;II)Landroid/widget/Toast;
    //   417: invokevirtual 234	android/widget/Toast:show	()V
    //   420: aload_1
    //   421: invokevirtual 237	java/lang/Exception:printStackTrace	()V
    //   424: return
    //   425: aload_3
    //   426: iload 6
    //   428: invokestatic 201	android/hardware/Camera:open	(I)Landroid/hardware/Camera;
    //   431: putfield 62	com/kwlopen/sdk/camera/a:d	Landroid/hardware/Camera;
    //   434: goto -331 -> 103
    //   437: aload_0
    //   438: invokevirtual 178	android/view/SurfaceView:getLayoutParams	()Landroid/view/ViewGroup$LayoutParams;
    //   441: aload_3
    //   442: getfield 171	com/kwlopen/sdk/camera/a:f	F
    //   445: f2i
    //   446: putfield 181	android/view/ViewGroup$LayoutParams:width	I
    //   449: goto -136 -> 313
    //   452: astore_1
    //   453: ldc -17
    //   455: ldc -15
    //   457: invokestatic 247	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   460: pop
    //   461: goto -130 -> 331
    //   464: astore_1
    //   465: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	466	0	this	c
    //   0	466	1	paramSurfaceHolder	SurfaceHolder
    //   253	8	2	f	float
    //   3	439	3	locala	a
    //   43	169	4	localObject	Object
    //   374	1	4	localRuntimeException	RuntimeException
    //   51	319	5	i	int
    //   48	379	6	j	int
    //   11	148	7	k	int
    //   20	137	8	m	int
    // Exception table:
    //   from	to	target	type
    //   96	103	374	java/lang/RuntimeException
    //   22	36	399	java/lang/Exception
    //   36	50	399	java/lang/Exception
    //   60	75	399	java/lang/Exception
    //   85	90	399	java/lang/Exception
    //   96	103	399	java/lang/Exception
    //   376	396	399	java/lang/Exception
    //   425	434	399	java/lang/Exception
    //   453	461	399	java/lang/Exception
    //   103	313	452	java/lang/Exception
    //   313	331	452	java/lang/Exception
    //   437	449	452	java/lang/Exception
    //   331	358	464	java/lang/Exception
  }
  
  public final void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    paramSurfaceHolder = a.a();
    if (paramSurfaceHolder.d != null)
    {
      if (paramSurfaceHolder.b) {
        paramSurfaceHolder.c();
      }
      paramSurfaceHolder.d.setPreviewCallback(null);
      paramSurfaceHolder.b = false;
      paramSurfaceHolder.d.release();
      paramSurfaceHolder.d = null;
      a.c = null;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\kwlopen\sdk\camera\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */