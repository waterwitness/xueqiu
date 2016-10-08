package com.sleepycat.b.i.e;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.g.aa;
import com.sleepycat.b.g.am;
import com.sleepycat.b.g.u;
import com.sleepycat.b.p.j;
import java.nio.ByteBuffer;

final class b
  extends u
{
  private final am k;
  
  static
  {
    if (!a.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      j = bool;
      return;
    }
  }
  
  b(int paramInt, ad paramad)
  {
    super(paramInt, paramad);
    this.k = paramad.w;
  }
  
  private boolean a(long paramLong1, long paramLong2)
  {
    aa localaa2 = null;
    aa localaa1 = localaa2;
    try
    {
      long l = j.a(paramLong1, paramLong2);
      localaa1 = localaa2;
      localaa2 = this.k.g(l);
      if (localaa2 == null) {
        return false;
      }
      localaa1 = localaa2;
      ByteBuffer localByteBuffer = localaa2.a.duplicate();
      localaa1 = localaa2;
      if (localByteBuffer.position() != 0)
      {
        localaa1 = localaa2;
        localByteBuffer.flip();
      }
      localaa1 = localaa2;
      localByteBuffer.position((int)(paramLong2 - j.e(localaa2.b)));
      localaa1 = localaa2;
      localByteBuffer = localByteBuffer.slice();
      localaa1 = localaa2;
      byte[] arrayOfByte = localByteBuffer.array();
      localaa1 = localaa2;
      int m = localByteBuffer.limit();
      int i = m;
      localaa1 = localaa2;
      if (m > this.d.capacity())
      {
        localaa1 = localaa2;
        i = this.d.capacity();
      }
      localaa1 = localaa2;
      this.d.clear();
      localaa1 = localaa2;
      this.d.put(arrayOfByte, localByteBuffer.arrayOffset(), i);
      localaa1 = localaa2;
      this.d.flip();
      localaa1 = localaa2;
      a(paramLong1, 8);
      localaa1 = localaa2;
      this.b = paramLong2;
      localaa1 = localaa2;
      this.c = (this.b + this.d.limit());
      localaa1 = localaa2;
      this.d.position(0);
      return true;
    }
    finally
    {
      if (localaa1 != null) {
        localaa1.a();
      }
    }
  }
  
  public final void a(long paramLong1, long paramLong2, long paramLong3, boolean paramBoolean)
  {
    if (!a(paramLong1, paramLong3)) {
      super.a(paramLong1, paramLong2, paramLong3, paramBoolean);
    }
  }
  
  /* Error */
  protected final boolean a(boolean paramBoolean, int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: getstatic 20	com/sleepycat/b/i/e/b:j	Z
    //   6: ifne +15 -> 21
    //   9: iload_1
    //   10: ifeq +11 -> 21
    //   13: new 120	java/lang/AssertionError
    //   16: dup
    //   17: invokespecial 122	java/lang/AssertionError:<init>	()V
    //   20: athrow
    //   21: aload_0
    //   22: iload_2
    //   23: invokevirtual 125	com/sleepycat/b/i/e/b:b	(I)V
    //   26: aload_0
    //   27: aload_0
    //   28: getfield 127	com/sleepycat/b/g/u:a	J
    //   31: aload_0
    //   32: getfield 110	com/sleepycat/b/i/e/b:c	J
    //   35: invokespecial 113	com/sleepycat/b/i/e/b:a	(JJ)Z
    //   38: ifeq +5 -> 43
    //   41: iconst_0
    //   42: ireturn
    //   43: aload 6
    //   45: astore_3
    //   46: aload_0
    //   47: getfield 131	com/sleepycat/b/i/e/b:f	Lcom/sleepycat/b/g/m;
    //   50: aload_0
    //   51: getfield 127	com/sleepycat/b/g/u:a	J
    //   54: invokevirtual 136	com/sleepycat/b/g/m:f	(J)Lcom/sleepycat/b/g/j;
    //   57: astore 4
    //   59: aload_0
    //   60: aload_0
    //   61: getfield 110	com/sleepycat/b/i/e/b:c	J
    //   64: putfield 107	com/sleepycat/b/i/e/b:b	J
    //   67: aload_0
    //   68: aload 4
    //   70: aload_0
    //   71: getfield 107	com/sleepycat/b/i/e/b:b	J
    //   74: invokevirtual 139	com/sleepycat/b/i/e/b:a	(Lcom/sleepycat/b/g/j;J)Z
    //   77: istore 9
    //   79: iload 9
    //   81: ifeq +15 -> 96
    //   84: aload 4
    //   86: ifnull -45 -> 41
    //   89: aload 4
    //   91: invokevirtual 142	com/sleepycat/b/g/j:a	()V
    //   94: iconst_0
    //   95: ireturn
    //   96: aload 4
    //   98: invokevirtual 142	com/sleepycat/b/g/j:a	()V
    //   101: iload_1
    //   102: ifeq +61 -> 163
    //   105: aload 6
    //   107: astore_3
    //   108: new 144	com/sleepycat/b/g/t
    //   111: dup
    //   112: invokespecial 145	com/sleepycat/b/g/t:<init>	()V
    //   115: athrow
    //   116: astore 4
    //   118: aconst_null
    //   119: astore_3
    //   120: aload 4
    //   122: invokevirtual 148	java/io/IOException:printStackTrace	()V
    //   125: new 150	java/lang/StringBuilder
    //   128: dup
    //   129: ldc -104
    //   131: invokespecial 155	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   134: aload_0
    //   135: getfield 127	com/sleepycat/b/g/u:a	J
    //   138: invokevirtual 159	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   141: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   144: aload 4
    //   146: invokestatic 168	com/sleepycat/b/aa:a	(Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;
    //   149: athrow
    //   150: astore 4
    //   152: aload_3
    //   153: ifnull +7 -> 160
    //   156: aload_3
    //   157: invokevirtual 142	com/sleepycat/b/g/j:a	()V
    //   160: aload 4
    //   162: athrow
    //   163: aload 6
    //   165: astore_3
    //   166: aload_0
    //   167: getfield 131	com/sleepycat/b/i/e/b:f	Lcom/sleepycat/b/g/m;
    //   170: aload_0
    //   171: getfield 127	com/sleepycat/b/g/u:a	J
    //   174: iconst_1
    //   175: invokevirtual 171	com/sleepycat/b/g/m:a	(JZ)Ljava/lang/Long;
    //   178: astore 4
    //   180: aload 4
    //   182: astore 5
    //   184: aload 4
    //   186: ifnonnull +17 -> 203
    //   189: aload 6
    //   191: astore_3
    //   192: aload_0
    //   193: getfield 127	com/sleepycat/b/g/u:a	J
    //   196: lconst_1
    //   197: ladd
    //   198: invokestatic 177	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   201: astore 5
    //   203: aload 6
    //   205: astore_3
    //   206: aload 5
    //   208: invokevirtual 181	java/lang/Long:longValue	()J
    //   211: lstore 7
    //   213: aload 6
    //   215: astore_3
    //   216: invokestatic 184	com/sleepycat/b/g/m:h	()I
    //   219: pop
    //   220: aload 6
    //   222: astore_3
    //   223: aload_0
    //   224: lload 7
    //   226: ldc2_w 185
    //   229: invokespecial 113	com/sleepycat/b/i/e/b:a	(JJ)Z
    //   232: istore_1
    //   233: iload_1
    //   234: ifeq +17 -> 251
    //   237: iconst_0
    //   238: ifeq +11 -> 249
    //   241: new 188	java/lang/NullPointerException
    //   244: dup
    //   245: invokespecial 189	java/lang/NullPointerException:<init>	()V
    //   248: athrow
    //   249: iconst_1
    //   250: ireturn
    //   251: aload 6
    //   253: astore_3
    //   254: aload_0
    //   255: getfield 131	com/sleepycat/b/i/e/b:f	Lcom/sleepycat/b/g/m;
    //   258: aload 5
    //   260: invokevirtual 181	java/lang/Long:longValue	()J
    //   263: invokevirtual 136	com/sleepycat/b/g/m:f	(J)Lcom/sleepycat/b/g/j;
    //   266: astore 4
    //   268: aload 4
    //   270: astore_3
    //   271: aload_0
    //   272: aload 5
    //   274: invokevirtual 181	java/lang/Long:longValue	()J
    //   277: aload 4
    //   279: getfield 192	com/sleepycat/b/g/j:c	I
    //   282: invokevirtual 106	com/sleepycat/b/i/e/b:a	(JI)V
    //   285: aload 4
    //   287: astore_3
    //   288: aload_0
    //   289: lconst_0
    //   290: putfield 107	com/sleepycat/b/i/e/b:b	J
    //   293: aload 4
    //   295: astore_3
    //   296: aload_0
    //   297: aload 4
    //   299: lconst_0
    //   300: invokevirtual 139	com/sleepycat/b/i/e/b:a	(Lcom/sleepycat/b/g/j;J)Z
    //   303: istore_1
    //   304: aload 4
    //   306: astore_3
    //   307: getstatic 20	com/sleepycat/b/i/e/b:j	Z
    //   310: ifne +32 -> 342
    //   313: iload_1
    //   314: ifne +28 -> 342
    //   317: aload 4
    //   319: astore_3
    //   320: new 120	java/lang/AssertionError
    //   323: dup
    //   324: ldc -62
    //   326: invokespecial 197	java/lang/AssertionError:<init>	(Ljava/lang/Object;)V
    //   329: athrow
    //   330: astore 5
    //   332: aload 4
    //   334: astore_3
    //   335: aload 5
    //   337: astore 4
    //   339: goto -219 -> 120
    //   342: aload 4
    //   344: ifnull +8 -> 352
    //   347: aload 4
    //   349: invokevirtual 142	com/sleepycat/b/g/j:a	()V
    //   352: iconst_1
    //   353: ireturn
    //   354: astore 4
    //   356: goto -204 -> 152
    //   359: astore 5
    //   361: aload 4
    //   363: astore_3
    //   364: aload 5
    //   366: astore 4
    //   368: goto -216 -> 152
    //   371: astore 5
    //   373: aload 4
    //   375: astore_3
    //   376: aload 5
    //   378: astore 4
    //   380: goto -260 -> 120
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	383	0	this	b
    //   0	383	1	paramBoolean	boolean
    //   0	383	2	paramInt	int
    //   45	331	3	localObject1	Object
    //   57	40	4	localj	com.sleepycat.b.g.j
    //   116	29	4	localIOException1	java.io.IOException
    //   150	11	4	localObject2	Object
    //   178	170	4	localObject3	Object
    //   354	8	4	localObject4	Object
    //   366	13	4	localObject5	Object
    //   182	91	5	localObject6	Object
    //   330	6	5	localIOException2	java.io.IOException
    //   359	6	5	localObject7	Object
    //   371	6	5	localIOException3	java.io.IOException
    //   1	251	6	localObject8	Object
    //   211	14	7	l	long
    //   77	3	9	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   46	59	116	java/io/IOException
    //   108	116	116	java/io/IOException
    //   166	180	116	java/io/IOException
    //   192	203	116	java/io/IOException
    //   206	213	116	java/io/IOException
    //   216	220	116	java/io/IOException
    //   223	233	116	java/io/IOException
    //   254	268	116	java/io/IOException
    //   120	150	150	finally
    //   271	285	330	java/io/IOException
    //   288	293	330	java/io/IOException
    //   296	304	330	java/io/IOException
    //   307	313	330	java/io/IOException
    //   320	330	330	java/io/IOException
    //   46	59	354	finally
    //   108	116	354	finally
    //   166	180	354	finally
    //   192	203	354	finally
    //   206	213	354	finally
    //   216	220	354	finally
    //   223	233	354	finally
    //   254	268	354	finally
    //   271	285	354	finally
    //   288	293	354	finally
    //   296	304	354	finally
    //   307	313	354	finally
    //   320	330	354	finally
    //   59	79	359	finally
    //   96	101	359	finally
    //   59	79	371	java/io/IOException
    //   96	101	371	java/io/IOException
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\e\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */