package com.tencent.tauth;

final class i
  extends Thread
{
  i(UploadFileToWeiyun paramUploadFileToWeiyun) {}
  
  /* Error */
  public final void run()
  {
    // Byte code:
    //   0: new 23	org/apache/http/params/BasicHttpParams
    //   3: dup
    //   4: invokespecial 24	org/apache/http/params/BasicHttpParams:<init>	()V
    //   7: astore_1
    //   8: aload_1
    //   9: sipush 15000
    //   12: invokestatic 30	org/apache/http/params/HttpConnectionParams:setConnectionTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   15: aload_1
    //   16: sipush 20000
    //   19: invokestatic 33	org/apache/http/params/HttpConnectionParams:setSoTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   22: aload_1
    //   23: getstatic 39	org/apache/http/HttpVersion:HTTP_1_1	Lorg/apache/http/HttpVersion;
    //   26: invokestatic 45	org/apache/http/params/HttpProtocolParams:setVersion	(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V
    //   29: aload_1
    //   30: ldc 47
    //   32: invokestatic 51	org/apache/http/params/HttpProtocolParams:setContentCharset	(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
    //   35: aload_1
    //   36: ldc 53
    //   38: invokestatic 56	org/apache/http/params/HttpProtocolParams:setUserAgent	(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
    //   41: new 58	org/apache/http/impl/client/DefaultHttpClient
    //   44: dup
    //   45: aload_1
    //   46: invokespecial 61	org/apache/http/impl/client/DefaultHttpClient:<init>	(Lorg/apache/http/params/HttpParams;)V
    //   49: astore_1
    //   50: aload_0
    //   51: getfield 10	com/tencent/tauth/i:a	Lcom/tencent/tauth/UploadFileToWeiyun;
    //   54: iconst_0
    //   55: invokestatic 67	com/tencent/tauth/UploadFileToWeiyun:access$1302	(Lcom/tencent/tauth/UploadFileToWeiyun;I)I
    //   58: pop
    //   59: ldc 68
    //   61: newarray <illegal type>
    //   63: astore_2
    //   64: new 70	java/io/FileInputStream
    //   67: dup
    //   68: aload_0
    //   69: getfield 10	com/tencent/tauth/i:a	Lcom/tencent/tauth/UploadFileToWeiyun;
    //   72: invokestatic 74	com/tencent/tauth/UploadFileToWeiyun:access$700	(Lcom/tencent/tauth/UploadFileToWeiyun;)Ljava/lang/String;
    //   75: invokespecial 77	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   78: astore_3
    //   79: aload_0
    //   80: getfield 10	com/tencent/tauth/i:a	Lcom/tencent/tauth/UploadFileToWeiyun;
    //   83: invokestatic 81	com/tencent/tauth/UploadFileToWeiyun:access$1300	(Lcom/tencent/tauth/UploadFileToWeiyun;)I
    //   86: aload_0
    //   87: getfield 10	com/tencent/tauth/i:a	Lcom/tencent/tauth/UploadFileToWeiyun;
    //   90: invokestatic 84	com/tencent/tauth/UploadFileToWeiyun:access$1000	(Lcom/tencent/tauth/UploadFileToWeiyun;)I
    //   93: if_icmpge +331 -> 424
    //   96: aload_3
    //   97: aload_2
    //   98: invokevirtual 88	java/io/FileInputStream:read	([B)I
    //   101: istore 5
    //   103: aload_0
    //   104: getfield 10	com/tencent/tauth/i:a	Lcom/tencent/tauth/UploadFileToWeiyun;
    //   107: aload_0
    //   108: getfield 10	com/tencent/tauth/i:a	Lcom/tencent/tauth/UploadFileToWeiyun;
    //   111: aload_2
    //   112: iload 5
    //   114: aload_0
    //   115: getfield 10	com/tencent/tauth/i:a	Lcom/tencent/tauth/UploadFileToWeiyun;
    //   118: invokestatic 81	com/tencent/tauth/UploadFileToWeiyun:access$1300	(Lcom/tencent/tauth/UploadFileToWeiyun;)I
    //   121: invokestatic 92	com/tencent/tauth/UploadFileToWeiyun:access$1500	(Lcom/tencent/tauth/UploadFileToWeiyun;[BII)[B
    //   124: invokestatic 96	com/tencent/tauth/UploadFileToWeiyun:access$1402	(Lcom/tencent/tauth/UploadFileToWeiyun;[B)[B
    //   127: pop
    //   128: aload_0
    //   129: getfield 10	com/tencent/tauth/i:a	Lcom/tencent/tauth/UploadFileToWeiyun;
    //   132: iload 5
    //   134: invokestatic 99	com/tencent/tauth/UploadFileToWeiyun:access$1312	(Lcom/tencent/tauth/UploadFileToWeiyun;I)I
    //   137: pop
    //   138: aload_0
    //   139: getfield 10	com/tencent/tauth/i:a	Lcom/tencent/tauth/UploadFileToWeiyun;
    //   142: invokestatic 103	com/tencent/tauth/UploadFileToWeiyun:access$1400	(Lcom/tencent/tauth/UploadFileToWeiyun;)[B
    //   145: ifnull +279 -> 424
    //   148: new 105	org/apache/http/client/methods/HttpPost
    //   151: dup
    //   152: new 107	java/lang/StringBuilder
    //   155: dup
    //   156: ldc 109
    //   158: invokespecial 110	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   161: aload_0
    //   162: getfield 10	com/tencent/tauth/i:a	Lcom/tencent/tauth/UploadFileToWeiyun;
    //   165: invokestatic 113	com/tencent/tauth/UploadFileToWeiyun:access$500	(Lcom/tencent/tauth/UploadFileToWeiyun;)Ljava/lang/String;
    //   168: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   171: ldc 119
    //   173: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   176: aload_0
    //   177: getfield 10	com/tencent/tauth/i:a	Lcom/tencent/tauth/UploadFileToWeiyun;
    //   180: invokestatic 122	com/tencent/tauth/UploadFileToWeiyun:access$900	(Lcom/tencent/tauth/UploadFileToWeiyun;)Ljava/lang/String;
    //   183: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   186: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   189: invokespecial 127	org/apache/http/client/methods/HttpPost:<init>	(Ljava/lang/String;)V
    //   192: astore 4
    //   194: aload 4
    //   196: ldc -127
    //   198: ldc -125
    //   200: invokevirtual 135	org/apache/http/client/methods/HttpPost:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   203: aload 4
    //   205: ldc -119
    //   207: ldc -117
    //   209: invokevirtual 142	org/apache/http/client/methods/HttpPost:setHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   212: aload 4
    //   214: ldc -112
    //   216: ldc -110
    //   218: invokevirtual 142	org/apache/http/client/methods/HttpPost:setHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   221: aload 4
    //   223: ldc -108
    //   225: ldc -106
    //   227: invokevirtual 142	org/apache/http/client/methods/HttpPost:setHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   230: aload 4
    //   232: new 152	org/apache/http/entity/ByteArrayEntity
    //   235: dup
    //   236: aload_0
    //   237: getfield 10	com/tencent/tauth/i:a	Lcom/tencent/tauth/UploadFileToWeiyun;
    //   240: invokestatic 103	com/tencent/tauth/UploadFileToWeiyun:access$1400	(Lcom/tencent/tauth/UploadFileToWeiyun;)[B
    //   243: invokespecial 155	org/apache/http/entity/ByteArrayEntity:<init>	([B)V
    //   246: invokevirtual 159	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   249: aload_1
    //   250: aload 4
    //   252: invokeinterface 165 2 0
    //   257: invokeinterface 171 1 0
    //   262: invokeinterface 177 1 0
    //   267: istore 5
    //   269: iload 5
    //   271: sipush 200
    //   274: if_icmpne +279 -> 553
    //   277: aload_0
    //   278: getfield 10	com/tencent/tauth/i:a	Lcom/tencent/tauth/UploadFileToWeiyun;
    //   281: invokestatic 81	com/tencent/tauth/UploadFileToWeiyun:access$1300	(Lcom/tencent/tauth/UploadFileToWeiyun;)I
    //   284: aload_0
    //   285: getfield 10	com/tencent/tauth/i:a	Lcom/tencent/tauth/UploadFileToWeiyun;
    //   288: invokestatic 84	com/tencent/tauth/UploadFileToWeiyun:access$1000	(Lcom/tencent/tauth/UploadFileToWeiyun;)I
    //   291: if_icmpge +213 -> 504
    //   294: aload_0
    //   295: getfield 10	com/tencent/tauth/i:a	Lcom/tencent/tauth/UploadFileToWeiyun;
    //   298: invokestatic 81	com/tencent/tauth/UploadFileToWeiyun:access$1300	(Lcom/tencent/tauth/UploadFileToWeiyun;)I
    //   301: i2l
    //   302: ldc2_w 178
    //   305: lmul
    //   306: aload_0
    //   307: getfield 10	com/tencent/tauth/i:a	Lcom/tencent/tauth/UploadFileToWeiyun;
    //   310: invokestatic 84	com/tencent/tauth/UploadFileToWeiyun:access$1000	(Lcom/tencent/tauth/UploadFileToWeiyun;)I
    //   313: i2l
    //   314: ldiv
    //   315: l2i
    //   316: istore 5
    //   318: aload_0
    //   319: getfield 10	com/tencent/tauth/i:a	Lcom/tencent/tauth/UploadFileToWeiyun;
    //   322: invokestatic 183	com/tencent/tauth/UploadFileToWeiyun:access$1200	(Lcom/tencent/tauth/UploadFileToWeiyun;)Landroid/os/Handler;
    //   325: invokevirtual 189	android/os/Handler:obtainMessage	()Landroid/os/Message;
    //   328: astore 4
    //   330: aload 4
    //   332: iconst_2
    //   333: putfield 195	android/os/Message:what	I
    //   336: aload 4
    //   338: iload 5
    //   340: invokestatic 201	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   343: putfield 205	android/os/Message:obj	Ljava/lang/Object;
    //   346: aload_0
    //   347: getfield 10	com/tencent/tauth/i:a	Lcom/tencent/tauth/UploadFileToWeiyun;
    //   350: invokestatic 183	com/tencent/tauth/UploadFileToWeiyun:access$1200	(Lcom/tencent/tauth/UploadFileToWeiyun;)Landroid/os/Handler;
    //   353: aload 4
    //   355: invokevirtual 209	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   358: pop
    //   359: ldc -45
    //   361: new 107	java/lang/StringBuilder
    //   364: dup
    //   365: ldc -43
    //   367: invokespecial 110	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   370: iload 5
    //   372: invokevirtual 216	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   375: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   378: invokestatic 222	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   381: pop
    //   382: goto -303 -> 79
    //   385: astore_1
    //   386: aload_1
    //   387: invokevirtual 225	java/io/FileNotFoundException:printStackTrace	()V
    //   390: aload_0
    //   391: getfield 10	com/tencent/tauth/i:a	Lcom/tencent/tauth/UploadFileToWeiyun;
    //   394: invokestatic 183	com/tencent/tauth/UploadFileToWeiyun:access$1200	(Lcom/tencent/tauth/UploadFileToWeiyun;)Landroid/os/Handler;
    //   397: invokevirtual 189	android/os/Handler:obtainMessage	()Landroid/os/Message;
    //   400: astore_1
    //   401: aload_1
    //   402: iconst_m1
    //   403: putfield 195	android/os/Message:what	I
    //   406: aload_1
    //   407: ldc -29
    //   409: putfield 205	android/os/Message:obj	Ljava/lang/Object;
    //   412: aload_0
    //   413: getfield 10	com/tencent/tauth/i:a	Lcom/tencent/tauth/UploadFileToWeiyun;
    //   416: invokestatic 183	com/tencent/tauth/UploadFileToWeiyun:access$1200	(Lcom/tencent/tauth/UploadFileToWeiyun;)Landroid/os/Handler;
    //   419: aload_1
    //   420: invokevirtual 209	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   423: pop
    //   424: return
    //   425: astore_1
    //   426: aload_1
    //   427: invokevirtual 228	java/io/IOException:printStackTrace	()V
    //   430: aload_0
    //   431: getfield 10	com/tencent/tauth/i:a	Lcom/tencent/tauth/UploadFileToWeiyun;
    //   434: invokestatic 183	com/tencent/tauth/UploadFileToWeiyun:access$1200	(Lcom/tencent/tauth/UploadFileToWeiyun;)Landroid/os/Handler;
    //   437: invokevirtual 189	android/os/Handler:obtainMessage	()Landroid/os/Message;
    //   440: astore_1
    //   441: aload_1
    //   442: iconst_m1
    //   443: putfield 195	android/os/Message:what	I
    //   446: aload_1
    //   447: ldc -26
    //   449: putfield 205	android/os/Message:obj	Ljava/lang/Object;
    //   452: aload_0
    //   453: getfield 10	com/tencent/tauth/i:a	Lcom/tencent/tauth/UploadFileToWeiyun;
    //   456: invokestatic 183	com/tencent/tauth/UploadFileToWeiyun:access$1200	(Lcom/tencent/tauth/UploadFileToWeiyun;)Landroid/os/Handler;
    //   459: aload_1
    //   460: invokevirtual 209	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   463: pop
    //   464: return
    //   465: astore 4
    //   467: aload 4
    //   469: invokevirtual 231	java/lang/Exception:printStackTrace	()V
    //   472: ldc -45
    //   474: new 107	java/lang/StringBuilder
    //   477: dup
    //   478: ldc -23
    //   480: invokespecial 110	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   483: aload 4
    //   485: invokevirtual 236	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   488: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   491: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   494: invokestatic 239	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   497: pop
    //   498: iconst_0
    //   499: istore 5
    //   501: goto -232 -> 269
    //   504: aload_0
    //   505: getfield 10	com/tencent/tauth/i:a	Lcom/tencent/tauth/UploadFileToWeiyun;
    //   508: invokestatic 183	com/tencent/tauth/UploadFileToWeiyun:access$1200	(Lcom/tencent/tauth/UploadFileToWeiyun;)Landroid/os/Handler;
    //   511: invokevirtual 189	android/os/Handler:obtainMessage	()Landroid/os/Message;
    //   514: astore 4
    //   516: aload 4
    //   518: iconst_3
    //   519: putfield 195	android/os/Message:what	I
    //   522: aload 4
    //   524: ldc -15
    //   526: putfield 205	android/os/Message:obj	Ljava/lang/Object;
    //   529: aload_0
    //   530: getfield 10	com/tencent/tauth/i:a	Lcom/tencent/tauth/UploadFileToWeiyun;
    //   533: invokestatic 183	com/tencent/tauth/UploadFileToWeiyun:access$1200	(Lcom/tencent/tauth/UploadFileToWeiyun;)Landroid/os/Handler;
    //   536: aload 4
    //   538: invokevirtual 209	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   541: pop
    //   542: ldc -45
    //   544: ldc -13
    //   546: invokestatic 222	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   549: pop
    //   550: goto -471 -> 79
    //   553: ldc -45
    //   555: new 107	java/lang/StringBuilder
    //   558: dup
    //   559: ldc -11
    //   561: invokespecial 110	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   564: iload 5
    //   566: invokevirtual 216	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   569: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   572: invokestatic 239	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   575: pop
    //   576: aload_0
    //   577: getfield 10	com/tencent/tauth/i:a	Lcom/tencent/tauth/UploadFileToWeiyun;
    //   580: invokestatic 183	com/tencent/tauth/UploadFileToWeiyun:access$1200	(Lcom/tencent/tauth/UploadFileToWeiyun;)Landroid/os/Handler;
    //   583: invokevirtual 189	android/os/Handler:obtainMessage	()Landroid/os/Message;
    //   586: astore_1
    //   587: aload_1
    //   588: bipush -2
    //   590: putfield 195	android/os/Message:what	I
    //   593: aload_1
    //   594: new 107	java/lang/StringBuilder
    //   597: dup
    //   598: ldc -9
    //   600: invokespecial 110	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   603: iload 5
    //   605: invokevirtual 216	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   608: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   611: putfield 205	android/os/Message:obj	Ljava/lang/Object;
    //   614: aload_0
    //   615: getfield 10	com/tencent/tauth/i:a	Lcom/tencent/tauth/UploadFileToWeiyun;
    //   618: invokestatic 183	com/tencent/tauth/UploadFileToWeiyun:access$1200	(Lcom/tencent/tauth/UploadFileToWeiyun;)Landroid/os/Handler;
    //   621: aload_1
    //   622: invokevirtual 209	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   625: pop
    //   626: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	627	0	this	i
    //   7	243	1	localObject1	Object
    //   385	2	1	localFileNotFoundException	java.io.FileNotFoundException
    //   400	20	1	localMessage1	android.os.Message
    //   425	2	1	localIOException	java.io.IOException
    //   440	182	1	localMessage2	android.os.Message
    //   63	49	2	arrayOfByte	byte[]
    //   78	19	3	localFileInputStream	java.io.FileInputStream
    //   192	162	4	localObject2	Object
    //   465	19	4	localException	Exception
    //   514	23	4	localMessage3	android.os.Message
    //   101	503	5	i	int
    // Exception table:
    //   from	to	target	type
    //   64	79	385	java/io/FileNotFoundException
    //   96	138	425	java/io/IOException
    //   249	269	465	java/lang/Exception
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\tauth\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */