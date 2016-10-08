package com.xiaomi.e;

import android.os.Build;
import android.os.Build.VERSION;
import android.os.SystemClock;
import android.util.Base64;
import com.xiaomi.a.a.d.d;
import com.xiaomi.d.b;
import com.xiaomi.d.f;
import com.xiaomi.e.c.e;
import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.service.bd;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.Locale;

public final class p
  extends a
{
  private String A = null;
  private String B;
  private final String C = "<pf><p>t:%1$d</p></pf>";
  private volatile long D = 0L;
  private int E;
  public Exception r = null;
  protected Socket s;
  String t = null;
  public String u = "";
  j v;
  h w;
  XMPushService x;
  volatile long y = 0L;
  public volatile long z = 0L;
  
  public p(XMPushService paramXMPushService, c paramc)
  {
    super(paramXMPushService, paramc);
    this.x = paramXMPushService;
  }
  
  private b b(String paramString)
  {
    b localb = f.a().a(paramString, false);
    if (!localb.a()) {
      com.xiaomi.e.e.i.a(new s(this, paramString));
    }
    this.d = 0;
    try
    {
      paramString = InetAddress.getByName(localb.h).getAddress();
      this.d = (paramString[0] & 0xFF);
      this.d |= paramString[1] << 8 & 0xFF00;
      this.d |= paramString[2] << 16 & 0xFF0000;
      int i = this.d;
      this.d = (paramString[3] << 24 & 0xFF000000 | i);
      return localb;
    }
    catch (UnknownHostException paramString) {}
    return localb;
  }
  
  /* Error */
  private void b(int paramInt, Exception arg2)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 109	com/xiaomi/e/a:m	I
    //   6: istore 4
    //   8: iload 4
    //   10: iconst_2
    //   11: if_icmpne +6 -> 17
    //   14: aload_0
    //   15: monitorexit
    //   16: return
    //   17: aload_0
    //   18: iconst_2
    //   19: iload_1
    //   20: aload_2
    //   21: invokevirtual 112	com/xiaomi/e/p:a	(IILjava/lang/Exception;)V
    //   24: aload_0
    //   25: ldc 38
    //   27: putfield 115	com/xiaomi/e/p:l	Ljava/lang/String;
    //   30: aload_0
    //   31: getfield 117	com/xiaomi/e/p:w	Lcom/xiaomi/e/h;
    //   34: ifnull +23 -> 57
    //   37: aload_0
    //   38: getfield 117	com/xiaomi/e/p:w	Lcom/xiaomi/e/h;
    //   41: iconst_1
    //   42: putfield 122	com/xiaomi/e/h:b	Z
    //   45: aload_0
    //   46: getfield 117	com/xiaomi/e/p:w	Lcom/xiaomi/e/h;
    //   49: invokevirtual 125	com/xiaomi/e/h:a	()V
    //   52: aload_0
    //   53: aconst_null
    //   54: putfield 117	com/xiaomi/e/p:w	Lcom/xiaomi/e/h;
    //   57: aload_0
    //   58: getfield 127	com/xiaomi/e/p:v	Lcom/xiaomi/e/j;
    //   61: astore_2
    //   62: aload_2
    //   63: ifnull +45 -> 108
    //   66: aload_0
    //   67: getfield 127	com/xiaomi/e/p:v	Lcom/xiaomi/e/j;
    //   70: astore_3
    //   71: aload_3
    //   72: getfield 132	com/xiaomi/e/j:a	Ljava/io/Writer;
    //   75: astore_2
    //   76: aload_2
    //   77: monitorenter
    //   78: aload_3
    //   79: getfield 132	com/xiaomi/e/j:a	Ljava/io/Writer;
    //   82: ldc -122
    //   84: invokevirtual 140	java/io/Writer:write	(Ljava/lang/String;)V
    //   87: aload_3
    //   88: getfield 132	com/xiaomi/e/j:a	Ljava/io/Writer;
    //   91: invokevirtual 143	java/io/Writer:flush	()V
    //   94: aload_2
    //   95: monitorexit
    //   96: aload_0
    //   97: getfield 127	com/xiaomi/e/p:v	Lcom/xiaomi/e/j;
    //   100: invokevirtual 144	com/xiaomi/e/j:a	()V
    //   103: aload_0
    //   104: aconst_null
    //   105: putfield 127	com/xiaomi/e/p:v	Lcom/xiaomi/e/j;
    //   108: aload_0
    //   109: getfield 146	com/xiaomi/e/p:s	Ljava/net/Socket;
    //   112: invokevirtual 151	java/net/Socket:close	()V
    //   115: aload_0
    //   116: getfield 155	com/xiaomi/e/p:j	Ljava/io/Reader;
    //   119: astore_2
    //   120: aload_2
    //   121: ifnull +15 -> 136
    //   124: aload_0
    //   125: getfield 155	com/xiaomi/e/p:j	Ljava/io/Reader;
    //   128: invokevirtual 158	java/io/Reader:close	()V
    //   131: aload_0
    //   132: aconst_null
    //   133: putfield 155	com/xiaomi/e/p:j	Ljava/io/Reader;
    //   136: aload_0
    //   137: getfield 161	com/xiaomi/e/p:k	Ljava/io/Writer;
    //   140: astore_2
    //   141: aload_2
    //   142: ifnull +15 -> 157
    //   145: aload_0
    //   146: getfield 161	com/xiaomi/e/p:k	Ljava/io/Writer;
    //   149: invokevirtual 162	java/io/Writer:close	()V
    //   152: aload_0
    //   153: aconst_null
    //   154: putfield 161	com/xiaomi/e/p:k	Ljava/io/Writer;
    //   157: aload_0
    //   158: lconst_0
    //   159: putfield 42	com/xiaomi/e/p:y	J
    //   162: aload_0
    //   163: lconst_0
    //   164: putfield 44	com/xiaomi/e/p:z	J
    //   167: goto -153 -> 14
    //   170: astore_2
    //   171: aload_0
    //   172: monitorexit
    //   173: aload_2
    //   174: athrow
    //   175: astore_3
    //   176: aload_2
    //   177: monitorexit
    //   178: aload_3
    //   179: athrow
    //   180: astore_2
    //   181: aload_2
    //   182: invokestatic 167	com/xiaomi/a/a/b/c:a	(Ljava/lang/Throwable;)V
    //   185: goto -89 -> 96
    //   188: astore_2
    //   189: goto -37 -> 152
    //   192: astore_2
    //   193: goto -62 -> 131
    //   196: astore_2
    //   197: goto -82 -> 115
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	200	0	this	p
    //   0	200	1	paramInt	int
    //   70	18	3	localj	j
    //   175	4	3	localObject	Object
    //   6	6	4	i	int
    // Exception table:
    //   from	to	target	type
    //   2	8	170	finally
    //   17	57	170	finally
    //   57	62	170	finally
    //   66	78	170	finally
    //   96	108	170	finally
    //   108	115	170	finally
    //   115	120	170	finally
    //   124	131	170	finally
    //   131	136	170	finally
    //   136	141	170	finally
    //   145	152	170	finally
    //   152	157	170	finally
    //   157	167	170	finally
    //   178	180	170	finally
    //   181	185	170	finally
    //   78	96	175	finally
    //   176	178	175	finally
    //   66	78	180	java/io/IOException
    //   178	180	180	java/io/IOException
    //   145	152	188	java/lang/Throwable
    //   124	131	192	java/lang/Throwable
    //   108	115	196	java/lang/Throwable
  }
  
  private void o()
  {
    try
    {
      this.j = new BufferedReader(new InputStreamReader(this.s.getInputStream(), "UTF-8"), 4096);
      this.k = new BufferedWriter(new OutputStreamWriter(this.s.getOutputStream(), "UTF-8"));
      if ((this.j != null) && (this.k != null)) {
        f();
      }
      this.v = new j(this);
      this.w = new h(this);
      if (this.o.g) {
        a(this.i.c(), null);
      }
      j localj = this.v;
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("<stream:stream");
      localStringBuilder.append(" xmlns=\"xm\"");
      localStringBuilder.append(" xmlns:stream=\"xm\"");
      localStringBuilder.append(" to=\"").append(localj.b.b()).append("\"");
      localStringBuilder.append(" version=\"105\"");
      localStringBuilder.append(" model=\"").append(com.xiaomi.e.e.g.a(Build.MODEL)).append("\"");
      localStringBuilder.append(" os=\"").append(com.xiaomi.e.e.g.a(Build.VERSION.INCREMENTAL)).append("\"");
      Object localObject2 = com.xiaomi.e.e.h.a();
      if (localObject2 != null) {
        localStringBuilder.append(" uid=\"").append((String)localObject2).append("\"");
      }
      localStringBuilder.append(" sdk=\"8\"");
      localStringBuilder.append(" connpt=\"").append(com.xiaomi.e.e.g.a(localj.b.d())).append("\"");
      localStringBuilder.append(" host=\"").append(localj.b.B).append("\"");
      localStringBuilder.append(" locale=\"").append(com.xiaomi.e.e.g.a(Locale.getDefault().toString())).append("\"");
      localObject2 = localj.b.a().a();
      if (localObject2 != null) {
        localStringBuilder.append(" ps=\"").append(Base64.encodeToString((byte[])localObject2, 10)).append("\"");
      }
      localStringBuilder.append(">");
      localj.a.write(localStringBuilder.toString());
      localj.a.flush();
      this.w.a.start();
      return;
    }
    catch (Exception localException)
    {
      throw new t("Error to init reader and writer", localException);
    }
    finally {}
  }
  
  public final void a(int paramInt, Exception paramException)
  {
    b(paramInt, paramException);
    if ((paramException != null) && (this.D != 0L))
    {
      if (SystemClock.elapsedRealtime() - this.D >= 300000L) {
        break label129;
      }
      if (d.a(this.x))
      {
        this.E += 1;
        if (this.E >= 2)
        {
          String str = this.B;
          com.xiaomi.a.a.b.c.a("max short conn time reached, sink down current host:" + str);
          Object localObject = c.b();
          localObject = f.a().a((String)localObject, false);
          if (localObject != null)
          {
            ((b)localObject).b(str, 0L, 0L, paramException);
            f.a().h();
          }
          this.E = 0;
        }
      }
    }
    return;
    label129:
    this.E = 0;
  }
  
  public final void a(e parame)
  {
    if (this.v != null)
    {
      this.v.a(parame);
      return;
    }
    throw new t("the writer is null.");
  }
  
  public final void a(bd parambd)
  {
    try
    {
      parambd = new m(new l(), parambd, this.l, this);
      a(parambd);
      com.xiaomi.a.a.b.c.a("SMACK: bind id=" + parambd.d());
      return;
    }
    finally
    {
      parambd = finally;
      throw parambd;
    }
  }
  
  public final void a(String paramString1, String paramString2)
  {
    try
    {
      com.xiaomi.e.c.g localg = new com.xiaomi.e.c.g(com.xiaomi.e.c.i.b);
      localg.t = paramString1;
      localg.s = paramString2;
      if (this.v != null) {
        this.v.a(localg);
      }
      return;
    }
    finally
    {
      paramString1 = finally;
      throw paramString1;
    }
  }
  
  public final void a(e[] paramArrayOfe)
  {
    int j = paramArrayOfe.length;
    int i = 0;
    while (i < j)
    {
      a(paramArrayOfe[i]);
      i += 1;
    }
  }
  
  public final String c()
  {
    return this.B;
  }
  
  public final void m()
  {
    j localj;
    if (this.v != null) {
      localj = this.v;
    }
    for (;;)
    {
      synchronized (localj.a)
      {
        try
        {
          Writer localWriter2 = localj.a;
          StringBuilder localStringBuilder = new StringBuilder();
          p localp = localj.b;
          if (localp.z == 0L) {
            break label247;
          }
          String str1;
          if (localp.y == 0L)
          {
            break label247;
            str3 = com.xiaomi.f.j.c();
            if (str3 != null)
            {
              str3 = "<q>" + str3 + "</q>";
              localWriter2.write(String.format(localp.u, new Object[] { str1, str3 }) + "\r\n");
              localj.a.flush();
              localj.b.y = SystemClock.uptimeMillis();
              long l = System.currentTimeMillis();
              this.x.a(new q(this, l), 15000L);
            }
          }
          else
          {
            str1 = String.format("<pf><p>t:%1$d</p></pf>", new Object[] { Long.valueOf(localp.z - localp.y) });
            continue;
          }
          String str3 = "";
          continue;
          localObject = finally;
        }
        catch (IOException localIOException)
        {
          throw new t(localIOException);
        }
      }
      throw new t("the packetwriter is null.");
      label247:
      String str2 = "";
    }
  }
  
  /* Error */
  public final void n()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 448	com/xiaomi/e/p:h	()Z
    //   6: ifne +10 -> 16
    //   9: aload_0
    //   10: invokevirtual 450	com/xiaomi/e/p:g	()Z
    //   13: ifeq +12 -> 25
    //   16: ldc_w 452
    //   19: invokestatic 354	com/xiaomi/a/a/b/c:a	(Ljava/lang/String;)V
    //   22: aload_0
    //   23: monitorexit
    //   24: return
    //   25: aload_0
    //   26: iconst_0
    //   27: iconst_0
    //   28: aconst_null
    //   29: invokevirtual 112	com/xiaomi/e/p:a	(IILjava/lang/Exception;)V
    //   32: aload_0
    //   33: getfield 210	com/xiaomi/e/p:o	Lcom/xiaomi/e/c;
    //   36: astore_1
    //   37: aload_1
    //   38: getfield 455	com/xiaomi/e/c:e	Ljava/lang/String;
    //   41: astore_3
    //   42: aload_1
    //   43: getfield 457	com/xiaomi/e/c:f	I
    //   46: istore 16
    //   48: iconst_0
    //   49: istore 7
    //   51: aload_0
    //   52: aconst_null
    //   53: putfield 32	com/xiaomi/e/p:r	Ljava/lang/Exception;
    //   56: new 459	java/util/ArrayList
    //   59: dup
    //   60: invokespecial 460	java/util/ArrayList:<init>	()V
    //   63: astore_1
    //   64: new 230	java/lang/StringBuilder
    //   67: dup
    //   68: ldc_w 462
    //   71: invokespecial 352	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   74: aload_3
    //   75: invokevirtual 238	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   78: invokevirtual 316	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   81: invokestatic 465	com/xiaomi/a/a/b/c:e	(Ljava/lang/String;)Ljava/lang/Integer;
    //   84: invokevirtual 471	java/lang/Integer:intValue	()I
    //   87: istore 8
    //   89: aload_0
    //   90: aload_3
    //   91: invokespecial 473	com/xiaomi/e/p:b	(Ljava/lang/String;)Lcom/xiaomi/d/b;
    //   94: astore_2
    //   95: iload 8
    //   97: invokestatic 476	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   100: invokestatic 479	com/xiaomi/a/a/b/c:a	(Ljava/lang/Integer;)V
    //   103: aload_2
    //   104: ifnull +9 -> 113
    //   107: aload_2
    //   108: iconst_1
    //   109: invokevirtual 482	com/xiaomi/d/b:a	(Z)Ljava/util/ArrayList;
    //   112: astore_1
    //   113: aload_1
    //   114: invokevirtual 485	java/util/ArrayList:isEmpty	()Z
    //   117: ifeq +9 -> 126
    //   120: aload_1
    //   121: aload_3
    //   122: invokevirtual 489	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   125: pop
    //   126: aload_0
    //   127: lconst_0
    //   128: putfield 50	com/xiaomi/e/p:D	J
    //   131: aload_0
    //   132: getfield 52	com/xiaomi/e/p:x	Lcom/xiaomi/push/service/XMPushService;
    //   135: invokestatic 492	com/xiaomi/a/a/d/d:c	(Landroid/content/Context;)Ljava/lang/String;
    //   138: astore_3
    //   139: new 230	java/lang/StringBuilder
    //   142: dup
    //   143: invokespecial 232	java/lang/StringBuilder:<init>	()V
    //   146: astore 4
    //   148: aload_1
    //   149: invokevirtual 496	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   152: astore_1
    //   153: iload 7
    //   155: istore 8
    //   157: aload_1
    //   158: invokeinterface 501 1 0
    //   163: ifeq +385 -> 548
    //   166: aload_1
    //   167: invokeinterface 505 1 0
    //   172: checkcast 409	java/lang/String
    //   175: astore 5
    //   177: invokestatic 423	java/lang/System:currentTimeMillis	()J
    //   180: lstore 17
    //   182: aload_0
    //   183: aload_0
    //   184: getfield 507	com/xiaomi/e/p:b	I
    //   187: iconst_1
    //   188: iadd
    //   189: putfield 507	com/xiaomi/e/p:b	I
    //   192: iload 7
    //   194: istore 9
    //   196: iload 7
    //   198: istore 8
    //   200: iload 7
    //   202: istore 10
    //   204: iload 7
    //   206: istore 11
    //   208: new 230	java/lang/StringBuilder
    //   211: dup
    //   212: ldc_w 509
    //   215: invokespecial 352	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   218: aload 5
    //   220: invokevirtual 238	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   223: invokevirtual 316	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   226: invokestatic 354	com/xiaomi/a/a/b/c:a	(Ljava/lang/String;)V
    //   229: iload 7
    //   231: istore 9
    //   233: iload 7
    //   235: istore 8
    //   237: iload 7
    //   239: istore 10
    //   241: iload 7
    //   243: istore 11
    //   245: aload_0
    //   246: new 148	java/net/Socket
    //   249: dup
    //   250: invokespecial 510	java/net/Socket:<init>	()V
    //   253: putfield 146	com/xiaomi/e/p:s	Ljava/net/Socket;
    //   256: iload 7
    //   258: istore 9
    //   260: iload 7
    //   262: istore 8
    //   264: iload 7
    //   266: istore 10
    //   268: iload 7
    //   270: istore 11
    //   272: aload_0
    //   273: getfield 146	com/xiaomi/e/p:s	Ljava/net/Socket;
    //   276: aconst_null
    //   277: invokevirtual 514	java/net/Socket:bind	(Ljava/net/SocketAddress;)V
    //   280: iload 7
    //   282: istore 9
    //   284: iload 7
    //   286: istore 8
    //   288: iload 7
    //   290: istore 10
    //   292: iload 7
    //   294: istore 11
    //   296: aload 5
    //   298: iload 16
    //   300: invokestatic 519	com/xiaomi/d/d:b	(Ljava/lang/String;I)Ljava/net/InetSocketAddress;
    //   303: astore 6
    //   305: iload 7
    //   307: istore 9
    //   309: iload 7
    //   311: istore 8
    //   313: iload 7
    //   315: istore 10
    //   317: iload 7
    //   319: istore 11
    //   321: aload_0
    //   322: getfield 146	com/xiaomi/e/p:s	Ljava/net/Socket;
    //   325: aload 6
    //   327: sipush 5000
    //   330: invokevirtual 523	java/net/Socket:connect	(Ljava/net/SocketAddress;I)V
    //   333: iload 7
    //   335: istore 9
    //   337: iload 7
    //   339: istore 8
    //   341: iload 7
    //   343: istore 10
    //   345: iload 7
    //   347: istore 11
    //   349: aload_0
    //   350: getfield 146	com/xiaomi/e/p:s	Ljava/net/Socket;
    //   353: iconst_1
    //   354: invokevirtual 527	java/net/Socket:setTcpNoDelay	(Z)V
    //   357: iload 7
    //   359: istore 9
    //   361: iload 7
    //   363: istore 8
    //   365: iload 7
    //   367: istore 10
    //   369: iload 7
    //   371: istore 11
    //   373: aload_0
    //   374: aload 5
    //   376: putfield 289	com/xiaomi/e/p:B	Ljava/lang/String;
    //   379: iload 7
    //   381: istore 9
    //   383: iload 7
    //   385: istore 8
    //   387: iload 7
    //   389: istore 10
    //   391: iload 7
    //   393: istore 11
    //   395: aload_0
    //   396: invokespecial 529	com/xiaomi/e/p:o	()V
    //   399: iconst_1
    //   400: istore 12
    //   402: iconst_1
    //   403: istore 13
    //   405: iconst_1
    //   406: istore 14
    //   408: iconst_1
    //   409: istore 15
    //   411: iconst_1
    //   412: istore 7
    //   414: iload 12
    //   416: istore 9
    //   418: iload 13
    //   420: istore 8
    //   422: iload 14
    //   424: istore 10
    //   426: iload 15
    //   428: istore 11
    //   430: aload_0
    //   431: invokestatic 423	java/lang/System:currentTimeMillis	()J
    //   434: lload 17
    //   436: lsub
    //   437: putfield 531	com/xiaomi/e/p:c	J
    //   440: aload_2
    //   441: ifnull +30 -> 471
    //   444: iload 12
    //   446: istore 9
    //   448: iload 13
    //   450: istore 8
    //   452: iload 14
    //   454: istore 10
    //   456: iload 15
    //   458: istore 11
    //   460: aload_2
    //   461: aload 5
    //   463: aload_0
    //   464: getfield 531	com/xiaomi/e/p:c	J
    //   467: lconst_0
    //   468: invokevirtual 534	com/xiaomi/d/b:a	(Ljava/lang/String;JJ)V
    //   471: iload 12
    //   473: istore 9
    //   475: iload 13
    //   477: istore 8
    //   479: iload 14
    //   481: istore 10
    //   483: iload 15
    //   485: istore 11
    //   487: aload_0
    //   488: invokestatic 339	android/os/SystemClock:elapsedRealtime	()J
    //   491: putfield 50	com/xiaomi/e/p:D	J
    //   494: iload 12
    //   496: istore 9
    //   498: iload 13
    //   500: istore 8
    //   502: iload 14
    //   504: istore 10
    //   506: iload 15
    //   508: istore 11
    //   510: new 230	java/lang/StringBuilder
    //   513: dup
    //   514: ldc_w 536
    //   517: invokespecial 352	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   520: aload 5
    //   522: invokevirtual 238	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   525: ldc_w 538
    //   528: invokevirtual 238	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   531: aload_0
    //   532: getfield 531	com/xiaomi/e/p:c	J
    //   535: invokevirtual 541	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   538: invokevirtual 316	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   541: invokestatic 354	com/xiaomi/a/a/b/c:a	(Ljava/lang/String;)V
    //   544: iload 7
    //   546: istore 8
    //   548: invokestatic 64	com/xiaomi/d/f:a	()Lcom/xiaomi/d/f;
    //   551: invokevirtual 360	com/xiaomi/d/f:h	()V
    //   554: iload 8
    //   556: ifne -534 -> 22
    //   559: new 326	com/xiaomi/e/t
    //   562: dup
    //   563: aload 4
    //   565: invokevirtual 316	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   568: invokespecial 366	com/xiaomi/e/t:<init>	(Ljava/lang/String;)V
    //   571: athrow
    //   572: astore_1
    //   573: new 326	com/xiaomi/e/t
    //   576: dup
    //   577: aload_1
    //   578: invokespecial 443	com/xiaomi/e/t:<init>	(Ljava/lang/Throwable;)V
    //   581: athrow
    //   582: astore_1
    //   583: aload_0
    //   584: monitorexit
    //   585: aload_1
    //   586: athrow
    //   587: astore 6
    //   589: aload_2
    //   590: ifnull +22 -> 612
    //   593: iload 9
    //   595: istore 11
    //   597: aload_2
    //   598: aload 5
    //   600: invokestatic 423	java/lang/System:currentTimeMillis	()J
    //   603: lload 17
    //   605: lsub
    //   606: lconst_0
    //   607: aload 6
    //   609: invokevirtual 358	com/xiaomi/d/b:b	(Ljava/lang/String;JJLjava/lang/Exception;)V
    //   612: iload 9
    //   614: istore 11
    //   616: aload_0
    //   617: aload 6
    //   619: putfield 32	com/xiaomi/e/p:r	Ljava/lang/Exception;
    //   622: iload 9
    //   624: istore 11
    //   626: new 230	java/lang/StringBuilder
    //   629: dup
    //   630: ldc_w 543
    //   633: invokespecial 352	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   636: aload 5
    //   638: invokevirtual 238	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   641: invokevirtual 316	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   644: invokestatic 545	com/xiaomi/a/a/b/c:d	(Ljava/lang/String;)V
    //   647: iload 9
    //   649: istore 11
    //   651: aload 4
    //   653: ldc_w 547
    //   656: invokevirtual 238	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   659: aload 5
    //   661: invokevirtual 238	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   664: ldc_w 549
    //   667: invokevirtual 238	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   670: iload 16
    //   672: invokevirtual 552	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   675: ldc_w 554
    //   678: invokevirtual 238	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   681: aload 6
    //   683: invokevirtual 557	java/io/IOException:getMessage	()Ljava/lang/String;
    //   686: invokevirtual 238	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   689: ldc_w 559
    //   692: invokevirtual 238	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   695: pop
    //   696: iload 9
    //   698: istore 7
    //   700: iload 9
    //   702: ifne +38 -> 740
    //   705: aload 5
    //   707: aload_0
    //   708: getfield 32	com/xiaomi/e/p:r	Ljava/lang/Exception;
    //   711: invokestatic 562	com/xiaomi/f/j:a	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   714: aload_3
    //   715: aload_0
    //   716: getfield 52	com/xiaomi/e/p:x	Lcom/xiaomi/push/service/XMPushService;
    //   719: invokestatic 492	com/xiaomi/a/a/d/d:c	(Landroid/content/Context;)Ljava/lang/String;
    //   722: invokestatic 568	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   725: istore 19
    //   727: iload 9
    //   729: istore 8
    //   731: iload 19
    //   733: ifeq -185 -> 548
    //   736: iload 9
    //   738: istore 7
    //   740: goto -587 -> 153
    //   743: astore 6
    //   745: aload_2
    //   746: ifnull +22 -> 768
    //   749: iload 8
    //   751: istore 11
    //   753: aload_2
    //   754: aload 5
    //   756: invokestatic 423	java/lang/System:currentTimeMillis	()J
    //   759: lload 17
    //   761: lsub
    //   762: lconst_0
    //   763: aload 6
    //   765: invokevirtual 358	com/xiaomi/d/b:b	(Ljava/lang/String;JJLjava/lang/Exception;)V
    //   768: iload 8
    //   770: istore 11
    //   772: aload_0
    //   773: aload 6
    //   775: putfield 32	com/xiaomi/e/p:r	Ljava/lang/Exception;
    //   778: iload 8
    //   780: istore 11
    //   782: new 230	java/lang/StringBuilder
    //   785: dup
    //   786: ldc_w 543
    //   789: invokespecial 352	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   792: aload 5
    //   794: invokevirtual 238	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   797: invokevirtual 316	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   800: invokestatic 545	com/xiaomi/a/a/b/c:d	(Ljava/lang/String;)V
    //   803: iload 8
    //   805: istore 11
    //   807: aload 4
    //   809: ldc_w 547
    //   812: invokevirtual 238	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   815: aload 5
    //   817: invokevirtual 238	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   820: ldc_w 549
    //   823: invokevirtual 238	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   826: iload 16
    //   828: invokevirtual 552	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   831: ldc_w 554
    //   834: invokevirtual 238	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   837: aload 6
    //   839: invokevirtual 569	com/xiaomi/e/t:getMessage	()Ljava/lang/String;
    //   842: invokevirtual 238	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   845: ldc_w 559
    //   848: invokevirtual 238	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   851: pop
    //   852: iload 8
    //   854: istore 7
    //   856: iload 8
    //   858: ifne -118 -> 740
    //   861: aload 5
    //   863: aload_0
    //   864: getfield 32	com/xiaomi/e/p:r	Ljava/lang/Exception;
    //   867: invokestatic 562	com/xiaomi/f/j:a	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   870: aload_3
    //   871: aload_0
    //   872: getfield 52	com/xiaomi/e/p:x	Lcom/xiaomi/push/service/XMPushService;
    //   875: invokestatic 492	com/xiaomi/a/a/d/d:c	(Landroid/content/Context;)Ljava/lang/String;
    //   878: invokestatic 568	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   881: istore 19
    //   883: iload 8
    //   885: istore 7
    //   887: iload 19
    //   889: ifne -149 -> 740
    //   892: goto -344 -> 548
    //   895: astore 6
    //   897: aload_0
    //   898: new 170	java/lang/Exception
    //   901: dup
    //   902: ldc_w 571
    //   905: aload 6
    //   907: invokespecial 572	java/lang/Exception:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   910: putfield 32	com/xiaomi/e/p:r	Ljava/lang/Exception;
    //   913: aload 6
    //   915: invokestatic 167	com/xiaomi/a/a/b/c:a	(Ljava/lang/Throwable;)V
    //   918: iload 10
    //   920: ifne +71 -> 991
    //   923: aload 5
    //   925: aload_0
    //   926: getfield 32	com/xiaomi/e/p:r	Ljava/lang/Exception;
    //   929: invokestatic 562	com/xiaomi/f/j:a	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   932: aload_3
    //   933: aload_0
    //   934: getfield 52	com/xiaomi/e/p:x	Lcom/xiaomi/push/service/XMPushService;
    //   937: invokestatic 492	com/xiaomi/a/a/d/d:c	(Landroid/content/Context;)Ljava/lang/String;
    //   940: invokestatic 568	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   943: ifne +48 -> 991
    //   946: iload 10
    //   948: istore 8
    //   950: goto -402 -> 548
    //   953: iload 8
    //   955: ifne +26 -> 981
    //   958: aload 5
    //   960: aload_0
    //   961: getfield 32	com/xiaomi/e/p:r	Ljava/lang/Exception;
    //   964: invokestatic 562	com/xiaomi/f/j:a	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   967: aload_3
    //   968: aload_0
    //   969: getfield 52	com/xiaomi/e/p:x	Lcom/xiaomi/push/service/XMPushService;
    //   972: invokestatic 492	com/xiaomi/a/a/d/d:c	(Landroid/content/Context;)Ljava/lang/String;
    //   975: invokestatic 568	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   978: ifeq -430 -> 548
    //   981: aload_1
    //   982: athrow
    //   983: astore_1
    //   984: iload 10
    //   986: istore 8
    //   988: goto -35 -> 953
    //   991: iload 10
    //   993: istore 7
    //   995: goto -255 -> 740
    //   998: astore_1
    //   999: iload 11
    //   1001: istore 8
    //   1003: goto -50 -> 953
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1006	0	this	p
    //   36	131	1	localObject1	Object
    //   572	6	1	localIOException1	IOException
    //   582	400	1	localObject2	Object
    //   983	1	1	localObject3	Object
    //   998	1	1	localObject4	Object
    //   94	660	2	localb	b
    //   41	927	3	str1	String
    //   146	662	4	localStringBuilder	StringBuilder
    //   175	784	5	str2	String
    //   303	23	6	localInetSocketAddress	java.net.InetSocketAddress
    //   587	95	6	localIOException2	IOException
    //   743	95	6	localt	t
    //   895	19	6	localThrowable	Throwable
    //   49	945	7	i	int
    //   87	915	8	j	int
    //   194	543	9	k	int
    //   202	790	10	m	int
    //   206	794	11	n	int
    //   400	95	12	i1	int
    //   403	96	13	i2	int
    //   406	97	14	i3	int
    //   409	98	15	i4	int
    //   46	781	16	i5	int
    //   180	580	17	l	long
    //   725	163	19	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	16	572	java/io/IOException
    //   16	22	572	java/io/IOException
    //   25	48	572	java/io/IOException
    //   51	103	572	java/io/IOException
    //   107	113	572	java/io/IOException
    //   113	126	572	java/io/IOException
    //   126	153	572	java/io/IOException
    //   157	192	572	java/io/IOException
    //   548	554	572	java/io/IOException
    //   559	572	572	java/io/IOException
    //   705	727	572	java/io/IOException
    //   861	883	572	java/io/IOException
    //   923	946	572	java/io/IOException
    //   958	967	572	java/io/IOException
    //   967	981	572	java/io/IOException
    //   981	983	572	java/io/IOException
    //   2	16	582	finally
    //   16	22	582	finally
    //   25	48	582	finally
    //   51	103	582	finally
    //   107	113	582	finally
    //   113	126	582	finally
    //   126	153	582	finally
    //   157	192	582	finally
    //   548	554	582	finally
    //   559	572	582	finally
    //   573	582	582	finally
    //   705	727	582	finally
    //   861	883	582	finally
    //   923	946	582	finally
    //   958	967	582	finally
    //   967	981	582	finally
    //   981	983	582	finally
    //   208	229	587	java/io/IOException
    //   245	256	587	java/io/IOException
    //   272	280	587	java/io/IOException
    //   296	305	587	java/io/IOException
    //   321	333	587	java/io/IOException
    //   349	357	587	java/io/IOException
    //   373	379	587	java/io/IOException
    //   395	399	587	java/io/IOException
    //   430	440	587	java/io/IOException
    //   460	471	587	java/io/IOException
    //   487	494	587	java/io/IOException
    //   510	544	587	java/io/IOException
    //   208	229	743	com/xiaomi/e/t
    //   245	256	743	com/xiaomi/e/t
    //   272	280	743	com/xiaomi/e/t
    //   296	305	743	com/xiaomi/e/t
    //   321	333	743	com/xiaomi/e/t
    //   349	357	743	com/xiaomi/e/t
    //   373	379	743	com/xiaomi/e/t
    //   395	399	743	com/xiaomi/e/t
    //   430	440	743	com/xiaomi/e/t
    //   460	471	743	com/xiaomi/e/t
    //   487	494	743	com/xiaomi/e/t
    //   510	544	743	com/xiaomi/e/t
    //   208	229	895	java/lang/Throwable
    //   245	256	895	java/lang/Throwable
    //   272	280	895	java/lang/Throwable
    //   296	305	895	java/lang/Throwable
    //   321	333	895	java/lang/Throwable
    //   349	357	895	java/lang/Throwable
    //   373	379	895	java/lang/Throwable
    //   395	399	895	java/lang/Throwable
    //   430	440	895	java/lang/Throwable
    //   460	471	895	java/lang/Throwable
    //   487	494	895	java/lang/Throwable
    //   510	544	895	java/lang/Throwable
    //   897	918	983	finally
    //   208	229	998	finally
    //   245	256	998	finally
    //   272	280	998	finally
    //   296	305	998	finally
    //   321	333	998	finally
    //   349	357	998	finally
    //   373	379	998	finally
    //   395	399	998	finally
    //   430	440	998	finally
    //   460	471	998	finally
    //   487	494	998	finally
    //   510	544	998	finally
    //   597	612	998	finally
    //   616	622	998	finally
    //   626	647	998	finally
    //   651	696	998	finally
    //   753	768	998	finally
    //   772	778	998	finally
    //   782	803	998	finally
    //   807	852	998	finally
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\e\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */