package com.flurry.sdk;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.util.List;

public class kp
  extends lz
{
  private static final String a = kp.class.getSimpleName();
  private String b;
  private kp.a c;
  private int d = 10000;
  private int e = 15000;
  private int f;
  private int g;
  private boolean j = true;
  private final jx<String, String> k = new jx();
  private kp.c l;
  private HttpURLConnection m;
  private boolean n;
  private boolean o;
  private boolean p;
  private long q = -1L;
  private long r = -1L;
  private Exception s;
  private int t = -1;
  private final jx<String, String> u = new jx();
  private final Object v = new Object();
  private boolean w;
  private int x = 25000;
  private ko y = new ko(this);
  private boolean z;
  
  private void a(InputStream paramInputStream)
  {
    if (this.l == null) {}
    while ((e()) || (paramInputStream == null)) {
      return;
    }
    this.l.a(this, paramInputStream);
  }
  
  private void a(OutputStream paramOutputStream)
  {
    if (this.l == null) {}
    while ((e()) || (paramOutputStream == null)) {
      return;
    }
    this.l.a(this, paramOutputStream);
  }
  
  /* Error */
  private void r()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aconst_null
    //   3: astore 4
    //   5: aload_0
    //   6: getfield 113	com/flurry/sdk/kp:o	Z
    //   9: ifeq +4 -> 13
    //   12: return
    //   13: aload_0
    //   14: aload_0
    //   15: getfield 115	com/flurry/sdk/kp:b	Ljava/lang/String;
    //   18: invokestatic 120	com/flurry/sdk/lt:a	(Ljava/lang/String;)Ljava/lang/String;
    //   21: putfield 115	com/flurry/sdk/kp:b	Ljava/lang/String;
    //   24: new 122	java/net/URL
    //   27: dup
    //   28: aload_0
    //   29: getfield 115	com/flurry/sdk/kp:b	Ljava/lang/String;
    //   32: invokespecial 125	java/net/URL:<init>	(Ljava/lang/String;)V
    //   35: astore_1
    //   36: aload_0
    //   37: aload_1
    //   38: invokevirtual 129	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   41: checkcast 131	java/net/HttpURLConnection
    //   44: putfield 96	com/flurry/sdk/kp:m	Ljava/net/HttpURLConnection;
    //   47: aload_0
    //   48: getfield 96	com/flurry/sdk/kp:m	Ljava/net/HttpURLConnection;
    //   51: aload_0
    //   52: getfield 60	com/flurry/sdk/kp:d	I
    //   55: invokevirtual 135	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   58: aload_0
    //   59: getfield 96	com/flurry/sdk/kp:m	Ljava/net/HttpURLConnection;
    //   62: aload_0
    //   63: getfield 62	com/flurry/sdk/kp:e	I
    //   66: invokevirtual 138	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   69: aload_0
    //   70: getfield 96	com/flurry/sdk/kp:m	Ljava/net/HttpURLConnection;
    //   73: aload_0
    //   74: getfield 140	com/flurry/sdk/kp:c	Lcom/flurry/sdk/kp$a;
    //   77: invokevirtual 145	com/flurry/sdk/kp$a:toString	()Ljava/lang/String;
    //   80: invokevirtual 148	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   83: aload_0
    //   84: getfield 96	com/flurry/sdk/kp:m	Ljava/net/HttpURLConnection;
    //   87: aload_0
    //   88: getfield 64	com/flurry/sdk/kp:j	Z
    //   91: invokevirtual 152	java/net/HttpURLConnection:setInstanceFollowRedirects	(Z)V
    //   94: aload_0
    //   95: getfield 96	com/flurry/sdk/kp:m	Ljava/net/HttpURLConnection;
    //   98: getstatic 153	com/flurry/sdk/kp$a:c	Lcom/flurry/sdk/kp$a;
    //   101: aload_0
    //   102: getfield 140	com/flurry/sdk/kp:c	Lcom/flurry/sdk/kp$a;
    //   105: invokevirtual 157	com/flurry/sdk/kp$a:equals	(Ljava/lang/Object;)Z
    //   108: invokevirtual 160	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   111: aload_0
    //   112: getfield 96	com/flurry/sdk/kp:m	Ljava/net/HttpURLConnection;
    //   115: iconst_1
    //   116: invokevirtual 163	java/net/HttpURLConnection:setDoInput	(Z)V
    //   119: aload_0
    //   120: getfield 69	com/flurry/sdk/kp:k	Lcom/flurry/sdk/jx;
    //   123: invokevirtual 166	com/flurry/sdk/jx:b	()Ljava/util/Collection;
    //   126: invokeinterface 172 1 0
    //   131: astore_1
    //   132: aload_1
    //   133: invokeinterface 177 1 0
    //   138: ifeq +48 -> 186
    //   141: aload_1
    //   142: invokeinterface 181 1 0
    //   147: checkcast 183	java/util/Map$Entry
    //   150: astore_2
    //   151: aload_0
    //   152: getfield 96	com/flurry/sdk/kp:m	Ljava/net/HttpURLConnection;
    //   155: aload_2
    //   156: invokeinterface 186 1 0
    //   161: checkcast 188	java/lang/String
    //   164: aload_2
    //   165: invokeinterface 191 1 0
    //   170: checkcast 188	java/lang/String
    //   173: invokevirtual 195	java/net/HttpURLConnection:addRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   176: goto -44 -> 132
    //   179: astore_1
    //   180: aload_0
    //   181: invokespecial 197	com/flurry/sdk/kp:t	()V
    //   184: aload_1
    //   185: athrow
    //   186: getstatic 199	com/flurry/sdk/kp$a:b	Lcom/flurry/sdk/kp$a;
    //   189: aload_0
    //   190: getfield 140	com/flurry/sdk/kp:c	Lcom/flurry/sdk/kp$a;
    //   193: invokevirtual 157	com/flurry/sdk/kp$a:equals	(Ljava/lang/Object;)Z
    //   196: ifne +27 -> 223
    //   199: getstatic 153	com/flurry/sdk/kp$a:c	Lcom/flurry/sdk/kp$a;
    //   202: aload_0
    //   203: getfield 140	com/flurry/sdk/kp:c	Lcom/flurry/sdk/kp$a;
    //   206: invokevirtual 157	com/flurry/sdk/kp$a:equals	(Ljava/lang/Object;)Z
    //   209: ifne +14 -> 223
    //   212: aload_0
    //   213: getfield 96	com/flurry/sdk/kp:m	Ljava/net/HttpURLConnection;
    //   216: ldc -55
    //   218: ldc -53
    //   220: invokevirtual 206	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   223: aload_0
    //   224: getfield 113	com/flurry/sdk/kp:o	Z
    //   227: istore 6
    //   229: iload 6
    //   231: ifeq +8 -> 239
    //   234: aload_0
    //   235: invokespecial 197	com/flurry/sdk/kp:t	()V
    //   238: return
    //   239: getstatic 153	com/flurry/sdk/kp$a:c	Lcom/flurry/sdk/kp$a;
    //   242: aload_0
    //   243: getfield 140	com/flurry/sdk/kp:c	Lcom/flurry/sdk/kp$a;
    //   246: invokevirtual 157	com/flurry/sdk/kp$a:equals	(Ljava/lang/Object;)Z
    //   249: istore 6
    //   251: iload 6
    //   253: ifeq +33 -> 286
    //   256: aload_0
    //   257: getfield 96	com/flurry/sdk/kp:m	Ljava/net/HttpURLConnection;
    //   260: invokevirtual 210	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   263: astore_1
    //   264: new 212	java/io/BufferedOutputStream
    //   267: dup
    //   268: aload_1
    //   269: invokespecial 214	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   272: astore_2
    //   273: aload_0
    //   274: aload_2
    //   275: invokespecial 216	com/flurry/sdk/kp:a	(Ljava/io/OutputStream;)V
    //   278: aload_2
    //   279: invokestatic 219	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   282: aload_1
    //   283: invokestatic 219	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   286: aload_0
    //   287: getfield 221	com/flurry/sdk/kp:p	Z
    //   290: ifeq +10 -> 300
    //   293: aload_0
    //   294: invokestatic 227	java/lang/System:currentTimeMillis	()J
    //   297: putfield 73	com/flurry/sdk/kp:q	J
    //   300: aload_0
    //   301: getfield 229	com/flurry/sdk/kp:w	Z
    //   304: ifeq +15 -> 319
    //   307: aload_0
    //   308: getfield 93	com/flurry/sdk/kp:y	Lcom/flurry/sdk/ko;
    //   311: aload_0
    //   312: getfield 86	com/flurry/sdk/kp:x	I
    //   315: i2l
    //   316: invokevirtual 232	com/flurry/sdk/ko:a	(J)V
    //   319: aload_0
    //   320: aload_0
    //   321: getfield 96	com/flurry/sdk/kp:m	Ljava/net/HttpURLConnection;
    //   324: invokevirtual 236	java/net/HttpURLConnection:getResponseCode	()I
    //   327: putfield 77	com/flurry/sdk/kp:t	I
    //   330: aload_0
    //   331: getfield 221	com/flurry/sdk/kp:p	Z
    //   334: ifeq +26 -> 360
    //   337: aload_0
    //   338: getfield 73	com/flurry/sdk/kp:q	J
    //   341: ldc2_w 70
    //   344: lcmp
    //   345: ifeq +15 -> 360
    //   348: aload_0
    //   349: invokestatic 227	java/lang/System:currentTimeMillis	()J
    //   352: aload_0
    //   353: getfield 73	com/flurry/sdk/kp:q	J
    //   356: lsub
    //   357: putfield 75	com/flurry/sdk/kp:r	J
    //   360: aload_0
    //   361: getfield 93	com/flurry/sdk/kp:y	Lcom/flurry/sdk/ko;
    //   364: invokevirtual 238	com/flurry/sdk/ko:a	()V
    //   367: aload_0
    //   368: getfield 96	com/flurry/sdk/kp:m	Ljava/net/HttpURLConnection;
    //   371: invokevirtual 242	java/net/HttpURLConnection:getHeaderFields	()Ljava/util/Map;
    //   374: invokeinterface 248 1 0
    //   379: invokeinterface 172 1 0
    //   384: astore_1
    //   385: aload_1
    //   386: invokeinterface 177 1 0
    //   391: ifeq +79 -> 470
    //   394: aload_1
    //   395: invokeinterface 181 1 0
    //   400: checkcast 183	java/util/Map$Entry
    //   403: astore_2
    //   404: aload_2
    //   405: invokeinterface 191 1 0
    //   410: checkcast 250	java/util/List
    //   413: invokeinterface 251 1 0
    //   418: astore 4
    //   420: aload 4
    //   422: invokeinterface 177 1 0
    //   427: ifeq -42 -> 385
    //   430: aload 4
    //   432: invokeinterface 181 1 0
    //   437: checkcast 188	java/lang/String
    //   440: astore 5
    //   442: aload_0
    //   443: getfield 79	com/flurry/sdk/kp:u	Lcom/flurry/sdk/jx;
    //   446: aload_2
    //   447: invokeinterface 186 1 0
    //   452: aload 5
    //   454: invokevirtual 254	com/flurry/sdk/jx:a	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   457: goto -37 -> 420
    //   460: aload_2
    //   461: invokestatic 219	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   464: aload_3
    //   465: invokestatic 219	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   468: aload_1
    //   469: athrow
    //   470: getstatic 199	com/flurry/sdk/kp$a:b	Lcom/flurry/sdk/kp$a;
    //   473: aload_0
    //   474: getfield 140	com/flurry/sdk/kp:c	Lcom/flurry/sdk/kp$a;
    //   477: invokevirtual 157	com/flurry/sdk/kp$a:equals	(Ljava/lang/Object;)Z
    //   480: ifne +25 -> 505
    //   483: getstatic 153	com/flurry/sdk/kp$a:c	Lcom/flurry/sdk/kp$a;
    //   486: aload_0
    //   487: getfield 140	com/flurry/sdk/kp:c	Lcom/flurry/sdk/kp$a;
    //   490: invokevirtual 157	com/flurry/sdk/kp$a:equals	(Ljava/lang/Object;)Z
    //   493: istore 6
    //   495: iload 6
    //   497: ifne +8 -> 505
    //   500: aload_0
    //   501: invokespecial 197	com/flurry/sdk/kp:t	()V
    //   504: return
    //   505: aload_0
    //   506: getfield 113	com/flurry/sdk/kp:o	Z
    //   509: istore 6
    //   511: iload 6
    //   513: ifeq +8 -> 521
    //   516: aload_0
    //   517: invokespecial 197	com/flurry/sdk/kp:t	()V
    //   520: return
    //   521: aload_0
    //   522: getfield 96	com/flurry/sdk/kp:m	Ljava/net/HttpURLConnection;
    //   525: invokevirtual 258	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   528: astore_1
    //   529: new 260	java/io/BufferedInputStream
    //   532: dup
    //   533: aload_1
    //   534: invokespecial 262	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   537: astore_2
    //   538: aload_0
    //   539: aload_2
    //   540: invokespecial 264	com/flurry/sdk/kp:a	(Ljava/io/InputStream;)V
    //   543: aload_2
    //   544: invokestatic 219	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   547: aload_1
    //   548: invokestatic 219	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   551: aload_0
    //   552: invokespecial 197	com/flurry/sdk/kp:t	()V
    //   555: return
    //   556: astore_1
    //   557: aconst_null
    //   558: astore_2
    //   559: aload_2
    //   560: invokestatic 219	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   563: aload_3
    //   564: invokestatic 219	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   567: aload_1
    //   568: athrow
    //   569: astore 4
    //   571: aconst_null
    //   572: astore_2
    //   573: aload_1
    //   574: astore_3
    //   575: aload 4
    //   577: astore_1
    //   578: goto -19 -> 559
    //   581: astore 4
    //   583: aload_1
    //   584: astore_3
    //   585: aload 4
    //   587: astore_1
    //   588: goto -29 -> 559
    //   591: astore 4
    //   593: aconst_null
    //   594: astore_2
    //   595: aload_1
    //   596: astore_3
    //   597: aload 4
    //   599: astore_1
    //   600: goto -140 -> 460
    //   603: astore 4
    //   605: aload_1
    //   606: astore_3
    //   607: aload 4
    //   609: astore_1
    //   610: goto -150 -> 460
    //   613: astore_1
    //   614: aconst_null
    //   615: astore_2
    //   616: aload 4
    //   618: astore_3
    //   619: goto -159 -> 460
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	622	0	this	kp
    //   35	107	1	localObject1	Object
    //   179	6	1	localObject2	Object
    //   263	285	1	localObject3	Object
    //   556	18	1	localObject4	Object
    //   577	33	1	localObject5	Object
    //   613	1	1	localObject6	Object
    //   150	466	2	localObject7	Object
    //   1	618	3	localObject8	Object
    //   3	428	4	localIterator	java.util.Iterator
    //   569	7	4	localObject9	Object
    //   581	5	4	localObject10	Object
    //   591	7	4	localObject11	Object
    //   603	14	4	localObject12	Object
    //   440	13	5	str	String
    //   227	285	6	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   36	132	179	finally
    //   132	176	179	finally
    //   186	223	179	finally
    //   223	229	179	finally
    //   239	251	179	finally
    //   278	286	179	finally
    //   286	300	179	finally
    //   300	319	179	finally
    //   319	360	179	finally
    //   360	385	179	finally
    //   385	420	179	finally
    //   420	457	179	finally
    //   460	470	179	finally
    //   470	495	179	finally
    //   505	511	179	finally
    //   543	551	179	finally
    //   559	569	179	finally
    //   521	529	556	finally
    //   529	538	569	finally
    //   538	543	581	finally
    //   264	273	591	finally
    //   273	278	603	finally
    //   256	264	613	finally
  }
  
  private void s()
  {
    if (this.l == null) {}
    while (e()) {
      return;
    }
    this.l.a(this);
  }
  
  private void t()
  {
    if (this.n) {}
    do
    {
      return;
      this.n = true;
    } while (this.m == null);
    this.m.disconnect();
  }
  
  private void u()
  {
    if (this.n) {}
    do
    {
      return;
      this.n = true;
    } while (this.m == null);
    new Thread()
    {
      public void run()
      {
        try
        {
          if (kp.a(kp.this) != null) {
            kp.a(kp.this).disconnect();
          }
          return;
        }
        catch (Throwable localThrowable) {}
      }
    }.start();
  }
  
  public void a()
  {
    try
    {
      String str = this.b;
      if (str == null) {
        return;
      }
      if (!jl.a().c())
      {
        kg.a(3, a, "Network not available, aborting http request: " + this.b);
        return;
      }
      if ((this.c == null) || (kp.a.a.equals(this.c))) {
        this.c = kp.a.b;
      }
      r();
      kg.a(4, a, "HTTP status: " + this.t + " for url: " + this.b);
      return;
    }
    catch (Exception localException)
    {
      kg.a(4, a, "HTTP status: " + this.t + " for url: " + this.b);
      kg.a(3, a, "Exception during http request: " + this.b, localException);
      this.g = this.m.getReadTimeout();
      this.f = this.m.getConnectTimeout();
      this.s = localException;
      return;
    }
    finally
    {
      this.y.a();
      s();
    }
  }
  
  public void a(int paramInt)
  {
    this.d = paramInt;
  }
  
  public void a(kp.a parama)
  {
    this.c = parama;
  }
  
  public void a(kp.c paramc)
  {
    this.l = paramc;
  }
  
  public void a(String paramString)
  {
    this.b = paramString;
  }
  
  public void a(String paramString1, String paramString2)
  {
    this.k.a(paramString1, paramString2);
  }
  
  public void a(boolean paramBoolean)
  {
    this.w = paramBoolean;
  }
  
  public String b()
  {
    return this.b;
  }
  
  public List<String> b(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return this.u.a(paramString);
  }
  
  public void b(int paramInt)
  {
    this.e = paramInt;
  }
  
  public void b(boolean paramBoolean)
  {
    this.j = paramBoolean;
  }
  
  public long c()
  {
    return this.r;
  }
  
  public void c(int paramInt)
  {
    this.x = paramInt;
  }
  
  public void c(String paramString)
  {
    if ((this.u != null) && (this.u.c(paramString))) {
      this.u.b(paramString);
    }
  }
  
  public void c(boolean paramBoolean)
  {
    this.p = paramBoolean;
  }
  
  public boolean d()
  {
    boolean bool = false;
    if ((this.s != null) && ((this.s instanceof SocketTimeoutException))) {}
    for (int i = 1;; i = 0)
    {
      if ((this.z) || (i != 0)) {
        bool = true;
      }
      return bool;
    }
  }
  
  public boolean e()
  {
    synchronized (this.v)
    {
      boolean bool = this.o;
      return bool;
    }
  }
  
  public boolean f()
  {
    return (!i()) && (g());
  }
  
  public boolean g()
  {
    return (this.t >= 200) && (this.t < 400) && (!this.z);
  }
  
  public int h()
  {
    return this.t;
  }
  
  public boolean i()
  {
    return this.s != null;
  }
  
  public Exception j()
  {
    return this.s;
  }
  
  public void k()
  {
    long l1 = System.currentTimeMillis();
    long l2 = this.q;
    kg.a(3, a, "Timeout (" + (l1 - l2) + "MS) for url: " + this.b);
    this.t = 629;
    this.z = true;
    s();
    l();
  }
  
  public void l()
  {
    kg.a(3, a, "Cancelling http request: " + this.b);
    synchronized (this.v)
    {
      this.o = true;
      u();
      return;
    }
  }
  
  public void m()
  {
    l();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\kp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */