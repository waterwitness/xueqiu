package com.xueqiu.android.common.camera;

final class c
  extends Thread
{
  private byte[] b;
  
  public c(a parama, byte[] paramArrayOfByte)
  {
    this.b = paramArrayOfByte;
  }
  
  /* Error */
  public final void run()
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 9
    //   3: iconst_0
    //   4: istore 7
    //   6: aload_0
    //   7: getfield 17	com/xueqiu/android/common/camera/c:b	[B
    //   10: iconst_0
    //   11: aload_0
    //   12: getfield 17	com/xueqiu/android/common/camera/c:b	[B
    //   15: arraylength
    //   16: invokestatic 27	android/graphics/BitmapFactory:decodeByteArray	([BII)Landroid/graphics/Bitmap;
    //   19: astore 4
    //   21: new 29	java/io/File
    //   24: dup
    //   25: aload_0
    //   26: getfield 12	com/xueqiu/android/common/camera/c:a	Lcom/xueqiu/android/common/camera/a;
    //   29: invokestatic 35	com/xueqiu/android/common/camera/a:d	(Lcom/xueqiu/android/common/camera/a;)Lcom/xueqiu/android/common/camera/g;
    //   32: getfield 40	com/xueqiu/android/common/camera/g:a	Ljava/lang/String;
    //   35: invokespecial 43	java/io/File:<init>	(Ljava/lang/String;)V
    //   38: astore_2
    //   39: aload_2
    //   40: invokevirtual 47	java/io/File:delete	()Z
    //   43: pop
    //   44: new 29	java/io/File
    //   47: dup
    //   48: aload_2
    //   49: invokevirtual 51	java/io/File:getParent	()Ljava/lang/String;
    //   52: invokespecial 43	java/io/File:<init>	(Ljava/lang/String;)V
    //   55: invokevirtual 54	java/io/File:mkdirs	()Z
    //   58: pop
    //   59: new 56	java/io/BufferedOutputStream
    //   62: dup
    //   63: new 58	java/io/FileOutputStream
    //   66: dup
    //   67: aload_2
    //   68: invokespecial 61	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   71: invokespecial 64	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   74: astore 5
    //   76: aload 5
    //   78: astore_2
    //   79: aload_0
    //   80: getfield 12	com/xueqiu/android/common/camera/c:a	Lcom/xueqiu/android/common/camera/a;
    //   83: invokestatic 67	com/xueqiu/android/common/camera/a:b	(Lcom/xueqiu/android/common/camera/a;)Lcom/xueqiu/android/common/camera/CameraPreview;
    //   86: invokevirtual 73	com/xueqiu/android/common/camera/CameraPreview:getCameraRotate	()I
    //   89: istore 8
    //   91: aload 5
    //   93: astore_2
    //   94: aload_0
    //   95: getfield 12	com/xueqiu/android/common/camera/c:a	Lcom/xueqiu/android/common/camera/a;
    //   98: invokestatic 35	com/xueqiu/android/common/camera/a:d	(Lcom/xueqiu/android/common/camera/a;)Lcom/xueqiu/android/common/camera/g;
    //   101: getfield 77	com/xueqiu/android/common/camera/g:c	I
    //   104: iconst_1
    //   105: if_icmpne +283 -> 388
    //   108: goto +444 -> 552
    //   111: aload 5
    //   113: astore_2
    //   114: ldc 79
    //   116: new 81	java/lang/StringBuilder
    //   119: dup
    //   120: ldc 83
    //   122: invokespecial 84	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   125: iload 6
    //   127: invokevirtual 88	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   130: invokevirtual 91	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   133: invokestatic 96	com/xueqiu/android/base/util/v:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   136: iload 6
    //   138: ifeq +411 -> 549
    //   141: aload 5
    //   143: astore_2
    //   144: aload 4
    //   146: iload 6
    //   148: iload 9
    //   150: invokestatic 101	com/xueqiu/android/base/util/ad:a	(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    //   153: astore 4
    //   155: aload 5
    //   157: astore_2
    //   158: aload_0
    //   159: getfield 12	com/xueqiu/android/common/camera/c:a	Lcom/xueqiu/android/common/camera/a;
    //   162: aload 4
    //   164: getstatic 107	android/graphics/Bitmap$Config:ARGB_8888	Landroid/graphics/Bitmap$Config;
    //   167: iconst_1
    //   168: invokevirtual 113	android/graphics/Bitmap:copy	(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    //   171: invokestatic 116	com/xueqiu/android/common/camera/a:a	(Lcom/xueqiu/android/common/camera/a;Landroid/graphics/Bitmap;)V
    //   174: aload 4
    //   176: astore_3
    //   177: aload 5
    //   179: astore_2
    //   180: aload_0
    //   181: getfield 12	com/xueqiu/android/common/camera/c:a	Lcom/xueqiu/android/common/camera/a;
    //   184: invokestatic 35	com/xueqiu/android/common/camera/a:d	(Lcom/xueqiu/android/common/camera/a;)Lcom/xueqiu/android/common/camera/g;
    //   187: getfield 118	com/xueqiu/android/common/camera/g:d	Ljava/lang/String;
    //   190: ldc 120
    //   192: invokestatic 126	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   195: ifeq +16 -> 211
    //   198: aload 5
    //   200: astore_2
    //   201: aload 4
    //   203: bipush -90
    //   205: iload 9
    //   207: invokestatic 101	com/xueqiu/android/base/util/ad:a	(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    //   210: astore_3
    //   211: aload 5
    //   213: astore_2
    //   214: aload_0
    //   215: getfield 12	com/xueqiu/android/common/camera/c:a	Lcom/xueqiu/android/common/camera/a;
    //   218: invokestatic 35	com/xueqiu/android/common/camera/a:d	(Lcom/xueqiu/android/common/camera/a;)Lcom/xueqiu/android/common/camera/g;
    //   221: getfield 128	com/xueqiu/android/common/camera/g:b	I
    //   224: ifeq +322 -> 546
    //   227: aload 5
    //   229: astore_2
    //   230: aload_3
    //   231: invokevirtual 131	android/graphics/Bitmap:getWidth	()I
    //   234: aload_3
    //   235: invokevirtual 134	android/graphics/Bitmap:getHeight	()I
    //   238: if_icmple +156 -> 394
    //   241: aload 5
    //   243: astore_2
    //   244: aload_3
    //   245: invokevirtual 131	android/graphics/Bitmap:getWidth	()I
    //   248: aload_0
    //   249: getfield 12	com/xueqiu/android/common/camera/c:a	Lcom/xueqiu/android/common/camera/a;
    //   252: invokestatic 35	com/xueqiu/android/common/camera/a:d	(Lcom/xueqiu/android/common/camera/a;)Lcom/xueqiu/android/common/camera/g;
    //   255: getfield 128	com/xueqiu/android/common/camera/g:b	I
    //   258: if_icmple +136 -> 394
    //   261: aload 5
    //   263: astore_2
    //   264: aload_0
    //   265: getfield 12	com/xueqiu/android/common/camera/c:a	Lcom/xueqiu/android/common/camera/a;
    //   268: invokestatic 35	com/xueqiu/android/common/camera/a:d	(Lcom/xueqiu/android/common/camera/a;)Lcom/xueqiu/android/common/camera/g;
    //   271: getfield 128	com/xueqiu/android/common/camera/g:b	I
    //   274: istore 7
    //   276: aload 5
    //   278: astore_2
    //   279: aload_3
    //   280: invokevirtual 134	android/graphics/Bitmap:getHeight	()I
    //   283: aload_0
    //   284: getfield 12	com/xueqiu/android/common/camera/c:a	Lcom/xueqiu/android/common/camera/a;
    //   287: invokestatic 35	com/xueqiu/android/common/camera/a:d	(Lcom/xueqiu/android/common/camera/a;)Lcom/xueqiu/android/common/camera/g;
    //   290: getfield 128	com/xueqiu/android/common/camera/g:b	I
    //   293: imul
    //   294: i2f
    //   295: fconst_1
    //   296: fmul
    //   297: aload_3
    //   298: invokevirtual 131	android/graphics/Bitmap:getWidth	()I
    //   301: i2f
    //   302: fdiv
    //   303: f2i
    //   304: istore 6
    //   306: aload 5
    //   308: astore_2
    //   309: aload_3
    //   310: iload 7
    //   312: iload 6
    //   314: iconst_0
    //   315: invokestatic 138	android/graphics/Bitmap:createScaledBitmap	(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    //   318: astore 4
    //   320: aload 5
    //   322: astore_2
    //   323: aload_3
    //   324: invokevirtual 141	android/graphics/Bitmap:recycle	()V
    //   327: aload 4
    //   329: astore_3
    //   330: aload 5
    //   332: astore_2
    //   333: aload_3
    //   334: getstatic 147	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   337: bipush 90
    //   339: aload 5
    //   341: invokevirtual 151	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   344: pop
    //   345: aload 5
    //   347: astore_2
    //   348: aload 5
    //   350: invokevirtual 154	java/io/BufferedOutputStream:flush	()V
    //   353: aload 5
    //   355: astore_2
    //   356: aload_0
    //   357: getfield 12	com/xueqiu/android/common/camera/c:a	Lcom/xueqiu/android/common/camera/a;
    //   360: iconst_1
    //   361: invokestatic 157	com/xueqiu/android/common/camera/a:a	(Lcom/xueqiu/android/common/camera/a;Z)Z
    //   364: pop
    //   365: aload 5
    //   367: invokevirtual 160	java/io/BufferedOutputStream:close	()V
    //   370: aload_0
    //   371: getfield 12	com/xueqiu/android/common/camera/c:a	Lcom/xueqiu/android/common/camera/a;
    //   374: invokestatic 164	com/xueqiu/android/common/camera/a:e	(Lcom/xueqiu/android/common/camera/a;)Z
    //   377: ifeq +10 -> 387
    //   380: aload_0
    //   381: getfield 12	com/xueqiu/android/common/camera/c:a	Lcom/xueqiu/android/common/camera/a;
    //   384: invokestatic 168	com/xueqiu/android/common/camera/a:f	(Lcom/xueqiu/android/common/camera/a;)V
    //   387: return
    //   388: iconst_0
    //   389: istore 9
    //   391: goto +161 -> 552
    //   394: aload 5
    //   396: astore_2
    //   397: aload_3
    //   398: invokevirtual 134	android/graphics/Bitmap:getHeight	()I
    //   401: aload_0
    //   402: getfield 12	com/xueqiu/android/common/camera/c:a	Lcom/xueqiu/android/common/camera/a;
    //   405: invokestatic 35	com/xueqiu/android/common/camera/a:d	(Lcom/xueqiu/android/common/camera/a;)Lcom/xueqiu/android/common/camera/g;
    //   408: getfield 128	com/xueqiu/android/common/camera/g:b	I
    //   411: if_icmple +121 -> 532
    //   414: aload 5
    //   416: astore_2
    //   417: aload_0
    //   418: getfield 12	com/xueqiu/android/common/camera/c:a	Lcom/xueqiu/android/common/camera/a;
    //   421: invokestatic 35	com/xueqiu/android/common/camera/a:d	(Lcom/xueqiu/android/common/camera/a;)Lcom/xueqiu/android/common/camera/g;
    //   424: getfield 128	com/xueqiu/android/common/camera/g:b	I
    //   427: istore 6
    //   429: aload 5
    //   431: astore_2
    //   432: aload_3
    //   433: invokevirtual 131	android/graphics/Bitmap:getWidth	()I
    //   436: aload_0
    //   437: getfield 12	com/xueqiu/android/common/camera/c:a	Lcom/xueqiu/android/common/camera/a;
    //   440: invokestatic 35	com/xueqiu/android/common/camera/a:d	(Lcom/xueqiu/android/common/camera/a;)Lcom/xueqiu/android/common/camera/g;
    //   443: getfield 128	com/xueqiu/android/common/camera/g:b	I
    //   446: imul
    //   447: i2f
    //   448: fstore_1
    //   449: aload 5
    //   451: astore_2
    //   452: aload_3
    //   453: invokevirtual 134	android/graphics/Bitmap:getHeight	()I
    //   456: istore 7
    //   458: fload_1
    //   459: fconst_1
    //   460: fmul
    //   461: iload 7
    //   463: i2f
    //   464: fdiv
    //   465: f2i
    //   466: istore 7
    //   468: goto -162 -> 306
    //   471: astore 4
    //   473: aconst_null
    //   474: astore_3
    //   475: aload_3
    //   476: astore_2
    //   477: ldc 79
    //   479: aload 4
    //   481: invokestatic 171	com/xueqiu/android/base/util/v:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   484: aload_3
    //   485: ifnull -115 -> 370
    //   488: aload_3
    //   489: invokevirtual 160	java/io/BufferedOutputStream:close	()V
    //   492: goto -122 -> 370
    //   495: astore_2
    //   496: goto -126 -> 370
    //   499: astore_3
    //   500: aconst_null
    //   501: astore_2
    //   502: aload_2
    //   503: ifnull +7 -> 510
    //   506: aload_2
    //   507: invokevirtual 160	java/io/BufferedOutputStream:close	()V
    //   510: aload_3
    //   511: athrow
    //   512: astore_2
    //   513: goto -143 -> 370
    //   516: astore_2
    //   517: goto -7 -> 510
    //   520: astore_3
    //   521: goto -19 -> 502
    //   524: astore 4
    //   526: aload 5
    //   528: astore_3
    //   529: goto -54 -> 475
    //   532: iconst_0
    //   533: istore 8
    //   535: iload 7
    //   537: istore 6
    //   539: iload 8
    //   541: istore 7
    //   543: goto -237 -> 306
    //   546: goto -216 -> 330
    //   549: goto -394 -> 155
    //   552: iload 8
    //   554: istore 6
    //   556: iload 9
    //   558: ifeq -447 -> 111
    //   561: iload 8
    //   563: ineg
    //   564: istore 6
    //   566: goto -455 -> 111
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	569	0	this	c
    //   448	11	1	f	float
    //   38	439	2	localObject1	Object
    //   495	1	2	localIOException1	java.io.IOException
    //   501	6	2	localObject2	Object
    //   512	1	2	localIOException2	java.io.IOException
    //   516	1	2	localIOException3	java.io.IOException
    //   176	313	3	localBitmap1	android.graphics.Bitmap
    //   499	12	3	localObject3	Object
    //   520	1	3	localObject4	Object
    //   528	1	3	localBufferedOutputStream1	java.io.BufferedOutputStream
    //   19	309	4	localBitmap2	android.graphics.Bitmap
    //   471	9	4	localIOException4	java.io.IOException
    //   524	1	4	localIOException5	java.io.IOException
    //   74	453	5	localBufferedOutputStream2	java.io.BufferedOutputStream
    //   125	440	6	i	int
    //   4	538	7	j	int
    //   89	473	8	k	int
    //   1	556	9	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   21	76	471	java/io/IOException
    //   488	492	495	java/io/IOException
    //   21	76	499	finally
    //   365	370	512	java/io/IOException
    //   506	510	516	java/io/IOException
    //   79	91	520	finally
    //   94	108	520	finally
    //   114	136	520	finally
    //   144	155	520	finally
    //   158	174	520	finally
    //   180	198	520	finally
    //   201	211	520	finally
    //   214	227	520	finally
    //   230	241	520	finally
    //   244	261	520	finally
    //   264	276	520	finally
    //   279	306	520	finally
    //   309	320	520	finally
    //   323	327	520	finally
    //   333	345	520	finally
    //   348	353	520	finally
    //   356	365	520	finally
    //   397	414	520	finally
    //   417	429	520	finally
    //   432	449	520	finally
    //   452	458	520	finally
    //   477	484	520	finally
    //   79	91	524	java/io/IOException
    //   94	108	524	java/io/IOException
    //   114	136	524	java/io/IOException
    //   144	155	524	java/io/IOException
    //   158	174	524	java/io/IOException
    //   180	198	524	java/io/IOException
    //   201	211	524	java/io/IOException
    //   214	227	524	java/io/IOException
    //   230	241	524	java/io/IOException
    //   244	261	524	java/io/IOException
    //   264	276	524	java/io/IOException
    //   279	306	524	java/io/IOException
    //   309	320	524	java/io/IOException
    //   323	327	524	java/io/IOException
    //   333	345	524	java/io/IOException
    //   348	353	524	java/io/IOException
    //   356	365	524	java/io/IOException
    //   397	414	524	java/io/IOException
    //   417	429	524	java/io/IOException
    //   432	449	524	java/io/IOException
    //   452	458	524	java/io/IOException
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\camera\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */