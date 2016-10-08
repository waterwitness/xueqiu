package com.sleepycat.b.l;

import com.sleepycat.b.aa;
import com.sleepycat.b.c.i;
import com.sleepycat.b.f.d;
import com.sleepycat.b.g.at;
import com.sleepycat.b.p.o;
import com.sleepycat.b.p.z;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.ListIterator;

public final class ah
  implements at
{
  private static af j;
  public i a;
  public e b;
  public int c;
  public com.sleepycat.b.f.f d;
  private com.sleepycat.b.p.ai f;
  private o g;
  private z h;
  private final ThreadLocal<am> i = new ThreadLocal();
  
  static
  {
    if (!ah.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      e = bool;
      j = new af();
      return;
    }
  }
  
  public ah()
  {
    b(null);
    this.c = 0;
  }
  
  public ah(i parami)
  {
    b(parami);
    a(parami);
  }
  
  private j a(j paramj, byte[] paramArrayOfByte, com.sleepycat.b.a parama)
  {
    if (paramj != null) {
      for (;;)
      {
        try
        {
          j localj = b(paramj, paramArrayOfByte, parama);
          return localj;
        }
        catch (af localaf)
        {
          paramj = c(paramj, paramArrayOfByte, parama);
        }
      }
    }
    return null;
  }
  
  private j a(j paramj, byte[] paramArrayOfByte, aj paramaj, int paramInt, b paramb, com.sleepycat.b.a parama, Comparator<byte[]> paramComparator)
  {
    if ((!e) && (paramj != null) && (!paramj.I()) && (!paramj.F())) {
      throw new AssertionError();
    }
    int k = 0;
    while (k < 2) {
      try
      {
        paramj = b(paramj, paramArrayOfByte, paramaj, paramInt, paramb, parama, paramComparator);
        return paramj;
      }
      catch (com.sleepycat.b.p.ae paramj)
      {
        paramj = b(parama, true);
        k += 1;
      }
    }
    throw aa.c("searchSubTreeInternal should have completed in two tries");
  }
  
  public static void a(j paramj, byte[] paramArrayOfByte, ArrayList<ak> paramArrayList)
  {
    Object localObject = null;
    if ((!e) && (paramj == null)) {
      throw new AssertionError();
    }
    if ((!e) && (paramArrayOfByte == null)) {
      throw new AssertionError();
    }
    if ((!e) && (!paramj.F())) {
      throw new AssertionError();
    }
    j localj2 = null;
    j localj1 = paramj;
    paramj = (j)localObject;
    for (;;)
    {
      if (localj1.f != 0) {
        if (localj1.f > 1)
        {
          paramj = localj1;
          int k = localj1.a(paramArrayOfByte, false, false);
          if ((!e) && (k < 0)) {
            throw new AssertionError();
          }
          localj2 = (j)localj1.q(k);
          localj2.a(com.sleepycat.b.a.c);
          paramArrayList.add(new ak(localj1, localj2, k));
          if (!localj2.f()) {
            break label268;
          }
        }
      }
      for (;;)
      {
        if ((localj2 != null) && (localj2.f()))
        {
          if (localj2.f != 0) {
            throw ad.a;
          }
          if (((a)localj2).p() > 0) {
            throw f.a;
          }
        }
        if (paramj != null)
        {
          paramArrayOfByte = paramArrayList.listIterator(paramArrayList.size());
          while (paramArrayOfByte.hasPrevious())
          {
            paramArrayList = (ak)paramArrayOfByte.previous();
            if (paramArrayList.a == paramj) {
              break;
            }
            paramArrayList.b.C();
            paramArrayOfByte.remove();
          }
        }
        a(paramArrayList);
        paramArrayList.clear();
        return;
        break;
      }
      label268:
      localj1 = localj2;
    }
  }
  
  public static void a(ArrayList<ak> paramArrayList)
  {
    paramArrayList = paramArrayList.listIterator(paramArrayList.size());
    while (paramArrayList.hasPrevious()) {
      ((ak)paramArrayList.previous()).b.C();
    }
  }
  
  private j b(com.sleepycat.b.a parama, boolean paramBoolean)
  {
    this.d.c();
    try
    {
      parama = a(parama, paramBoolean);
      return parama;
    }
    finally
    {
      this.d.d();
    }
  }
  
  /* Error */
  private j b(j paramj, byte[] paramArrayOfByte, com.sleepycat.b.a parama)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: iconst_0
    //   4: istore 6
    //   6: aload_1
    //   7: invokevirtual 77	com/sleepycat/b/l/j:F	()Z
    //   10: istore 9
    //   12: aload_1
    //   13: astore 4
    //   15: aload 4
    //   17: getfield 96	com/sleepycat/b/l/j:f	I
    //   20: ifne +6 -> 26
    //   23: aload 4
    //   25: areturn
    //   26: aload 4
    //   28: aload_2
    //   29: iconst_0
    //   30: iconst_0
    //   31: aconst_null
    //   32: invokevirtual 189	com/sleepycat/b/l/j:a	([BZZLjava/util/Comparator;)I
    //   35: istore 7
    //   37: getstatic 37	com/sleepycat/b/l/ah:e	Z
    //   40: ifne +47 -> 87
    //   43: iload 7
    //   45: ifge +42 -> 87
    //   48: new 79	java/lang/AssertionError
    //   51: dup
    //   52: invokespecial 80	java/lang/AssertionError:<init>	()V
    //   55: athrow
    //   56: astore_1
    //   57: aload 4
    //   59: astore_2
    //   60: aload 5
    //   62: ifnull +13 -> 75
    //   65: iload 6
    //   67: ifeq +8 -> 75
    //   70: aload 5
    //   72: invokevirtual 164	com/sleepycat/b/l/j:C	()V
    //   75: aload_2
    //   76: aload 5
    //   78: if_acmpeq +7 -> 85
    //   81: aload_2
    //   82: invokevirtual 164	com/sleepycat/b/l/j:C	()V
    //   85: aload_1
    //   86: athrow
    //   87: aload 4
    //   89: iload 7
    //   91: invokevirtual 191	com/sleepycat/b/l/j:g	(I)Lcom/sleepycat/b/l/ac;
    //   94: checkcast 72	com/sleepycat/b/l/j
    //   97: astore_1
    //   98: iload 9
    //   100: ifeq +59 -> 159
    //   103: aload_1
    //   104: aload_3
    //   105: invokevirtual 111	com/sleepycat/b/l/j:a	(Lcom/sleepycat/b/a;)V
    //   108: iconst_1
    //   109: istore 8
    //   111: iconst_1
    //   112: istore 7
    //   114: iload 8
    //   116: istore 6
    //   118: aload_1
    //   119: invokevirtual 194	com/sleepycat/b/l/j:P	()Z
    //   122: ifeq +45 -> 167
    //   125: iload 8
    //   127: istore 6
    //   129: aload_0
    //   130: getfield 196	com/sleepycat/b/l/ah:a	Lcom/sleepycat/b/c/i;
    //   133: getfield 201	com/sleepycat/b/c/i:c	Lcom/sleepycat/b/c/ad;
    //   136: aload_1
    //   137: invokevirtual 206	com/sleepycat/b/c/ad:a	(Lcom/sleepycat/b/l/j;)V
    //   140: iload 8
    //   142: istore 6
    //   144: aload_1
    //   145: invokevirtual 194	com/sleepycat/b/l/j:P	()Z
    //   148: ifeq +19 -> 167
    //   151: iload 8
    //   153: istore 6
    //   155: getstatic 44	com/sleepycat/b/l/ah:j	Lcom/sleepycat/b/l/af;
    //   158: athrow
    //   159: aload_1
    //   160: aload_3
    //   161: invokevirtual 208	com/sleepycat/b/l/j:b	(Lcom/sleepycat/b/a;)V
    //   164: goto -56 -> 108
    //   167: iload 8
    //   169: istore 6
    //   171: aload 4
    //   173: invokevirtual 164	com/sleepycat/b/l/j:C	()V
    //   176: aload_1
    //   177: invokevirtual 124	com/sleepycat/b/l/j:f	()Z
    //   180: istore 10
    //   182: iload 10
    //   184: ifne +30 -> 214
    //   187: aload_1
    //   188: astore 5
    //   190: aload_1
    //   191: astore 4
    //   193: iload 7
    //   195: istore 6
    //   197: goto -182 -> 15
    //   200: astore_3
    //   201: aload_1
    //   202: astore 5
    //   204: aload_1
    //   205: astore_2
    //   206: aload_3
    //   207: astore_1
    //   208: iconst_1
    //   209: istore 6
    //   211: goto -151 -> 60
    //   214: aload_1
    //   215: areturn
    //   216: astore_2
    //   217: aload_1
    //   218: astore 5
    //   220: aload_2
    //   221: astore_1
    //   222: aload 4
    //   224: astore_2
    //   225: goto -165 -> 60
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	228	0	this	ah
    //   0	228	1	paramj	j
    //   0	228	2	paramArrayOfByte	byte[]
    //   0	228	3	parama	com.sleepycat.b.a
    //   13	210	4	localj1	j
    //   1	218	5	localj2	j
    //   4	206	6	k	int
    //   35	159	7	m	int
    //   109	59	8	n	int
    //   10	89	9	bool1	boolean
    //   180	3	10	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   15	23	56	finally
    //   26	43	56	finally
    //   48	56	56	finally
    //   87	98	56	finally
    //   176	182	200	finally
    //   103	108	216	finally
    //   118	125	216	finally
    //   129	140	216	finally
    //   144	151	216	finally
    //   155	159	216	finally
    //   159	164	216	finally
    //   171	176	216	finally
  }
  
  /* Error */
  private j b(j paramj, byte[] paramArrayOfByte, aj paramaj, int paramInt, b paramb, com.sleepycat.b.a parama, Comparator<byte[]> paramComparator)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +7 -> 8
    //   4: aconst_null
    //   5: astore_2
    //   6: aload_2
    //   7: areturn
    //   8: aload_3
    //   9: getstatic 215	com/sleepycat/b/l/aj:b	Lcom/sleepycat/b/l/aj;
    //   12: if_acmpeq +10 -> 22
    //   15: aload_3
    //   16: getstatic 217	com/sleepycat/b/l/aj:c	Lcom/sleepycat/b/l/aj;
    //   19: if_acmpne +13 -> 32
    //   22: aload_2
    //   23: ifnull +9 -> 32
    //   26: ldc -37
    //   28: invokestatic 92	com/sleepycat/b/aa:c	(Ljava/lang/String;)Lcom/sleepycat/b/aa;
    //   31: athrow
    //   32: getstatic 37	com/sleepycat/b/l/ah:e	Z
    //   35: ifne +18 -> 53
    //   38: aload_1
    //   39: invokevirtual 222	com/sleepycat/b/l/j:E	()Z
    //   42: ifne +11 -> 53
    //   45: new 79	java/lang/AssertionError
    //   48: dup
    //   49: invokespecial 80	java/lang/AssertionError:<init>	()V
    //   52: athrow
    //   53: aload 5
    //   55: ifnull +15 -> 70
    //   58: aload 5
    //   60: iconst_1
    //   61: putfield 226	com/sleepycat/b/l/b:a	Z
    //   64: aload 5
    //   66: iconst_1
    //   67: putfield 228	com/sleepycat/b/l/b:b	Z
    //   70: aconst_null
    //   71: astore 10
    //   73: aconst_null
    //   74: astore 9
    //   76: iconst_0
    //   77: istore 14
    //   79: iconst_0
    //   80: istore 15
    //   82: aload_1
    //   83: invokevirtual 77	com/sleepycat/b/l/j:F	()Z
    //   86: ifne +70 -> 156
    //   89: iconst_1
    //   90: istore 18
    //   92: aload_0
    //   93: invokespecial 231	com/sleepycat/b/l/ah:g	()Lcom/sleepycat/b/l/am;
    //   96: astore 12
    //   98: aload_1
    //   99: astore 8
    //   101: aload 9
    //   103: astore_1
    //   104: aload 12
    //   106: ifnull +15 -> 121
    //   109: iload 15
    //   111: istore 16
    //   113: aload_1
    //   114: astore 11
    //   116: aload 8
    //   118: invokevirtual 234	com/sleepycat/b/l/j:u	()V
    //   121: iload 15
    //   123: istore 16
    //   125: aload_1
    //   126: astore 11
    //   128: aload 8
    //   130: getfield 96	com/sleepycat/b/l/j:f	I
    //   133: istore 13
    //   135: iload 13
    //   137: ifne +25 -> 162
    //   140: aload_1
    //   141: ifnull +12 -> 153
    //   144: iload 15
    //   146: ifeq +7 -> 153
    //   149: aload_1
    //   150: invokevirtual 164	com/sleepycat/b/l/j:C	()V
    //   153: aload 8
    //   155: areturn
    //   156: iconst_0
    //   157: istore 18
    //   159: goto -67 -> 92
    //   162: iload 15
    //   164: istore 16
    //   166: aload_1
    //   167: astore 11
    //   169: aload_3
    //   170: getstatic 236	com/sleepycat/b/l/aj:a	Lcom/sleepycat/b/l/aj;
    //   173: if_acmpne +113 -> 286
    //   176: iload 15
    //   178: istore 16
    //   180: aload_1
    //   181: astore 11
    //   183: aload 8
    //   185: aload_2
    //   186: iconst_0
    //   187: iconst_0
    //   188: aload 7
    //   190: invokevirtual 189	com/sleepycat/b/l/j:a	([BZZLjava/util/Comparator;)I
    //   193: istore 17
    //   195: iload 15
    //   197: istore 16
    //   199: aload_1
    //   200: astore 11
    //   202: getstatic 37	com/sleepycat/b/l/ah:e	Z
    //   205: ifne +161 -> 366
    //   208: iload 17
    //   210: ifge +156 -> 366
    //   213: iload 15
    //   215: istore 16
    //   217: aload_1
    //   218: astore 11
    //   220: new 79	java/lang/AssertionError
    //   223: dup
    //   224: invokespecial 80	java/lang/AssertionError:<init>	()V
    //   227: athrow
    //   228: astore_1
    //   229: iload 16
    //   231: istore 4
    //   233: aload 8
    //   235: astore_3
    //   236: iload 14
    //   238: istore 13
    //   240: aload 10
    //   242: astore_2
    //   243: aload 11
    //   245: astore 8
    //   247: aload_2
    //   248: ifnull +12 -> 260
    //   251: iload 13
    //   253: ifeq +7 -> 260
    //   256: aload_2
    //   257: invokevirtual 164	com/sleepycat/b/l/j:C	()V
    //   260: aload_3
    //   261: aload_2
    //   262: if_acmpeq +7 -> 269
    //   265: aload_3
    //   266: invokevirtual 164	com/sleepycat/b/l/j:C	()V
    //   269: aload 8
    //   271: ifnull +13 -> 284
    //   274: iload 4
    //   276: ifeq +8 -> 284
    //   279: aload 8
    //   281: invokevirtual 164	com/sleepycat/b/l/j:C	()V
    //   284: aload_1
    //   285: athrow
    //   286: iload 15
    //   288: istore 16
    //   290: aload_1
    //   291: astore 11
    //   293: aload_3
    //   294: getstatic 215	com/sleepycat/b/l/aj:b	Lcom/sleepycat/b/l/aj;
    //   297: if_acmpne +9 -> 306
    //   300: iconst_0
    //   301: istore 17
    //   303: goto -108 -> 195
    //   306: iload 15
    //   308: istore 16
    //   310: aload_1
    //   311: astore 11
    //   313: aload_3
    //   314: getstatic 217	com/sleepycat/b/l/aj:c	Lcom/sleepycat/b/l/aj;
    //   317: if_acmpne +22 -> 339
    //   320: iload 15
    //   322: istore 16
    //   324: aload_1
    //   325: astore 11
    //   327: aload 8
    //   329: getfield 96	com/sleepycat/b/l/j:f	I
    //   332: iconst_1
    //   333: isub
    //   334: istore 17
    //   336: goto -141 -> 195
    //   339: iload 15
    //   341: istore 16
    //   343: aload_1
    //   344: astore 11
    //   346: new 238	java/lang/StringBuilder
    //   349: dup
    //   350: ldc -16
    //   352: invokespecial 243	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   355: aload_3
    //   356: invokevirtual 247	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   359: invokevirtual 251	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   362: invokestatic 92	com/sleepycat/b/aa:c	(Ljava/lang/String;)Lcom/sleepycat/b/aa;
    //   365: athrow
    //   366: aload 5
    //   368: ifnull +53 -> 421
    //   371: iload 15
    //   373: istore 16
    //   375: aload_1
    //   376: astore 11
    //   378: iload 17
    //   380: aload 8
    //   382: getfield 96	com/sleepycat/b/l/j:f	I
    //   385: iconst_1
    //   386: isub
    //   387: if_icmpeq +16 -> 403
    //   390: iload 15
    //   392: istore 16
    //   394: aload_1
    //   395: astore 11
    //   397: aload 5
    //   399: iconst_0
    //   400: putfield 226	com/sleepycat/b/l/b:a	Z
    //   403: iload 17
    //   405: ifeq +16 -> 421
    //   408: iload 15
    //   410: istore 16
    //   412: aload_1
    //   413: astore 11
    //   415: aload 5
    //   417: iconst_0
    //   418: putfield 228	com/sleepycat/b/l/b:b	Z
    //   421: iload 15
    //   423: istore 13
    //   425: aload_1
    //   426: astore 9
    //   428: iload 18
    //   430: ifeq +107 -> 537
    //   433: iload 15
    //   435: istore 16
    //   437: aload_1
    //   438: astore 11
    //   440: iload 15
    //   442: istore 13
    //   444: aload_1
    //   445: astore 9
    //   447: aload 8
    //   449: iload 17
    //   451: invokevirtual 253	com/sleepycat/b/l/j:j	(I)Lcom/sleepycat/b/l/ac;
    //   454: ifnonnull +83 -> 537
    //   457: iload 15
    //   459: istore 16
    //   461: aload_1
    //   462: astore 11
    //   464: iload 15
    //   466: istore 13
    //   468: aload_1
    //   469: astore 9
    //   471: aload 8
    //   473: invokevirtual 255	com/sleepycat/b/l/j:e	()Z
    //   476: ifne +61 -> 537
    //   479: aload_1
    //   480: ifnonnull +14 -> 494
    //   483: iload 15
    //   485: istore 16
    //   487: aload_1
    //   488: astore 11
    //   490: getstatic 258	com/sleepycat/b/p/ae:a	Lcom/sleepycat/b/p/ae;
    //   493: athrow
    //   494: iload 15
    //   496: istore 16
    //   498: aload_1
    //   499: astore 11
    //   501: aload 8
    //   503: invokevirtual 164	com/sleepycat/b/l/j:C	()V
    //   506: iload 15
    //   508: istore 16
    //   510: aload_1
    //   511: astore 11
    //   513: aload 8
    //   515: aload 6
    //   517: invokevirtual 111	com/sleepycat/b/l/j:a	(Lcom/sleepycat/b/a;)V
    //   520: iload 15
    //   522: istore 16
    //   524: aload_1
    //   525: astore 11
    //   527: aload_1
    //   528: invokevirtual 164	com/sleepycat/b/l/j:C	()V
    //   531: iconst_0
    //   532: istore 13
    //   534: aconst_null
    //   535: astore 9
    //   537: iload 13
    //   539: istore 16
    //   541: aload 9
    //   543: astore 11
    //   545: aload 8
    //   547: iload 17
    //   549: invokevirtual 191	com/sleepycat/b/l/j:g	(I)Lcom/sleepycat/b/l/ac;
    //   552: checkcast 72	com/sleepycat/b/l/j
    //   555: astore_1
    //   556: iload 13
    //   558: istore 15
    //   560: aload 9
    //   562: ifnull +19 -> 581
    //   565: iload 13
    //   567: istore 16
    //   569: iload 14
    //   571: istore 13
    //   573: aload 9
    //   575: invokevirtual 164	com/sleepycat/b/l/j:C	()V
    //   578: iconst_0
    //   579: istore 15
    //   581: iload 18
    //   583: ifeq +89 -> 672
    //   586: iload 15
    //   588: istore 16
    //   590: iload 14
    //   592: istore 13
    //   594: aload_1
    //   595: aload 6
    //   597: invokevirtual 208	com/sleepycat/b/l/j:b	(Lcom/sleepycat/b/a;)V
    //   600: iconst_1
    //   601: istore 17
    //   603: iconst_1
    //   604: istore 14
    //   606: aload 12
    //   608: ifnull +15 -> 623
    //   611: iload 15
    //   613: istore 16
    //   615: iload 17
    //   617: istore 13
    //   619: aload_1
    //   620: invokevirtual 234	com/sleepycat/b/l/j:u	()V
    //   623: iload 18
    //   625: ifeq +64 -> 689
    //   628: iconst_1
    //   629: istore 13
    //   631: aload_1
    //   632: invokevirtual 124	com/sleepycat/b/l/j:f	()Z
    //   635: ifne +16 -> 651
    //   638: aload_1
    //   639: getfield 260	com/sleepycat/b/l/j:j	I
    //   642: istore 15
    //   644: iload 15
    //   646: iload 4
    //   648: if_icmpne +112 -> 760
    //   651: aload_1
    //   652: astore_2
    //   653: aload 8
    //   655: ifnull -649 -> 6
    //   658: aload_1
    //   659: astore_2
    //   660: iload 13
    //   662: ifeq -656 -> 6
    //   665: aload 8
    //   667: invokevirtual 164	com/sleepycat/b/l/j:C	()V
    //   670: aload_1
    //   671: areturn
    //   672: iload 15
    //   674: istore 16
    //   676: iload 14
    //   678: istore 13
    //   680: aload_1
    //   681: aload 6
    //   683: invokevirtual 111	com/sleepycat/b/l/j:a	(Lcom/sleepycat/b/a;)V
    //   686: goto -86 -> 600
    //   689: iload 15
    //   691: istore 16
    //   693: iload 17
    //   695: istore 13
    //   697: aload 8
    //   699: invokevirtual 164	com/sleepycat/b/l/j:C	()V
    //   702: iload 15
    //   704: istore 13
    //   706: aload 9
    //   708: astore 8
    //   710: goto -79 -> 631
    //   713: astore_2
    //   714: aload_0
    //   715: getfield 196	com/sleepycat/b/l/ah:a	Lcom/sleepycat/b/c/i;
    //   718: getfield 201	com/sleepycat/b/c/i:c	Lcom/sleepycat/b/c/ad;
    //   721: ldc_w 262
    //   724: ldc_w 264
    //   727: ldc_w 266
    //   730: aload_2
    //   731: invokestatic 271	com/sleepycat/b/p/w:a	(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   734: goto -465 -> 269
    //   737: astore 5
    //   739: aload_1
    //   740: astore_3
    //   741: iconst_1
    //   742: istore 14
    //   744: aload_1
    //   745: astore_2
    //   746: aload 5
    //   748: astore_1
    //   749: iload 13
    //   751: istore 4
    //   753: iload 14
    //   755: istore 13
    //   757: goto -510 -> 247
    //   760: aload 8
    //   762: astore 9
    //   764: aload_1
    //   765: astore 10
    //   767: aload_1
    //   768: astore 8
    //   770: iload 13
    //   772: istore 15
    //   774: aload 9
    //   776: astore_1
    //   777: goto -673 -> 104
    //   780: astore 5
    //   782: iload 16
    //   784: istore 4
    //   786: aload 8
    //   788: astore_3
    //   789: aload_1
    //   790: astore_2
    //   791: aload 5
    //   793: astore_1
    //   794: aload 9
    //   796: astore 8
    //   798: goto -551 -> 247
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	801	0	this	ah
    //   0	801	1	paramj	j
    //   0	801	2	paramArrayOfByte	byte[]
    //   0	801	3	paramaj	aj
    //   0	801	4	paramInt	int
    //   0	801	5	paramb	b
    //   0	801	6	parama	com.sleepycat.b.a
    //   0	801	7	paramComparator	Comparator<byte[]>
    //   99	698	8	localObject1	Object
    //   74	721	9	localObject2	Object
    //   71	695	10	localj	j
    //   114	430	11	localObject3	Object
    //   96	511	12	localam	am
    //   133	638	13	k	int
    //   77	677	14	m	int
    //   80	693	15	n	int
    //   111	672	16	i1	int
    //   193	501	17	i2	int
    //   90	534	18	i3	int
    // Exception table:
    //   from	to	target	type
    //   116	121	228	finally
    //   128	135	228	finally
    //   169	176	228	finally
    //   183	195	228	finally
    //   202	208	228	finally
    //   220	228	228	finally
    //   293	300	228	finally
    //   313	320	228	finally
    //   327	336	228	finally
    //   346	366	228	finally
    //   378	390	228	finally
    //   397	403	228	finally
    //   415	421	228	finally
    //   447	457	228	finally
    //   471	479	228	finally
    //   490	494	228	finally
    //   501	506	228	finally
    //   513	520	228	finally
    //   527	531	228	finally
    //   545	556	228	finally
    //   256	260	713	java/lang/Exception
    //   265	269	713	java/lang/Exception
    //   631	644	737	finally
    //   573	578	780	finally
    //   594	600	780	finally
    //   619	623	780	finally
    //   680	686	780	finally
    //   697	702	780	finally
  }
  
  private void b(i parami)
  {
    this.d = new com.sleepycat.b.f.f("RootLatch");
    this.b = null;
    this.a = parami;
    this.f = new com.sleepycat.b.p.ai("BTree", "Composition of btree, types and counts of nodes.");
    this.h = new z(this.f, com.sleepycat.b.c.a.h);
    this.g = new o(this.f, com.sleepycat.b.c.a.i);
  }
  
  /* Error */
  private j c(j paramj, byte[] paramArrayOfByte, com.sleepycat.b.a parama)
  {
    // Byte code:
    //   0: new 118	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 305	java/util/ArrayList:<init>	()V
    //   7: astore 7
    //   9: iconst_1
    //   10: istore 19
    //   12: iconst_0
    //   13: istore 12
    //   15: iload 12
    //   17: istore 11
    //   19: aload_1
    //   20: invokevirtual 308	com/sleepycat/b/l/j:J	()Z
    //   23: ifeq +665 -> 688
    //   26: iload 12
    //   28: istore 11
    //   30: aload_0
    //   31: getfield 61	com/sleepycat/b/l/ah:d	Lcom/sleepycat/b/f/f;
    //   34: invokevirtual 310	com/sleepycat/b/f/f:a	()V
    //   37: iconst_1
    //   38: istore 11
    //   40: aload_0
    //   41: getfield 178	com/sleepycat/b/l/ah:b	Lcom/sleepycat/b/l/e;
    //   44: aload_0
    //   45: getfield 196	com/sleepycat/b/l/ah:a	Lcom/sleepycat/b/c/i;
    //   48: aconst_null
    //   49: invokevirtual 315	com/sleepycat/b/l/e:a	(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/l/j;)Lcom/sleepycat/b/l/ac;
    //   52: checkcast 72	com/sleepycat/b/l/j
    //   55: astore 4
    //   57: iconst_1
    //   58: istore 11
    //   60: aload 4
    //   62: astore 5
    //   64: aload 5
    //   66: aload_3
    //   67: invokevirtual 111	com/sleepycat/b/l/j:a	(Lcom/sleepycat/b/a;)V
    //   70: aload 5
    //   72: invokevirtual 194	com/sleepycat/b/l/j:P	()Z
    //   75: ifne +11 -> 86
    //   78: aload 5
    //   80: invokevirtual 74	com/sleepycat/b/l/j:I	()Z
    //   83: ifne +590 -> 673
    //   86: getstatic 44	com/sleepycat/b/l/ah:j	Lcom/sleepycat/b/l/af;
    //   89: athrow
    //   90: astore_3
    //   91: aconst_null
    //   92: astore_2
    //   93: aload 5
    //   95: astore_1
    //   96: aload_2
    //   97: ifnull +7 -> 104
    //   100: aload_2
    //   101: invokevirtual 164	com/sleepycat/b/l/j:C	()V
    //   104: aload 7
    //   106: invokevirtual 143	java/util/ArrayList:size	()I
    //   109: ifle +509 -> 618
    //   112: aload 7
    //   114: aload 7
    //   116: invokevirtual 143	java/util/ArrayList:size	()I
    //   119: invokevirtual 147	java/util/ArrayList:listIterator	(I)Ljava/util/ListIterator;
    //   122: astore_2
    //   123: aload_2
    //   124: invokeinterface 152 1 0
    //   129: ifeq +489 -> 618
    //   132: aload_2
    //   133: invokeinterface 156 1 0
    //   138: checkcast 113	com/sleepycat/b/l/ak
    //   141: getfield 161	com/sleepycat/b/l/ak:b	Lcom/sleepycat/b/l/j;
    //   144: invokevirtual 164	com/sleepycat/b/l/j:C	()V
    //   147: goto -24 -> 123
    //   150: aload 4
    //   152: astore_1
    //   153: aload 4
    //   155: astore 6
    //   157: aload_1
    //   158: astore 4
    //   160: aload 4
    //   162: astore_1
    //   163: aload 6
    //   165: getfield 96	com/sleepycat/b/l/j:f	I
    //   168: ifeq +498 -> 666
    //   171: aload 4
    //   173: astore_1
    //   174: aload 6
    //   176: aload_2
    //   177: iconst_0
    //   178: iconst_0
    //   179: invokevirtual 99	com/sleepycat/b/l/j:a	([BZZ)I
    //   182: istore 13
    //   184: iload 13
    //   186: ifeq +6 -> 192
    //   189: iconst_0
    //   190: istore 19
    //   192: aload 4
    //   194: astore_1
    //   195: iload 13
    //   197: aload 6
    //   199: getfield 96	com/sleepycat/b/l/j:f	I
    //   202: iconst_1
    //   203: isub
    //   204: if_icmpeq +459 -> 663
    //   207: iconst_0
    //   208: istore 12
    //   210: aload 4
    //   212: astore_1
    //   213: getstatic 37	com/sleepycat/b/l/ah:e	Z
    //   216: ifne +19 -> 235
    //   219: iload 13
    //   221: ifge +14 -> 235
    //   224: aload 4
    //   226: astore_1
    //   227: new 79	java/lang/AssertionError
    //   230: dup
    //   231: invokespecial 80	java/lang/AssertionError:<init>	()V
    //   234: athrow
    //   235: aload 4
    //   237: astore_1
    //   238: aload 6
    //   240: iload 13
    //   242: invokevirtual 253	com/sleepycat/b/l/j:j	(I)Lcom/sleepycat/b/l/ac;
    //   245: checkcast 72	com/sleepycat/b/l/j
    //   248: astore 4
    //   250: aload 4
    //   252: ifnull +49 -> 301
    //   255: aload 4
    //   257: astore_1
    //   258: aload 4
    //   260: aload_3
    //   261: invokevirtual 111	com/sleepycat/b/l/j:a	(Lcom/sleepycat/b/a;)V
    //   264: aload 4
    //   266: astore_1
    //   267: aload 7
    //   269: new 113	com/sleepycat/b/l/ak
    //   272: dup
    //   273: aload 6
    //   275: aload 4
    //   277: iload 13
    //   279: invokespecial 116	com/sleepycat/b/l/ak:<init>	(Lcom/sleepycat/b/l/j;Lcom/sleepycat/b/l/j;I)V
    //   282: invokevirtual 122	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   285: pop
    //   286: aload 4
    //   288: astore_1
    //   289: aload 4
    //   291: invokevirtual 124	com/sleepycat/b/l/j:f	()Z
    //   294: istore 20
    //   296: iload 20
    //   298: ifeq -148 -> 150
    //   301: iload 12
    //   303: istore 13
    //   305: iconst_0
    //   306: istore 12
    //   308: aload 4
    //   310: astore_1
    //   311: aload_0
    //   312: getfield 196	com/sleepycat/b/l/ah:a	Lcom/sleepycat/b/c/i;
    //   315: getfield 201	com/sleepycat/b/c/i:c	Lcom/sleepycat/b/c/ad;
    //   318: getfield 319	com/sleepycat/b/c/ad:w	Lcom/sleepycat/b/g/am;
    //   321: astore 6
    //   323: aload 4
    //   325: astore_1
    //   326: aload 7
    //   328: aload 7
    //   330: invokevirtual 143	java/util/ArrayList:size	()I
    //   333: invokevirtual 147	java/util/ArrayList:listIterator	(I)Ljava/util/ListIterator;
    //   336: astore 8
    //   338: ldc2_w 320
    //   341: lstore 15
    //   343: aload 4
    //   345: astore_1
    //   346: aload 8
    //   348: invokeinterface 152 1 0
    //   353: ifeq +283 -> 636
    //   356: aload 4
    //   358: astore_1
    //   359: aload 8
    //   361: invokeinterface 156 1 0
    //   366: checkcast 113	com/sleepycat/b/l/ak
    //   369: astore 9
    //   371: aload 4
    //   373: astore_1
    //   374: aload 8
    //   376: invokeinterface 167 1 0
    //   381: aload 4
    //   383: astore_1
    //   384: aload 9
    //   386: getfield 161	com/sleepycat/b/l/ak:b	Lcom/sleepycat/b/l/j;
    //   389: astore 4
    //   391: aload 4
    //   393: astore_1
    //   394: aload 9
    //   396: getfield 159	com/sleepycat/b/l/ak:a	Lcom/sleepycat/b/l/j;
    //   399: astore 10
    //   401: aload 4
    //   403: astore_1
    //   404: aload 9
    //   406: getfield 322	com/sleepycat/b/l/ak:c	I
    //   409: istore 14
    //   411: aload 4
    //   413: astore_1
    //   414: aload 4
    //   416: invokevirtual 194	com/sleepycat/b/l/j:P	()Z
    //   419: ifeq +140 -> 559
    //   422: iload 19
    //   424: ifne +8 -> 432
    //   427: iload 13
    //   429: ifeq +69 -> 498
    //   432: aload 4
    //   434: astore_1
    //   435: aload 4
    //   437: aload 10
    //   439: iload 14
    //   441: aload_0
    //   442: getfield 56	com/sleepycat/b/l/ah:c	I
    //   445: aload_2
    //   446: iload 19
    //   448: aload_3
    //   449: invokevirtual 325	com/sleepycat/b/l/j:a	(Lcom/sleepycat/b/l/j;II[BZLcom/sleepycat/b/a;)V
    //   452: aload 4
    //   454: astore_1
    //   455: aload 10
    //   457: getfield 327	com/sleepycat/b/l/j:c	J
    //   460: lstore 15
    //   462: aload 4
    //   464: astore_1
    //   465: aload 10
    //   467: invokevirtual 308	com/sleepycat/b/l/j:J	()Z
    //   470: ifeq +187 -> 657
    //   473: aload 4
    //   475: astore_1
    //   476: getstatic 37	com/sleepycat/b/l/ah:e	Z
    //   479: ifne +39 -> 518
    //   482: iload 11
    //   484: ifne +34 -> 518
    //   487: aload 4
    //   489: astore_1
    //   490: new 79	java/lang/AssertionError
    //   493: dup
    //   494: invokespecial 80	java/lang/AssertionError:<init>	()V
    //   497: athrow
    //   498: aload 4
    //   500: astore_1
    //   501: aload 4
    //   503: aload 10
    //   505: iload 14
    //   507: aload_0
    //   508: getfield 56	com/sleepycat/b/l/ah:c	I
    //   511: aload_3
    //   512: invokevirtual 330	com/sleepycat/b/l/j:a	(Lcom/sleepycat/b/l/j;IILcom/sleepycat/b/a;)V
    //   515: goto -63 -> 452
    //   518: aload 4
    //   520: astore_1
    //   521: aload_0
    //   522: getfield 178	com/sleepycat/b/l/ah:b	Lcom/sleepycat/b/l/e;
    //   525: aload 10
    //   527: invokevirtual 333	com/sleepycat/b/l/j:g	()J
    //   530: invokevirtual 336	com/sleepycat/b/l/e:a	(J)V
    //   533: aload 4
    //   535: astore_1
    //   536: aload 10
    //   538: iconst_1
    //   539: invokevirtual 339	com/sleepycat/b/l/j:a	(Z)V
    //   542: iconst_1
    //   543: istore 12
    //   545: aload 4
    //   547: astore_1
    //   548: aload 4
    //   550: invokevirtual 164	com/sleepycat/b/l/j:C	()V
    //   553: aconst_null
    //   554: astore 4
    //   556: goto -213 -> 343
    //   559: iload 12
    //   561: ifeq +157 -> 718
    //   564: aload 4
    //   566: astore_1
    //   567: lload 15
    //   569: aload 4
    //   571: getfield 327	com/sleepycat/b/l/j:c	J
    //   574: lcmp
    //   575: ifne +28 -> 603
    //   578: aload 4
    //   580: astore_1
    //   581: aload 4
    //   583: invokevirtual 333	com/sleepycat/b/l/j:g	()J
    //   586: lstore 17
    //   588: aload 4
    //   590: astore_1
    //   591: aload 10
    //   593: iload 14
    //   595: lload 17
    //   597: invokevirtual 342	com/sleepycat/b/l/j:c	(IJ)V
    //   600: goto +118 -> 718
    //   603: aload 4
    //   605: astore_1
    //   606: aload 4
    //   608: aload 6
    //   610: invokevirtual 345	com/sleepycat/b/l/j:a	(Lcom/sleepycat/b/g/am;)J
    //   613: lstore 17
    //   615: goto -27 -> 588
    //   618: aload_1
    //   619: invokevirtual 164	com/sleepycat/b/l/j:C	()V
    //   622: iload 11
    //   624: ifeq +10 -> 634
    //   627: aload_0
    //   628: getfield 61	com/sleepycat/b/l/ah:d	Lcom/sleepycat/b/f/f;
    //   631: invokevirtual 186	com/sleepycat/b/f/f:d	()V
    //   634: aload_3
    //   635: athrow
    //   636: iload 11
    //   638: ifeq +10 -> 648
    //   641: aload_0
    //   642: getfield 61	com/sleepycat/b/l/ah:d	Lcom/sleepycat/b/f/f;
    //   645: invokevirtual 186	com/sleepycat/b/f/f:d	()V
    //   648: aload 5
    //   650: areturn
    //   651: astore_3
    //   652: aconst_null
    //   653: astore_2
    //   654: goto -558 -> 96
    //   657: iconst_1
    //   658: istore 12
    //   660: goto -115 -> 545
    //   663: goto -453 -> 210
    //   666: iload 12
    //   668: istore 13
    //   670: goto -365 -> 305
    //   673: aconst_null
    //   674: astore_1
    //   675: aload 4
    //   677: astore 6
    //   679: iconst_1
    //   680: istore 12
    //   682: aload_1
    //   683: astore 4
    //   685: goto -525 -> 160
    //   688: iconst_0
    //   689: istore 11
    //   691: aload_1
    //   692: astore 4
    //   694: aload_1
    //   695: astore 5
    //   697: goto -633 -> 64
    //   700: astore_3
    //   701: aload_1
    //   702: astore_2
    //   703: aload 5
    //   705: astore_1
    //   706: goto -610 -> 96
    //   709: astore_3
    //   710: aload_1
    //   711: astore_2
    //   712: aload 5
    //   714: astore_1
    //   715: goto -619 -> 96
    //   718: goto -173 -> 545
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	721	0	this	ah
    //   0	721	1	paramj	j
    //   0	721	2	paramArrayOfByte	byte[]
    //   0	721	3	parama	com.sleepycat.b.a
    //   55	638	4	localj1	j
    //   62	651	5	localj2	j
    //   155	523	6	localObject	Object
    //   7	322	7	localArrayList	ArrayList
    //   336	39	8	localListIterator	ListIterator
    //   369	36	9	localak	ak
    //   399	193	10	localj3	j
    //   17	673	11	k	int
    //   13	668	12	m	int
    //   182	487	13	n	int
    //   409	185	14	i1	int
    //   341	227	15	l1	long
    //   586	28	17	l2	long
    //   10	437	19	bool1	boolean
    //   294	3	20	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   64	86	90	finally
    //   86	90	90	finally
    //   19	26	651	finally
    //   30	37	651	finally
    //   40	57	651	finally
    //   163	171	700	finally
    //   174	184	700	finally
    //   195	207	700	finally
    //   213	219	700	finally
    //   227	235	700	finally
    //   238	250	700	finally
    //   311	323	700	finally
    //   326	338	700	finally
    //   346	356	700	finally
    //   359	371	700	finally
    //   374	381	700	finally
    //   384	391	700	finally
    //   258	264	709	finally
    //   267	286	709	finally
    //   289	296	709	finally
    //   394	401	709	finally
    //   404	411	709	finally
    //   414	422	709	finally
    //   435	452	709	finally
    //   455	462	709	finally
    //   465	473	709	finally
    //   476	482	709	finally
    //   490	498	709	finally
    //   501	515	709	finally
    //   521	533	709	finally
    //   536	542	709	finally
    //   548	553	709	finally
    //   567	578	709	finally
    //   581	588	709	finally
    //   591	600	709	finally
    //   606	615	709	finally
  }
  
  private am g()
  {
    if (com.sleepycat.b.c.ad.s() > 0) {
      return (am)this.i.get();
    }
    return null;
  }
  
  public final int a()
  {
    int k = 1;
    if (this.b != null) {
      k = this.b.a() + 1;
    }
    return k;
  }
  
  public final a a(a parama, com.sleepycat.b.a parama1)
  {
    return (a)a(parama, true, parama1);
  }
  
  public final ae a(long paramLong, byte[] paramArrayOfByte, boolean paramBoolean1, com.sleepycat.b.a parama, int paramInt, List<ag> paramList, boolean paramBoolean2)
  {
    Object localObject1 = b(parama, true);
    localae = new ae();
    if (localObject1 != null)
    {
      if (paramList != null) {
        paramList.add(new ag(this.b.b, ((j)localObject1).c, ((j)localObject1).f));
      }
      try
      {
        while (localae.b)
        {
          Object localObject2 = aj.a;
          ((j)localObject1).a(paramLong, paramArrayOfByte, localae, paramBoolean1, parama, paramInt, paramBoolean2);
          if (paramList != null)
          {
            ((ag)paramList.get(paramList.size() - 1)).d = localae.e;
            if (localae.b) {
              paramList.add(new ag(((j)localObject1).k(localae.e), localae.d.c, localae.d.f));
            }
          }
          localObject2 = localae.d;
          localObject1 = localObject2;
        }
        return localae;
      }
      catch (com.sleepycat.b.p.ae paramArrayOfByte)
      {
        throw aa.a(paramArrayOfByte);
      }
      finally
      {
        ((j)localObject1).C();
      }
    }
  }
  
  public final ae a(j paramj, com.sleepycat.b.a parama)
  {
    return a(paramj, true, parama, -1, null);
  }
  
  public final ae a(j paramj, boolean paramBoolean, com.sleepycat.b.a parama, int paramInt, List<ag> paramList)
  {
    if (paramj == null) {
      throw aa.c("getParentNode passed null");
    }
    if ((!e) && (!paramj.F())) {
      throw new AssertionError();
    }
    byte[] arrayOfByte = paramj.g;
    paramj.I();
    paramj.C();
    return a(paramj.c, arrayOfByte, paramBoolean, parama, paramInt, paramList, true);
  }
  
  public final e a(ac paramac, byte[] paramArrayOfByte, long paramLong)
  {
    return new ai(this, paramac, paramArrayOfByte, paramLong, (byte)0);
  }
  
  public final j a(com.sleepycat.b.a parama)
  {
    return a(null, aj.b, null, parama, null);
  }
  
  public final j a(com.sleepycat.b.a parama, boolean paramBoolean)
  {
    if (!c()) {
      return null;
    }
    j localj = (j)this.b.a(this.a, null);
    if (paramBoolean)
    {
      localj.a(parama);
      return localj;
    }
    localj.b(parama);
    return localj;
  }
  
  public final j a(aq paramaq)
  {
    try
    {
      this.d.a();
      paramaq = paramaq.a(this.b);
      return paramaq;
    }
    finally
    {
      this.d.d();
    }
  }
  
  public final j a(j paramj, boolean paramBoolean, com.sleepycat.b.a parama)
  {
    int n = 0;
    Object localObject5 = null;
    Object localObject1;
    if (paramj.f == 0) {
      localObject1 = paramj.g;
    }
    int i1;
    for (;;)
    {
      i1 = paramj.j;
      localj = paramj;
      if (e) {
        break;
      }
      localj = paramj;
      if (d.a() == 1) {
        break;
      }
      throw new AssertionError(d.c());
      if (paramBoolean) {
        localObject1 = paramj.h(paramj.f - 1);
      } else {
        localObject1 = paramj.h(0);
      }
    }
    j localj = paramj;
    try
    {
      paramj = a(localj, parama);
      if (!paramj.a) {
        break label175;
      }
      paramj = paramj.d;
      try
      {
        if ((e) || (d.a() == 1)) {
          break label216;
        }
        throw new AssertionError(d.c());
      }
      finally
      {
        localObject1 = null;
        parama = paramj;
        k = n;
        paramj = (j)localObject2;
      }
    }
    finally
    {
      for (;;)
      {
        localObject1 = null;
        k = n;
        parama = (com.sleepycat.b.a)localObject5;
      }
      paramj = null;
    }
    if ((localj == null) || (parama != null)) {
      parama.C();
    }
    if ((localObject1 != null) && (k != 0)) {
      ((j)localObject1).C();
    }
    throw paramj;
    label175:
    if ((!e) && (d.a() != 0)) {
      throw new AssertionError(d.c());
    }
    label214:
    return paramj;
    label216:
    int m = paramj.a((byte[])localObject1, false, false);
    if (paramBoolean)
    {
      m += 1;
      if (m < paramj.f) {}
      for (k = 1;; k = 0)
      {
        label248:
        if (k == 0) {
          break label488;
        }
        localObject1 = (j)paramj.q(m);
        try
        {
          ((j)localObject1).a(parama);
        }
        finally
        {
          try
          {
            if ((!e) && (d.a() != 2)) {
              throw new AssertionError(d.c());
            }
            if (((j)localObject1).j == i1)
            {
              paramj.C();
              paramj = (j)localObject1;
              try
              {
                if (g() == null) {
                  break label214;
                }
                ((j)localObject1).u();
                return (j)localObject1;
              }
              finally
              {
                k = 1;
                parama = (com.sleepycat.b.a)localObject5;
              }
              break;
            }
            if (paramBoolean) {}
            for (aj localaj = aj.b;; localaj = aj.c)
            {
              parama = a((j)localObject1, null, localaj, i1, null, parama, null);
              paramj.C();
              try
              {
                if ((e) || (d.a() == 1)) {
                  break label407;
                }
                throw new AssertionError(d.c());
              }
              finally
              {
                k = n;
                parama = (com.sleepycat.b.a)localObject5;
              }
              break;
            }
            label407:
            if (parama.j == i1) {
              return parama;
            }
            throw aa.c("subtree did not have a IN at level " + i1);
          }
          finally
          {
            k = 1;
            parama = paramj;
            paramj = (j)localObject4;
          }
          localObject3 = finally;
          parama = paramj;
          paramj = (j)localObject3;
          k = n;
        }
        break;
        break;
      }
    }
    if (m > 0) {}
    for (int k = 1;; k = 0)
    {
      m -= 1;
      break label248;
      label488:
      break;
    }
  }
  
  public final j a(boolean paramBoolean)
  {
    Object localObject = null;
    if (c())
    {
      j localj = (j)this.b.a;
      localObject = localj;
      if (localj != null)
      {
        localObject = localj;
        if (paramBoolean)
        {
          localj.b(com.sleepycat.b.a.c);
          localObject = localj;
        }
      }
    }
    return (j)localObject;
  }
  
  /* Error */
  public final j a(byte[] paramArrayOfByte, com.sleepycat.b.a parama)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload 4
    //   5: ifnonnull +657 -> 662
    //   8: aload_0
    //   9: getfield 61	com/sleepycat/b/l/ah:d	Lcom/sleepycat/b/f/f;
    //   12: invokevirtual 182	com/sleepycat/b/f/f:c	()V
    //   15: iconst_0
    //   16: istore 9
    //   18: iconst_0
    //   19: istore 11
    //   21: aconst_null
    //   22: astore_3
    //   23: iload 11
    //   25: istore 10
    //   27: aload_0
    //   28: invokevirtual 419	com/sleepycat/b/l/ah:c	()Z
    //   31: ifeq +510 -> 541
    //   34: aload_0
    //   35: getfield 178	com/sleepycat/b/l/ah:b	Lcom/sleepycat/b/l/e;
    //   38: aload_0
    //   39: getfield 196	com/sleepycat/b/l/ah:a	Lcom/sleepycat/b/c/i;
    //   42: aconst_null
    //   43: invokevirtual 315	com/sleepycat/b/l/e:a	(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/l/j;)Lcom/sleepycat/b/l/ac;
    //   46: checkcast 72	com/sleepycat/b/l/j
    //   49: astore_3
    //   50: aload_3
    //   51: invokevirtual 194	com/sleepycat/b/l/j:P	()Z
    //   54: ifeq +527 -> 581
    //   57: iload 9
    //   59: ifne +23 -> 82
    //   62: aload_0
    //   63: getfield 61	com/sleepycat/b/l/ah:d	Lcom/sleepycat/b/f/f;
    //   66: invokevirtual 186	com/sleepycat/b/f/f:d	()V
    //   69: aload_0
    //   70: getfield 61	com/sleepycat/b/l/ah:d	Lcom/sleepycat/b/f/f;
    //   73: invokevirtual 310	com/sleepycat/b/f/f:a	()V
    //   76: iconst_1
    //   77: istore 9
    //   79: goto -58 -> 21
    //   82: aload_0
    //   83: getfield 196	com/sleepycat/b/l/ah:a	Lcom/sleepycat/b/c/i;
    //   86: getfield 201	com/sleepycat/b/c/i:c	Lcom/sleepycat/b/c/ad;
    //   89: astore_3
    //   90: aload_3
    //   91: getfield 319	com/sleepycat/b/c/ad:w	Lcom/sleepycat/b/g/am;
    //   94: astore 6
    //   96: aload_3
    //   97: getfield 455	com/sleepycat/b/c/ad:t	Lcom/sleepycat/b/c/al;
    //   100: astore 7
    //   102: aload_0
    //   103: getfield 178	com/sleepycat/b/l/ah:b	Lcom/sleepycat/b/l/e;
    //   106: aload_0
    //   107: getfield 196	com/sleepycat/b/l/ah:a	Lcom/sleepycat/b/c/i;
    //   110: aconst_null
    //   111: invokevirtual 315	com/sleepycat/b/l/e:a	(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/l/j;)Lcom/sleepycat/b/l/ac;
    //   114: checkcast 72	com/sleepycat/b/l/j
    //   117: astore 5
    //   119: aload 5
    //   121: aload_2
    //   122: invokevirtual 111	com/sleepycat/b/l/j:a	(Lcom/sleepycat/b/a;)V
    //   125: aload 5
    //   127: iconst_0
    //   128: invokevirtual 436	com/sleepycat/b/l/j:h	(I)[B
    //   131: astore 8
    //   133: new 72	com/sleepycat/b/l/j
    //   136: dup
    //   137: aload_0
    //   138: getfield 196	com/sleepycat/b/l/ah:a	Lcom/sleepycat/b/c/i;
    //   141: aload 8
    //   143: aload_0
    //   144: getfield 56	com/sleepycat/b/l/ah:c	I
    //   147: aload 5
    //   149: getfield 260	com/sleepycat/b/l/j:j	I
    //   152: iconst_1
    //   153: iadd
    //   154: invokespecial 458	com/sleepycat/b/l/j:<init>	(Lcom/sleepycat/b/c/i;[BII)V
    //   157: astore_3
    //   158: aload_3
    //   159: aload_2
    //   160: invokevirtual 111	com/sleepycat/b/l/j:a	(Lcom/sleepycat/b/a;)V
    //   163: aload_3
    //   164: iconst_1
    //   165: invokevirtual 460	com/sleepycat/b/l/j:c	(Z)V
    //   168: aload 5
    //   170: iconst_0
    //   171: invokevirtual 460	com/sleepycat/b/l/j:c	(Z)V
    //   174: aload 5
    //   176: aload 6
    //   178: aload_3
    //   179: invokevirtual 463	com/sleepycat/b/l/j:a	(Lcom/sleepycat/b/g/am;Lcom/sleepycat/b/l/j;)J
    //   182: lstore 12
    //   184: aload_3
    //   185: new 312	com/sleepycat/b/l/e
    //   188: dup
    //   189: aload 5
    //   191: aload 8
    //   193: lload 12
    //   195: invokespecial 466	com/sleepycat/b/l/e:<init>	(Lcom/sleepycat/b/l/ac;[BJ)V
    //   198: invokevirtual 469	com/sleepycat/b/l/j:a	(Lcom/sleepycat/b/l/e;)Z
    //   201: istore 16
    //   203: getstatic 37	com/sleepycat/b/l/ah:e	Z
    //   206: ifne +57 -> 263
    //   209: iload 16
    //   211: ifne +52 -> 263
    //   214: new 79	java/lang/AssertionError
    //   217: dup
    //   218: invokespecial 80	java/lang/AssertionError:<init>	()V
    //   221: athrow
    //   222: astore_1
    //   223: aload 5
    //   225: iconst_1
    //   226: invokevirtual 460	com/sleepycat/b/l/j:c	(Z)V
    //   229: aload_1
    //   230: athrow
    //   231: astore_1
    //   232: aload_3
    //   233: astore_2
    //   234: aload_2
    //   235: invokevirtual 164	com/sleepycat/b/l/j:C	()V
    //   238: aload 5
    //   240: invokevirtual 164	com/sleepycat/b/l/j:C	()V
    //   243: aload_1
    //   244: athrow
    //   245: astore_1
    //   246: iconst_1
    //   247: istore 9
    //   249: iload 9
    //   251: ifeq +10 -> 261
    //   254: aload_0
    //   255: getfield 61	com/sleepycat/b/l/ah:d	Lcom/sleepycat/b/f/f;
    //   258: invokevirtual 186	com/sleepycat/b/f/f:d	()V
    //   261: aload_1
    //   262: athrow
    //   263: aload_3
    //   264: aload 6
    //   266: invokevirtual 345	com/sleepycat/b/l/j:a	(Lcom/sleepycat/b/g/am;)J
    //   269: lstore 14
    //   271: aload 7
    //   273: aload_3
    //   274: invokevirtual 472	com/sleepycat/b/c/al:a	(Lcom/sleepycat/b/l/j;)V
    //   277: aload_0
    //   278: getfield 178	com/sleepycat/b/l/ah:b	Lcom/sleepycat/b/l/e;
    //   281: aload_3
    //   282: invokevirtual 475	com/sleepycat/b/l/e:a	(Lcom/sleepycat/b/l/ac;)V
    //   285: aload_0
    //   286: getfield 178	com/sleepycat/b/l/ah:b	Lcom/sleepycat/b/l/e;
    //   289: aload_0
    //   290: getfield 196	com/sleepycat/b/l/ah:a	Lcom/sleepycat/b/c/i;
    //   293: lload 14
    //   295: invokevirtual 478	com/sleepycat/b/l/e:a	(Lcom/sleepycat/b/c/i;J)V
    //   298: aload 5
    //   300: aload_3
    //   301: iconst_0
    //   302: aload_0
    //   303: getfield 56	com/sleepycat/b/l/ah:c	I
    //   306: aload_2
    //   307: invokevirtual 330	com/sleepycat/b/l/j:a	(Lcom/sleepycat/b/l/j;IILcom/sleepycat/b/a;)V
    //   310: aload_0
    //   311: getfield 178	com/sleepycat/b/l/ah:b	Lcom/sleepycat/b/l/e;
    //   314: aload_3
    //   315: invokevirtual 333	com/sleepycat/b/l/j:g	()J
    //   318: invokevirtual 336	com/sleepycat/b/l/e:a	(J)V
    //   321: aload_3
    //   322: invokevirtual 164	com/sleepycat/b/l/j:C	()V
    //   325: aload 5
    //   327: invokevirtual 164	com/sleepycat/b/l/j:C	()V
    //   330: aload_0
    //   331: getfield 304	com/sleepycat/b/l/ah:g	Lcom/sleepycat/b/p/o;
    //   334: invokevirtual 480	com/sleepycat/b/p/o:f	()V
    //   337: getstatic 486	java/util/logging/Level:FINE	Ljava/util/logging/Level;
    //   340: astore 6
    //   342: aload_0
    //   343: getfield 196	com/sleepycat/b/l/ah:a	Lcom/sleepycat/b/c/i;
    //   346: getfield 201	com/sleepycat/b/c/i:c	Lcom/sleepycat/b/c/ad;
    //   349: getfield 490	com/sleepycat/b/c/ad:v	Ljava/util/logging/Logger;
    //   352: astore 7
    //   354: aload 7
    //   356: aload 6
    //   358: invokevirtual 496	java/util/logging/Logger:isLoggable	(Ljava/util/logging/Level;)Z
    //   361: ifeq +107 -> 468
    //   364: new 238	java/lang/StringBuilder
    //   367: dup
    //   368: invokespecial 497	java/lang/StringBuilder:<init>	()V
    //   371: astore 8
    //   373: aload 8
    //   375: ldc_w 499
    //   378: invokevirtual 502	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   381: pop
    //   382: aload 8
    //   384: ldc_w 504
    //   387: invokevirtual 502	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   390: aload_3
    //   391: getfield 327	com/sleepycat/b/l/j:c	J
    //   394: invokevirtual 507	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   397: pop
    //   398: aload 8
    //   400: ldc_w 509
    //   403: invokevirtual 502	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   406: lload 14
    //   408: invokestatic 514	com/sleepycat/b/p/j:h	(J)Ljava/lang/String;
    //   411: invokevirtual 502	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   414: pop
    //   415: aload 8
    //   417: ldc_w 516
    //   420: invokevirtual 502	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   423: aload 5
    //   425: getfield 327	com/sleepycat/b/l/j:c	J
    //   428: invokevirtual 507	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   431: pop
    //   432: aload 8
    //   434: ldc_w 518
    //   437: invokevirtual 502	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   440: lload 12
    //   442: invokestatic 514	com/sleepycat/b/p/j:h	(J)Ljava/lang/String;
    //   445: invokevirtual 502	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   448: pop
    //   449: aload 7
    //   451: aload_0
    //   452: getfield 196	com/sleepycat/b/l/ah:a	Lcom/sleepycat/b/c/i;
    //   455: getfield 201	com/sleepycat/b/c/i:c	Lcom/sleepycat/b/c/ad;
    //   458: aload 6
    //   460: aload 8
    //   462: invokevirtual 251	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   465: invokestatic 521	com/sleepycat/b/p/w:a	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V
    //   468: aload_0
    //   469: getfield 61	com/sleepycat/b/l/ah:d	Lcom/sleepycat/b/f/f;
    //   472: invokevirtual 186	com/sleepycat/b/f/f:d	()V
    //   475: iconst_0
    //   476: istore 9
    //   478: aload_0
    //   479: getfield 196	com/sleepycat/b/l/ah:a	Lcom/sleepycat/b/c/i;
    //   482: getfield 201	com/sleepycat/b/c/i:c	Lcom/sleepycat/b/c/ad;
    //   485: getfield 524	com/sleepycat/b/c/ad:q	Lcom/sleepycat/b/c/p;
    //   488: aload_0
    //   489: getfield 196	com/sleepycat/b/l/ah:a	Lcom/sleepycat/b/c/i;
    //   492: invokevirtual 527	com/sleepycat/b/c/p:a	(Lcom/sleepycat/b/c/i;)V
    //   495: iconst_1
    //   496: istore 10
    //   498: iload 10
    //   500: istore 9
    //   502: aload_0
    //   503: getfield 61	com/sleepycat/b/l/ah:d	Lcom/sleepycat/b/f/f;
    //   506: invokevirtual 310	com/sleepycat/b/f/f:a	()V
    //   509: iload 10
    //   511: istore 9
    //   513: aload_0
    //   514: getfield 178	com/sleepycat/b/l/ah:b	Lcom/sleepycat/b/l/e;
    //   517: aload_0
    //   518: getfield 196	com/sleepycat/b/l/ah:a	Lcom/sleepycat/b/c/i;
    //   521: aconst_null
    //   522: invokevirtual 315	com/sleepycat/b/l/e:a	(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/l/j;)Lcom/sleepycat/b/l/ac;
    //   525: checkcast 72	com/sleepycat/b/l/j
    //   528: astore_3
    //   529: iload 10
    //   531: istore 9
    //   533: aload_3
    //   534: aload_2
    //   535: invokevirtual 111	com/sleepycat/b/l/j:a	(Lcom/sleepycat/b/a;)V
    //   538: iconst_1
    //   539: istore 10
    //   541: aload_0
    //   542: getfield 61	com/sleepycat/b/l/ah:d	Lcom/sleepycat/b/f/f;
    //   545: invokevirtual 186	com/sleepycat/b/f/f:d	()V
    //   548: aload_3
    //   549: ifnull +113 -> 662
    //   552: aload_3
    //   553: astore 5
    //   555: getstatic 37	com/sleepycat/b/l/ah:e	Z
    //   558: ifne +89 -> 647
    //   561: aload_3
    //   562: astore 5
    //   564: iload 10
    //   566: ifne +81 -> 647
    //   569: new 79	java/lang/AssertionError
    //   572: dup
    //   573: invokespecial 80	java/lang/AssertionError:<init>	()V
    //   576: athrow
    //   577: astore_3
    //   578: goto -575 -> 3
    //   581: aload_3
    //   582: aload_2
    //   583: invokevirtual 208	com/sleepycat/b/l/j:b	(Lcom/sleepycat/b/a;)V
    //   586: goto -48 -> 538
    //   589: astore_3
    //   590: aload_0
    //   591: getfield 297	com/sleepycat/b/l/ah:h	Lcom/sleepycat/b/p/z;
    //   594: invokevirtual 528	com/sleepycat/b/p/z:f	()V
    //   597: aload_0
    //   598: getfield 196	com/sleepycat/b/l/ah:a	Lcom/sleepycat/b/c/i;
    //   601: getfield 201	com/sleepycat/b/c/i:c	Lcom/sleepycat/b/c/ad;
    //   604: getfield 531	com/sleepycat/b/c/ad:ae	Lcom/sleepycat/b/p/z;
    //   607: invokevirtual 528	com/sleepycat/b/p/z:f	()V
    //   610: aload_0
    //   611: getfield 61	com/sleepycat/b/l/ah:d	Lcom/sleepycat/b/f/f;
    //   614: invokevirtual 310	com/sleepycat/b/f/f:a	()V
    //   617: aload_0
    //   618: getfield 178	com/sleepycat/b/l/ah:b	Lcom/sleepycat/b/l/e;
    //   621: aload_0
    //   622: getfield 196	com/sleepycat/b/l/ah:a	Lcom/sleepycat/b/c/i;
    //   625: aconst_null
    //   626: invokevirtual 315	com/sleepycat/b/l/e:a	(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/l/j;)Lcom/sleepycat/b/l/ac;
    //   629: checkcast 72	com/sleepycat/b/l/j
    //   632: astore 5
    //   634: aload 5
    //   636: aload_2
    //   637: invokevirtual 111	com/sleepycat/b/l/j:a	(Lcom/sleepycat/b/a;)V
    //   640: aload_0
    //   641: getfield 61	com/sleepycat/b/l/ah:d	Lcom/sleepycat/b/f/f;
    //   644: invokevirtual 186	com/sleepycat/b/f/f:d	()V
    //   647: aload_0
    //   648: aload 5
    //   650: aload_1
    //   651: aload_2
    //   652: invokespecial 533	com/sleepycat/b/l/ah:a	(Lcom/sleepycat/b/l/j;[BLcom/sleepycat/b/a;)Lcom/sleepycat/b/l/j;
    //   655: astore_3
    //   656: aload_3
    //   657: astore 4
    //   659: goto -656 -> 3
    //   662: aload 4
    //   664: areturn
    //   665: astore_1
    //   666: goto -417 -> 249
    //   669: astore_1
    //   670: aconst_null
    //   671: astore_2
    //   672: goto -438 -> 234
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	675	0	this	ah
    //   0	675	1	paramArrayOfByte	byte[]
    //   0	675	2	parama	com.sleepycat.b.a
    //   22	540	3	localObject1	Object
    //   577	5	3	localaf	af
    //   589	1	3	localae	com.sleepycat.b.p.ae
    //   655	2	3	localj	j
    //   1	662	4	localObject2	Object
    //   117	532	5	localObject3	Object
    //   94	365	6	localObject4	Object
    //   100	350	7	localObject5	Object
    //   131	330	8	localObject6	Object
    //   16	516	9	k	int
    //   25	540	10	m	int
    //   19	5	11	n	int
    //   182	259	12	l1	long
    //   269	138	14	l2	long
    //   201	9	16	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   174	209	222	finally
    //   214	222	222	finally
    //   263	271	222	finally
    //   158	174	231	finally
    //   223	231	231	finally
    //   271	321	231	finally
    //   27	57	245	finally
    //   62	76	245	finally
    //   82	125	245	finally
    //   234	245	245	finally
    //   321	468	245	finally
    //   468	475	245	finally
    //   581	586	245	finally
    //   555	561	577	com/sleepycat/b/l/af
    //   569	577	577	com/sleepycat/b/l/af
    //   590	647	577	com/sleepycat/b/l/af
    //   647	656	577	com/sleepycat/b/l/af
    //   647	656	589	com/sleepycat/b/p/ae
    //   478	495	665	finally
    //   502	509	665	finally
    //   513	529	665	finally
    //   533	538	665	finally
    //   125	158	669	finally
  }
  
  public final j a(byte[] paramArrayOfByte, aj paramaj, b paramb, com.sleepycat.b.a parama, Comparator<byte[]> paramComparator)
  {
    j localj = b(parama, false);
    if (localj != null) {
      return a(localj, paramArrayOfByte, paramaj, -1, paramb, parama, paramComparator);
    }
    return null;
  }
  
  public final void a(i parami)
  {
    this.a = parami;
    this.c = parami.s;
  }
  
  public final void a(e parame, boolean paramBoolean)
  {
    if ((!e) && (!paramBoolean) && (!this.d.isWriteLockedByCurrentThread())) {
      throw new AssertionError();
    }
    this.b = parame;
  }
  
  public final void a(StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    paramStringBuilder.append("<root>");
    if (this.b != null) {
      this.b.a(paramStringBuilder, paramBoolean);
    }
    paramStringBuilder.append("</root>");
  }
  
  public final void a(ByteBuffer paramByteBuffer)
  {
    if (this.b != null) {}
    for (int k = 1;; k = 0)
    {
      paramByteBuffer.put((byte)k);
      if (this.b != null) {
        this.b.a(paramByteBuffer);
      }
      return;
    }
  }
  
  public final void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    if ((paramByteBuffer.get() & 0x1) != 0) {}
    for (int k = 1;; k = 0)
    {
      if (k != 0)
      {
        this.b = new ai(this, (byte)0);
        this.b.a(paramByteBuffer, paramInt);
      }
      return;
    }
  }
  
  public final boolean a(at paramat)
  {
    return false;
  }
  
  public final boolean a(al paramal, byte[] paramArrayOfByte, boolean paramBoolean1, boolean paramBoolean2, com.sleepycat.b.a parama)
  {
    paramal.a();
    if (paramBoolean1) {}
    for (parama = a(paramArrayOfByte, parama); parama == null; parama = a(paramArrayOfByte, aj.a, null, parama, null)) {
      return false;
    }
    for (;;)
    {
      try
      {
        paramal.a = ((a)parama);
        if (!paramBoolean2)
        {
          paramBoolean1 = false;
          bool = true;
          paramal.b = paramal.a.a(paramArrayOfByte, paramBoolean1, bool);
          if (paramBoolean2)
          {
            if ((paramal.b < 0) || ((paramal.b & 0x10000) == 0)) {
              break label171;
            }
            k = 1;
            paramal.b &= 0xFFFEFFFF;
            if (k != 0)
            {
              paramal.d = paramal.a.k(paramal.b);
              return true;
            }
          }
          else
          {
            if (paramal.b < 0) {
              break label177;
            }
            k = 1;
            continue;
          }
          paramal.c = paramArrayOfByte;
          return false;
        }
      }
      catch (RuntimeException paramal)
      {
        parama.C();
        throw paramal;
      }
      paramBoolean1 = true;
      boolean bool = false;
      continue;
      label171:
      int k = 0;
      continue;
      label177:
      k = 0;
    }
  }
  
  public final long b()
  {
    return 0L;
  }
  
  public final j b(aq paramaq)
  {
    try
    {
      this.d.c();
      paramaq = paramaq.a(this.b);
      return paramaq;
    }
    finally
    {
      this.d.d();
    }
  }
  
  public final boolean b(ArrayList<ak> paramArrayList)
  {
    ListIterator localListIterator = paramArrayList.listIterator(paramArrayList.size());
    com.sleepycat.b.g.am localam = this.a.c.w;
    paramArrayList = null;
    for (long l = -1L; localListIterator.hasPrevious(); l = paramArrayList.a.a(localam))
    {
      paramArrayList = (ak)localListIterator.previous();
      if (l != -1L) {
        paramArrayList.a.c(paramArrayList.c, l);
      }
    }
    if (paramArrayList != null)
    {
      if ((!e) && (!paramArrayList.a.J())) {
        throw new AssertionError();
      }
      if ((!e) && (!this.d.isWriteLockedByCurrentThread())) {
        throw new AssertionError();
      }
      this.b.a(this.a, l);
      return true;
    }
    return false;
  }
  
  public final boolean c()
  {
    if (this.b == null) {}
    while ((this.b.a == null) && (this.b.b == -1L)) {
      return false;
    }
    return true;
  }
  
  public final long d()
  {
    if (this.b == null) {
      return -1L;
    }
    return this.b.b;
  }
  
  public final long e()
  {
    this.d.c();
    try
    {
      j localj = (j)this.b.a(this.a, null);
      int k = localj.j;
      int m = localj.f;
      this.d.d();
      double d1 = m;
      return (Math.pow(this.a.s, (k & 0xFFFF) - 1) * d1);
    }
    finally
    {
      this.d.d();
    }
  }
  
  public final void f()
  {
    com.sleepycat.b.c.al localal = this.a.c.t;
    if (this.b != null) {
      this.d.c();
    }
    try
    {
      ac localac = this.b.a;
      if (localac != null) {
        localac.a(localal);
      }
      return;
    }
    finally
    {
      this.d.d();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\l\ah.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */