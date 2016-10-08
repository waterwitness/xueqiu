package com.flurry.sdk;

import android.content.Context;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class io
{
  private static final String b = io.class.getName();
  private static io c = null;
  private String a;
  private jz<List<ip>> d;
  private List<ip> e;
  private boolean f;
  
  public static io a()
  {
    try
    {
      if (c == null)
      {
        localio = new io();
        c = localio;
        localio.e();
      }
      io localio = c;
      return localio;
    }
    finally {}
  }
  
  private void e()
  {
    this.d = new jz(js.a().c().getFileStreamPath(f()), ".yflurrypulselogging.", 1, new le()
    {
      public lb<List<ip>> a(int paramAnonymousInt)
      {
        return new la(new ip.a());
      }
    });
    this.f = ((Boolean)lk.a().a("UseHttps")).booleanValue();
    kg.a(4, b, "initSettings, UseHttps = " + this.f);
    this.e = ((List)this.d.a());
    if (this.e == null) {
      this.e = new ArrayList();
    }
  }
  
  private String f()
  {
    return ".yflurrypulselogging." + Long.toString(lt.i(js.a().d()), 16);
  }
  
  private String g()
  {
    if (this.a != null) {
      return this.a;
    }
    if (this.f) {
      return "https://data.flurry.com/pcr.do";
    }
    return "https://data.flurry.com/pcr.do";
  }
  
  public void a(in paramin)
  {
    try
    {
      paramin = new ip(paramin.h());
      this.e.add(paramin);
      kg.a(4, b, "Saving persistent Pulse logging data.");
      this.d.a(this.e);
      return;
    }
    catch (IOException paramin)
    {
      for (;;)
      {
        kg.a(6, b, "Error when generating pulse log report in addReport part");
      }
    }
    finally {}
  }
  
  public void a(String paramString)
  {
    if ((paramString != null) && (!paramString.endsWith(".do"))) {
      kg.a(5, b, "overriding analytics agent report URL without an endpoint, are you sure?");
    }
    this.a = paramString;
  }
  
  public void a(byte[] paramArrayOfByte)
  {
    for (;;)
    {
      try
      {
        if (!jl.a().c())
        {
          kg.a(5, b, "Reports were not sent! No Internet connection!");
          return;
        }
        if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0))
        {
          kg.a(3, b, "No report need be sent");
          continue;
        }
        str = g();
      }
      finally {}
      String str;
      kg.a(4, b, "PulseLoggingManager: start upload data " + Arrays.toString(paramArrayOfByte) + " to " + str);
      kn localkn = new kn();
      localkn.a(str);
      localkn.d(100000);
      localkn.a(kp.a.c);
      localkn.b(true);
      localkn.a("Content-Type", "application/octet-stream");
      localkn.a(new kx());
      localkn.a(paramArrayOfByte);
      localkn.a(new kn.a()
      {
        public void a(kn<byte[], Void> paramAnonymouskn, Void paramAnonymousVoid)
        {
          int i = paramAnonymouskn.h();
          if (i > 0)
          {
            if ((i >= 200) && (i < 300))
            {
              kg.a(3, io.d(), "Pulse logging report sent successfully HTTP response:" + i);
              io.a(io.this).clear();
              io.b(io.this).a(io.a(io.this));
              return;
            }
            kg.a(3, io.d(), "Pulse logging report sent unsuccessfully, HTTP response:" + i);
            return;
          }
          kg.e(io.d(), "Server Error: " + i);
        }
      });
      jq.a().a(this, localkn);
    }
  }
  
  /* Error */
  public byte[] b()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: new 246	java/io/ByteArrayOutputStream
    //   5: dup
    //   6: invokespecial 247	java/io/ByteArrayOutputStream:<init>	()V
    //   9: astore_3
    //   10: new 249	java/io/DataOutputStream
    //   13: dup
    //   14: aload_3
    //   15: invokespecial 252	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   18: astore_2
    //   19: aload_0
    //   20: getfield 44	com/flurry/sdk/io:e	Ljava/util/List;
    //   23: ifnull +15 -> 38
    //   26: aload_0
    //   27: getfield 44	com/flurry/sdk/io:e	Ljava/util/List;
    //   30: invokeinterface 255 1 0
    //   35: ifeq +14 -> 49
    //   38: aload_3
    //   39: invokevirtual 258	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   42: astore_1
    //   43: aload_2
    //   44: invokestatic 261	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   47: aload_1
    //   48: areturn
    //   49: aload_2
    //   50: iconst_1
    //   51: invokevirtual 264	java/io/DataOutputStream:writeShort	(I)V
    //   54: aload_2
    //   55: iconst_1
    //   56: invokevirtual 264	java/io/DataOutputStream:writeShort	(I)V
    //   59: aload_2
    //   60: invokestatic 270	java/lang/System:currentTimeMillis	()J
    //   63: invokevirtual 274	java/io/DataOutputStream:writeLong	(J)V
    //   66: aload_2
    //   67: invokestatic 54	com/flurry/sdk/js:a	()Lcom/flurry/sdk/js;
    //   70: invokevirtual 122	com/flurry/sdk/js:d	()Ljava/lang/String;
    //   73: invokevirtual 277	java/io/DataOutputStream:writeUTF	(Ljava/lang/String;)V
    //   76: aload_2
    //   77: invokestatic 282	com/flurry/sdk/jo:a	()Lcom/flurry/sdk/jo;
    //   80: invokevirtual 284	com/flurry/sdk/jo:e	()Ljava/lang/String;
    //   83: invokevirtual 277	java/io/DataOutputStream:writeUTF	(Ljava/lang/String;)V
    //   86: aload_2
    //   87: invokestatic 289	com/flurry/sdk/jt:a	()I
    //   90: invokevirtual 264	java/io/DataOutputStream:writeShort	(I)V
    //   93: aload_2
    //   94: iconst_3
    //   95: invokevirtual 264	java/io/DataOutputStream:writeShort	(I)V
    //   98: aload_2
    //   99: invokestatic 282	com/flurry/sdk/jo:a	()Lcom/flurry/sdk/jo;
    //   102: invokevirtual 290	com/flurry/sdk/jo:d	()Ljava/lang/String;
    //   105: invokevirtual 277	java/io/DataOutputStream:writeUTF	(Ljava/lang/String;)V
    //   108: aload_2
    //   109: invokestatic 295	com/flurry/sdk/jf:a	()Lcom/flurry/sdk/jf;
    //   112: invokevirtual 297	com/flurry/sdk/jf:e	()Z
    //   115: invokevirtual 300	java/io/DataOutputStream:writeBoolean	(Z)V
    //   118: new 119	java/util/ArrayList
    //   121: dup
    //   122: invokespecial 120	java/util/ArrayList:<init>	()V
    //   125: astore_1
    //   126: invokestatic 295	com/flurry/sdk/jf:a	()Lcom/flurry/sdk/jf;
    //   129: invokevirtual 303	com/flurry/sdk/jf:h	()Ljava/util/Map;
    //   132: invokeinterface 309 1 0
    //   137: invokeinterface 315 1 0
    //   142: astore 4
    //   144: aload 4
    //   146: invokeinterface 320 1 0
    //   151: ifeq +143 -> 294
    //   154: aload 4
    //   156: invokeinterface 323 1 0
    //   161: checkcast 325	java/util/Map$Entry
    //   164: astore 5
    //   166: new 327	com/flurry/sdk/hu
    //   169: dup
    //   170: invokespecial 328	com/flurry/sdk/hu:<init>	()V
    //   173: astore 6
    //   175: aload 6
    //   177: aload 5
    //   179: invokeinterface 331 1 0
    //   184: checkcast 333	com/flurry/sdk/jn
    //   187: getfield 336	com/flurry/sdk/jn:d	I
    //   190: putfield 338	com/flurry/sdk/hu:a	I
    //   193: aload 5
    //   195: invokeinterface 331 1 0
    //   200: checkcast 333	com/flurry/sdk/jn
    //   203: getfield 340	com/flurry/sdk/jn:e	Z
    //   206: ifeq +67 -> 273
    //   209: aload 6
    //   211: new 170	java/lang/String
    //   214: dup
    //   215: aload 5
    //   217: invokeinterface 343 1 0
    //   222: checkcast 345	[B
    //   225: invokespecial 346	java/lang/String:<init>	([B)V
    //   228: putfield 347	com/flurry/sdk/hu:b	Ljava/lang/String;
    //   231: aload_1
    //   232: aload 6
    //   234: invokeinterface 159 2 0
    //   239: pop
    //   240: goto -96 -> 144
    //   243: astore_3
    //   244: aload_2
    //   245: astore_1
    //   246: aload_3
    //   247: astore_2
    //   248: bipush 6
    //   250: getstatic 31	com/flurry/sdk/io:b	Ljava/lang/String;
    //   253: ldc_w 349
    //   256: aload_2
    //   257: invokestatic 352	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   260: aload_2
    //   261: athrow
    //   262: astore_3
    //   263: aload_1
    //   264: astore_2
    //   265: aload_3
    //   266: astore_1
    //   267: aload_2
    //   268: invokestatic 261	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   271: aload_1
    //   272: athrow
    //   273: aload 6
    //   275: aload 5
    //   277: invokeinterface 343 1 0
    //   282: checkcast 345	[B
    //   285: invokestatic 354	com/flurry/sdk/lt:b	([B)Ljava/lang/String;
    //   288: putfield 347	com/flurry/sdk/hu:b	Ljava/lang/String;
    //   291: goto -60 -> 231
    //   294: aload_2
    //   295: aload_1
    //   296: invokeinterface 357 1 0
    //   301: invokevirtual 264	java/io/DataOutputStream:writeShort	(I)V
    //   304: aload_1
    //   305: invokeinterface 358 1 0
    //   310: astore_1
    //   311: aload_1
    //   312: invokeinterface 320 1 0
    //   317: ifeq +49 -> 366
    //   320: aload_1
    //   321: invokeinterface 323 1 0
    //   326: checkcast 327	com/flurry/sdk/hu
    //   329: astore 4
    //   331: aload_2
    //   332: aload 4
    //   334: getfield 338	com/flurry/sdk/hu:a	I
    //   337: invokevirtual 264	java/io/DataOutputStream:writeShort	(I)V
    //   340: aload 4
    //   342: getfield 347	com/flurry/sdk/hu:b	Ljava/lang/String;
    //   345: invokevirtual 361	java/lang/String:getBytes	()[B
    //   348: astore 4
    //   350: aload_2
    //   351: aload 4
    //   353: arraylength
    //   354: invokevirtual 264	java/io/DataOutputStream:writeShort	(I)V
    //   357: aload_2
    //   358: aload 4
    //   360: invokevirtual 364	java/io/DataOutputStream:write	([B)V
    //   363: goto -52 -> 311
    //   366: aload_2
    //   367: bipush 6
    //   369: invokevirtual 264	java/io/DataOutputStream:writeShort	(I)V
    //   372: aload_2
    //   373: getstatic 369	com/flurry/sdk/ih:b	Lcom/flurry/sdk/ih;
    //   376: invokevirtual 370	com/flurry/sdk/ih:a	()I
    //   379: invokevirtual 264	java/io/DataOutputStream:writeShort	(I)V
    //   382: aload_2
    //   383: getstatic 375	android/os/Build:MODEL	Ljava/lang/String;
    //   386: invokevirtual 277	java/io/DataOutputStream:writeUTF	(Ljava/lang/String;)V
    //   389: aload_2
    //   390: getstatic 377	com/flurry/sdk/ih:c	Lcom/flurry/sdk/ih;
    //   393: invokevirtual 370	com/flurry/sdk/ih:a	()I
    //   396: invokevirtual 264	java/io/DataOutputStream:writeShort	(I)V
    //   399: aload_2
    //   400: getstatic 380	android/os/Build:BOARD	Ljava/lang/String;
    //   403: invokevirtual 277	java/io/DataOutputStream:writeUTF	(Ljava/lang/String;)V
    //   406: aload_2
    //   407: getstatic 382	com/flurry/sdk/ih:d	Lcom/flurry/sdk/ih;
    //   410: invokevirtual 370	com/flurry/sdk/ih:a	()I
    //   413: invokevirtual 264	java/io/DataOutputStream:writeShort	(I)V
    //   416: aload_2
    //   417: getstatic 385	android/os/Build:ID	Ljava/lang/String;
    //   420: invokevirtual 277	java/io/DataOutputStream:writeUTF	(Ljava/lang/String;)V
    //   423: aload_2
    //   424: getstatic 387	com/flurry/sdk/ih:e	Lcom/flurry/sdk/ih;
    //   427: invokevirtual 370	com/flurry/sdk/ih:a	()I
    //   430: invokevirtual 264	java/io/DataOutputStream:writeShort	(I)V
    //   433: aload_2
    //   434: getstatic 390	android/os/Build:DEVICE	Ljava/lang/String;
    //   437: invokevirtual 277	java/io/DataOutputStream:writeUTF	(Ljava/lang/String;)V
    //   440: aload_2
    //   441: getstatic 392	com/flurry/sdk/ih:f	Lcom/flurry/sdk/ih;
    //   444: invokevirtual 370	com/flurry/sdk/ih:a	()I
    //   447: invokevirtual 264	java/io/DataOutputStream:writeShort	(I)V
    //   450: aload_2
    //   451: getstatic 395	android/os/Build:PRODUCT	Ljava/lang/String;
    //   454: invokevirtual 277	java/io/DataOutputStream:writeUTF	(Ljava/lang/String;)V
    //   457: aload_2
    //   458: getstatic 397	com/flurry/sdk/ih:g	Lcom/flurry/sdk/ih;
    //   461: invokevirtual 370	com/flurry/sdk/ih:a	()I
    //   464: invokevirtual 264	java/io/DataOutputStream:writeShort	(I)V
    //   467: aload_2
    //   468: getstatic 402	android/os/Build$VERSION:RELEASE	Ljava/lang/String;
    //   471: invokevirtual 277	java/io/DataOutputStream:writeUTF	(Ljava/lang/String;)V
    //   474: aload_2
    //   475: aload_0
    //   476: getfield 44	com/flurry/sdk/io:e	Ljava/util/List;
    //   479: invokeinterface 357 1 0
    //   484: invokevirtual 264	java/io/DataOutputStream:writeShort	(I)V
    //   487: aload_0
    //   488: getfield 44	com/flurry/sdk/io:e	Ljava/util/List;
    //   491: invokeinterface 358 1 0
    //   496: astore_1
    //   497: aload_1
    //   498: invokeinterface 320 1 0
    //   503: ifeq +22 -> 525
    //   506: aload_2
    //   507: aload_1
    //   508: invokeinterface 323 1 0
    //   513: checkcast 146	com/flurry/sdk/ip
    //   516: invokevirtual 404	com/flurry/sdk/ip:a	()[B
    //   519: invokevirtual 364	java/io/DataOutputStream:write	([B)V
    //   522: goto -25 -> 497
    //   525: aload_3
    //   526: invokevirtual 258	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   529: astore_1
    //   530: new 406	java/util/zip/CRC32
    //   533: dup
    //   534: invokespecial 407	java/util/zip/CRC32:<init>	()V
    //   537: astore 4
    //   539: aload 4
    //   541: aload_1
    //   542: invokevirtual 410	java/util/zip/CRC32:update	([B)V
    //   545: aload_2
    //   546: aload 4
    //   548: invokevirtual 412	java/util/zip/CRC32:getValue	()J
    //   551: l2i
    //   552: invokevirtual 415	java/io/DataOutputStream:writeInt	(I)V
    //   555: aload_3
    //   556: invokevirtual 258	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   559: astore_1
    //   560: aload_2
    //   561: invokestatic 261	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   564: aload_1
    //   565: areturn
    //   566: astore_1
    //   567: aconst_null
    //   568: astore_2
    //   569: goto -302 -> 267
    //   572: astore_2
    //   573: goto -325 -> 248
    //   576: astore_1
    //   577: goto -310 -> 267
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	580	0	this	io
    //   1	564	1	localObject1	Object
    //   566	1	1	localObject2	Object
    //   576	1	1	localObject3	Object
    //   18	551	2	localObject4	Object
    //   572	1	2	localIOException1	IOException
    //   9	30	3	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   243	4	3	localIOException2	IOException
    //   262	294	3	localObject5	Object
    //   142	405	4	localObject6	Object
    //   164	112	5	localEntry	java.util.Map.Entry
    //   173	101	6	localhu	hu
    // Exception table:
    //   from	to	target	type
    //   19	38	243	java/io/IOException
    //   38	43	243	java/io/IOException
    //   49	144	243	java/io/IOException
    //   144	231	243	java/io/IOException
    //   231	240	243	java/io/IOException
    //   273	291	243	java/io/IOException
    //   294	311	243	java/io/IOException
    //   311	363	243	java/io/IOException
    //   366	497	243	java/io/IOException
    //   497	522	243	java/io/IOException
    //   525	560	243	java/io/IOException
    //   248	262	262	finally
    //   2	19	566	finally
    //   2	19	572	java/io/IOException
    //   19	38	576	finally
    //   38	43	576	finally
    //   49	144	576	finally
    //   144	231	576	finally
    //   231	240	576	finally
    //   273	291	576	finally
    //   294	311	576	finally
    //   311	363	576	finally
    //   366	497	576	finally
    //   497	522	576	finally
    //   525	560	576	finally
  }
  
  public void c()
  {
    try
    {
      a(b());
      return;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        kg.a(6, b, "Report not send due to exception in generate data");
      }
    }
    finally {}
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\io.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */