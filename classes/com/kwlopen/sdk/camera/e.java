package com.kwlopen.sdk.camera;

import android.view.View.OnTouchListener;

final class e
  implements View.OnTouchListener
{
  private int b = 0;
  private float c;
  
  private e(MaskSurfaceView paramMaskSurfaceView) {}
  
  /* Error */
  public final boolean onTouch(android.view.View paramView, android.view.MotionEvent paramMotionEvent)
  {
    // Byte code:
    //   0: aload_2
    //   1: invokevirtual 35	android/view/MotionEvent:getAction	()I
    //   4: sipush 255
    //   7: iand
    //   8: tableswitch	default:+40->48, 0:+42->50, 1:+77->85, 2:+66->74, 3:+40->48, 4:+40->48, 5:+50->58
    //   48: iconst_1
    //   49: ireturn
    //   50: aload_0
    //   51: iconst_0
    //   52: putfield 21	com/kwlopen/sdk/camera/e:b	I
    //   55: goto -7 -> 48
    //   58: aload_0
    //   59: iconst_1
    //   60: putfield 21	com/kwlopen/sdk/camera/e:b	I
    //   63: aload_0
    //   64: aload_2
    //   65: invokestatic 40	com/kwlopen/sdk/camera/MaskSurfaceView:a	(Landroid/view/MotionEvent;)F
    //   68: putfield 42	com/kwlopen/sdk/camera/e:c	F
    //   71: goto -23 -> 48
    //   74: aload_0
    //   75: getfield 21	com/kwlopen/sdk/camera/e:b	I
    //   78: iconst_1
    //   79: if_icmpne -31 -> 48
    //   82: goto -34 -> 48
    //   85: aload_0
    //   86: getfield 21	com/kwlopen/sdk/camera/e:b	I
    //   89: iconst_1
    //   90: if_icmpeq -42 -> 48
    //   93: new 44	android/graphics/Point
    //   96: dup
    //   97: aload_2
    //   98: invokevirtual 48	android/view/MotionEvent:getX	()F
    //   101: f2i
    //   102: aload_2
    //   103: invokevirtual 51	android/view/MotionEvent:getY	()F
    //   106: f2i
    //   107: invokespecial 54	android/graphics/Point:<init>	(II)V
    //   110: astore_1
    //   111: invokestatic 59	com/kwlopen/sdk/camera/a:a	()Lcom/kwlopen/sdk/camera/a;
    //   114: astore_2
    //   115: aload_0
    //   116: getfield 16	com/kwlopen/sdk/camera/e:a	Lcom/kwlopen/sdk/camera/MaskSurfaceView;
    //   119: invokestatic 62	com/kwlopen/sdk/camera/MaskSurfaceView:b	(Lcom/kwlopen/sdk/camera/MaskSurfaceView;)Landroid/hardware/Camera$AutoFocusCallback;
    //   122: astore_3
    //   123: aload_2
    //   124: getfield 66	com/kwlopen/sdk/camera/a:d	Landroid/hardware/Camera;
    //   127: invokevirtual 72	android/hardware/Camera:getParameters	()Landroid/hardware/Camera$Parameters;
    //   130: astore 4
    //   132: aload 4
    //   134: invokevirtual 77	android/hardware/Camera$Parameters:getMaxNumFocusAreas	()I
    //   137: ifgt +53 -> 190
    //   140: aload_2
    //   141: getfield 66	com/kwlopen/sdk/camera/a:d	Landroid/hardware/Camera;
    //   144: aload_3
    //   145: invokevirtual 81	android/hardware/Camera:autoFocus	(Landroid/hardware/Camera$AutoFocusCallback;)V
    //   148: aload_0
    //   149: getfield 16	com/kwlopen/sdk/camera/e:a	Lcom/kwlopen/sdk/camera/MaskSurfaceView;
    //   152: invokestatic 84	com/kwlopen/sdk/camera/MaskSurfaceView:a	(Lcom/kwlopen/sdk/camera/MaskSurfaceView;)Lcom/kwlopen/sdk/camera/FocusImageView;
    //   155: astore_2
    //   156: aload_2
    //   157: getfield 88	com/kwlopen/sdk/camera/FocusImageView:a	I
    //   160: iconst_m1
    //   161: if_icmpeq +19 -> 180
    //   164: aload_2
    //   165: getfield 89	com/kwlopen/sdk/camera/FocusImageView:b	I
    //   168: iconst_m1
    //   169: if_icmpeq +11 -> 180
    //   172: aload_2
    //   173: getfield 91	com/kwlopen/sdk/camera/FocusImageView:c	I
    //   176: iconst_m1
    //   177: if_icmpne +151 -> 328
    //   180: new 93	java/lang/RuntimeException
    //   183: dup
    //   184: ldc 95
    //   186: invokespecial 98	java/lang/RuntimeException:<init>	(Ljava/lang/String;)V
    //   189: athrow
    //   190: new 100	java/util/ArrayList
    //   193: dup
    //   194: invokespecial 101	java/util/ArrayList:<init>	()V
    //   197: astore 5
    //   199: aload_1
    //   200: getfield 104	android/graphics/Point:x	I
    //   203: sipush 300
    //   206: isub
    //   207: istore 7
    //   209: aload_1
    //   210: getfield 107	android/graphics/Point:y	I
    //   213: sipush 300
    //   216: isub
    //   217: istore 8
    //   219: aload_1
    //   220: getfield 104	android/graphics/Point:x	I
    //   223: sipush 300
    //   226: iadd
    //   227: istore 9
    //   229: aload_1
    //   230: getfield 107	android/graphics/Point:y	I
    //   233: sipush 300
    //   236: iadd
    //   237: istore 10
    //   239: iload 7
    //   241: istore 6
    //   243: iload 7
    //   245: sipush 64536
    //   248: if_icmpge +166 -> 414
    //   251: sipush 64536
    //   254: istore 6
    //   256: goto +158 -> 414
    //   259: aload 5
    //   261: new 109	android/hardware/Camera$Area
    //   264: dup
    //   265: new 111	android/graphics/Rect
    //   268: dup
    //   269: iload 6
    //   271: iload 7
    //   273: iload 8
    //   275: iload 9
    //   277: invokespecial 114	android/graphics/Rect:<init>	(IIII)V
    //   280: bipush 100
    //   282: invokespecial 117	android/hardware/Camera$Area:<init>	(Landroid/graphics/Rect;I)V
    //   285: invokeinterface 123 2 0
    //   290: pop
    //   291: aload 4
    //   293: aload 5
    //   295: invokevirtual 127	android/hardware/Camera$Parameters:setFocusAreas	(Ljava/util/List;)V
    //   298: aload_2
    //   299: getfield 66	com/kwlopen/sdk/camera/a:d	Landroid/hardware/Camera;
    //   302: aload 4
    //   304: invokevirtual 131	android/hardware/Camera:setParameters	(Landroid/hardware/Camera$Parameters;)V
    //   307: aload_2
    //   308: getfield 66	com/kwlopen/sdk/camera/a:d	Landroid/hardware/Camera;
    //   311: aload_3
    //   312: invokevirtual 81	android/hardware/Camera:autoFocus	(Landroid/hardware/Camera$AutoFocusCallback;)V
    //   315: goto -167 -> 148
    //   318: astore 4
    //   320: aload 4
    //   322: invokevirtual 134	java/lang/Exception:printStackTrace	()V
    //   325: goto -18 -> 307
    //   328: aload_2
    //   329: invokevirtual 138	com/kwlopen/sdk/camera/FocusImageView:getLayoutParams	()Landroid/view/ViewGroup$LayoutParams;
    //   332: checkcast 140	android/widget/RelativeLayout$LayoutParams
    //   335: astore_3
    //   336: aload_3
    //   337: aload_1
    //   338: getfield 107	android/graphics/Point:y	I
    //   341: aload_2
    //   342: invokevirtual 143	com/kwlopen/sdk/camera/FocusImageView:getHeight	()I
    //   345: iconst_2
    //   346: idiv
    //   347: isub
    //   348: putfield 146	android/widget/RelativeLayout$LayoutParams:topMargin	I
    //   351: aload_3
    //   352: aload_1
    //   353: getfield 104	android/graphics/Point:x	I
    //   356: aload_2
    //   357: invokevirtual 149	com/kwlopen/sdk/camera/FocusImageView:getWidth	()I
    //   360: iconst_2
    //   361: idiv
    //   362: isub
    //   363: putfield 152	android/widget/RelativeLayout$LayoutParams:leftMargin	I
    //   366: aload_2
    //   367: aload_3
    //   368: invokevirtual 156	com/kwlopen/sdk/camera/FocusImageView:setLayoutParams	(Landroid/view/ViewGroup$LayoutParams;)V
    //   371: aload_2
    //   372: iconst_0
    //   373: invokevirtual 160	com/kwlopen/sdk/camera/FocusImageView:setVisibility	(I)V
    //   376: aload_2
    //   377: aload_2
    //   378: getfield 88	com/kwlopen/sdk/camera/FocusImageView:a	I
    //   381: invokevirtual 163	com/kwlopen/sdk/camera/FocusImageView:setImageResource	(I)V
    //   384: aload_2
    //   385: aload_2
    //   386: getfield 166	com/kwlopen/sdk/camera/FocusImageView:d	Landroid/view/animation/Animation;
    //   389: invokevirtual 170	com/kwlopen/sdk/camera/FocusImageView:startAnimation	(Landroid/view/animation/Animation;)V
    //   392: aload_2
    //   393: getfield 174	com/kwlopen/sdk/camera/FocusImageView:e	Landroid/os/Handler;
    //   396: new 176	com/kwlopen/sdk/camera/FocusImageView$1
    //   399: dup
    //   400: aload_2
    //   401: invokespecial 179	com/kwlopen/sdk/camera/FocusImageView$1:<init>	(Lcom/kwlopen/sdk/camera/FocusImageView;)V
    //   404: ldc2_w 180
    //   407: invokevirtual 187	android/os/Handler:postDelayed	(Ljava/lang/Runnable;J)Z
    //   410: pop
    //   411: goto -363 -> 48
    //   414: iload 8
    //   416: istore 7
    //   418: iload 8
    //   420: sipush 64536
    //   423: if_icmpge +8 -> 431
    //   426: sipush 64536
    //   429: istore 7
    //   431: iload 9
    //   433: istore 8
    //   435: iload 9
    //   437: sipush 1000
    //   440: if_icmple +8 -> 448
    //   443: sipush 1000
    //   446: istore 8
    //   448: iload 10
    //   450: istore 9
    //   452: iload 10
    //   454: sipush 1000
    //   457: if_icmple -198 -> 259
    //   460: sipush 1000
    //   463: istore 9
    //   465: goto -206 -> 259
    //   468: astore_2
    //   469: goto -321 -> 148
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	472	0	this	e
    //   0	472	1	paramView	android.view.View
    //   0	472	2	paramMotionEvent	android.view.MotionEvent
    //   122	246	3	localObject	Object
    //   130	173	4	localParameters	android.hardware.Camera.Parameters
    //   318	3	4	localException	Exception
    //   197	97	5	localArrayList	java.util.ArrayList
    //   241	29	6	i	int
    //   207	223	7	j	int
    //   217	230	8	k	int
    //   227	237	9	m	int
    //   237	221	10	n	int
    // Exception table:
    //   from	to	target	type
    //   298	307	318	java/lang/Exception
    //   123	148	468	java/lang/Exception
    //   190	239	468	java/lang/Exception
    //   259	298	468	java/lang/Exception
    //   307	315	468	java/lang/Exception
    //   320	325	468	java/lang/Exception
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\kwlopen\sdk\camera\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */