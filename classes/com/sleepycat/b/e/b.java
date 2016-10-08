package com.sleepycat.b.e;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.m;
import com.sleepycat.b.l.j;
import com.sleepycat.b.p.ai;
import com.sleepycat.b.p.h;
import com.sleepycat.b.p.z;
import java.util.HashMap;
import java.util.Map;

public class b
  extends h
{
  private Map<Long, com.sleepycat.b.l.d> A;
  public ai a;
  public z b;
  public int c = 0;
  public int d = 0;
  public final Object e;
  private ad g;
  private final long h;
  private z i;
  private z j;
  private z k;
  private z t;
  private z u;
  private int v = 0;
  private int w = 0;
  private int x = 0;
  private int y = 0;
  private int z = 0;
  
  static
  {
    if (!b.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      f = bool;
      return;
    }
  }
  
  public b(ad paramad, long paramLong, String paramString)
  {
    super(paramLong, paramString, paramad);
    this.g = paramad;
    this.h = paramad.u.a(com.sleepycat.b.b.d.al);
    this.A = new HashMap();
    this.e = new Object();
    this.a = new ai("Node Compression", "Removal and compression of internal btree nodes.");
    this.i = new z(this.a, a.a);
    this.j = new z(this.a, a.b);
    this.k = new z(this.a, a.c);
    this.t = new z(this.a, a.d);
    this.u = new z(this.a, a.e);
    this.b = new z(this.a, a.f);
  }
  
  /* Error */
  private void g()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aconst_null
    //   3: astore_1
    //   4: aload_0
    //   5: getfield 93	com/sleepycat/b/e/b:e	Ljava/lang/Object;
    //   8: astore_2
    //   9: aload_2
    //   10: monitorenter
    //   11: aload_0
    //   12: getfield 88	com/sleepycat/b/e/b:A	Ljava/util/Map;
    //   15: invokeinterface 146 1 0
    //   20: istore 14
    //   22: iload 14
    //   24: ifle +19 -> 43
    //   27: aload_0
    //   28: getfield 88	com/sleepycat/b/e/b:A	Ljava/util/Map;
    //   31: astore_1
    //   32: aload_0
    //   33: new 84	java/util/HashMap
    //   36: dup
    //   37: invokespecial 86	java/util/HashMap:<init>	()V
    //   40: putfield 88	com/sleepycat/b/e/b:A	Ljava/util/Map;
    //   43: aload_2
    //   44: monitorexit
    //   45: iload 14
    //   47: ifle +1089 -> 1136
    //   50: aload_0
    //   51: iconst_0
    //   52: putfield 50	com/sleepycat/b/e/b:v	I
    //   55: aload_0
    //   56: iconst_0
    //   57: putfield 52	com/sleepycat/b/e/b:w	I
    //   60: aload_0
    //   61: iconst_0
    //   62: putfield 54	com/sleepycat/b/e/b:x	I
    //   65: aload_0
    //   66: iconst_0
    //   67: putfield 56	com/sleepycat/b/e/b:y	I
    //   70: aload_0
    //   71: iconst_0
    //   72: putfield 58	com/sleepycat/b/e/b:z	I
    //   75: aload_0
    //   76: getfield 150	com/sleepycat/b/e/b:r	Ljava/util/logging/Logger;
    //   79: aload_0
    //   80: getfield 153	com/sleepycat/b/e/b:q	Lcom/sleepycat/b/c/ad;
    //   83: new 155	java/lang/StringBuilder
    //   86: dup
    //   87: ldc -99
    //   89: invokespecial 160	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   92: iload 14
    //   94: invokevirtual 164	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   97: invokevirtual 168	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   100: invokestatic 173	com/sleepycat/b/p/w:d	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   103: getstatic 42	com/sleepycat/b/e/b:f	Z
    //   106: ifne +27 -> 133
    //   109: invokestatic 177	com/sleepycat/b/f/d:a	()I
    //   112: ifeq +21 -> 133
    //   115: new 179	java/lang/AssertionError
    //   118: dup
    //   119: invokespecial 180	java/lang/AssertionError:<init>	()V
    //   122: athrow
    //   123: astore_1
    //   124: aload_0
    //   125: monitorexit
    //   126: aload_1
    //   127: athrow
    //   128: astore_1
    //   129: aload_2
    //   130: monitorexit
    //   131: aload_1
    //   132: athrow
    //   133: new 182	com/sleepycat/b/a/s
    //   136: dup
    //   137: aload_0
    //   138: getfield 64	com/sleepycat/b/e/b:g	Lcom/sleepycat/b/c/ad;
    //   141: invokespecial 185	com/sleepycat/b/a/s:<init>	(Lcom/sleepycat/b/c/ad;)V
    //   144: astore 7
    //   146: new 84	java/util/HashMap
    //   149: dup
    //   150: invokespecial 86	java/util/HashMap:<init>	()V
    //   153: astore 5
    //   155: aload_0
    //   156: getfield 64	com/sleepycat/b/e/b:g	Lcom/sleepycat/b/c/ad;
    //   159: getfield 188	com/sleepycat/b/c/ad:q	Lcom/sleepycat/b/c/p;
    //   162: astore 4
    //   164: new 190	com/sleepycat/b/e/c
    //   167: dup
    //   168: iconst_0
    //   169: invokespecial 193	com/sleepycat/b/e/c:<init>	(B)V
    //   172: astore 6
    //   174: aload_1
    //   175: invokeinterface 197 1 0
    //   180: invokeinterface 203 1 0
    //   185: astore 8
    //   187: aload 8
    //   189: invokeinterface 208 1 0
    //   194: ifeq +778 -> 972
    //   197: aload_0
    //   198: getfield 64	com/sleepycat/b/e/b:g	Lcom/sleepycat/b/c/ad;
    //   201: invokevirtual 211	com/sleepycat/b/c/ad:l	()Z
    //   204: istore 16
    //   206: iload 16
    //   208: ifeq +30 -> 238
    //   211: aload 4
    //   213: aload 5
    //   215: invokevirtual 216	com/sleepycat/b/c/p:a	(Ljava/util/Map;)V
    //   218: getstatic 42	com/sleepycat/b/e/b:f	Z
    //   221: ifne +855 -> 1076
    //   224: invokestatic 177	com/sleepycat/b/f/d:a	()I
    //   227: ifeq +849 -> 1076
    //   230: new 179	java/lang/AssertionError
    //   233: dup
    //   234: invokespecial 180	java/lang/AssertionError:<init>	()V
    //   237: athrow
    //   238: aload 8
    //   240: invokeinterface 220 1 0
    //   245: checkcast 222	com/sleepycat/b/l/d
    //   248: astore 9
    //   250: aload 6
    //   252: aload 4
    //   254: aload 9
    //   256: getfield 225	com/sleepycat/b/l/d:c	Lcom/sleepycat/b/c/h;
    //   259: aload_0
    //   260: getfield 82	com/sleepycat/b/e/b:h	J
    //   263: aload 5
    //   265: invokevirtual 228	com/sleepycat/b/c/p:a	(Lcom/sleepycat/b/c/h;JLjava/util/Map;)Lcom/sleepycat/b/c/i;
    //   268: putfield 231	com/sleepycat/b/e/c:a	Lcom/sleepycat/b/c/i;
    //   271: aload 6
    //   273: getfield 231	com/sleepycat/b/e/c:a	Lcom/sleepycat/b/c/i;
    //   276: ifnull +14 -> 290
    //   279: aload 6
    //   281: getfield 231	com/sleepycat/b/e/c:a	Lcom/sleepycat/b/c/i;
    //   284: invokevirtual 235	com/sleepycat/b/c/i:z	()Z
    //   287: ifeq +108 -> 395
    //   290: aload_0
    //   291: aload_0
    //   292: getfield 52	com/sleepycat/b/e/b:w	I
    //   295: iconst_1
    //   296: iadd
    //   297: putfield 52	com/sleepycat/b/e/b:w	I
    //   300: iconst_0
    //   301: istore 14
    //   303: iload 14
    //   305: ifeq -118 -> 187
    //   308: aload 6
    //   310: getfield 231	com/sleepycat/b/e/c:a	Lcom/sleepycat/b/c/i;
    //   313: astore_2
    //   314: aload 6
    //   316: getfield 238	com/sleepycat/b/e/c:b	Lcom/sleepycat/b/l/a;
    //   319: astore_1
    //   320: aload_1
    //   321: getfield 243	com/sleepycat/b/l/j:g	[B
    //   324: astore 13
    //   326: aload_1
    //   327: getfield 245	com/sleepycat/b/l/j:f	I
    //   330: istore 14
    //   332: iload 14
    //   334: ifne +164 -> 498
    //   337: iconst_1
    //   338: istore 15
    //   340: iload 15
    //   342: istore 14
    //   344: iload 15
    //   346: ifne +224 -> 570
    //   349: aload_1
    //   350: invokevirtual 249	com/sleepycat/b/l/a:A	()Z
    //   353: istore 16
    //   355: iload 16
    //   357: ifeq +147 -> 504
    //   360: aload_1
    //   361: invokevirtual 252	com/sleepycat/b/l/a:C	()V
    //   364: goto -177 -> 187
    //   367: astore_1
    //   368: aload 4
    //   370: aload 5
    //   372: invokevirtual 216	com/sleepycat/b/c/p:a	(Ljava/util/Map;)V
    //   375: getstatic 42	com/sleepycat/b/e/b:f	Z
    //   378: ifne +636 -> 1014
    //   381: invokestatic 177	com/sleepycat/b/f/d:a	()I
    //   384: ifeq +630 -> 1014
    //   387: new 179	java/lang/AssertionError
    //   390: dup
    //   391: invokespecial 180	java/lang/AssertionError:<init>	()V
    //   394: athrow
    //   395: aload_0
    //   396: getfield 64	com/sleepycat/b/e/b:g	Lcom/sleepycat/b/c/ad;
    //   399: iconst_1
    //   400: invokevirtual 255	com/sleepycat/b/c/ad:b	(Z)V
    //   403: aload 6
    //   405: aload 6
    //   407: getfield 231	com/sleepycat/b/e/c:a	Lcom/sleepycat/b/c/i;
    //   410: getfield 258	com/sleepycat/b/c/i:b	Lcom/sleepycat/b/l/ah;
    //   413: aload 9
    //   415: invokevirtual 261	com/sleepycat/b/l/d:a	()[B
    //   418: getstatic 266	com/sleepycat/b/l/aj:a	Lcom/sleepycat/b/l/aj;
    //   421: aconst_null
    //   422: getstatic 271	com/sleepycat/b/a:c	Lcom/sleepycat/b/a;
    //   425: aconst_null
    //   426: invokevirtual 276	com/sleepycat/b/l/ah:a	([BLcom/sleepycat/b/l/aj;Lcom/sleepycat/b/l/b;Lcom/sleepycat/b/a;Ljava/util/Comparator;)Lcom/sleepycat/b/l/j;
    //   429: checkcast 247	com/sleepycat/b/l/a
    //   432: putfield 238	com/sleepycat/b/e/c:b	Lcom/sleepycat/b/l/a;
    //   435: aload 6
    //   437: getfield 238	com/sleepycat/b/e/c:b	Lcom/sleepycat/b/l/a;
    //   440: ifnull +20 -> 460
    //   443: aload 6
    //   445: getfield 238	com/sleepycat/b/e/c:b	Lcom/sleepycat/b/l/a;
    //   448: getfield 278	com/sleepycat/b/l/j:c	J
    //   451: aload 9
    //   453: getfield 280	com/sleepycat/b/l/d:b	J
    //   456: lcmp
    //   457: ifeq +35 -> 492
    //   460: aload 6
    //   462: getfield 238	com/sleepycat/b/e/c:b	Lcom/sleepycat/b/l/a;
    //   465: ifnull +11 -> 476
    //   468: aload 6
    //   470: getfield 238	com/sleepycat/b/e/c:b	Lcom/sleepycat/b/l/a;
    //   473: invokevirtual 252	com/sleepycat/b/l/a:C	()V
    //   476: aload_0
    //   477: aload_0
    //   478: getfield 50	com/sleepycat/b/e/b:v	I
    //   481: iconst_1
    //   482: iadd
    //   483: putfield 50	com/sleepycat/b/e/b:v	I
    //   486: iconst_0
    //   487: istore 14
    //   489: goto -186 -> 303
    //   492: iconst_1
    //   493: istore 14
    //   495: goto -192 -> 303
    //   498: iconst_0
    //   499: istore 15
    //   501: goto -161 -> 340
    //   504: aload_1
    //   505: invokevirtual 283	com/sleepycat/b/l/a:p	()I
    //   508: ifle +26 -> 534
    //   511: aload_0
    //   512: aload 9
    //   514: invokevirtual 286	com/sleepycat/b/e/b:a	(Lcom/sleepycat/b/l/d;)V
    //   517: aload_0
    //   518: aload_0
    //   519: getfield 54	com/sleepycat/b/e/b:x	I
    //   522: iconst_1
    //   523: iadd
    //   524: putfield 54	com/sleepycat/b/e/b:x	I
    //   527: aload_1
    //   528: invokevirtual 252	com/sleepycat/b/l/a:C	()V
    //   531: goto -344 -> 187
    //   534: aload_1
    //   535: aload 7
    //   537: invokevirtual 289	com/sleepycat/b/l/a:a	(Lcom/sleepycat/b/a/s;)Z
    //   540: ifne +16 -> 556
    //   543: aload_0
    //   544: aload 9
    //   546: invokevirtual 286	com/sleepycat/b/e/b:a	(Lcom/sleepycat/b/l/d;)V
    //   549: aload_1
    //   550: invokevirtual 252	com/sleepycat/b/l/a:C	()V
    //   553: goto -366 -> 187
    //   556: aload_1
    //   557: getfield 245	com/sleepycat/b/l/j:f	I
    //   560: istore 14
    //   562: iload 14
    //   564: ifne +650 -> 1214
    //   567: iconst_1
    //   568: istore 14
    //   570: aload_1
    //   571: invokevirtual 252	com/sleepycat/b/l/a:C	()V
    //   574: iload 14
    //   576: ifeq -389 -> 187
    //   579: aload_2
    //   580: getfield 258	com/sleepycat/b/c/i:b	Lcom/sleepycat/b/l/ah;
    //   583: astore 10
    //   585: aload 10
    //   587: getfield 290	com/sleepycat/b/l/ah:a	Lcom/sleepycat/b/c/i;
    //   590: getfield 292	com/sleepycat/b/c/i:c	Lcom/sleepycat/b/c/ad;
    //   593: astore 12
    //   595: aload 12
    //   597: getfield 295	com/sleepycat/b/c/ad:t	Lcom/sleepycat/b/c/al;
    //   600: astore_3
    //   601: new 297	java/util/ArrayList
    //   604: dup
    //   605: invokespecial 298	java/util/ArrayList:<init>	()V
    //   608: astore 11
    //   610: aconst_null
    //   611: astore_1
    //   612: aload 10
    //   614: getfield 301	com/sleepycat/b/l/ah:d	Lcom/sleepycat/b/f/f;
    //   617: invokevirtual 305	com/sleepycat/b/f/f:a	()V
    //   620: aload 10
    //   622: invokevirtual 307	com/sleepycat/b/l/ah:c	()Z
    //   625: istore 16
    //   627: iload 16
    //   629: ifne +62 -> 691
    //   632: aload 11
    //   634: invokestatic 310	com/sleepycat/b/l/ah:a	(Ljava/util/ArrayList;)V
    //   637: iconst_0
    //   638: ifeq +11 -> 649
    //   641: new 312	java/lang/NullPointerException
    //   644: dup
    //   645: invokespecial 313	java/lang/NullPointerException:<init>	()V
    //   648: athrow
    //   649: aload 10
    //   651: getfield 301	com/sleepycat/b/l/ah:d	Lcom/sleepycat/b/f/f;
    //   654: invokevirtual 315	com/sleepycat/b/f/f:d	()V
    //   657: aload_0
    //   658: aload_0
    //   659: getfield 58	com/sleepycat/b/e/b:z	I
    //   662: iconst_1
    //   663: iadd
    //   664: putfield 58	com/sleepycat/b/e/b:z	I
    //   667: goto -480 -> 187
    //   670: astore_1
    //   671: aload_0
    //   672: aload_0
    //   673: getfield 56	com/sleepycat/b/e/b:y	I
    //   676: iconst_1
    //   677: iadd
    //   678: putfield 56	com/sleepycat/b/e/b:y	I
    //   681: goto -494 -> 187
    //   684: astore_2
    //   685: aload_1
    //   686: invokevirtual 252	com/sleepycat/b/l/a:C	()V
    //   689: aload_2
    //   690: athrow
    //   691: aload 10
    //   693: getfield 318	com/sleepycat/b/l/ah:b	Lcom/sleepycat/b/l/e;
    //   696: aload 10
    //   698: getfield 290	com/sleepycat/b/l/ah:a	Lcom/sleepycat/b/c/i;
    //   701: aconst_null
    //   702: invokevirtual 323	com/sleepycat/b/l/e:a	(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/l/j;)Lcom/sleepycat/b/l/ac;
    //   705: checkcast 240	com/sleepycat/b/l/j
    //   708: astore_2
    //   709: aload_2
    //   710: getstatic 271	com/sleepycat/b/a:c	Lcom/sleepycat/b/a;
    //   713: invokevirtual 326	com/sleepycat/b/l/j:a	(Lcom/sleepycat/b/a;)V
    //   716: aload_2
    //   717: aload 13
    //   719: aload 11
    //   721: invokestatic 329	com/sleepycat/b/l/ah:a	(Lcom/sleepycat/b/l/j;[BLjava/util/ArrayList;)V
    //   724: aload 11
    //   726: invokevirtual 330	java/util/ArrayList:size	()I
    //   729: ifeq +477 -> 1206
    //   732: aload 11
    //   734: aload 11
    //   736: invokevirtual 330	java/util/ArrayList:size	()I
    //   739: iconst_1
    //   740: isub
    //   741: invokevirtual 334	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   744: checkcast 336	com/sleepycat/b/l/ak
    //   747: astore 13
    //   749: aload 13
    //   751: getfield 339	com/sleepycat/b/l/ak:a	Lcom/sleepycat/b/l/j;
    //   754: aload 13
    //   756: getfield 340	com/sleepycat/b/l/ak:c	I
    //   759: invokevirtual 344	com/sleepycat/b/l/j:s	(I)Z
    //   762: istore 16
    //   764: getstatic 346	com/sleepycat/b/l/ah:e	Z
    //   767: ifne +64 -> 831
    //   770: iload 16
    //   772: ifne +59 -> 831
    //   775: new 179	java/lang/AssertionError
    //   778: dup
    //   779: invokespecial 180	java/lang/AssertionError:<init>	()V
    //   782: athrow
    //   783: astore_3
    //   784: aload_2
    //   785: astore_1
    //   786: aload_3
    //   787: astore_2
    //   788: aload 11
    //   790: invokestatic 310	com/sleepycat/b/l/ah:a	(Ljava/util/ArrayList;)V
    //   793: aload_1
    //   794: ifnull +7 -> 801
    //   797: aload_1
    //   798: invokevirtual 347	com/sleepycat/b/l/j:C	()V
    //   801: aload 10
    //   803: getfield 301	com/sleepycat/b/l/ah:d	Lcom/sleepycat/b/f/f;
    //   806: invokevirtual 315	com/sleepycat/b/f/f:d	()V
    //   809: aload_2
    //   810: athrow
    //   811: astore_1
    //   812: aload_0
    //   813: aload 9
    //   815: invokevirtual 286	com/sleepycat/b/e/b:a	(Lcom/sleepycat/b/l/d;)V
    //   818: aload_0
    //   819: aload_0
    //   820: getfield 54	com/sleepycat/b/e/b:x	I
    //   823: iconst_1
    //   824: iadd
    //   825: putfield 54	com/sleepycat/b/e/b:x	I
    //   828: goto -641 -> 187
    //   831: aload 13
    //   833: getfield 349	com/sleepycat/b/l/ak:b	Lcom/sleepycat/b/l/j;
    //   836: astore_1
    //   837: aload 10
    //   839: getfield 290	com/sleepycat/b/l/ah:a	Lcom/sleepycat/b/c/i;
    //   842: invokevirtual 351	com/sleepycat/b/c/i:g	()Z
    //   845: ifeq +13 -> 858
    //   848: aload_1
    //   849: aload_3
    //   850: aload 13
    //   852: getfield 339	com/sleepycat/b/l/ak:a	Lcom/sleepycat/b/l/j;
    //   855: invokevirtual 354	com/sleepycat/b/l/j:a	(Lcom/sleepycat/b/c/al;Lcom/sleepycat/b/l/j;)V
    //   858: aload 10
    //   860: aload 11
    //   862: invokevirtual 357	com/sleepycat/b/l/ah:b	(Ljava/util/ArrayList;)Z
    //   865: istore 16
    //   867: aload 11
    //   869: invokestatic 310	com/sleepycat/b/l/ah:a	(Ljava/util/ArrayList;)V
    //   872: aload_2
    //   873: ifnull +7 -> 880
    //   876: aload_2
    //   877: invokevirtual 347	com/sleepycat/b/l/j:C	()V
    //   880: aload 10
    //   882: getfield 301	com/sleepycat/b/l/ah:d	Lcom/sleepycat/b/f/f;
    //   885: invokevirtual 315	com/sleepycat/b/f/f:d	()V
    //   888: aload_1
    //   889: ifnull -232 -> 657
    //   892: iload 16
    //   894: ifeq +29 -> 923
    //   897: aload 12
    //   899: getfield 188	com/sleepycat/b/c/ad:q	Lcom/sleepycat/b/c/p;
    //   902: aload 10
    //   904: getfield 290	com/sleepycat/b/l/ah:a	Lcom/sleepycat/b/c/i;
    //   907: invokevirtual 360	com/sleepycat/b/c/p:a	(Lcom/sleepycat/b/c/i;)V
    //   910: aload 12
    //   912: getfield 362	com/sleepycat/b/c/ad:v	Ljava/util/logging/Logger;
    //   915: aload 10
    //   917: getfield 290	com/sleepycat/b/l/ah:a	Lcom/sleepycat/b/c/i;
    //   920: invokestatic 367	com/sleepycat/b/h/m:a	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/i;)V
    //   923: aload 10
    //   925: getfield 290	com/sleepycat/b/l/ah:a	Lcom/sleepycat/b/c/i;
    //   928: invokevirtual 351	com/sleepycat/b/c/i:g	()Z
    //   931: ifne +10 -> 941
    //   934: aload_1
    //   935: aload_3
    //   936: aload 7
    //   938: invokevirtual 370	com/sleepycat/b/l/j:a	(Lcom/sleepycat/b/c/al;Lcom/sleepycat/b/a/s;)V
    //   941: getstatic 376	java/util/logging/Level:FINE	Ljava/util/logging/Level;
    //   944: aload 12
    //   946: new 155	java/lang/StringBuilder
    //   949: dup
    //   950: ldc_w 378
    //   953: invokespecial 160	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   956: aload_1
    //   957: getfield 278	com/sleepycat/b/l/j:c	J
    //   960: invokevirtual 381	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   963: invokevirtual 168	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   966: invokestatic 384	com/sleepycat/b/p/w:a	(Ljava/util/logging/Level;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   969: goto -312 -> 657
    //   972: aload_0
    //   973: getfield 64	com/sleepycat/b/e/b:g	Lcom/sleepycat/b/c/ad;
    //   976: getfield 388	com/sleepycat/b/c/ad:D	Lcom/sleepycat/b/a/c;
    //   979: getfield 394	com/sleepycat/b/a/c:aa	Lcom/sleepycat/b/a/ad;
    //   982: aload 7
    //   984: invokevirtual 399	com/sleepycat/b/a/ad:a	(Lcom/sleepycat/b/a/s;)V
    //   987: aload 4
    //   989: aload 5
    //   991: invokevirtual 216	com/sleepycat/b/c/p:a	(Ljava/util/Map;)V
    //   994: getstatic 42	com/sleepycat/b/e/b:f	Z
    //   997: ifne +142 -> 1139
    //   1000: invokestatic 177	com/sleepycat/b/f/d:a	()I
    //   1003: ifeq +136 -> 1139
    //   1006: new 179	java/lang/AssertionError
    //   1009: dup
    //   1010: invokespecial 180	java/lang/AssertionError:<init>	()V
    //   1013: athrow
    //   1014: aload_0
    //   1015: getfield 116	com/sleepycat/b/e/b:i	Lcom/sleepycat/b/p/z;
    //   1018: aload_0
    //   1019: getfield 50	com/sleepycat/b/e/b:v	I
    //   1022: i2l
    //   1023: invokevirtual 402	com/sleepycat/b/p/z:b	(J)V
    //   1026: aload_0
    //   1027: getfield 120	com/sleepycat/b/e/b:j	Lcom/sleepycat/b/p/z;
    //   1030: aload_0
    //   1031: getfield 52	com/sleepycat/b/e/b:w	I
    //   1034: i2l
    //   1035: invokevirtual 402	com/sleepycat/b/p/z:b	(J)V
    //   1038: aload_0
    //   1039: getfield 124	com/sleepycat/b/e/b:k	Lcom/sleepycat/b/p/z;
    //   1042: aload_0
    //   1043: getfield 54	com/sleepycat/b/e/b:x	I
    //   1046: i2l
    //   1047: invokevirtual 402	com/sleepycat/b/p/z:b	(J)V
    //   1050: aload_0
    //   1051: getfield 128	com/sleepycat/b/e/b:t	Lcom/sleepycat/b/p/z;
    //   1054: aload_0
    //   1055: getfield 56	com/sleepycat/b/e/b:y	I
    //   1058: i2l
    //   1059: invokevirtual 402	com/sleepycat/b/p/z:b	(J)V
    //   1062: aload_0
    //   1063: getfield 132	com/sleepycat/b/e/b:u	Lcom/sleepycat/b/p/z;
    //   1066: aload_0
    //   1067: getfield 58	com/sleepycat/b/e/b:z	I
    //   1070: i2l
    //   1071: invokevirtual 402	com/sleepycat/b/p/z:b	(J)V
    //   1074: aload_1
    //   1075: athrow
    //   1076: aload_0
    //   1077: getfield 116	com/sleepycat/b/e/b:i	Lcom/sleepycat/b/p/z;
    //   1080: aload_0
    //   1081: getfield 50	com/sleepycat/b/e/b:v	I
    //   1084: i2l
    //   1085: invokevirtual 402	com/sleepycat/b/p/z:b	(J)V
    //   1088: aload_0
    //   1089: getfield 120	com/sleepycat/b/e/b:j	Lcom/sleepycat/b/p/z;
    //   1092: aload_0
    //   1093: getfield 52	com/sleepycat/b/e/b:w	I
    //   1096: i2l
    //   1097: invokevirtual 402	com/sleepycat/b/p/z:b	(J)V
    //   1100: aload_0
    //   1101: getfield 124	com/sleepycat/b/e/b:k	Lcom/sleepycat/b/p/z;
    //   1104: aload_0
    //   1105: getfield 54	com/sleepycat/b/e/b:x	I
    //   1108: i2l
    //   1109: invokevirtual 402	com/sleepycat/b/p/z:b	(J)V
    //   1112: aload_0
    //   1113: getfield 128	com/sleepycat/b/e/b:t	Lcom/sleepycat/b/p/z;
    //   1116: aload_0
    //   1117: getfield 56	com/sleepycat/b/e/b:y	I
    //   1120: i2l
    //   1121: invokevirtual 402	com/sleepycat/b/p/z:b	(J)V
    //   1124: aload_0
    //   1125: getfield 132	com/sleepycat/b/e/b:u	Lcom/sleepycat/b/p/z;
    //   1128: aload_0
    //   1129: getfield 58	com/sleepycat/b/e/b:z	I
    //   1132: i2l
    //   1133: invokevirtual 402	com/sleepycat/b/p/z:b	(J)V
    //   1136: aload_0
    //   1137: monitorexit
    //   1138: return
    //   1139: aload_0
    //   1140: getfield 116	com/sleepycat/b/e/b:i	Lcom/sleepycat/b/p/z;
    //   1143: aload_0
    //   1144: getfield 50	com/sleepycat/b/e/b:v	I
    //   1147: i2l
    //   1148: invokevirtual 402	com/sleepycat/b/p/z:b	(J)V
    //   1151: aload_0
    //   1152: getfield 120	com/sleepycat/b/e/b:j	Lcom/sleepycat/b/p/z;
    //   1155: aload_0
    //   1156: getfield 52	com/sleepycat/b/e/b:w	I
    //   1159: i2l
    //   1160: invokevirtual 402	com/sleepycat/b/p/z:b	(J)V
    //   1163: aload_0
    //   1164: getfield 124	com/sleepycat/b/e/b:k	Lcom/sleepycat/b/p/z;
    //   1167: aload_0
    //   1168: getfield 54	com/sleepycat/b/e/b:x	I
    //   1171: i2l
    //   1172: invokevirtual 402	com/sleepycat/b/p/z:b	(J)V
    //   1175: aload_0
    //   1176: getfield 128	com/sleepycat/b/e/b:t	Lcom/sleepycat/b/p/z;
    //   1179: aload_0
    //   1180: getfield 56	com/sleepycat/b/e/b:y	I
    //   1183: i2l
    //   1184: invokevirtual 402	com/sleepycat/b/p/z:b	(J)V
    //   1187: aload_0
    //   1188: getfield 132	com/sleepycat/b/e/b:u	Lcom/sleepycat/b/p/z;
    //   1191: aload_0
    //   1192: getfield 58	com/sleepycat/b/e/b:z	I
    //   1195: i2l
    //   1196: invokevirtual 402	com/sleepycat/b/p/z:b	(J)V
    //   1199: goto -63 -> 1136
    //   1202: astore_2
    //   1203: goto -415 -> 788
    //   1206: iconst_0
    //   1207: istore 16
    //   1209: aconst_null
    //   1210: astore_1
    //   1211: goto -344 -> 867
    //   1214: iconst_0
    //   1215: istore 14
    //   1217: goto -647 -> 570
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1220	0	this	b
    //   3	29	1	localMap	Map
    //   123	4	1	localObject1	Object
    //   128	47	1	localObject2	Object
    //   319	42	1	locala	com.sleepycat.b.l.a
    //   367	204	1	localObject3	Object
    //   611	1	1	localObject4	Object
    //   670	16	1	localad	com.sleepycat.b.l.ad
    //   785	13	1	localObject5	Object
    //   811	1	1	localf	com.sleepycat.b.l.f
    //   836	375	1	localj	j
    //   8	572	2	localObject6	Object
    //   684	6	2	localObject7	Object
    //   708	169	2	localObject8	Object
    //   1202	1	2	localObject9	Object
    //   600	1	3	localal1	com.sleepycat.b.c.al
    //   783	153	3	localal2	com.sleepycat.b.c.al
    //   162	826	4	localp	com.sleepycat.b.c.p
    //   153	837	5	localHashMap	HashMap
    //   172	297	6	localc	c
    //   144	839	7	locals	com.sleepycat.b.a.s
    //   185	54	8	localIterator	java.util.Iterator
    //   248	566	9	locald	com.sleepycat.b.l.d
    //   583	341	10	localah	com.sleepycat.b.l.ah
    //   608	260	11	localArrayList	java.util.ArrayList
    //   593	352	12	localad1	ad
    //   324	527	13	localObject10	Object
    //   20	1196	14	m	int
    //   338	162	15	n	int
    //   204	1004	16	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   4	11	123	finally
    //   50	123	123	finally
    //   131	133	123	finally
    //   133	174	123	finally
    //   211	238	123	finally
    //   368	395	123	finally
    //   987	1014	123	finally
    //   1014	1076	123	finally
    //   1076	1136	123	finally
    //   1139	1199	123	finally
    //   11	22	128	finally
    //   27	43	128	finally
    //   43	45	128	finally
    //   129	131	128	finally
    //   174	187	367	finally
    //   187	206	367	finally
    //   238	290	367	finally
    //   290	300	367	finally
    //   308	332	367	finally
    //   360	364	367	finally
    //   395	460	367	finally
    //   460	476	367	finally
    //   476	486	367	finally
    //   527	531	367	finally
    //   549	553	367	finally
    //   570	574	367	finally
    //   579	610	367	finally
    //   612	620	367	finally
    //   632	637	367	finally
    //   641	649	367	finally
    //   649	657	367	finally
    //   657	667	367	finally
    //   671	681	367	finally
    //   685	691	367	finally
    //   788	793	367	finally
    //   797	801	367	finally
    //   801	811	367	finally
    //   812	828	367	finally
    //   867	872	367	finally
    //   876	880	367	finally
    //   880	888	367	finally
    //   897	923	367	finally
    //   923	941	367	finally
    //   941	969	367	finally
    //   972	987	367	finally
    //   579	610	670	com/sleepycat/b/l/ad
    //   612	620	670	com/sleepycat/b/l/ad
    //   632	637	670	com/sleepycat/b/l/ad
    //   641	649	670	com/sleepycat/b/l/ad
    //   649	657	670	com/sleepycat/b/l/ad
    //   657	667	670	com/sleepycat/b/l/ad
    //   788	793	670	com/sleepycat/b/l/ad
    //   797	801	670	com/sleepycat/b/l/ad
    //   801	811	670	com/sleepycat/b/l/ad
    //   867	872	670	com/sleepycat/b/l/ad
    //   876	880	670	com/sleepycat/b/l/ad
    //   880	888	670	com/sleepycat/b/l/ad
    //   897	923	670	com/sleepycat/b/l/ad
    //   923	941	670	com/sleepycat/b/l/ad
    //   941	969	670	com/sleepycat/b/l/ad
    //   349	355	684	finally
    //   504	527	684	finally
    //   534	549	684	finally
    //   556	562	684	finally
    //   709	770	783	finally
    //   775	783	783	finally
    //   831	858	783	finally
    //   858	867	783	finally
    //   579	610	811	com/sleepycat/b/l/f
    //   612	620	811	com/sleepycat/b/l/f
    //   632	637	811	com/sleepycat/b/l/f
    //   641	649	811	com/sleepycat/b/l/f
    //   649	657	811	com/sleepycat/b/l/f
    //   657	667	811	com/sleepycat/b/l/f
    //   788	793	811	com/sleepycat/b/l/f
    //   797	801	811	com/sleepycat/b/l/f
    //   801	811	811	com/sleepycat/b/l/f
    //   867	872	811	com/sleepycat/b/l/f
    //   876	880	811	com/sleepycat/b/l/f
    //   880	888	811	com/sleepycat/b/l/f
    //   897	923	811	com/sleepycat/b/l/f
    //   923	941	811	com/sleepycat/b/l/f
    //   941	969	811	com/sleepycat/b/l/f
    //   620	627	1202	finally
    //   691	709	1202	finally
  }
  
  protected final long a()
  {
    return this.g.u.a(com.sleepycat.b.b.d.ak);
  }
  
  public final void a(com.sleepycat.b.l.a parama)
  {
    synchronized (this.e)
    {
      Long localLong = Long.valueOf(parama.c);
      if (!this.A.containsKey(localLong)) {
        this.A.put(localLong, parama.d());
      }
      return;
    }
  }
  
  public final void a(com.sleepycat.b.l.d paramd)
  {
    synchronized (this.e)
    {
      b(paramd);
      return;
    }
  }
  
  /* Error */
  public final void b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 64	com/sleepycat/b/e/b:g	Lcom/sleepycat/b/c/ad;
    //   6: invokevirtual 211	com/sleepycat/b/c/ad:l	()Z
    //   9: istore_2
    //   10: iload_2
    //   11: ifeq +6 -> 17
    //   14: aload_0
    //   15: monitorexit
    //   16: return
    //   17: aload_0
    //   18: aload_0
    //   19: getfield 62	com/sleepycat/b/e/b:d	I
    //   22: iconst_1
    //   23: iadd
    //   24: putfield 62	com/sleepycat/b/e/b:d	I
    //   27: aload_0
    //   28: invokespecial 432	com/sleepycat/b/e/b:g	()V
    //   31: goto -17 -> 14
    //   34: astore_1
    //   35: aload_0
    //   36: monitorexit
    //   37: aload_1
    //   38: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	39	0	this	b
    //   34	4	1	localObject	Object
    //   9	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	10	34	finally
    //   17	31	34	finally
  }
  
  public final void b(com.sleepycat.b.l.d paramd)
  {
    Long localLong = Long.valueOf(paramd.b);
    if (this.A.containsKey(localLong)) {
      return;
    }
    this.A.put(localLong, paramd);
  }
  
  public final void c()
  {
    try
    {
      this.g = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final int d()
  {
    synchronized (this.e)
    {
      int m = this.A.size();
      return m;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\e\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */