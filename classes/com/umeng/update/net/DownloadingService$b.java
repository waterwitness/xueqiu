package com.umeng.update.net;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.SparseArray;
import android.widget.Toast;
import java.io.File;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import u.a.a;
import u.a.b;
import u.a.k;
import u.a.m;

class DownloadingService$b
  extends Thread
{
  private Context b;
  private boolean c;
  private File d;
  private int e = 0;
  private long f = -1L;
  private long g = -1L;
  private int h = -1;
  private int i;
  private DownloadingService.a j;
  private a.a k;
  
  public DownloadingService$b(DownloadingService paramDownloadingService, Context paramContext, a.a parama, int paramInt1, int paramInt2, DownloadingService.a parama1)
  {
    try
    {
      this.b = paramContext;
      this.k = parama;
      this.e = paramInt2;
      if (DownloadingService.b().indexOfKey(paramInt1) >= 0)
      {
        paramDownloadingService = ((c.b)DownloadingService.b().get(paramInt1)).f;
        if ((paramDownloadingService != null) && (paramDownloadingService.length > 1))
        {
          this.f = paramDownloadingService[0];
          this.g = paramDownloadingService[1];
        }
      }
      this.j = parama1;
      this.i = paramInt1;
      paramDownloadingService = new boolean[1];
      this.d = j.a("/apk", paramContext, paramDownloadingService);
      this.c = paramDownloadingService[0];
      if (this.c) {}
      for (long l = 104857600L;; l = 10485760L)
      {
        j.a(this.d, l, 259200000L);
        paramDownloadingService = a(this.k);
        this.d = new File(this.d, paramDownloadingService);
        return;
      }
      return;
    }
    catch (Exception paramDownloadingService)
    {
      b.c(DownloadingService.a(), paramDownloadingService.getMessage(), paramDownloadingService);
      this.j.a(this.i, paramDownloadingService);
    }
  }
  
  private String a(a.a parama)
  {
    if (this.k.e != null) {}
    for (parama = this.k.e + ".apk.tmp";; parama = m.a(this.k.c) + ".apk.tmp")
    {
      Object localObject = parama;
      if (this.k.a.equalsIgnoreCase("delta_update")) {
        localObject = parama.replace(".apk", ".patch");
      }
      return (String)localObject;
    }
  }
  
  private HttpURLConnection a(URL paramURL, File paramFile)
  {
    paramURL = (HttpURLConnection)paramURL.openConnection();
    paramURL.setRequestMethod("GET");
    paramURL.setRequestProperty("Accept-Encoding", "identity");
    paramURL.addRequestProperty("Connection", "keep-alive");
    paramURL.setConnectTimeout(5000);
    paramURL.setReadTimeout(10000);
    if ((paramFile.exists()) && (paramFile.length() > 0L))
    {
      b.c(DownloadingService.a(), String.format(this.k.b + " getFileLength: %1$15s", new Object[] { Long.valueOf(paramFile.length()) }));
      paramURL.setRequestProperty("Range", "bytes=" + paramFile.length() + "-");
    }
    return paramURL;
  }
  
  private void a()
  {
    b.c(DownloadingService.a(), "wait for repeating Test network repeat count=" + this.e);
    try
    {
      if (!this.k.g)
      {
        Thread.sleep(8000L);
        if (this.g < 1L)
        {
          a(false);
          return;
        }
        a(true);
        return;
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      a(localInterruptedException);
      DownloadingService.a(this.a).b(this.b, this.i);
      return;
    }
    Object localObject = (c.b)DownloadingService.b().get(this.i);
    ((c.b)localObject).f[0] = this.f;
    ((c.b)localObject).f[1] = this.g;
    ((c.b)localObject).f[2] = this.e;
    localObject = f.a(this.i, "continue");
    Intent localIntent = new Intent(this.b, DownloadingService.class);
    localIntent.putExtra("com.umeng.broadcast.download.msg", (String)localObject);
    DownloadingService.a(this.a).a(this.a, localIntent);
    DownloadingService.a(this.a, this.b.getString(u.a.c.a(this.b).a("umeng_common_info_interrupt", "string")));
    b.c(DownloadingService.a(), "changed play state button on op-notification.");
  }
  
  private void a(File paramFile, String paramString)
  {
    b.c(DownloadingService.a(), "itemMd5 " + this.k.d);
    b.c(DownloadingService.a(), "fileMd5 " + m.a(paramFile));
    if ((this.k.d != null) && (!this.k.d.equalsIgnoreCase(m.a(paramFile))))
    {
      if (!this.k.a.equalsIgnoreCase("delta_update")) {
        break label227;
      }
      DownloadingService.c(this.a).cancel(this.i);
      paramFile = new Bundle();
      paramFile.putString("filename", paramString);
      paramString = Message.obtain();
      paramString.what = 5;
      paramString.arg1 = 3;
      paramString.arg2 = this.i;
      paramString.setData(paramFile);
    }
    label227:
    do
    {
      try
      {
        if (DownloadingService.c().get(this.k) != null) {
          ((Messenger)DownloadingService.c().get(this.k)).send(paramString);
        }
        DownloadingService.a(this.a).b(this.b, this.i);
        return;
      }
      catch (RemoteException paramFile)
      {
        DownloadingService.a(this.a).b(this.b, this.i);
        return;
      }
      ((Messenger)DownloadingService.c().get(this.k)).send(Message.obtain(null, 5, 0, 0));
    } while (this.k.h);
    DownloadingService.a(this.a).b(this.b, this.i);
    paramFile = new Notification(17301634, this.b.getString(k.e(this.b)), System.currentTimeMillis());
    paramString = PendingIntent.getActivity(this.b, 0, new Intent(), 0);
    paramFile.setLatestEventInfo(this.b, a.h(this.b), this.k.b + this.b.getString(k.e(this.b)), paramString);
    paramFile.flags |= 0x10;
    DownloadingService.c(this.a).notify(this.i, paramFile);
  }
  
  private void a(Exception paramException)
  {
    b.b(DownloadingService.a(), "can not install. " + paramException.getMessage());
    if (this.j != null) {
      this.j.a(this.i, paramException);
    }
    DownloadingService.a(this.a).a(this.k, this.f, this.g, this.e);
  }
  
  /* Error */
  private void a(boolean paramBoolean)
  {
    // Byte code:
    //   0: lconst_0
    //   1: lstore 14
    //   3: aconst_null
    //   4: astore_3
    //   5: iconst_0
    //   6: istore 10
    //   8: aload_0
    //   9: getfield 81	com/umeng/update/net/DownloadingService$b:d	Ljava/io/File;
    //   12: invokevirtual 425	java/io/File:getName	()Ljava/lang/String;
    //   15: astore 4
    //   17: new 427	java/io/FileOutputStream
    //   20: dup
    //   21: aload_0
    //   22: getfield 81	com/umeng/update/net/DownloadingService$b:d	Ljava/io/File;
    //   25: iconst_1
    //   26: invokespecial 430	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   29: astore_2
    //   30: aload_0
    //   31: getfield 83	com/umeng/update/net/DownloadingService$b:c	Z
    //   34: ifne +1898 -> 1932
    //   37: aload_0
    //   38: getfield 81	com/umeng/update/net/DownloadingService$b:d	Ljava/io/File;
    //   41: invokevirtual 433	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   44: iconst_3
    //   45: invokestatic 436	com/umeng/update/net/j:a	(Ljava/lang/String;I)Z
    //   48: ifne +1884 -> 1932
    //   51: aload_2
    //   52: invokevirtual 439	java/io/FileOutputStream:close	()V
    //   55: aload_0
    //   56: getfield 46	com/umeng/update/net/DownloadingService$b:b	Landroid/content/Context;
    //   59: aload 4
    //   61: ldc_w 440
    //   64: invokevirtual 444	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   67: astore_3
    //   68: aload_0
    //   69: aload_0
    //   70: getfield 46	com/umeng/update/net/DownloadingService$b:b	Landroid/content/Context;
    //   73: aload 4
    //   75: invokevirtual 448	android/content/Context:getFileStreamPath	(Ljava/lang/String;)Ljava/io/File;
    //   78: putfield 81	com/umeng/update/net/DownloadingService$b:d	Ljava/io/File;
    //   81: aload_3
    //   82: astore_2
    //   83: invokestatic 103	com/umeng/update/net/DownloadingService:a	()Ljava/lang/String;
    //   86: ldc_w 450
    //   89: iconst_2
    //   90: anewarray 216	java/lang/Object
    //   93: dup
    //   94: iconst_0
    //   95: aload_0
    //   96: getfield 48	com/umeng/update/net/DownloadingService$b:k	Lcom/umeng/update/net/a$a;
    //   99: getfield 161	com/umeng/update/net/a$a:c	Ljava/lang/String;
    //   102: aastore
    //   103: dup
    //   104: iconst_1
    //   105: aload_0
    //   106: getfield 81	com/umeng/update/net/DownloadingService$b:d	Ljava/io/File;
    //   109: invokevirtual 433	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   112: aastore
    //   113: invokestatic 225	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   116: invokestatic 227	u/a/b:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   119: aload_0
    //   120: new 169	java/net/URL
    //   123: dup
    //   124: aload_0
    //   125: getfield 48	com/umeng/update/net/DownloadingService$b:k	Lcom/umeng/update/net/a$a;
    //   128: getfield 161	com/umeng/update/net/a$a:c	Ljava/lang/String;
    //   131: invokespecial 451	java/net/URL:<init>	(Ljava/lang/String;)V
    //   134: aload_0
    //   135: getfield 81	com/umeng/update/net/DownloadingService$b:d	Ljava/io/File;
    //   138: invokespecial 453	com/umeng/update/net/DownloadingService$b:a	(Ljava/net/URL;Ljava/io/File;)Ljava/net/HttpURLConnection;
    //   141: astore 4
    //   143: aload 4
    //   145: invokevirtual 456	java/net/HttpURLConnection:connect	()V
    //   148: aload 4
    //   150: invokevirtual 460	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   153: astore_3
    //   154: iload_1
    //   155: ifne +190 -> 345
    //   158: lload 14
    //   160: lstore 12
    //   162: aload_2
    //   163: astore 6
    //   165: aload_3
    //   166: astore 5
    //   168: aload_0
    //   169: getfield 81	com/umeng/update/net/DownloadingService$b:d	Ljava/io/File;
    //   172: invokevirtual 206	java/io/File:exists	()Z
    //   175: ifeq +42 -> 217
    //   178: lload 14
    //   180: lstore 12
    //   182: aload_2
    //   183: astore 6
    //   185: aload_3
    //   186: astore 5
    //   188: aload_0
    //   189: getfield 81	com/umeng/update/net/DownloadingService$b:d	Ljava/io/File;
    //   192: invokevirtual 210	java/io/File:length	()J
    //   195: lconst_0
    //   196: lcmp
    //   197: ifle +20 -> 217
    //   200: aload_2
    //   201: astore 6
    //   203: aload_3
    //   204: astore 5
    //   206: lconst_0
    //   207: aload_0
    //   208: getfield 81	com/umeng/update/net/DownloadingService$b:d	Ljava/io/File;
    //   211: invokevirtual 210	java/io/File:length	()J
    //   214: ladd
    //   215: lstore 12
    //   217: aload_2
    //   218: astore 6
    //   220: aload_3
    //   221: astore 5
    //   223: aload_0
    //   224: lload 12
    //   226: putfield 40	com/umeng/update/net/DownloadingService$b:f	J
    //   229: aload_2
    //   230: astore 6
    //   232: aload_3
    //   233: astore 5
    //   235: aload_0
    //   236: lload 12
    //   238: aload 4
    //   240: invokevirtual 464	java/net/HttpURLConnection:getContentLength	()I
    //   243: i2l
    //   244: ladd
    //   245: putfield 42	com/umeng/update/net/DownloadingService$b:g	J
    //   248: aload_2
    //   249: astore 6
    //   251: aload_3
    //   252: astore 5
    //   254: invokestatic 103	com/umeng/update/net/DownloadingService:a	()Ljava/lang/String;
    //   257: ldc_w 466
    //   260: iconst_1
    //   261: anewarray 216	java/lang/Object
    //   264: dup
    //   265: iconst_0
    //   266: aload_0
    //   267: getfield 40	com/umeng/update/net/DownloadingService$b:f	J
    //   270: invokestatic 221	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   273: aastore
    //   274: invokestatic 225	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   277: invokestatic 227	u/a/b:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   280: aload_2
    //   281: astore 6
    //   283: aload_3
    //   284: astore 5
    //   286: invokestatic 103	com/umeng/update/net/DownloadingService:a	()Ljava/lang/String;
    //   289: ldc_w 468
    //   292: iconst_1
    //   293: anewarray 216	java/lang/Object
    //   296: dup
    //   297: iconst_0
    //   298: aload 4
    //   300: invokevirtual 464	java/net/HttpURLConnection:getContentLength	()I
    //   303: invokestatic 473	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   306: aastore
    //   307: invokestatic 225	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   310: invokestatic 227	u/a/b:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   313: aload_2
    //   314: astore 6
    //   316: aload_3
    //   317: astore 5
    //   319: invokestatic 103	com/umeng/update/net/DownloadingService:a	()Ljava/lang/String;
    //   322: ldc_w 475
    //   325: iconst_1
    //   326: anewarray 216	java/lang/Object
    //   329: dup
    //   330: iconst_0
    //   331: aload_0
    //   332: getfield 42	com/umeng/update/net/DownloadingService$b:g	J
    //   335: invokestatic 221	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   338: aastore
    //   339: invokestatic 225	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   342: invokestatic 227	u/a/b:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   345: aload_2
    //   346: astore 6
    //   348: aload_3
    //   349: astore 5
    //   351: sipush 4096
    //   354: newarray <illegal type>
    //   356: astore 4
    //   358: aload_2
    //   359: astore 6
    //   361: aload_3
    //   362: astore 5
    //   364: invokestatic 103	com/umeng/update/net/DownloadingService:a	()Ljava/lang/String;
    //   367: new 125	java/lang/StringBuilder
    //   370: dup
    //   371: aload_0
    //   372: getfield 48	com/umeng/update/net/DownloadingService$b:k	Lcom/umeng/update/net/a$a;
    //   375: getfield 212	com/umeng/update/net/a$a:b	Ljava/lang/String;
    //   378: invokestatic 131	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   381: invokespecial 134	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   384: ldc_w 477
    //   387: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   390: aload_0
    //   391: getfield 42	com/umeng/update/net/DownloadingService$b:g	J
    //   394: invokestatic 480	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   397: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   400: invokevirtual 143	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   403: invokestatic 227	u/a/b:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   406: aload_2
    //   407: astore 6
    //   409: aload_3
    //   410: astore 5
    //   412: aload_0
    //   413: getfield 46	com/umeng/update/net/DownloadingService$b:b	Landroid/content/Context;
    //   416: invokestatic 485	com/umeng/update/net/b:a	(Landroid/content/Context;)Lcom/umeng/update/net/b;
    //   419: aload_0
    //   420: getfield 48	com/umeng/update/net/DownloadingService$b:k	Lcom/umeng/update/net/a$a;
    //   423: getfield 145	com/umeng/update/net/a$a:a	Ljava/lang/String;
    //   426: aload_0
    //   427: getfield 48	com/umeng/update/net/DownloadingService$b:k	Lcom/umeng/update/net/a$a;
    //   430: getfield 161	com/umeng/update/net/a$a:c	Ljava/lang/String;
    //   433: invokevirtual 488	com/umeng/update/net/b:a	(Ljava/lang/String;Ljava/lang/String;)Z
    //   436: pop
    //   437: iconst_0
    //   438: istore 8
    //   440: aload_2
    //   441: astore 6
    //   443: aload_3
    //   444: astore 5
    //   446: aload_0
    //   447: getfield 44	com/umeng/update/net/DownloadingService$b:h	I
    //   450: ifge +1485 -> 1935
    //   453: aload_2
    //   454: astore 6
    //   456: aload_3
    //   457: astore 5
    //   459: aload_3
    //   460: aload 4
    //   462: invokevirtual 494	java/io/InputStream:read	([B)I
    //   465: istore 9
    //   467: iload 9
    //   469: ifgt +130 -> 599
    //   472: goto +1463 -> 1935
    //   475: aload_2
    //   476: astore 6
    //   478: aload_3
    //   479: astore 5
    //   481: aload_3
    //   482: invokevirtual 495	java/io/InputStream:close	()V
    //   485: aload_2
    //   486: astore 6
    //   488: aload_3
    //   489: astore 5
    //   491: aload_2
    //   492: invokevirtual 439	java/io/FileOutputStream:close	()V
    //   495: aload_2
    //   496: astore 6
    //   498: aload_3
    //   499: astore 5
    //   501: aload_0
    //   502: getfield 44	com/umeng/update/net/DownloadingService$b:h	I
    //   505: iconst_1
    //   506: if_icmpne +536 -> 1042
    //   509: aload_2
    //   510: astore 6
    //   512: aload_3
    //   513: astore 5
    //   515: invokestatic 53	com/umeng/update/net/DownloadingService:b	()Landroid/util/SparseArray;
    //   518: aload_0
    //   519: getfield 72	com/umeng/update/net/DownloadingService$b:i	I
    //   522: invokevirtual 63	android/util/SparseArray:get	(I)Ljava/lang/Object;
    //   525: checkcast 65	com/umeng/update/net/c$b
    //   528: astore 4
    //   530: aload_2
    //   531: astore 6
    //   533: aload_3
    //   534: astore 5
    //   536: aload 4
    //   538: getfield 68	com/umeng/update/net/c$b:f	[J
    //   541: iconst_0
    //   542: aload_0
    //   543: getfield 40	com/umeng/update/net/DownloadingService$b:f	J
    //   546: lastore
    //   547: aload_2
    //   548: astore 6
    //   550: aload_3
    //   551: astore 5
    //   553: aload 4
    //   555: getfield 68	com/umeng/update/net/c$b:f	[J
    //   558: iconst_1
    //   559: aload_0
    //   560: getfield 42	com/umeng/update/net/DownloadingService$b:g	J
    //   563: lastore
    //   564: aload_2
    //   565: astore 6
    //   567: aload_3
    //   568: astore 5
    //   570: aload 4
    //   572: getfield 68	com/umeng/update/net/c$b:f	[J
    //   575: iconst_2
    //   576: aload_0
    //   577: getfield 36	com/umeng/update/net/DownloadingService$b:e	I
    //   580: i2l
    //   581: lastore
    //   582: aload_3
    //   583: ifnull +7 -> 590
    //   586: aload_3
    //   587: invokevirtual 495	java/io/InputStream:close	()V
    //   590: aload_2
    //   591: ifnull +7 -> 598
    //   594: aload_2
    //   595: invokevirtual 439	java/io/FileOutputStream:close	()V
    //   598: return
    //   599: aload_2
    //   600: astore 6
    //   602: aload_3
    //   603: astore 5
    //   605: aload_2
    //   606: aload 4
    //   608: iconst_0
    //   609: iload 9
    //   611: invokevirtual 499	java/io/FileOutputStream:write	([BII)V
    //   614: aload_2
    //   615: astore 6
    //   617: aload_3
    //   618: astore 5
    //   620: aload_0
    //   621: aload_0
    //   622: getfield 40	com/umeng/update/net/DownloadingService$b:f	J
    //   625: iload 9
    //   627: i2l
    //   628: ladd
    //   629: putfield 40	com/umeng/update/net/DownloadingService$b:f	J
    //   632: iload 8
    //   634: bipush 50
    //   636: irem
    //   637: ifne +351 -> 988
    //   640: iload 10
    //   642: istore 9
    //   644: aload_2
    //   645: astore 6
    //   647: aload_3
    //   648: astore 5
    //   650: aload_0
    //   651: getfield 46	com/umeng/update/net/DownloadingService$b:b	Landroid/content/Context;
    //   654: invokestatic 502	u/a/a:d	(Landroid/content/Context;)Z
    //   657: ifeq -182 -> 475
    //   660: aload_2
    //   661: astore 6
    //   663: aload_3
    //   664: astore 5
    //   666: aload_0
    //   667: getfield 46	com/umeng/update/net/DownloadingService$b:b	Landroid/content/Context;
    //   670: invokestatic 504	u/a/a:c	(Landroid/content/Context;)Z
    //   673: ifne +198 -> 871
    //   676: aload_2
    //   677: astore 6
    //   679: aload_3
    //   680: astore 5
    //   682: aload_0
    //   683: getfield 48	com/umeng/update/net/DownloadingService$b:k	Lcom/umeng/update/net/a$a;
    //   686: getfield 506	com/umeng/update/net/a$a:i	Z
    //   689: ifeq +182 -> 871
    //   692: aload_2
    //   693: astore 6
    //   695: aload_3
    //   696: astore 5
    //   698: invokestatic 103	com/umeng/update/net/DownloadingService:a	()Ljava/lang/String;
    //   701: ldc_w 508
    //   704: invokestatic 417	u/a/b:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   707: aload_2
    //   708: astore 6
    //   710: aload_3
    //   711: astore 5
    //   713: new 422	java/io/IOException
    //   716: dup
    //   717: ldc_w 508
    //   720: invokespecial 509	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   723: athrow
    //   724: astore 4
    //   726: invokestatic 103	com/umeng/update/net/DownloadingService:a	()Ljava/lang/String;
    //   729: aload 4
    //   731: invokevirtual 510	java/io/IOException:getMessage	()Ljava/lang/String;
    //   734: aload 4
    //   736: invokestatic 111	u/a/b:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    //   739: aload_0
    //   740: getfield 36	com/umeng/update/net/DownloadingService$b:e	I
    //   743: iconst_1
    //   744: iadd
    //   745: istore 8
    //   747: aload_0
    //   748: iload 8
    //   750: putfield 36	com/umeng/update/net/DownloadingService$b:e	I
    //   753: iload 8
    //   755: iconst_3
    //   756: if_icmple +880 -> 1636
    //   759: aload_0
    //   760: getfield 48	com/umeng/update/net/DownloadingService$b:k	Lcom/umeng/update/net/a$a;
    //   763: getfield 245	com/umeng/update/net/a$a:g	Z
    //   766: istore_1
    //   767: iload_1
    //   768: ifne +868 -> 1636
    //   771: invokestatic 103	com/umeng/update/net/DownloadingService:a	()Ljava/lang/String;
    //   774: ldc_w 512
    //   777: invokestatic 417	u/a/b:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   780: invokestatic 358	com/umeng/update/net/DownloadingService:c	()Ljava/util/Map;
    //   783: aload_0
    //   784: getfield 48	com/umeng/update/net/DownloadingService$b:k	Lcom/umeng/update/net/a$a;
    //   787: invokeinterface 363 2 0
    //   792: checkcast 365	android/os/Messenger
    //   795: aconst_null
    //   796: iconst_5
    //   797: iconst_0
    //   798: iconst_0
    //   799: invokestatic 372	android/os/Message:obtain	(Landroid/os/Handler;III)Landroid/os/Message;
    //   802: invokevirtual 369	android/os/Messenger:send	(Landroid/os/Message;)V
    //   805: aload_0
    //   806: getfield 31	com/umeng/update/net/DownloadingService$b:a	Lcom/umeng/update/net/DownloadingService;
    //   809: invokestatic 260	com/umeng/update/net/DownloadingService:a	(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/c;
    //   812: aload_0
    //   813: getfield 46	com/umeng/update/net/DownloadingService$b:b	Landroid/content/Context;
    //   816: aload_0
    //   817: getfield 72	com/umeng/update/net/DownloadingService$b:i	I
    //   820: invokevirtual 265	com/umeng/update/net/c:b	(Landroid/content/Context;I)V
    //   823: aload_0
    //   824: aload 4
    //   826: invokespecial 257	com/umeng/update/net/DownloadingService$b:a	(Ljava/lang/Exception;)V
    //   829: aload_0
    //   830: getfield 31	com/umeng/update/net/DownloadingService$b:a	Lcom/umeng/update/net/DownloadingService;
    //   833: invokestatic 515	com/umeng/update/net/DownloadingService:d	(Lcom/umeng/update/net/DownloadingService;)Landroid/os/Handler;
    //   836: new 6	com/umeng/update/net/DownloadingService$b$1
    //   839: dup
    //   840: aload_0
    //   841: invokespecial 518	com/umeng/update/net/DownloadingService$b$1:<init>	(Lcom/umeng/update/net/DownloadingService$b;)V
    //   844: invokevirtual 524	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   847: pop
    //   848: aload_3
    //   849: ifnull +7 -> 856
    //   852: aload_3
    //   853: invokevirtual 495	java/io/InputStream:close	()V
    //   856: aload_2
    //   857: ifnull -259 -> 598
    //   860: aload_2
    //   861: invokevirtual 439	java/io/FileOutputStream:close	()V
    //   864: return
    //   865: astore_2
    //   866: aload_2
    //   867: invokevirtual 527	java/io/IOException:printStackTrace	()V
    //   870: return
    //   871: aload_2
    //   872: astore 6
    //   874: aload_3
    //   875: astore 5
    //   877: aload_0
    //   878: getfield 40	com/umeng/update/net/DownloadingService$b:f	J
    //   881: l2f
    //   882: ldc_w 528
    //   885: fmul
    //   886: aload_0
    //   887: getfield 42	com/umeng/update/net/DownloadingService$b:g	J
    //   890: l2f
    //   891: fdiv
    //   892: f2i
    //   893: istore 11
    //   895: iload 11
    //   897: istore 9
    //   899: iload 11
    //   901: bipush 100
    //   903: if_icmple +7 -> 910
    //   906: bipush 99
    //   908: istore 9
    //   910: aload_2
    //   911: astore 6
    //   913: aload_3
    //   914: astore 5
    //   916: aload_0
    //   917: getfield 70	com/umeng/update/net/DownloadingService$b:j	Lcom/umeng/update/net/DownloadingService$a;
    //   920: ifnull +24 -> 944
    //   923: aload_2
    //   924: astore 6
    //   926: aload_3
    //   927: astore 5
    //   929: aload_0
    //   930: getfield 70	com/umeng/update/net/DownloadingService$b:j	Lcom/umeng/update/net/DownloadingService$a;
    //   933: aload_0
    //   934: getfield 72	com/umeng/update/net/DownloadingService$b:i	I
    //   937: iload 9
    //   939: invokeinterface 531 3 0
    //   944: aload_2
    //   945: astore 6
    //   947: aload_3
    //   948: astore 5
    //   950: aload_0
    //   951: iload 9
    //   953: invokespecial 533	com/umeng/update/net/DownloadingService$b:b	(I)V
    //   956: aload_2
    //   957: astore 6
    //   959: aload_3
    //   960: astore 5
    //   962: aload_0
    //   963: getfield 46	com/umeng/update/net/DownloadingService$b:b	Landroid/content/Context;
    //   966: invokestatic 485	com/umeng/update/net/b:a	(Landroid/content/Context;)Lcom/umeng/update/net/b;
    //   969: aload_0
    //   970: getfield 48	com/umeng/update/net/DownloadingService$b:k	Lcom/umeng/update/net/a$a;
    //   973: getfield 145	com/umeng/update/net/a$a:a	Ljava/lang/String;
    //   976: aload_0
    //   977: getfield 48	com/umeng/update/net/DownloadingService$b:k	Lcom/umeng/update/net/a$a;
    //   980: getfield 161	com/umeng/update/net/a$a:c	Ljava/lang/String;
    //   983: iload 9
    //   985: invokevirtual 536	com/umeng/update/net/b:a	(Ljava/lang/String;Ljava/lang/String;I)V
    //   988: iload 8
    //   990: iconst_1
    //   991: iadd
    //   992: istore 8
    //   994: goto -554 -> 440
    //   997: astore_3
    //   998: aload_3
    //   999: invokevirtual 527	java/io/IOException:printStackTrace	()V
    //   1002: aload_2
    //   1003: ifnull -405 -> 598
    //   1006: aload_2
    //   1007: invokevirtual 439	java/io/FileOutputStream:close	()V
    //   1010: return
    //   1011: astore_2
    //   1012: aload_2
    //   1013: invokevirtual 527	java/io/IOException:printStackTrace	()V
    //   1016: return
    //   1017: astore_3
    //   1018: aload_2
    //   1019: ifnull +7 -> 1026
    //   1022: aload_2
    //   1023: invokevirtual 439	java/io/FileOutputStream:close	()V
    //   1026: aload_3
    //   1027: athrow
    //   1028: astore_2
    //   1029: aload_2
    //   1030: invokevirtual 527	java/io/IOException:printStackTrace	()V
    //   1033: goto -7 -> 1026
    //   1036: astore_2
    //   1037: aload_2
    //   1038: invokevirtual 527	java/io/IOException:printStackTrace	()V
    //   1041: return
    //   1042: aload_2
    //   1043: astore 6
    //   1045: aload_3
    //   1046: astore 5
    //   1048: aload_0
    //   1049: getfield 44	com/umeng/update/net/DownloadingService$b:h	I
    //   1052: iconst_2
    //   1053: if_icmpne +118 -> 1171
    //   1056: aload_2
    //   1057: astore 6
    //   1059: aload_3
    //   1060: astore 5
    //   1062: aload_0
    //   1063: getfield 31	com/umeng/update/net/DownloadingService$b:a	Lcom/umeng/update/net/DownloadingService;
    //   1066: invokestatic 260	com/umeng/update/net/DownloadingService:a	(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/c;
    //   1069: aload_0
    //   1070: getfield 48	com/umeng/update/net/DownloadingService$b:k	Lcom/umeng/update/net/a$a;
    //   1073: aload_0
    //   1074: getfield 40	com/umeng/update/net/DownloadingService$b:f	J
    //   1077: aload_0
    //   1078: getfield 42	com/umeng/update/net/DownloadingService$b:g	J
    //   1081: aload_0
    //   1082: getfield 36	com/umeng/update/net/DownloadingService$b:e	I
    //   1085: i2l
    //   1086: invokevirtual 420	com/umeng/update/net/c:a	(Lcom/umeng/update/net/a$a;JJJ)V
    //   1089: aload_2
    //   1090: astore 6
    //   1092: aload_3
    //   1093: astore 5
    //   1095: aload_0
    //   1096: getfield 31	com/umeng/update/net/DownloadingService$b:a	Lcom/umeng/update/net/DownloadingService;
    //   1099: invokestatic 323	com/umeng/update/net/DownloadingService:c	(Lcom/umeng/update/net/DownloadingService;)Landroid/app/NotificationManager;
    //   1102: aload_0
    //   1103: getfield 72	com/umeng/update/net/DownloadingService$b:i	I
    //   1106: invokevirtual 328	android/app/NotificationManager:cancel	(I)V
    //   1109: aload_3
    //   1110: ifnull +7 -> 1117
    //   1113: aload_3
    //   1114: invokevirtual 495	java/io/InputStream:close	()V
    //   1117: aload_2
    //   1118: ifnull -520 -> 598
    //   1121: aload_2
    //   1122: invokevirtual 439	java/io/FileOutputStream:close	()V
    //   1125: return
    //   1126: astore_2
    //   1127: aload_2
    //   1128: invokevirtual 527	java/io/IOException:printStackTrace	()V
    //   1131: return
    //   1132: astore_3
    //   1133: aload_3
    //   1134: invokevirtual 527	java/io/IOException:printStackTrace	()V
    //   1137: aload_2
    //   1138: ifnull -540 -> 598
    //   1141: aload_2
    //   1142: invokevirtual 439	java/io/FileOutputStream:close	()V
    //   1145: return
    //   1146: astore_2
    //   1147: aload_2
    //   1148: invokevirtual 527	java/io/IOException:printStackTrace	()V
    //   1151: return
    //   1152: astore_3
    //   1153: aload_2
    //   1154: ifnull +7 -> 1161
    //   1157: aload_2
    //   1158: invokevirtual 439	java/io/FileOutputStream:close	()V
    //   1161: aload_3
    //   1162: athrow
    //   1163: astore_2
    //   1164: aload_2
    //   1165: invokevirtual 527	java/io/IOException:printStackTrace	()V
    //   1168: goto -7 -> 1161
    //   1171: iload 9
    //   1173: ifne +146 -> 1319
    //   1176: aload_2
    //   1177: astore 6
    //   1179: aload_3
    //   1180: astore 5
    //   1182: invokestatic 103	com/umeng/update/net/DownloadingService:a	()Ljava/lang/String;
    //   1185: new 125	java/lang/StringBuilder
    //   1188: dup
    //   1189: ldc_w 538
    //   1192: invokespecial 134	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1195: aload_0
    //   1196: getfield 36	com/umeng/update/net/DownloadingService$b:e	I
    //   1199: invokevirtual 243	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1202: invokevirtual 143	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1205: invokestatic 417	u/a/b:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   1208: aload_2
    //   1209: astore 6
    //   1211: aload_3
    //   1212: astore 5
    //   1214: invokestatic 358	com/umeng/update/net/DownloadingService:c	()Ljava/util/Map;
    //   1217: aload_0
    //   1218: getfield 48	com/umeng/update/net/DownloadingService$b:k	Lcom/umeng/update/net/a$a;
    //   1221: invokeinterface 363 2 0
    //   1226: checkcast 365	android/os/Messenger
    //   1229: aconst_null
    //   1230: iconst_5
    //   1231: iconst_0
    //   1232: iconst_0
    //   1233: invokestatic 372	android/os/Message:obtain	(Landroid/os/Handler;III)Landroid/os/Message;
    //   1236: invokevirtual 369	android/os/Messenger:send	(Landroid/os/Message;)V
    //   1239: aload_2
    //   1240: astore 6
    //   1242: aload_3
    //   1243: astore 5
    //   1245: aload_0
    //   1246: getfield 31	com/umeng/update/net/DownloadingService$b:a	Lcom/umeng/update/net/DownloadingService;
    //   1249: invokestatic 260	com/umeng/update/net/DownloadingService:a	(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/c;
    //   1252: aload_0
    //   1253: getfield 46	com/umeng/update/net/DownloadingService$b:b	Landroid/content/Context;
    //   1256: aload_0
    //   1257: getfield 72	com/umeng/update/net/DownloadingService$b:i	I
    //   1260: invokevirtual 265	com/umeng/update/net/c:b	(Landroid/content/Context;I)V
    //   1263: aload_2
    //   1264: astore 6
    //   1266: aload_3
    //   1267: astore 5
    //   1269: aload_0
    //   1270: getfield 70	com/umeng/update/net/DownloadingService$b:j	Lcom/umeng/update/net/DownloadingService$a;
    //   1273: ifnull +23 -> 1296
    //   1276: aload_2
    //   1277: astore 6
    //   1279: aload_3
    //   1280: astore 5
    //   1282: aload_0
    //   1283: getfield 70	com/umeng/update/net/DownloadingService$b:j	Lcom/umeng/update/net/DownloadingService$a;
    //   1286: aload_0
    //   1287: getfield 72	com/umeng/update/net/DownloadingService$b:i	I
    //   1290: aconst_null
    //   1291: invokeinterface 116 3 0
    //   1296: aload_3
    //   1297: ifnull +7 -> 1304
    //   1300: aload_3
    //   1301: invokevirtual 495	java/io/InputStream:close	()V
    //   1304: aload_2
    //   1305: ifnull -707 -> 598
    //   1308: aload_2
    //   1309: invokevirtual 439	java/io/FileOutputStream:close	()V
    //   1312: return
    //   1313: astore_2
    //   1314: aload_2
    //   1315: invokevirtual 527	java/io/IOException:printStackTrace	()V
    //   1318: return
    //   1319: aload_2
    //   1320: astore 6
    //   1322: aload_3
    //   1323: astore 5
    //   1325: aload_0
    //   1326: invokespecial 540	com/umeng/update/net/DownloadingService$b:b	()V
    //   1329: aload_2
    //   1330: astore 6
    //   1332: aload_3
    //   1333: astore 5
    //   1335: new 95	java/io/File
    //   1338: dup
    //   1339: aload_0
    //   1340: getfield 81	com/umeng/update/net/DownloadingService$b:d	Ljava/io/File;
    //   1343: invokevirtual 543	java/io/File:getParent	()Ljava/lang/String;
    //   1346: aload_0
    //   1347: getfield 81	com/umeng/update/net/DownloadingService$b:d	Ljava/io/File;
    //   1350: invokevirtual 425	java/io/File:getName	()Ljava/lang/String;
    //   1353: ldc_w 545
    //   1356: ldc_w 547
    //   1359: invokevirtual 159	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   1362: invokespecial 549	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   1365: astore 4
    //   1367: aload_2
    //   1368: astore 6
    //   1370: aload_3
    //   1371: astore 5
    //   1373: aload_0
    //   1374: getfield 81	com/umeng/update/net/DownloadingService$b:d	Ljava/io/File;
    //   1377: aload 4
    //   1379: invokevirtual 553	java/io/File:renameTo	(Ljava/io/File;)Z
    //   1382: pop
    //   1383: aload_2
    //   1384: astore 6
    //   1386: aload_3
    //   1387: astore 5
    //   1389: aload 4
    //   1391: invokevirtual 433	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   1394: astore 7
    //   1396: aload_2
    //   1397: astore 6
    //   1399: aload_3
    //   1400: astore 5
    //   1402: aload_0
    //   1403: aload 4
    //   1405: aload 7
    //   1407: invokespecial 555	com/umeng/update/net/DownloadingService$b:a	(Ljava/io/File;Ljava/lang/String;)V
    //   1410: aload_2
    //   1411: astore 6
    //   1413: aload_3
    //   1414: astore 5
    //   1416: aload_0
    //   1417: getfield 70	com/umeng/update/net/DownloadingService$b:j	Lcom/umeng/update/net/DownloadingService$a;
    //   1420: ifnull -124 -> 1296
    //   1423: aload_2
    //   1424: astore 6
    //   1426: aload_3
    //   1427: astore 5
    //   1429: aload_0
    //   1430: getfield 70	com/umeng/update/net/DownloadingService$b:j	Lcom/umeng/update/net/DownloadingService$a;
    //   1433: aload_0
    //   1434: getfield 72	com/umeng/update/net/DownloadingService$b:i	I
    //   1437: aload 7
    //   1439: invokeinterface 558 3 0
    //   1444: goto -148 -> 1296
    //   1447: astore 4
    //   1449: aload_2
    //   1450: astore 6
    //   1452: aload_3
    //   1453: astore 5
    //   1455: aload_0
    //   1456: getfield 31	com/umeng/update/net/DownloadingService$b:a	Lcom/umeng/update/net/DownloadingService;
    //   1459: invokestatic 260	com/umeng/update/net/DownloadingService:a	(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/c;
    //   1462: aload_0
    //   1463: getfield 46	com/umeng/update/net/DownloadingService$b:b	Landroid/content/Context;
    //   1466: aload_0
    //   1467: getfield 72	com/umeng/update/net/DownloadingService$b:i	I
    //   1470: invokevirtual 265	com/umeng/update/net/c:b	(Landroid/content/Context;I)V
    //   1473: aload_2
    //   1474: astore 6
    //   1476: aload_3
    //   1477: astore 5
    //   1479: aload 4
    //   1481: invokevirtual 559	android/os/RemoteException:printStackTrace	()V
    //   1484: aload_3
    //   1485: ifnull +7 -> 1492
    //   1488: aload_3
    //   1489: invokevirtual 495	java/io/InputStream:close	()V
    //   1492: aload_2
    //   1493: ifnull -895 -> 598
    //   1496: aload_2
    //   1497: invokevirtual 439	java/io/FileOutputStream:close	()V
    //   1500: return
    //   1501: astore_2
    //   1502: aload_2
    //   1503: invokevirtual 527	java/io/IOException:printStackTrace	()V
    //   1506: return
    //   1507: astore 5
    //   1509: aload 5
    //   1511: invokevirtual 559	android/os/RemoteException:printStackTrace	()V
    //   1514: aload_0
    //   1515: getfield 31	com/umeng/update/net/DownloadingService$b:a	Lcom/umeng/update/net/DownloadingService;
    //   1518: invokestatic 260	com/umeng/update/net/DownloadingService:a	(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/c;
    //   1521: aload_0
    //   1522: getfield 46	com/umeng/update/net/DownloadingService$b:b	Landroid/content/Context;
    //   1525: aload_0
    //   1526: getfield 72	com/umeng/update/net/DownloadingService$b:i	I
    //   1529: invokevirtual 265	com/umeng/update/net/c:b	(Landroid/content/Context;I)V
    //   1532: aload_0
    //   1533: aload 4
    //   1535: invokespecial 257	com/umeng/update/net/DownloadingService$b:a	(Ljava/lang/Exception;)V
    //   1538: aload_0
    //   1539: getfield 31	com/umeng/update/net/DownloadingService$b:a	Lcom/umeng/update/net/DownloadingService;
    //   1542: invokestatic 515	com/umeng/update/net/DownloadingService:d	(Lcom/umeng/update/net/DownloadingService;)Landroid/os/Handler;
    //   1545: new 6	com/umeng/update/net/DownloadingService$b$1
    //   1548: dup
    //   1549: aload_0
    //   1550: invokespecial 518	com/umeng/update/net/DownloadingService$b$1:<init>	(Lcom/umeng/update/net/DownloadingService$b;)V
    //   1553: invokevirtual 524	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   1556: pop
    //   1557: goto -709 -> 848
    //   1560: astore 5
    //   1562: aload_3
    //   1563: astore 4
    //   1565: aload 5
    //   1567: astore_3
    //   1568: aload 4
    //   1570: ifnull +8 -> 1578
    //   1573: aload 4
    //   1575: invokevirtual 495	java/io/InputStream:close	()V
    //   1578: aload_2
    //   1579: ifnull +7 -> 1586
    //   1582: aload_2
    //   1583: invokevirtual 439	java/io/FileOutputStream:close	()V
    //   1586: aload_3
    //   1587: athrow
    //   1588: astore 5
    //   1590: aload_0
    //   1591: getfield 31	com/umeng/update/net/DownloadingService$b:a	Lcom/umeng/update/net/DownloadingService;
    //   1594: invokestatic 260	com/umeng/update/net/DownloadingService:a	(Lcom/umeng/update/net/DownloadingService;)Lcom/umeng/update/net/c;
    //   1597: aload_0
    //   1598: getfield 46	com/umeng/update/net/DownloadingService$b:b	Landroid/content/Context;
    //   1601: aload_0
    //   1602: getfield 72	com/umeng/update/net/DownloadingService$b:i	I
    //   1605: invokevirtual 265	com/umeng/update/net/c:b	(Landroid/content/Context;I)V
    //   1608: aload_0
    //   1609: aload 4
    //   1611: invokespecial 257	com/umeng/update/net/DownloadingService$b:a	(Ljava/lang/Exception;)V
    //   1614: aload_0
    //   1615: getfield 31	com/umeng/update/net/DownloadingService$b:a	Lcom/umeng/update/net/DownloadingService;
    //   1618: invokestatic 515	com/umeng/update/net/DownloadingService:d	(Lcom/umeng/update/net/DownloadingService;)Landroid/os/Handler;
    //   1621: new 6	com/umeng/update/net/DownloadingService$b$1
    //   1624: dup
    //   1625: aload_0
    //   1626: invokespecial 518	com/umeng/update/net/DownloadingService$b$1:<init>	(Lcom/umeng/update/net/DownloadingService$b;)V
    //   1629: invokevirtual 524	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   1632: pop
    //   1633: aload 5
    //   1635: athrow
    //   1636: aload_0
    //   1637: invokespecial 561	com/umeng/update/net/DownloadingService$b:a	()V
    //   1640: goto -792 -> 848
    //   1643: astore_3
    //   1644: aload_3
    //   1645: invokevirtual 527	java/io/IOException:printStackTrace	()V
    //   1648: aload_2
    //   1649: ifnull -1051 -> 598
    //   1652: aload_2
    //   1653: invokevirtual 439	java/io/FileOutputStream:close	()V
    //   1656: return
    //   1657: astore_2
    //   1658: aload_2
    //   1659: invokevirtual 527	java/io/IOException:printStackTrace	()V
    //   1662: return
    //   1663: astore_3
    //   1664: aload_2
    //   1665: ifnull +7 -> 1672
    //   1668: aload_2
    //   1669: invokevirtual 439	java/io/FileOutputStream:close	()V
    //   1672: aload_3
    //   1673: athrow
    //   1674: astore_2
    //   1675: aload_2
    //   1676: invokevirtual 527	java/io/IOException:printStackTrace	()V
    //   1679: goto -7 -> 1672
    //   1682: astore_3
    //   1683: aload_3
    //   1684: invokevirtual 527	java/io/IOException:printStackTrace	()V
    //   1687: aload_2
    //   1688: ifnull -1090 -> 598
    //   1691: aload_2
    //   1692: invokevirtual 439	java/io/FileOutputStream:close	()V
    //   1695: return
    //   1696: astore_2
    //   1697: aload_2
    //   1698: invokevirtual 527	java/io/IOException:printStackTrace	()V
    //   1701: return
    //   1702: astore_3
    //   1703: aload_2
    //   1704: ifnull +7 -> 1711
    //   1707: aload_2
    //   1708: invokevirtual 439	java/io/FileOutputStream:close	()V
    //   1711: aload_3
    //   1712: athrow
    //   1713: astore_2
    //   1714: aload_2
    //   1715: invokevirtual 527	java/io/IOException:printStackTrace	()V
    //   1718: goto -7 -> 1711
    //   1721: astore 4
    //   1723: aload 4
    //   1725: invokevirtual 527	java/io/IOException:printStackTrace	()V
    //   1728: aload_2
    //   1729: ifnull -143 -> 1586
    //   1732: aload_2
    //   1733: invokevirtual 439	java/io/FileOutputStream:close	()V
    //   1736: goto -150 -> 1586
    //   1739: astore_2
    //   1740: aload_2
    //   1741: invokevirtual 527	java/io/IOException:printStackTrace	()V
    //   1744: goto -158 -> 1586
    //   1747: astore_3
    //   1748: aload_2
    //   1749: ifnull +7 -> 1756
    //   1752: aload_2
    //   1753: invokevirtual 439	java/io/FileOutputStream:close	()V
    //   1756: aload_3
    //   1757: athrow
    //   1758: astore_2
    //   1759: aload_2
    //   1760: invokevirtual 527	java/io/IOException:printStackTrace	()V
    //   1763: goto -7 -> 1756
    //   1766: astore_2
    //   1767: aload_2
    //   1768: invokevirtual 527	java/io/IOException:printStackTrace	()V
    //   1771: goto -185 -> 1586
    //   1774: astore_3
    //   1775: aload_3
    //   1776: invokevirtual 527	java/io/IOException:printStackTrace	()V
    //   1779: aload_2
    //   1780: ifnull -1182 -> 598
    //   1783: aload_2
    //   1784: invokevirtual 439	java/io/FileOutputStream:close	()V
    //   1787: return
    //   1788: astore_2
    //   1789: aload_2
    //   1790: invokevirtual 527	java/io/IOException:printStackTrace	()V
    //   1793: return
    //   1794: astore_3
    //   1795: aload_2
    //   1796: ifnull +7 -> 1803
    //   1799: aload_2
    //   1800: invokevirtual 439	java/io/FileOutputStream:close	()V
    //   1803: aload_3
    //   1804: athrow
    //   1805: astore_2
    //   1806: aload_2
    //   1807: invokevirtual 527	java/io/IOException:printStackTrace	()V
    //   1810: goto -7 -> 1803
    //   1813: astore_3
    //   1814: aconst_null
    //   1815: astore_2
    //   1816: aconst_null
    //   1817: astore 4
    //   1819: goto -251 -> 1568
    //   1822: astore_3
    //   1823: aconst_null
    //   1824: astore 4
    //   1826: goto -258 -> 1568
    //   1829: astore 5
    //   1831: aload_3
    //   1832: astore_2
    //   1833: aconst_null
    //   1834: astore 4
    //   1836: aload 5
    //   1838: astore_3
    //   1839: goto -271 -> 1568
    //   1842: astore_3
    //   1843: aconst_null
    //   1844: astore 4
    //   1846: goto -278 -> 1568
    //   1849: astore_3
    //   1850: aload 6
    //   1852: astore_2
    //   1853: aload 5
    //   1855: astore 4
    //   1857: goto -289 -> 1568
    //   1860: astore 4
    //   1862: aconst_null
    //   1863: astore_2
    //   1864: aconst_null
    //   1865: astore_3
    //   1866: goto -417 -> 1449
    //   1869: astore 4
    //   1871: aconst_null
    //   1872: astore_3
    //   1873: goto -424 -> 1449
    //   1876: astore 4
    //   1878: aload_3
    //   1879: astore_2
    //   1880: aconst_null
    //   1881: astore_3
    //   1882: goto -433 -> 1449
    //   1885: astore 4
    //   1887: aconst_null
    //   1888: astore_3
    //   1889: goto -440 -> 1449
    //   1892: astore 4
    //   1894: aconst_null
    //   1895: astore 5
    //   1897: aload_3
    //   1898: astore_2
    //   1899: aload 5
    //   1901: astore_3
    //   1902: goto -1176 -> 726
    //   1905: astore 4
    //   1907: aconst_null
    //   1908: astore_3
    //   1909: goto -1183 -> 726
    //   1912: astore 4
    //   1914: aconst_null
    //   1915: astore 5
    //   1917: aload_3
    //   1918: astore_2
    //   1919: aload 5
    //   1921: astore_3
    //   1922: goto -1196 -> 726
    //   1925: astore 4
    //   1927: aconst_null
    //   1928: astore_3
    //   1929: goto -1203 -> 726
    //   1932: goto -1849 -> 83
    //   1935: iconst_1
    //   1936: istore 9
    //   1938: goto -1463 -> 475
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1941	0	this	b
    //   0	1941	1	paramBoolean	boolean
    //   29	832	2	localObject1	Object
    //   865	142	2	localIOException1	java.io.IOException
    //   1011	12	2	localIOException2	java.io.IOException
    //   1028	2	2	localIOException3	java.io.IOException
    //   1036	86	2	localIOException4	java.io.IOException
    //   1126	16	2	localIOException5	java.io.IOException
    //   1146	12	2	localIOException6	java.io.IOException
    //   1163	146	2	localIOException7	java.io.IOException
    //   1313	184	2	localIOException8	java.io.IOException
    //   1501	152	2	localIOException9	java.io.IOException
    //   1657	12	2	localIOException10	java.io.IOException
    //   1674	18	2	localIOException11	java.io.IOException
    //   1696	12	2	localIOException12	java.io.IOException
    //   1713	20	2	localIOException13	java.io.IOException
    //   1739	14	2	localIOException14	java.io.IOException
    //   1758	2	2	localIOException15	java.io.IOException
    //   1766	18	2	localIOException16	java.io.IOException
    //   1788	12	2	localIOException17	java.io.IOException
    //   1805	2	2	localIOException18	java.io.IOException
    //   1815	104	2	localObject2	Object
    //   4	956	3	localObject3	Object
    //   997	2	3	localIOException19	java.io.IOException
    //   1017	97	3	localObject4	Object
    //   1132	2	3	localIOException20	java.io.IOException
    //   1152	411	3	localObject5	Object
    //   1567	20	3	localObject6	Object
    //   1643	2	3	localIOException21	java.io.IOException
    //   1663	10	3	localObject7	Object
    //   1682	2	3	localIOException22	java.io.IOException
    //   1702	10	3	localObject8	Object
    //   1747	10	3	localObject9	Object
    //   1774	2	3	localIOException23	java.io.IOException
    //   1794	10	3	localObject10	Object
    //   1813	1	3	localObject11	Object
    //   1822	10	3	localObject12	Object
    //   1838	1	3	localObject13	Object
    //   1842	1	3	localObject14	Object
    //   1849	1	3	localObject15	Object
    //   1865	64	3	localObject16	Object
    //   15	592	4	localObject17	Object
    //   724	101	4	localIOException24	java.io.IOException
    //   1365	39	4	localFile	File
    //   1447	87	4	localRemoteException1	RemoteException
    //   1563	47	4	localObject18	Object
    //   1721	3	4	localIOException25	java.io.IOException
    //   1817	39	4	localObject19	Object
    //   1860	1	4	localRemoteException2	RemoteException
    //   1869	1	4	localRemoteException3	RemoteException
    //   1876	1	4	localRemoteException4	RemoteException
    //   1885	1	4	localRemoteException5	RemoteException
    //   1892	1	4	localIOException26	java.io.IOException
    //   1905	1	4	localIOException27	java.io.IOException
    //   1912	1	4	localIOException28	java.io.IOException
    //   1925	1	4	localIOException29	java.io.IOException
    //   166	1312	5	localObject20	Object
    //   1507	3	5	localRemoteException6	RemoteException
    //   1560	6	5	localObject21	Object
    //   1588	46	5	localObject22	Object
    //   1829	25	5	localObject23	Object
    //   1895	25	5	localObject24	Object
    //   163	1688	6	localObject25	Object
    //   1394	44	7	str	String
    //   438	555	8	m	int
    //   465	1472	9	n	int
    //   6	635	10	i1	int
    //   893	11	11	i2	int
    //   160	77	12	l1	long
    //   1	178	14	l2	long
    // Exception table:
    //   from	to	target	type
    //   168	178	724	java/io/IOException
    //   188	200	724	java/io/IOException
    //   206	217	724	java/io/IOException
    //   223	229	724	java/io/IOException
    //   235	248	724	java/io/IOException
    //   254	280	724	java/io/IOException
    //   286	313	724	java/io/IOException
    //   319	345	724	java/io/IOException
    //   351	358	724	java/io/IOException
    //   364	406	724	java/io/IOException
    //   412	437	724	java/io/IOException
    //   446	453	724	java/io/IOException
    //   459	467	724	java/io/IOException
    //   481	485	724	java/io/IOException
    //   491	495	724	java/io/IOException
    //   501	509	724	java/io/IOException
    //   515	530	724	java/io/IOException
    //   536	547	724	java/io/IOException
    //   553	564	724	java/io/IOException
    //   570	582	724	java/io/IOException
    //   605	614	724	java/io/IOException
    //   620	632	724	java/io/IOException
    //   650	660	724	java/io/IOException
    //   666	676	724	java/io/IOException
    //   682	692	724	java/io/IOException
    //   698	707	724	java/io/IOException
    //   713	724	724	java/io/IOException
    //   877	895	724	java/io/IOException
    //   916	923	724	java/io/IOException
    //   929	944	724	java/io/IOException
    //   950	956	724	java/io/IOException
    //   962	988	724	java/io/IOException
    //   1048	1056	724	java/io/IOException
    //   1062	1089	724	java/io/IOException
    //   1095	1109	724	java/io/IOException
    //   1182	1208	724	java/io/IOException
    //   1214	1239	724	java/io/IOException
    //   1245	1263	724	java/io/IOException
    //   1269	1276	724	java/io/IOException
    //   1282	1296	724	java/io/IOException
    //   1325	1329	724	java/io/IOException
    //   1335	1367	724	java/io/IOException
    //   1373	1383	724	java/io/IOException
    //   1389	1396	724	java/io/IOException
    //   1402	1410	724	java/io/IOException
    //   1416	1423	724	java/io/IOException
    //   1429	1444	724	java/io/IOException
    //   860	864	865	java/io/IOException
    //   586	590	997	java/io/IOException
    //   1006	1010	1011	java/io/IOException
    //   586	590	1017	finally
    //   998	1002	1017	finally
    //   1022	1026	1028	java/io/IOException
    //   594	598	1036	java/io/IOException
    //   1121	1125	1126	java/io/IOException
    //   1113	1117	1132	java/io/IOException
    //   1141	1145	1146	java/io/IOException
    //   1113	1117	1152	finally
    //   1133	1137	1152	finally
    //   1157	1161	1163	java/io/IOException
    //   1308	1312	1313	java/io/IOException
    //   168	178	1447	android/os/RemoteException
    //   188	200	1447	android/os/RemoteException
    //   206	217	1447	android/os/RemoteException
    //   223	229	1447	android/os/RemoteException
    //   235	248	1447	android/os/RemoteException
    //   254	280	1447	android/os/RemoteException
    //   286	313	1447	android/os/RemoteException
    //   319	345	1447	android/os/RemoteException
    //   351	358	1447	android/os/RemoteException
    //   364	406	1447	android/os/RemoteException
    //   412	437	1447	android/os/RemoteException
    //   446	453	1447	android/os/RemoteException
    //   459	467	1447	android/os/RemoteException
    //   481	485	1447	android/os/RemoteException
    //   491	495	1447	android/os/RemoteException
    //   501	509	1447	android/os/RemoteException
    //   515	530	1447	android/os/RemoteException
    //   536	547	1447	android/os/RemoteException
    //   553	564	1447	android/os/RemoteException
    //   570	582	1447	android/os/RemoteException
    //   605	614	1447	android/os/RemoteException
    //   620	632	1447	android/os/RemoteException
    //   650	660	1447	android/os/RemoteException
    //   666	676	1447	android/os/RemoteException
    //   682	692	1447	android/os/RemoteException
    //   698	707	1447	android/os/RemoteException
    //   713	724	1447	android/os/RemoteException
    //   877	895	1447	android/os/RemoteException
    //   916	923	1447	android/os/RemoteException
    //   929	944	1447	android/os/RemoteException
    //   950	956	1447	android/os/RemoteException
    //   962	988	1447	android/os/RemoteException
    //   1048	1056	1447	android/os/RemoteException
    //   1062	1089	1447	android/os/RemoteException
    //   1095	1109	1447	android/os/RemoteException
    //   1182	1208	1447	android/os/RemoteException
    //   1214	1239	1447	android/os/RemoteException
    //   1245	1263	1447	android/os/RemoteException
    //   1269	1276	1447	android/os/RemoteException
    //   1282	1296	1447	android/os/RemoteException
    //   1325	1329	1447	android/os/RemoteException
    //   1335	1367	1447	android/os/RemoteException
    //   1373	1383	1447	android/os/RemoteException
    //   1389	1396	1447	android/os/RemoteException
    //   1402	1410	1447	android/os/RemoteException
    //   1416	1423	1447	android/os/RemoteException
    //   1429	1444	1447	android/os/RemoteException
    //   1496	1500	1501	java/io/IOException
    //   771	805	1507	android/os/RemoteException
    //   726	753	1560	finally
    //   759	767	1560	finally
    //   805	848	1560	finally
    //   1514	1557	1560	finally
    //   1590	1636	1560	finally
    //   1636	1640	1560	finally
    //   771	805	1588	finally
    //   1509	1514	1588	finally
    //   852	856	1643	java/io/IOException
    //   1652	1656	1657	java/io/IOException
    //   852	856	1663	finally
    //   1644	1648	1663	finally
    //   1668	1672	1674	java/io/IOException
    //   1488	1492	1682	java/io/IOException
    //   1691	1695	1696	java/io/IOException
    //   1488	1492	1702	finally
    //   1683	1687	1702	finally
    //   1707	1711	1713	java/io/IOException
    //   1573	1578	1721	java/io/IOException
    //   1732	1736	1739	java/io/IOException
    //   1573	1578	1747	finally
    //   1723	1728	1747	finally
    //   1752	1756	1758	java/io/IOException
    //   1582	1586	1766	java/io/IOException
    //   1300	1304	1774	java/io/IOException
    //   1783	1787	1788	java/io/IOException
    //   1300	1304	1794	finally
    //   1775	1779	1794	finally
    //   1799	1803	1805	java/io/IOException
    //   17	30	1813	finally
    //   30	68	1822	finally
    //   68	81	1829	finally
    //   83	154	1842	finally
    //   168	178	1849	finally
    //   188	200	1849	finally
    //   206	217	1849	finally
    //   223	229	1849	finally
    //   235	248	1849	finally
    //   254	280	1849	finally
    //   286	313	1849	finally
    //   319	345	1849	finally
    //   351	358	1849	finally
    //   364	406	1849	finally
    //   412	437	1849	finally
    //   446	453	1849	finally
    //   459	467	1849	finally
    //   481	485	1849	finally
    //   491	495	1849	finally
    //   501	509	1849	finally
    //   515	530	1849	finally
    //   536	547	1849	finally
    //   553	564	1849	finally
    //   570	582	1849	finally
    //   605	614	1849	finally
    //   620	632	1849	finally
    //   650	660	1849	finally
    //   666	676	1849	finally
    //   682	692	1849	finally
    //   698	707	1849	finally
    //   713	724	1849	finally
    //   877	895	1849	finally
    //   916	923	1849	finally
    //   929	944	1849	finally
    //   950	956	1849	finally
    //   962	988	1849	finally
    //   1048	1056	1849	finally
    //   1062	1089	1849	finally
    //   1095	1109	1849	finally
    //   1182	1208	1849	finally
    //   1214	1239	1849	finally
    //   1245	1263	1849	finally
    //   1269	1276	1849	finally
    //   1282	1296	1849	finally
    //   1325	1329	1849	finally
    //   1335	1367	1849	finally
    //   1373	1383	1849	finally
    //   1389	1396	1849	finally
    //   1402	1410	1849	finally
    //   1416	1423	1849	finally
    //   1429	1444	1849	finally
    //   1455	1473	1849	finally
    //   1479	1484	1849	finally
    //   17	30	1860	android/os/RemoteException
    //   30	68	1869	android/os/RemoteException
    //   68	81	1876	android/os/RemoteException
    //   83	154	1885	android/os/RemoteException
    //   17	30	1892	java/io/IOException
    //   30	68	1905	java/io/IOException
    //   68	81	1912	java/io/IOException
    //   83	154	1925	java/io/IOException
  }
  
  private void b()
  {
    if (this.k.f != null)
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("dsize", String.valueOf(this.g));
      localHashMap.put("dtime", m.a().split(" ")[1]);
      localHashMap.put("ptimes", String.valueOf(this.e));
      DownloadingService.a(this.a).a(localHashMap, true, this.k.f);
    }
  }
  
  private void b(int paramInt)
  {
    try
    {
      if (DownloadingService.c().get(this.k) != null) {
        ((Messenger)DownloadingService.c().get(this.k)).send(Message.obtain(null, 3, paramInt, 0));
      }
      return;
    }
    catch (DeadObjectException localDeadObjectException)
    {
      b.b(DownloadingService.a(), String.format("Service Client for downloading %1$15s is dead. Removing messenger from the service", new Object[] { this.k.b }));
      DownloadingService.c().put(this.k, null);
    }
  }
  
  public void a(int paramInt)
  {
    this.h = paramInt;
  }
  
  public void run()
  {
    boolean bool = false;
    this.e = 0;
    try
    {
      if (this.j != null) {
        this.j.a(this.i);
      }
      if (this.f > 0L) {
        bool = true;
      }
      a(bool);
      if (DownloadingService.c().size() <= 0) {
        this.a.stopSelf();
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\update\net\DownloadingService$b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */