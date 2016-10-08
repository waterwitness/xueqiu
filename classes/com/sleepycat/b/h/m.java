package com.sleepycat.b.h;

import com.sleepycat.b.bb;
import com.sleepycat.b.br;
import com.sleepycat.b.c.ao;
import com.sleepycat.b.c.as;
import com.sleepycat.b.c.bd;
import com.sleepycat.b.c.be;
import com.sleepycat.b.c.bg;
import com.sleepycat.b.c.i;
import com.sleepycat.b.g.a.k;
import com.sleepycat.b.g.ae;
import com.sleepycat.b.l.ab;
import com.sleepycat.b.l.ag;
import com.sleepycat.b.l.ah;
import com.sleepycat.b.n.v;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.logging.Level;
import java.util.logging.Logger;

public class m
{
  private final com.sleepycat.b.c.ad b;
  private final int c;
  private final l d;
  private final Map<Long, Long> e;
  private final Set<Long> f;
  private Map<Long, com.sleepycat.b.n.s> g;
  private Set<Long> h;
  private final Set<com.sleepycat.b.c.h> i;
  private final Set<com.sleepycat.b.c.h> j;
  private final Set<com.sleepycat.b.c.h> k;
  private final p l;
  private final com.sleepycat.b.a.y m;
  private final bd n;
  private final Logger o;
  private final Set<com.sleepycat.b.c.h> p;
  private final AtomicBoolean q;
  
  static
  {
    if (!m.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public m(com.sleepycat.b.c.ad paramad)
  {
    this.b = paramad;
    this.c = paramad.u.a(com.sleepycat.b.b.d.L);
    this.e = new HashMap();
    this.f = new HashSet();
    this.g = new HashMap();
    this.h = new HashSet();
    this.i = new HashSet();
    this.j = new HashSet();
    this.k = new HashSet();
    this.m = new com.sleepycat.b.a.y(paramad);
    this.o = com.sleepycat.b.p.w.a(getClass());
    this.l = new p(this.b);
    this.d = new l();
    this.p = new HashSet();
    this.q = new AtomicBoolean(false);
    this.n = this.b.E;
    this.n.b = this.d;
  }
  
  /* Error */
  private long a(i parami, com.sleepycat.b.l.al paramal, com.sleepycat.b.l.y paramy, byte[] paramArrayOfByte, long paramLong, n paramn)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 15
    //   3: iconst_0
    //   4: istore 16
    //   6: iconst_0
    //   7: istore 20
    //   9: iconst_0
    //   10: istore 14
    //   12: iconst_0
    //   13: istore 21
    //   15: iconst_0
    //   16: istore 19
    //   18: iload 15
    //   20: istore 17
    //   22: iload 20
    //   24: istore 12
    //   26: iload 21
    //   28: istore 13
    //   30: aload_2
    //   31: invokevirtual 144	com/sleepycat/b/l/al:a	()V
    //   34: iload 15
    //   36: istore 17
    //   38: iload 20
    //   40: istore 12
    //   42: iload 21
    //   44: istore 13
    //   46: aload_1
    //   47: getfield 149	com/sleepycat/b/c/i:b	Lcom/sleepycat/b/l/ah;
    //   50: aload_2
    //   51: aload 4
    //   53: iconst_1
    //   54: iconst_0
    //   55: getstatic 154	com/sleepycat/b/a:a	Lcom/sleepycat/b/a;
    //   58: invokevirtual 159	com/sleepycat/b/l/ah:a	(Lcom/sleepycat/b/l/al;[BZZLcom/sleepycat/b/a;)Z
    //   61: istore 18
    //   63: iload 18
    //   65: ifne +74 -> 139
    //   68: iload 18
    //   70: istore 17
    //   72: iload 20
    //   74: istore 12
    //   76: iload 21
    //   78: istore 13
    //   80: aload_2
    //   81: getfield 162	com/sleepycat/b/l/al:a	Lcom/sleepycat/b/l/a;
    //   84: astore 4
    //   86: aload 4
    //   88: ifnonnull +51 -> 139
    //   91: aload_2
    //   92: getfield 162	com/sleepycat/b/l/al:a	Lcom/sleepycat/b/l/a;
    //   95: ifnull +10 -> 105
    //   98: aload_2
    //   99: getfield 162	com/sleepycat/b/l/al:a	Lcom/sleepycat/b/l/a;
    //   102: invokevirtual 167	com/sleepycat/b/l/a:C	()V
    //   105: aload_0
    //   106: getfield 111	com/sleepycat/b/h/m:o	Ljava/util/logging/Logger;
    //   109: aload_1
    //   110: ldc -87
    //   112: iconst_1
    //   113: aload_3
    //   114: lload 5
    //   116: aload_2
    //   117: getfield 162	com/sleepycat/b/l/al:a	Lcom/sleepycat/b/l/a;
    //   120: iload 18
    //   122: iconst_0
    //   123: iconst_0
    //   124: aload_2
    //   125: getfield 172	com/sleepycat/b/l/al:d	J
    //   128: aload_2
    //   129: getfield 174	com/sleepycat/b/l/al:b	I
    //   132: invokestatic 177	com/sleepycat/b/h/m:a	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/i;Ljava/lang/String;ZLcom/sleepycat/b/l/ac;JLcom/sleepycat/b/l/j;ZZZJI)V
    //   135: ldc2_w 178
    //   138: lreturn
    //   139: iload 18
    //   141: ifeq +411 -> 552
    //   144: iload 14
    //   146: istore 16
    //   148: iload 18
    //   150: istore 17
    //   152: iload 20
    //   154: istore 12
    //   156: iload 21
    //   158: istore 13
    //   160: lload 5
    //   162: aload_2
    //   163: getfield 172	com/sleepycat/b/l/al:d	J
    //   166: invokestatic 184	com/sleepycat/b/p/j:b	(JJ)I
    //   169: ifle +81 -> 250
    //   172: iconst_1
    //   173: istore 14
    //   175: iconst_1
    //   176: istore 16
    //   178: iload 18
    //   180: istore 17
    //   182: iload 14
    //   184: istore 12
    //   186: iload 21
    //   188: istore 13
    //   190: aload_2
    //   191: getfield 162	com/sleepycat/b/l/al:a	Lcom/sleepycat/b/l/a;
    //   194: aload_2
    //   195: getfield 174	com/sleepycat/b/l/al:b	I
    //   198: aconst_null
    //   199: lload 5
    //   201: invokevirtual 187	com/sleepycat/b/l/a:a	(ILcom/sleepycat/b/l/ac;J)V
    //   204: iload 18
    //   206: istore 17
    //   208: iload 14
    //   210: istore 12
    //   212: iload 21
    //   214: istore 13
    //   216: aload_2
    //   217: getfield 162	com/sleepycat/b/l/al:a	Lcom/sleepycat/b/l/a;
    //   220: aload_2
    //   221: getfield 174	com/sleepycat/b/l/al:b	I
    //   224: invokevirtual 190	com/sleepycat/b/l/a:c	(I)V
    //   227: iload 18
    //   229: istore 17
    //   231: iload 14
    //   233: istore 12
    //   235: iload 21
    //   237: istore 13
    //   239: aload_2
    //   240: getfield 162	com/sleepycat/b/l/al:a	Lcom/sleepycat/b/l/a;
    //   243: aload_2
    //   244: getfield 174	com/sleepycat/b/l/al:b	I
    //   247: invokevirtual 192	com/sleepycat/b/l/a:n	(I)V
    //   250: iload 16
    //   252: istore 15
    //   254: iload 19
    //   256: istore 14
    //   258: iload 18
    //   260: istore 17
    //   262: iload 16
    //   264: istore 12
    //   266: iload 21
    //   268: istore 13
    //   270: lload 5
    //   272: aload_2
    //   273: getfield 172	com/sleepycat/b/l/al:d	J
    //   276: invokestatic 184	com/sleepycat/b/p/j:b	(JJ)I
    //   279: iflt +100 -> 379
    //   282: iload 16
    //   284: istore 15
    //   286: iload 19
    //   288: istore 14
    //   290: iload 18
    //   292: istore 17
    //   294: iload 16
    //   296: istore 12
    //   298: iload 21
    //   300: istore 13
    //   302: aload_3
    //   303: invokevirtual 196	com/sleepycat/b/l/y:i	()Z
    //   306: ifeq +73 -> 379
    //   309: iload 18
    //   311: istore 17
    //   313: iload 16
    //   315: istore 12
    //   317: iload 21
    //   319: istore 13
    //   321: aload 7
    //   323: getfield 201	com/sleepycat/b/h/n:b	Lcom/sleepycat/b/n/z;
    //   326: ifnull +137 -> 463
    //   329: iload 18
    //   331: istore 17
    //   333: iload 16
    //   335: istore 12
    //   337: iload 21
    //   339: istore 13
    //   341: aload_2
    //   342: getfield 162	com/sleepycat/b/l/al:a	Lcom/sleepycat/b/l/a;
    //   345: aload_2
    //   346: getfield 174	com/sleepycat/b/l/al:b	I
    //   349: invokevirtual 203	com/sleepycat/b/l/a:m	(I)V
    //   352: iload 18
    //   354: istore 17
    //   356: iload 16
    //   358: istore 12
    //   360: iload 21
    //   362: istore 13
    //   364: aload_2
    //   365: getfield 162	com/sleepycat/b/l/al:a	Lcom/sleepycat/b/l/a;
    //   368: invokevirtual 205	com/sleepycat/b/l/a:q	()V
    //   371: iload 19
    //   373: istore 14
    //   375: iload 16
    //   377: istore 15
    //   379: iload 14
    //   381: ifne +19 -> 400
    //   384: iload 18
    //   386: istore 17
    //   388: iload 15
    //   390: istore 12
    //   392: iload 14
    //   394: istore 13
    //   396: aload_3
    //   397: invokevirtual 207	com/sleepycat/b/l/y:o	()V
    //   400: iconst_1
    //   401: istore 12
    //   403: iload 18
    //   405: ifeq +539 -> 944
    //   408: aload_2
    //   409: getfield 172	com/sleepycat/b/l/al:d	J
    //   412: lstore 10
    //   414: aload_2
    //   415: getfield 162	com/sleepycat/b/l/al:a	Lcom/sleepycat/b/l/a;
    //   418: ifnull +10 -> 428
    //   421: aload_2
    //   422: getfield 162	com/sleepycat/b/l/al:a	Lcom/sleepycat/b/l/a;
    //   425: invokevirtual 167	com/sleepycat/b/l/a:C	()V
    //   428: aload_0
    //   429: getfield 111	com/sleepycat/b/h/m:o	Ljava/util/logging/Logger;
    //   432: aload_1
    //   433: ldc -87
    //   435: iconst_1
    //   436: aload_3
    //   437: lload 5
    //   439: aload_2
    //   440: getfield 162	com/sleepycat/b/l/al:a	Lcom/sleepycat/b/l/a;
    //   443: iload 18
    //   445: iload 15
    //   447: iload 14
    //   449: aload_2
    //   450: getfield 172	com/sleepycat/b/l/al:d	J
    //   453: aload_2
    //   454: getfield 174	com/sleepycat/b/l/al:b	I
    //   457: invokestatic 177	com/sleepycat/b/h/m:a	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/i;Ljava/lang/String;ZLcom/sleepycat/b/l/ac;JLcom/sleepycat/b/l/j;ZZZJI)V
    //   460: lload 10
    //   462: lreturn
    //   463: iload 18
    //   465: istore 17
    //   467: iload 16
    //   469: istore 12
    //   471: iload 21
    //   473: istore 13
    //   475: aload_2
    //   476: getfield 162	com/sleepycat/b/l/al:a	Lcom/sleepycat/b/l/a;
    //   479: aload_2
    //   480: getfield 174	com/sleepycat/b/l/al:b	I
    //   483: invokevirtual 209	com/sleepycat/b/l/a:b	(I)V
    //   486: goto -134 -> 352
    //   489: astore 4
    //   491: iconst_0
    //   492: istore 14
    //   494: iload 12
    //   496: istore 15
    //   498: iload 14
    //   500: istore 12
    //   502: aload_2
    //   503: getfield 162	com/sleepycat/b/l/al:a	Lcom/sleepycat/b/l/a;
    //   506: ifnull +10 -> 516
    //   509: aload_2
    //   510: getfield 162	com/sleepycat/b/l/al:a	Lcom/sleepycat/b/l/a;
    //   513: invokevirtual 167	com/sleepycat/b/l/a:C	()V
    //   516: aload_0
    //   517: getfield 111	com/sleepycat/b/h/m:o	Ljava/util/logging/Logger;
    //   520: aload_1
    //   521: ldc -87
    //   523: iload 12
    //   525: aload_3
    //   526: lload 5
    //   528: aload_2
    //   529: getfield 162	com/sleepycat/b/l/al:a	Lcom/sleepycat/b/l/a;
    //   532: iload 17
    //   534: iload 15
    //   536: iload 13
    //   538: aload_2
    //   539: getfield 172	com/sleepycat/b/l/al:d	J
    //   542: aload_2
    //   543: getfield 174	com/sleepycat/b/l/al:b	I
    //   546: invokestatic 177	com/sleepycat/b/h/m:a	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/i;Ljava/lang/String;ZLcom/sleepycat/b/l/ac;JLcom/sleepycat/b/l/j;ZZZJI)V
    //   549: aload 4
    //   551: athrow
    //   552: iload 16
    //   554: istore 15
    //   556: iload 19
    //   558: istore 14
    //   560: iload 18
    //   562: istore 17
    //   564: iload 20
    //   566: istore 12
    //   568: iload 21
    //   570: istore 13
    //   572: aload_3
    //   573: invokevirtual 196	com/sleepycat/b/l/y:i	()Z
    //   576: ifne -197 -> 379
    //   579: iconst_1
    //   580: istore 21
    //   582: iconst_1
    //   583: istore 19
    //   585: iload 18
    //   587: istore 17
    //   589: iload 20
    //   591: istore 12
    //   593: iload 21
    //   595: istore 13
    //   597: new 211	com/sleepycat/b/l/e
    //   600: dup
    //   601: aconst_null
    //   602: aload_2
    //   603: getfield 214	com/sleepycat/b/l/al:c	[B
    //   606: lload 5
    //   608: invokespecial 217	com/sleepycat/b/l/e:<init>	(Lcom/sleepycat/b/l/ac;[BJ)V
    //   611: astore 7
    //   613: iload 18
    //   615: istore 17
    //   617: iload 20
    //   619: istore 12
    //   621: iload 21
    //   623: istore 13
    //   625: aload_2
    //   626: getfield 162	com/sleepycat/b/l/al:a	Lcom/sleepycat/b/l/a;
    //   629: astore 4
    //   631: iload 18
    //   633: istore 17
    //   635: iload 20
    //   637: istore 12
    //   639: iload 21
    //   641: istore 13
    //   643: aload 4
    //   645: aload 7
    //   647: invokevirtual 220	com/sleepycat/b/l/a:b	(Lcom/sleepycat/b/l/e;)I
    //   650: istore 8
    //   652: ldc -35
    //   654: iload 8
    //   656: iand
    //   657: ifne +260 -> 917
    //   660: ldc -34
    //   662: iload 8
    //   664: iand
    //   665: istore 9
    //   667: iload 18
    //   669: istore 17
    //   671: iload 20
    //   673: istore 12
    //   675: iload 21
    //   677: istore 13
    //   679: aload 4
    //   681: iload 9
    //   683: invokevirtual 225	com/sleepycat/b/l/a:o	(I)Z
    //   686: ifeq +155 -> 841
    //   689: iconst_1
    //   690: istore 8
    //   692: iload 8
    //   694: ifeq +283 -> 977
    //   697: iload 18
    //   699: istore 17
    //   701: iload 20
    //   703: istore 12
    //   705: iload 21
    //   707: istore 13
    //   709: aload 4
    //   711: iload 9
    //   713: aconst_null
    //   714: lload 5
    //   716: aload_2
    //   717: getfield 214	com/sleepycat/b/l/al:c	[B
    //   720: invokevirtual 228	com/sleepycat/b/l/a:a	(ILcom/sleepycat/b/l/ac;J[B)V
    //   723: iload 18
    //   725: istore 17
    //   727: iload 20
    //   729: istore 12
    //   731: iload 21
    //   733: istore 13
    //   735: aload 4
    //   737: iload 9
    //   739: invokevirtual 190	com/sleepycat/b/l/a:c	(I)V
    //   742: iload 18
    //   744: istore 17
    //   746: iload 20
    //   748: istore 12
    //   750: iload 21
    //   752: istore 13
    //   754: aload 4
    //   756: iload 9
    //   758: invokevirtual 192	com/sleepycat/b/l/a:n	(I)V
    //   761: iload 18
    //   763: istore 17
    //   765: iload 20
    //   767: istore 12
    //   769: iload 21
    //   771: istore 13
    //   773: aload_2
    //   774: iload 9
    //   776: putfield 174	com/sleepycat/b/l/al:b	I
    //   779: iconst_1
    //   780: istore 8
    //   782: iload 16
    //   784: istore 15
    //   786: iload 19
    //   788: istore 14
    //   790: iload 18
    //   792: istore 17
    //   794: iload 20
    //   796: istore 12
    //   798: iload 21
    //   800: istore 13
    //   802: getstatic 48	com/sleepycat/b/h/m:a	Z
    //   805: ifne -426 -> 379
    //   808: iload 16
    //   810: istore 15
    //   812: iload 19
    //   814: istore 14
    //   816: iload 8
    //   818: ifne -439 -> 379
    //   821: iload 18
    //   823: istore 17
    //   825: iload 20
    //   827: istore 12
    //   829: iload 21
    //   831: istore 13
    //   833: new 230	java/lang/AssertionError
    //   836: dup
    //   837: invokespecial 231	java/lang/AssertionError:<init>	()V
    //   840: athrow
    //   841: iload 18
    //   843: istore 17
    //   845: iload 20
    //   847: istore 12
    //   849: iload 21
    //   851: istore 13
    //   853: aload 4
    //   855: iload 9
    //   857: invokevirtual 234	com/sleepycat/b/l/a:g	(I)Lcom/sleepycat/b/l/ac;
    //   860: checkcast 194	com/sleepycat/b/l/y
    //   863: astore 7
    //   865: aload 7
    //   867: ifnull +104 -> 971
    //   870: iload 18
    //   872: istore 17
    //   874: iload 20
    //   876: istore 12
    //   878: iload 21
    //   880: istore 13
    //   882: aload 7
    //   884: invokevirtual 196	com/sleepycat/b/l/y:i	()Z
    //   887: ifeq +78 -> 965
    //   890: goto +81 -> 971
    //   893: iload 18
    //   895: istore 17
    //   897: iload 20
    //   899: istore 12
    //   901: iload 21
    //   903: istore 13
    //   905: aload 4
    //   907: iload 9
    //   909: aconst_null
    //   910: aconst_null
    //   911: invokevirtual 237	com/sleepycat/b/l/a:a	(ILcom/sleepycat/b/l/ac;[B)V
    //   914: goto -222 -> 692
    //   917: iload 18
    //   919: istore 17
    //   921: iload 20
    //   923: istore 12
    //   925: iload 21
    //   927: istore 13
    //   929: aload_2
    //   930: iload 8
    //   932: ldc -18
    //   934: iand
    //   935: putfield 174	com/sleepycat/b/l/al:b	I
    //   938: iconst_1
    //   939: istore 8
    //   941: goto -159 -> 782
    //   944: ldc2_w 178
    //   947: lstore 10
    //   949: goto -535 -> 414
    //   952: astore 4
    //   954: iload 18
    //   956: istore 17
    //   958: iload 14
    //   960: istore 13
    //   962: goto -460 -> 502
    //   965: iconst_0
    //   966: istore 8
    //   968: goto -75 -> 893
    //   971: iconst_1
    //   972: istore 8
    //   974: goto -81 -> 893
    //   977: iconst_0
    //   978: istore 8
    //   980: goto -198 -> 782
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	983	0	this	m
    //   0	983	1	parami	i
    //   0	983	2	paramal	com.sleepycat.b.l.al
    //   0	983	3	paramy	com.sleepycat.b.l.y
    //   0	983	4	paramArrayOfByte	byte[]
    //   0	983	5	paramLong	long
    //   0	983	7	paramn	n
    //   650	329	8	i1	int
    //   665	243	9	i2	int
    //   412	536	10	l1	long
    //   24	900	12	bool1	boolean
    //   28	933	13	bool2	boolean
    //   10	949	14	bool3	boolean
    //   1	810	15	bool4	boolean
    //   4	805	16	bool5	boolean
    //   20	937	17	bool6	boolean
    //   61	894	18	bool7	boolean
    //   16	797	19	bool8	boolean
    //   7	915	20	bool9	boolean
    //   13	913	21	bool10	boolean
    // Exception table:
    //   from	to	target	type
    //   30	34	489	finally
    //   46	63	489	finally
    //   80	86	489	finally
    //   160	172	489	finally
    //   190	204	489	finally
    //   216	227	489	finally
    //   239	250	489	finally
    //   270	282	489	finally
    //   302	309	489	finally
    //   321	329	489	finally
    //   341	352	489	finally
    //   364	371	489	finally
    //   396	400	489	finally
    //   475	486	489	finally
    //   572	579	489	finally
    //   597	613	489	finally
    //   625	631	489	finally
    //   643	652	489	finally
    //   679	689	489	finally
    //   709	723	489	finally
    //   735	742	489	finally
    //   754	761	489	finally
    //   773	779	489	finally
    //   802	808	489	finally
    //   833	841	489	finally
    //   853	865	489	finally
    //   882	890	489	finally
    //   905	914	489	finally
    //   929	938	489	finally
    //   408	414	952	finally
  }
  
  private static String a(List<ag> paramList)
  {
    if (paramList != null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      paramList = paramList.iterator();
      localStringBuilder.append("Trace list:");
      localStringBuilder.append('\n');
      while (paramList.hasNext())
      {
        localStringBuilder.append(paramList.next());
        localStringBuilder.append('\n');
      }
      return localStringBuilder.toString();
    }
    return null;
  }
  
  private void a()
  {
    this.n.a(bg.d);
    Object localObject = this.n;
    int i1 = bb.b;
    ((bd)localObject).a();
    localObject = this.n.c(bg.d);
    com.sleepycat.b.g.b localb;
    if (this.d.e == -1L)
    {
      localb = new com.sleepycat.b.g.b(this.b, this.c, this.d.a, this.d.b);
      if (localb.e())
      {
        ((be)localObject).a();
        ((be)localObject).b();
        if (localb.b) {
          this.d.e = localb.c();
        }
      }
      else
      {
        ((be)localObject).a = localb.g.g;
      }
    }
    else
    {
      if (this.d.e != -1L) {
        break label268;
      }
      this.d.d = -1L;
      this.d.c = -1L;
    }
    for (;;)
    {
      this.l.b = this.d.d;
      this.n.b(bg.d);
      if (this.d.f != -1L) {
        return;
      }
      throw new com.sleepycat.b.aa(this.b, com.sleepycat.b.c.ac.m, "This environment's log file has no root. Since the root is the first entry written into a log at environment creation, this should only happen if the initial creation of the environment was never checkpointed or synced. Please move aside the existing log files to allow the creation of a new environment");
      if (localb.c)
      {
        this.d.g = localb.c();
        break;
      }
      if ((!localb.a) || (this.d.f != -1L)) {
        break;
      }
      this.d.f = localb.c();
      break;
      label268:
      localObject = (a)this.b.w.d(this.d.e);
      this.d.h = ((a)localObject);
      this.d.d = ((a)localObject).b;
      this.d.c = ((a)localObject).d;
      if ((((a)localObject).c != -1L) && (this.d.f == -1L)) {
        this.d.f = ((a)localObject).c;
      }
      this.b.C.a(((a)localObject).k);
    }
  }
  
  private void a(long paramLong, j paramj, be parambe)
  {
    com.sleepycat.b.g.w localw = new com.sleepycat.b.g.w(this.b, this.c, paramLong, this.d.b, true, this.d.g, this.d.e, this.m, this.p, this.q);
    localw.a(com.sleepycat.b.g.af.l);
    localw.a(com.sleepycat.b.g.af.m);
    localw.a(com.sleepycat.b.g.af.v);
    localw.q = true;
    try
    {
      localp = this.b.q;
      while (localw.e())
      {
        parambe.a();
        localObject = localw.b();
        if (((com.sleepycat.b.c.h)localObject).equals(com.sleepycat.b.c.p.a)) {
          localObject = localp.b((com.sleepycat.b.c.h)localObject);
        }
      }
    }
    catch (Exception paramj)
    {
      try
      {
        for (;;)
        {
          a(localw, (i)localObject, localw.h(), paramj);
          parambe.b();
          localp.c((i)localObject);
        }
      }
      finally
      {
        com.sleepycat.b.c.p localp;
        Object localObject;
        localp.c((i)localObject);
      }
      paramj = paramj;
      a(localw.c(), "readMapIns", paramj);
      return;
    }
    parambe.a = localw.g.g;
    this.d.i = localw.b;
    this.d.j = localw.c;
    this.d.k = localw.d;
    this.d.l = localw.t;
    this.d.m = localw.u;
    this.d.n = localw.v;
    if (this.d.h != null)
    {
      paramj = this.d.h;
      if (this.d.i > paramj.f) {
        this.d.i = paramj.f;
      }
      if (this.d.j < paramj.e) {
        this.d.j = paramj.e;
      }
      if (this.d.k > paramj.h) {
        this.d.k = paramj.h;
      }
      if (this.d.l < paramj.g) {
        this.d.l = paramj.g;
      }
      if (this.d.m > paramj.j) {
        this.d.m = paramj.j;
      }
      if (this.d.n < paramj.i) {
        this.d.n = paramj.i;
      }
    }
    paramj = this.b.ac;
    paramLong = this.d.i;
    long l1 = this.d.j;
    paramj.b.set(paramLong);
    paramj.a.set(l1);
    paramj = this.b.q;
    paramLong = this.d.k;
    l1 = this.d.l;
    paramj.d.set(paramLong);
    paramj.c.set(l1);
    paramj = this.b.y;
    paramLong = this.d.m;
    l1 = this.d.n;
    paramj.h.set(paramLong);
    paramj.g.set(l1);
    this.d.o = localw.w;
  }
  
  private void a(long paramLong, String paramString, Exception paramException)
  {
    String str = com.sleepycat.b.p.j.h(paramLong);
    com.sleepycat.b.p.w.a(this.b, "RecoveryManager", paramString, "last LSN = " + str, paramException);
    throw new com.sleepycat.b.aa(this.b, com.sleepycat.b.c.ac.m, "last LSN=" + str, paramException);
  }
  
  private void a(long paramLong, Set<com.sleepycat.b.g.af> paramSet, j paramj, be parambe)
  {
    com.sleepycat.b.g.w localw = new com.sleepycat.b.g.w(this.b, this.c, paramLong, this.d.b, this.d.g, this.d.e, this.m);
    paramSet = paramSet.iterator();
    while (paramSet.hasNext()) {
      localw.a((com.sleepycat.b.g.af)paramSet.next());
    }
    for (;;)
    {
      try
      {
        paramSet = this.b.q;
        if (!localw.e()) {
          break;
        }
        localh = localw.b();
        boolean bool = localh.equals(com.sleepycat.b.c.p.a);
        int i1 = 0;
        parambe.a();
        if (!bool) {
          i1 = 1;
        }
        if (i1 == 0) {
          continue;
        }
        locali = paramSet.b(localh);
        if (locali != null) {}
      }
      catch (Exception paramSet)
      {
        try
        {
          parambe.c();
          paramSet.c(locali);
          continue;
        }
        finally
        {
          com.sleepycat.b.c.h localh;
          i locali;
          paramSet.c(locali);
        }
        paramSet = paramSet;
        a(localw.c(), "readNonMapIns", paramSet);
        return;
      }
      a(localw, locali, localw.h(), paramj);
      parambe.b();
      this.i.add(localh);
    }
    parambe.a = localw.g.g;
  }
  
  private void a(long paramLong, Set<com.sleepycat.b.g.af> paramSet, Set<com.sleepycat.b.c.h> paramSet1, be parambe)
  {
    com.sleepycat.b.g.w localw = new com.sleepycat.b.g.w(this.b, this.c, paramLong, this.d.b, this.d.g, this.d.e, this.m);
    paramSet = paramSet.iterator();
    while (paramSet.hasNext()) {
      localw.a((com.sleepycat.b.g.af)paramSet.next());
    }
    for (;;)
    {
      try
      {
        paramSet = this.b.q;
        if (!localw.e()) {
          break;
        }
        parambe.a();
        localObject = localw.b();
        if (!paramSet1.contains(localObject)) {
          continue;
        }
        localObject = paramSet.b((com.sleepycat.b.c.h)localObject);
        if (localObject != null) {}
      }
      catch (Exception paramSet)
      {
        try
        {
          parambe.c();
          paramSet.c((i)localObject);
          continue;
        }
        finally
        {
          Object localObject;
          paramSet.c((i)localObject);
        }
        paramSet = paramSet;
        a(localw.c(), "readNonMapIns", paramSet);
        return;
      }
      parambe.b();
      a(localw, (i)localObject, true, null);
    }
    parambe.a = localw.g.g;
  }
  
  /* Error */
  private void a(com.sleepycat.b.g.w paramw, i parami, boolean paramBoolean, j paramj)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 427	com/sleepycat/b/g/w:c	()J
    //   4: lstore 15
    //   6: aload_1
    //   7: getfield 536	com/sleepycat/b/g/w:a	Lcom/sleepycat/b/g/a/m;
    //   10: checkcast 538	com/sleepycat/b/g/a/i
    //   13: aload_2
    //   14: invokeinterface 541 2 0
    //   19: astore 6
    //   21: aload 6
    //   23: aload_2
    //   24: lload 15
    //   26: invokevirtual 546	com/sleepycat/b/l/j:b	(Lcom/sleepycat/b/c/i;J)V
    //   29: aload 6
    //   31: invokevirtual 549	com/sleepycat/b/l/j:B	()V
    //   34: aload 4
    //   36: ifnull +121 -> 157
    //   39: aload_2
    //   40: getfield 550	com/sleepycat/b/c/i:a	Lcom/sleepycat/b/c/h;
    //   43: astore 7
    //   45: aload 6
    //   47: getfield 552	com/sleepycat/b/l/j:j	I
    //   50: istore 8
    //   52: aload 4
    //   54: getfield 556	com/sleepycat/b/h/j:a	Ljava/util/Map;
    //   57: aload 7
    //   59: invokeinterface 562 2 0
    //   64: checkcast 564	com/sleepycat/b/h/k
    //   67: astore 5
    //   69: aload 5
    //   71: astore_1
    //   72: aload 5
    //   74: ifnonnull +26 -> 100
    //   77: new 564	com/sleepycat/b/h/k
    //   80: dup
    //   81: iconst_0
    //   82: invokespecial 567	com/sleepycat/b/h/k:<init>	(B)V
    //   85: astore_1
    //   86: aload 4
    //   88: getfield 556	com/sleepycat/b/h/j:a	Ljava/util/Map;
    //   91: aload 7
    //   93: aload_1
    //   94: invokeinterface 571 3 0
    //   99: pop
    //   100: aload_1
    //   101: getfield 572	com/sleepycat/b/h/k:c	Z
    //   104: ifne +53 -> 157
    //   107: iload 8
    //   109: aload_1
    //   110: getfield 573	com/sleepycat/b/h/k:b	I
    //   113: if_icmpge +9 -> 122
    //   116: aload_1
    //   117: iload 8
    //   119: putfield 573	com/sleepycat/b/h/k:b	I
    //   122: iload 8
    //   124: aload_1
    //   125: getfield 575	com/sleepycat/b/h/k:a	I
    //   128: if_icmple +9 -> 137
    //   131: aload_1
    //   132: iload 8
    //   134: putfield 575	com/sleepycat/b/h/k:a	I
    //   137: aload_1
    //   138: getfield 575	com/sleepycat/b/h/k:a	I
    //   141: aload_1
    //   142: getfield 573	com/sleepycat/b/h/k:b	I
    //   145: if_icmple +196 -> 341
    //   148: iconst_1
    //   149: istore 17
    //   151: aload_1
    //   152: iload 17
    //   154: putfield 572	com/sleepycat/b/h/k:c	Z
    //   157: aload 6
    //   159: invokevirtual 577	com/sleepycat/b/l/j:I	()Z
    //   162: ifeq +349 -> 511
    //   165: iconst_1
    //   166: istore 17
    //   168: aload_2
    //   169: getfield 149	com/sleepycat/b/c/i:b	Lcom/sleepycat/b/l/ah;
    //   172: astore 4
    //   174: new 579	com/sleepycat/b/h/o
    //   177: dup
    //   178: aload 4
    //   180: aload 6
    //   182: lload 15
    //   184: invokespecial 582	com/sleepycat/b/h/o:<init>	(Lcom/sleepycat/b/l/ah;Lcom/sleepycat/b/l/j;J)V
    //   187: astore_1
    //   188: iload 17
    //   190: istore_3
    //   191: aload 4
    //   193: aload_1
    //   194: invokevirtual 585	com/sleepycat/b/l/ah:a	(Lcom/sleepycat/b/l/aq;)Lcom/sleepycat/b/l/j;
    //   197: pop
    //   198: iload 17
    //   200: istore_3
    //   201: aload_1
    //   202: getfield 586	com/sleepycat/b/h/o:a	Z
    //   205: ifne +752 -> 957
    //   208: iload 17
    //   210: istore_3
    //   211: aload_1
    //   212: getfield 587	com/sleepycat/b/h/o:b	Z
    //   215: ifeq +132 -> 347
    //   218: goto +739 -> 957
    //   221: iload 8
    //   223: ifeq +11 -> 234
    //   226: iload 17
    //   228: istore_3
    //   229: aload_2
    //   230: iconst_1
    //   231: putfield 589	com/sleepycat/b/c/i:f	Z
    //   234: aload_1
    //   235: getfield 591	com/sleepycat/b/h/o:d	Z
    //   238: ifeq +8 -> 246
    //   241: aload 6
    //   243: invokevirtual 592	com/sleepycat/b/l/j:C	()V
    //   246: aload_0
    //   247: getfield 111	com/sleepycat/b/h/m:o	Ljava/util/logging/Logger;
    //   250: aload_2
    //   251: ldc_w 594
    //   254: iconst_1
    //   255: aload 6
    //   257: lload 15
    //   259: aconst_null
    //   260: iconst_1
    //   261: aload_1
    //   262: getfield 587	com/sleepycat/b/h/o:b	Z
    //   265: aload_1
    //   266: getfield 586	com/sleepycat/b/h/o:a	Z
    //   269: aload_1
    //   270: getfield 595	com/sleepycat/b/h/o:c	J
    //   273: iconst_m1
    //   274: invokestatic 177	com/sleepycat/b/h/m:a	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/i;Ljava/lang/String;ZLcom/sleepycat/b/l/ac;JLcom/sleepycat/b/l/j;ZZZJI)V
    //   277: getstatic 48	com/sleepycat/b/h/m:a	Z
    //   280: ifne +664 -> 944
    //   283: invokestatic 600	com/sleepycat/b/f/d:a	()I
    //   286: ifeq +658 -> 944
    //   289: new 230	java/lang/AssertionError
    //   292: dup
    //   293: new 241	java/lang/StringBuilder
    //   296: dup
    //   297: invokespecial 242	java/lang/StringBuilder:<init>	()V
    //   300: invokestatic 602	com/sleepycat/b/f/d:c	()Ljava/lang/String;
    //   303: invokevirtual 254	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   306: ldc_w 604
    //   309: invokevirtual 254	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   312: lload 15
    //   314: invokestatic 606	com/sleepycat/b/p/j:g	(J)Ljava/lang/String;
    //   317: invokevirtual 254	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   320: ldc_w 608
    //   323: invokevirtual 254	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   326: aload 6
    //   328: getfield 609	com/sleepycat/b/l/j:c	J
    //   331: invokevirtual 612	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   334: invokevirtual 273	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   337: invokespecial 615	java/lang/AssertionError:<init>	(Ljava/lang/Object;)V
    //   340: athrow
    //   341: iconst_0
    //   342: istore 17
    //   344: goto -193 -> 151
    //   347: iconst_0
    //   348: istore 8
    //   350: goto -129 -> 221
    //   353: astore 4
    //   355: iconst_0
    //   356: istore_3
    //   357: new 333	com/sleepycat/b/aa
    //   360: dup
    //   361: aload_0
    //   362: getfield 55	com/sleepycat/b/h/m:b	Lcom/sleepycat/b/c/ad;
    //   365: getstatic 338	com/sleepycat/b/c/ac:m	Lcom/sleepycat/b/c/ac;
    //   368: new 241	java/lang/StringBuilder
    //   371: dup
    //   372: ldc_w 617
    //   375: invokespecial 505	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   378: lload 15
    //   380: invokestatic 498	com/sleepycat/b/p/j:h	(J)Ljava/lang/String;
    //   383: invokevirtual 254	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   386: invokevirtual 273	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   389: aload 4
    //   391: invokespecial 513	com/sleepycat/b/aa:<init>	(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   394: athrow
    //   395: astore 4
    //   397: aload_1
    //   398: getfield 591	com/sleepycat/b/h/o:d	Z
    //   401: ifeq +8 -> 409
    //   404: aload 6
    //   406: invokevirtual 592	com/sleepycat/b/l/j:C	()V
    //   409: aload_0
    //   410: getfield 111	com/sleepycat/b/h/m:o	Ljava/util/logging/Logger;
    //   413: aload_2
    //   414: ldc_w 594
    //   417: iload_3
    //   418: aload 6
    //   420: lload 15
    //   422: aconst_null
    //   423: iconst_1
    //   424: aload_1
    //   425: getfield 587	com/sleepycat/b/h/o:b	Z
    //   428: aload_1
    //   429: getfield 586	com/sleepycat/b/h/o:a	Z
    //   432: aload_1
    //   433: getfield 595	com/sleepycat/b/h/o:c	J
    //   436: iconst_m1
    //   437: invokestatic 177	com/sleepycat/b/h/m:a	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/i;Ljava/lang/String;ZLcom/sleepycat/b/l/ac;JLcom/sleepycat/b/l/j;ZZZJI)V
    //   440: aload 4
    //   442: athrow
    //   443: astore_1
    //   444: aload_1
    //   445: athrow
    //   446: astore_1
    //   447: getstatic 48	com/sleepycat/b/h/m:a	Z
    //   450: ifne +492 -> 942
    //   453: invokestatic 600	com/sleepycat/b/f/d:a	()I
    //   456: ifeq +486 -> 942
    //   459: new 230	java/lang/AssertionError
    //   462: dup
    //   463: new 241	java/lang/StringBuilder
    //   466: dup
    //   467: invokespecial 242	java/lang/StringBuilder:<init>	()V
    //   470: invokestatic 602	com/sleepycat/b/f/d:c	()Ljava/lang/String;
    //   473: invokevirtual 254	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   476: ldc_w 604
    //   479: invokevirtual 254	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   482: lload 15
    //   484: invokestatic 606	com/sleepycat/b/p/j:g	(J)Ljava/lang/String;
    //   487: invokevirtual 254	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   490: ldc_w 608
    //   493: invokevirtual 254	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   496: aload 6
    //   498: getfield 609	com/sleepycat/b/l/j:c	J
    //   501: invokevirtual 612	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   504: invokevirtual 273	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   507: invokespecial 615	java/lang/AssertionError:<init>	(Ljava/lang/Object;)V
    //   510: athrow
    //   511: new 619	java/util/ArrayList
    //   514: dup
    //   515: invokespecial 620	java/util/ArrayList:<init>	()V
    //   518: astore 5
    //   520: iconst_0
    //   521: istore 17
    //   523: ldc2_w 178
    //   526: lstore 11
    //   528: new 622	com/sleepycat/b/l/ae
    //   531: dup
    //   532: invokespecial 623	com/sleepycat/b/l/ae:<init>	()V
    //   535: astore_1
    //   536: aload_2
    //   537: getfield 149	com/sleepycat/b/c/i:b	Lcom/sleepycat/b/l/ah;
    //   540: aload 6
    //   542: iload_3
    //   543: getstatic 625	com/sleepycat/b/a:c	Lcom/sleepycat/b/a;
    //   546: iconst_m1
    //   547: aload 5
    //   549: invokevirtual 628	com/sleepycat/b/l/ah:a	(Lcom/sleepycat/b/l/j;ZLcom/sleepycat/b/a;ILjava/util/List;)Lcom/sleepycat/b/l/ae;
    //   552: astore 4
    //   554: aload 4
    //   556: astore_1
    //   557: lload 11
    //   559: lstore 9
    //   561: aload_1
    //   562: getfield 631	com/sleepycat/b/l/ae:d	Lcom/sleepycat/b/l/j;
    //   565: astore 4
    //   567: aload 4
    //   569: ifnonnull +148 -> 717
    //   572: aload_1
    //   573: getfield 631	com/sleepycat/b/l/ae:d	Lcom/sleepycat/b/l/j;
    //   576: ifnull +10 -> 586
    //   579: aload_1
    //   580: getfield 631	com/sleepycat/b/l/ae:d	Lcom/sleepycat/b/l/j;
    //   583: invokevirtual 592	com/sleepycat/b/l/j:C	()V
    //   586: aload_0
    //   587: getfield 111	com/sleepycat/b/h/m:o	Ljava/util/logging/Logger;
    //   590: aload_2
    //   591: ldc_w 633
    //   594: iconst_1
    //   595: aload 6
    //   597: lload 15
    //   599: aload_1
    //   600: getfield 631	com/sleepycat/b/l/ae:d	Lcom/sleepycat/b/l/j;
    //   603: aload_1
    //   604: getfield 634	com/sleepycat/b/l/ae:a	Z
    //   607: iconst_0
    //   608: iconst_0
    //   609: ldc2_w 178
    //   612: aload_1
    //   613: getfield 636	com/sleepycat/b/l/ae:e	I
    //   616: invokestatic 177	com/sleepycat/b/h/m:a	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/i;Ljava/lang/String;ZLcom/sleepycat/b/l/ac;JLcom/sleepycat/b/l/j;ZZZJI)V
    //   619: goto -342 -> 277
    //   622: astore_1
    //   623: aload 5
    //   625: astore 4
    //   627: aload 4
    //   629: invokestatic 638	com/sleepycat/b/h/m:a	(Ljava/util/List;)Ljava/lang/String;
    //   632: astore 4
    //   634: aload_2
    //   635: getfield 640	com/sleepycat/b/c/i:c	Lcom/sleepycat/b/c/ad;
    //   638: ldc_w 500
    //   641: ldc_w 642
    //   644: new 241	java/lang/StringBuilder
    //   647: dup
    //   648: ldc_w 644
    //   651: invokespecial 505	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   654: lload 15
    //   656: invokestatic 498	com/sleepycat/b/p/j:h	(J)Ljava/lang/String;
    //   659: invokevirtual 254	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   662: ldc_w 646
    //   665: invokevirtual 254	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   668: aload 4
    //   670: invokevirtual 254	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   673: invokevirtual 273	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   676: aload_1
    //   677: invokestatic 508	com/sleepycat/b/p/w:a	(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   680: new 333	com/sleepycat/b/aa
    //   683: dup
    //   684: aload_0
    //   685: getfield 55	com/sleepycat/b/h/m:b	Lcom/sleepycat/b/c/ad;
    //   688: getstatic 338	com/sleepycat/b/c/ac:m	Lcom/sleepycat/b/c/ac;
    //   691: new 241	java/lang/StringBuilder
    //   694: dup
    //   695: ldc_w 617
    //   698: invokespecial 505	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   701: lload 15
    //   703: invokestatic 498	com/sleepycat/b/p/j:h	(J)Ljava/lang/String;
    //   706: invokevirtual 254	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   709: invokevirtual 273	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   712: aload_1
    //   713: invokespecial 513	com/sleepycat/b/aa:<init>	(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   716: athrow
    //   717: iload 17
    //   719: istore_3
    //   720: lload 11
    //   722: lstore 13
    //   724: lload 11
    //   726: lstore 9
    //   728: aload_1
    //   729: getfield 636	com/sleepycat/b/l/ae:e	I
    //   732: iflt +112 -> 844
    //   735: iload 17
    //   737: istore_3
    //   738: lload 11
    //   740: lstore 13
    //   742: lload 11
    //   744: lstore 9
    //   746: aload_1
    //   747: getfield 631	com/sleepycat/b/l/ae:d	Lcom/sleepycat/b/l/j;
    //   750: aload_1
    //   751: getfield 636	com/sleepycat/b/l/ae:e	I
    //   754: invokevirtual 649	com/sleepycat/b/l/j:k	(I)J
    //   757: lload 15
    //   759: lcmp
    //   760: ifeq +84 -> 844
    //   763: iload 17
    //   765: istore_3
    //   766: lload 11
    //   768: lstore 13
    //   770: lload 11
    //   772: lstore 9
    //   774: aload_1
    //   775: getfield 634	com/sleepycat/b/l/ae:a	Z
    //   778: ifeq +66 -> 844
    //   781: lload 11
    //   783: lstore 9
    //   785: aload_1
    //   786: getfield 631	com/sleepycat/b/l/ae:d	Lcom/sleepycat/b/l/j;
    //   789: aload_1
    //   790: getfield 636	com/sleepycat/b/l/ae:e	I
    //   793: invokevirtual 649	com/sleepycat/b/l/j:k	(I)J
    //   796: lstore 11
    //   798: iload 17
    //   800: istore_3
    //   801: lload 11
    //   803: lstore 13
    //   805: lload 11
    //   807: lstore 9
    //   809: lload 11
    //   811: lload 15
    //   813: invokestatic 184	com/sleepycat/b/p/j:b	(JJ)I
    //   816: ifge +28 -> 844
    //   819: lload 11
    //   821: lstore 9
    //   823: aload_1
    //   824: getfield 631	com/sleepycat/b/l/ae:d	Lcom/sleepycat/b/l/j;
    //   827: aload_1
    //   828: getfield 636	com/sleepycat/b/l/ae:e	I
    //   831: aload 6
    //   833: lload 15
    //   835: invokevirtual 650	com/sleepycat/b/l/j:a	(ILcom/sleepycat/b/l/ac;J)V
    //   838: iconst_1
    //   839: istore_3
    //   840: lload 11
    //   842: lstore 13
    //   844: aload_1
    //   845: getfield 631	com/sleepycat/b/l/ae:d	Lcom/sleepycat/b/l/j;
    //   848: ifnull +10 -> 858
    //   851: aload_1
    //   852: getfield 631	com/sleepycat/b/l/ae:d	Lcom/sleepycat/b/l/j;
    //   855: invokevirtual 592	com/sleepycat/b/l/j:C	()V
    //   858: aload_0
    //   859: getfield 111	com/sleepycat/b/h/m:o	Ljava/util/logging/Logger;
    //   862: aload_2
    //   863: ldc_w 633
    //   866: iconst_1
    //   867: aload 6
    //   869: lload 15
    //   871: aload_1
    //   872: getfield 631	com/sleepycat/b/l/ae:d	Lcom/sleepycat/b/l/j;
    //   875: aload_1
    //   876: getfield 634	com/sleepycat/b/l/ae:a	Z
    //   879: iload_3
    //   880: iconst_0
    //   881: lload 13
    //   883: aload_1
    //   884: getfield 636	com/sleepycat/b/l/ae:e	I
    //   887: invokestatic 177	com/sleepycat/b/h/m:a	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/i;Ljava/lang/String;ZLcom/sleepycat/b/l/ac;JLcom/sleepycat/b/l/j;ZZZJI)V
    //   890: goto -613 -> 277
    //   893: aload_1
    //   894: getfield 631	com/sleepycat/b/l/ae:d	Lcom/sleepycat/b/l/j;
    //   897: ifnull +10 -> 907
    //   900: aload_1
    //   901: getfield 631	com/sleepycat/b/l/ae:d	Lcom/sleepycat/b/l/j;
    //   904: invokevirtual 592	com/sleepycat/b/l/j:C	()V
    //   907: aload_0
    //   908: getfield 111	com/sleepycat/b/h/m:o	Ljava/util/logging/Logger;
    //   911: aload_2
    //   912: ldc_w 633
    //   915: iconst_0
    //   916: aload 6
    //   918: lload 15
    //   920: aload_1
    //   921: getfield 631	com/sleepycat/b/l/ae:d	Lcom/sleepycat/b/l/j;
    //   924: aload_1
    //   925: getfield 634	com/sleepycat/b/l/ae:a	Z
    //   928: iconst_0
    //   929: iconst_0
    //   930: lload 9
    //   932: aload_1
    //   933: getfield 636	com/sleepycat/b/l/ae:e	I
    //   936: invokestatic 177	com/sleepycat/b/h/m:a	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/i;Ljava/lang/String;ZLcom/sleepycat/b/l/ac;JLcom/sleepycat/b/l/j;ZZZJI)V
    //   939: aload 4
    //   941: athrow
    //   942: aload_1
    //   943: athrow
    //   944: return
    //   945: astore_1
    //   946: aconst_null
    //   947: astore 4
    //   949: goto -322 -> 627
    //   952: astore 4
    //   954: goto -61 -> 893
    //   957: iconst_1
    //   958: istore 8
    //   960: goto -739 -> 221
    //   963: astore 4
    //   965: lload 11
    //   967: lstore 9
    //   969: goto -76 -> 893
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	972	0	this	m
    //   0	972	1	paramw	com.sleepycat.b.g.w
    //   0	972	2	parami	i
    //   0	972	3	paramBoolean	boolean
    //   0	972	4	paramj	j
    //   67	557	5	localObject	Object
    //   19	898	6	localj	com.sleepycat.b.l.j
    //   43	49	7	localh	com.sleepycat.b.c.h
    //   50	909	8	i1	int
    //   559	409	9	l1	long
    //   526	440	11	l2	long
    //   722	160	13	l3	long
    //   4	915	15	l4	long
    //   149	650	17	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   191	198	353	java/lang/Exception
    //   201	208	353	java/lang/Exception
    //   211	218	353	java/lang/Exception
    //   229	234	353	java/lang/Exception
    //   191	198	395	finally
    //   201	208	395	finally
    //   211	218	395	finally
    //   229	234	395	finally
    //   357	395	395	finally
    //   157	165	443	com/sleepycat/b/aa
    //   168	188	443	com/sleepycat/b/aa
    //   234	246	443	com/sleepycat/b/aa
    //   246	277	443	com/sleepycat/b/aa
    //   397	409	443	com/sleepycat/b/aa
    //   409	443	443	com/sleepycat/b/aa
    //   511	520	443	com/sleepycat/b/aa
    //   528	536	443	com/sleepycat/b/aa
    //   572	586	443	com/sleepycat/b/aa
    //   586	619	443	com/sleepycat/b/aa
    //   844	858	443	com/sleepycat/b/aa
    //   858	890	443	com/sleepycat/b/aa
    //   893	907	443	com/sleepycat/b/aa
    //   907	942	443	com/sleepycat/b/aa
    //   157	165	446	finally
    //   168	188	446	finally
    //   234	246	446	finally
    //   246	277	446	finally
    //   397	409	446	finally
    //   409	443	446	finally
    //   444	446	446	finally
    //   511	520	446	finally
    //   528	536	446	finally
    //   572	586	446	finally
    //   586	619	446	finally
    //   627	717	446	finally
    //   844	858	446	finally
    //   858	890	446	finally
    //   893	907	446	finally
    //   907	942	446	finally
    //   528	536	622	java/lang/Exception
    //   572	586	622	java/lang/Exception
    //   586	619	622	java/lang/Exception
    //   844	858	622	java/lang/Exception
    //   858	890	622	java/lang/Exception
    //   893	907	622	java/lang/Exception
    //   907	942	622	java/lang/Exception
    //   157	165	945	java/lang/Exception
    //   168	188	945	java/lang/Exception
    //   234	246	945	java/lang/Exception
    //   246	277	945	java/lang/Exception
    //   397	409	945	java/lang/Exception
    //   409	443	945	java/lang/Exception
    //   511	520	945	java/lang/Exception
    //   561	567	952	finally
    //   728	735	952	finally
    //   746	763	952	finally
    //   774	781	952	finally
    //   785	798	952	finally
    //   809	819	952	finally
    //   823	838	952	finally
    //   536	554	963	finally
  }
  
  private void a(Set<com.sleepycat.b.g.af> paramSet, be parambe)
  {
    long l1 = this.d.b;
    long l2 = this.d.c;
    com.sleepycat.b.g.y localy = new com.sleepycat.b.g.y(this.b, this.c, l2, true, -1L, l1, this.d.e);
    paramSet = paramSet.iterator();
    while (paramSet.hasNext()) {
      localy.a((com.sleepycat.b.g.af)paramSet.next());
    }
    com.sleepycat.b.c.p localp = this.b.q;
    com.sleepycat.b.l.al localal = new com.sleepycat.b.l.al();
    int i1;
    Object localObject1;
    Object localObject2;
    for (;;)
    {
      try
      {
        if (!localy.e()) {
          break label1154;
        }
        parambe.a();
        if ((!localy.b()) || (localy.k.i)) {
          break label346;
        }
        if (this.d.d == -1L)
        {
          i1 = 1;
          paramSet = localy.k();
          localObject1 = (com.sleepycat.b.n.z)this.g.get(paramSet);
          localObject2 = (com.sleepycat.b.n.z)this.d.p.get(paramSet);
          if (localObject1 == null) {
            break label279;
          }
          paramSet = new n((com.sleepycat.b.n.z)localObject1);
          if (!paramSet.a) {
            continue;
          }
          this.b.u();
          localObject1 = localy.j();
          localObject2 = localp.b((com.sleepycat.b.c.h)localObject1);
          if (localObject2 != null) {
            break;
          }
          parambe.c();
          continue;
        }
        if (com.sleepycat.b.p.j.b(localy.c(), this.d.d) < 0) {
          break label1172;
        }
      }
      catch (Exception paramSet)
      {
        a(localy.c(), "redoLns", paramSet);
        return;
      }
      i1 = 1;
      continue;
      label279:
      if (localObject2 != null)
      {
        paramSet = new n((com.sleepycat.b.n.z)localObject2);
      }
      else
      {
        if (i1 != 0)
        {
          if (paramSet == null)
          {
            paramSet = n.e;
            continue;
          }
          paramSet = (Long)this.e.get(paramSet);
          if (paramSet != null)
          {
            paramSet = new n(paramSet.longValue());
            continue;
          }
        }
        label346:
        paramSet = n.d;
      }
    }
    Object localObject3;
    com.sleepycat.b.l.y localy1;
    com.sleepycat.b.n.z localz;
    boolean bool1;
    try
    {
      localObject3 = localy.h();
      ((k)localObject3).c((i)localObject2);
      localy1 = ((k)localObject3).j();
      l1 = localy.c();
      parambe.b();
      localObject3 = ((k)localObject3).k();
      localy1.a((i)localObject2, l1);
      if (paramSet.b == null) {
        break label607;
      }
      localz = paramSet.b;
      l2 = localy.v();
      bool1 = localy.w();
      localz.e(l1);
      localObject4 = localz.b(l1, com.sleepycat.b.n.o.b, false, (i)localObject2);
      if (((com.sleepycat.b.n.m)localObject4).a == com.sleepycat.b.n.h.f) {
        throw com.sleepycat.b.aa.c("Resurrected lock denied txn=" + localz.k + " logLsn=" + com.sleepycat.b.p.j.h(l1) + " abortLsn=" + com.sleepycat.b.p.j.h(l2));
      }
    }
    finally
    {
      localp.c((i)localObject2);
    }
    ((com.sleepycat.b.n.m)localObject4).a(l2, bool1, false);
    Object localObject4 = ((com.sleepycat.b.n.m)localObject4).b;
    if (localObject4 == null) {
      throw com.sleepycat.b.aa.c("Resurrected lock has no write info txn=" + localz.k + " logLsn=" + com.sleepycat.b.p.j.h(l1) + " abortLsn=" + com.sleepycat.b.p.j.h(l2));
    }
    ((com.sleepycat.b.n.am)localObject4).a((i)localObject2, 0);
    label607:
    l2 = a((i)localObject2, localal, localy1, (byte[])localObject3, l1, paramSet);
    this.i.add(localObject1);
    label679:
    label756:
    long l4;
    label832:
    long l5;
    boolean bool2;
    int i2;
    if ((localy1 instanceof com.sleepycat.b.l.aa))
    {
      localObject1 = (com.sleepycat.b.l.aa)localy1;
      if (!((com.sleepycat.b.l.aa)localObject1).a.e()) {
        break label1178;
      }
      this.j.add(((com.sleepycat.b.l.aa)localObject1).a.a);
      break label1178;
      if ((localObject1 != null) && (((com.sleepycat.b.l.aa)localObject1).b)) {
        ((com.sleepycat.b.l.aa)localObject1).a.a(this.m, l1);
      }
      if (paramSet.b == null)
      {
        localObject3 = localy.i();
        if (localObject3 == null) {}
      }
      switch (1.a[localObject3.h.ordinal()])
      {
      case 1: 
        if ((localObject1 != null) && (((com.sleepycat.b.l.aa)localObject1).b)) {
          this.k.remove(((com.sleepycat.b.l.aa)localObject1).a.a);
        }
        l4 = paramSet.c;
        if (paramSet.c == -1L) {
          if ((paramSet.a) && (paramSet.c == -1L) && (paramSet.b == null))
          {
            i1 = 1;
            break label1184;
            l5 = localy.v();
            bool2 = localy.w();
            i1 = localy.d();
            if (localy1.i()) {
              this.m.a(l1, l1, null, i1, ((i)localObject2).a, false);
            }
            if (l2 != -1L)
            {
              i2 = com.sleepycat.b.p.j.b(l1, l2);
              if (i2 != 0)
              {
                if (i2 >= 0) {
                  break label1136;
                }
                if ((!bool1) || (this.h.contains(Long.valueOf(l2)))) {
                  break label1130;
                }
                bool1 = true;
              }
            }
          }
        }
        break;
      }
    }
    label938:
    label1130:
    label1136:
    label1154:
    label1172:
    label1178:
    label1184:
    label1195:
    for (;;)
    {
      this.m.a(l1, l2, null, this.m.a(i1, l1), ((i)localObject2).a, bool1);
      if ((i2 <= 0) && (l5 != -1L) && (!bool2) && (l4 != -1L)) {
        this.m.a(l5, l4, null, 0, ((i)localObject2).a, false);
      }
      localp.c((i)localObject2);
      break;
      if ((!a) && (!((com.sleepycat.b.g.a.o)localObject3).f())) {
        throw new AssertionError();
      }
      localObject3 = (ab)((com.sleepycat.b.g.a.o)localObject3).j();
      this.k.add(((ab)localObject3).a);
      break label756;
      localObject3 = ((com.sleepycat.b.g.a.o)localObject3).i;
      if ((!a) && (localObject3 == null)) {
        throw new AssertionError();
      }
      this.k.add(localObject3);
      break label756;
      i1 = 0;
      while (i1 == 0)
      {
        bool1 = false;
        break label832;
        bool1 = false;
        break label1195;
        i1 = 0;
        long l3 = l1;
        l1 = l2;
        l2 = l3;
        break label938;
        parambe.a = localy.g.g;
        return;
        localObject1 = null;
        break label679;
        i1 = 0;
        break;
        break label679;
        break label756;
      }
      bool1 = true;
      break label832;
    }
  }
  
  private void a(Set<com.sleepycat.b.g.af> paramSet, boolean paramBoolean, be parambe)
  {
    long l1 = this.d.c;
    long l2 = this.d.a;
    long l3 = this.d.b;
    com.sleepycat.b.g.y localy = new com.sleepycat.b.g.y(this.b, this.c, l2, false, l3, l1, this.d.e);
    paramSet = paramSet.iterator();
    while (paramSet.hasNext()) {
      localy.a((com.sleepycat.b.g.af)paramSet.next());
    }
    com.sleepycat.b.c.p localp = this.b.q;
    this.l.c = paramBoolean;
    paramSet = this.l;
    if (paramSet.c) {
      paramSet = new t(paramSet);
    }
    Object localObject2;
    Object localObject1;
    Object localObject3;
    int i1;
    for (;;)
    {
      Object localObject5;
      Object localObject4;
      try
      {
        if (!localy.e()) {
          break label1718;
        }
        parambe.a();
        if (!localy.b()) {
          break label951;
        }
        localObject2 = localy.k();
        if (localObject2 == null) {
          continue;
        }
        if (!paramSet.a(localy.c(), ((Long)localObject2).longValue())) {
          break label533;
        }
        localObject5 = this.m;
        if (paramSet.c.d) {
          continue;
        }
        l1 = localy.c();
        localObject4 = p.a(paramSet.d).q;
        localObject1 = localy.h();
        localObject3 = ((com.sleepycat.b.c.p)localObject4).b(((k)localObject1).d);
        if (localObject3 != null) {
          break label470;
        }
        localObject1 = null;
        if (localObject1 == null) {
          continue;
        }
        localObject6 = paramSet.c;
        l2 = ((Long)localObject2).longValue();
        com.sleepycat.b.c.ad localad = p.a(paramSet.d);
        localObject3 = (com.sleepycat.b.n.ad)((r)localObject6).f.get(Long.valueOf(l2));
        localObject2 = localObject3;
        if (localObject3 == null)
        {
          localObject2 = new com.sleepycat.b.n.ad(l1, l2, ((r)localObject6).b, localad);
          ((r)localObject6).f.put(Long.valueOf(l2), localObject2);
        }
      }
      catch (RuntimeException paramSet)
      {
        try
        {
          localObject2 = ((com.sleepycat.b.n.ad)localObject2).a();
          a(p.a(paramSet.d).v, Level.FINER, (com.sleepycat.b.n.al)localObject1, (com.sleepycat.b.n.af)localObject2, new com.sleepycat.b.l.al(), l1);
          if (paramSet.c.c == -1L) {
            break label1772;
          }
          i1 = 1;
          label387:
          if ((i1 == 0) && (!localy.k.i)) {
            p.b(paramSet.d).add(Long.valueOf(l1));
          }
          ((com.sleepycat.b.c.p)localObject4).c(((com.sleepycat.b.n.al)localObject1).c);
          p.a(l1, (com.sleepycat.b.n.al)localObject1, (com.sleepycat.b.a.y)localObject5);
          continue;
        }
        finally
        {
          Object localObject6;
          ((com.sleepycat.b.c.p)localObject4).c(((com.sleepycat.b.n.al)localObject1).c);
        }
        paramSet = paramSet;
        a(localy.c(), "undoLNs", paramSet);
      }
      label457:
      return;
      paramSet = new q(paramSet);
      continue;
      label470:
      ((k)localObject1).c((i)localObject3);
      localObject6 = ((k)localObject1).j();
      l2 = localy.c();
      ((com.sleepycat.b.l.y)localObject6).a((i)localObject3, l2);
      localObject1 = new com.sleepycat.b.n.al((k)localObject1, (com.sleepycat.b.l.y)localObject6, l2, (i)localObject3);
      continue;
      label533:
      if (!this.e.containsKey(localObject2)) {
        if (this.g.get(localObject2) != null)
        {
          this.h.add(Long.valueOf(localy.c()));
        }
        else
        {
          if ((!this.b.I()) || (this.f.contains(localObject2)) || (!localy.g())) {
            break label1778;
          }
          i1 = 1;
          label617:
          if (i1 != 0)
          {
            l1 = ((Long)localObject2).longValue();
            if (this.d.p.get(Long.valueOf(l1)) == null) {
              this.d.p.put(Long.valueOf(l1), this.b.b(l1));
            }
            this.h.add(Long.valueOf(localy.c()));
          }
          else
          {
            this.b.u();
            localObject2 = localy.j();
            localObject1 = localp.b((com.sleepycat.b.c.h)localObject2);
            if (localObject1 != null)
            {
              localObject5 = localy.h();
              ((k)localObject5).c((i)localObject1);
              localObject3 = ((k)localObject5).j();
              localObject4 = new com.sleepycat.b.l.al();
              l1 = localy.c();
              l2 = localy.v();
              paramBoolean = localy.w();
            }
            try
            {
              ((com.sleepycat.b.l.y)localObject3).a((i)localObject1, l1);
              localObject5 = ((k)localObject5).k();
              a(this.o, Level.FINE, (i)localObject1, (com.sleepycat.b.l.al)localObject4, (com.sleepycat.b.l.y)localObject3, (byte[])localObject5, l1, l2, paramBoolean, true, false);
              i1 = localy.d();
              if ((!this.m.a(l1, l1, null, i1, ((i)localObject1).a, true)) && (!((com.sleepycat.b.l.y)localObject3).i())) {
                this.m.b(l1, null, i1, ((i)localObject1).a);
              }
              this.i.add(localObject2);
              if ((localObject3 instanceof com.sleepycat.b.l.aa))
              {
                localObject2 = (com.sleepycat.b.l.aa)localObject3;
                if (((com.sleepycat.b.l.aa)localObject2).a.e()) {
                  this.j.add(((com.sleepycat.b.l.aa)localObject2).a.a);
                }
              }
              localp.c((i)localObject1);
              parambe.b();
              continue;
            }
            finally
            {
              localp.c((i)localObject1);
            }
            label951:
            if (localy.l())
            {
              l1 = localy.m();
              localObject2 = Long.valueOf(l1);
              if ((!this.e.containsKey(localObject2)) && (!this.f.contains(localObject2)))
              {
                localObject1 = new br();
                localObject1 = com.sleepycat.b.n.s.a(this.b, (br)localObject1, l1);
                ((com.sleepycat.b.n.s)localObject1).c(0L);
                this.g.put(localObject2, localObject1);
                ((com.sleepycat.b.n.z)localObject1).t = ((byte)(((com.sleepycat.b.n.z)localObject1).t | 0x1));
                localObject2 = this.b.y;
                localObject3 = localy.n();
                if (!((com.sleepycat.b.n.aj)localObject2).e.containsKey(localObject3))
                {
                  ((com.sleepycat.b.n.aj)localObject2).e.put(localObject3, localObject1);
                  ((com.sleepycat.b.n.aj)localObject2).b.n.d(ao.m);
                }
                ((com.sleepycat.b.n.aj)localObject2).l.f();
                com.sleepycat.b.p.w.a(this.o, this.b, Level.INFO, "Found unfinished prepare record: id: " + localy.m() + " Xid: " + localy.n());
              }
              parambe.d();
            }
            else if (localy.s())
            {
              this.f.add(Long.valueOf(localy.t()));
              parambe.d();
            }
            else if (localy.o())
            {
              localObject1 = this.l;
              l1 = localy.c();
              l2 = localy.u();
              ((p)localObject1).a(l1);
              if ((com.sleepycat.b.n.aj.a(l2)) && (((p)localObject1).f != null) && (((p)localObject1).f.c(l1))) {
                ((p)localObject1).f.a("Commit at " + com.sleepycat.b.p.j.h(l1) + " is within rollback period.");
              }
              this.e.put(Long.valueOf(localy.u()), Long.valueOf(localy.c()));
              parambe.d();
            }
            else
            {
              if (!localy.p()) {
                break label1537;
              }
              localObject1 = this.l;
              localObject2 = (v)localy.r();
              l1 = localy.c();
              ((p)localObject1).a(l1);
              if (((p)localObject1).f != null)
              {
                localObject3 = ((p)localObject1).f.a((v)localObject2, l1);
                if (localObject3 == null) {
                  break label1795;
                }
                if (!((r)localObject3).a(l1)) {
                  break;
                }
                if ((!r.i) && (((r)localObject3).e != null)) {
                  throw new AssertionError();
                }
                ((r)localObject3).e = ((v)localObject2).c;
                break label1784;
              }
              ((p)localObject1).f = new r((p)localObject1, (v)localObject2, l1);
              ((p)localObject1).g.add(((p)localObject1).f);
              label1490:
              parambe.d();
            }
          }
        }
      }
    }
    ((r)localObject3).h = new r(((r)localObject3).a, (v)localObject2, l1);
    ((r)localObject3).g.add(((r)localObject3).h);
    break label1784;
    label1537:
    if (localy.q())
    {
      localObject1 = this.l;
      localObject2 = (com.sleepycat.b.n.u)localy.r();
      l1 = localy.c();
      ((p)localObject1).a(l1);
      if (((p)localObject1).f != null)
      {
        localObject3 = ((p)localObject1).f.a((com.sleepycat.b.n.u)localObject2, l1);
        if (localObject3 == null) {
          break label1809;
        }
        ((r)localObject3).h = new r(((r)localObject3).a, (com.sleepycat.b.n.u)localObject2, l1);
        ((r)localObject3).g.add(((r)localObject3).h);
        i1 = 1;
        break label1801;
      }
      ((p)localObject1).f = new r((p)localObject1, (com.sleepycat.b.n.u)localObject2, l1);
      ((p)localObject1).g.add(((p)localObject1).f);
    }
    label1718:
    label1772:
    label1778:
    label1784:
    label1795:
    label1799:
    label1801:
    label1809:
    label1813:
    for (;;)
    {
      parambe.d();
      break;
      throw com.sleepycat.b.aa.a(this.b, "LNreader should not have picked up type " + localy.k.toString());
      parambe.a = localy.g.g;
      paramSet = this.l;
      if (paramSet.a.g) {
        break label457;
      }
      p.a(paramSet.a, paramSet.e, paramSet.d);
      paramSet.e = new ArrayList();
      return;
      i1 = 0;
      break label387;
      i1 = 0;
      break label617;
      for (i1 = 1;; i1 = 0)
      {
        if (i1 != 0) {
          break label1799;
        }
        break;
      }
      break label1490;
      for (;;)
      {
        if (i1 != 0) {
          break label1813;
        }
        break;
        i1 = 0;
      }
    }
  }
  
  public static void a(Logger paramLogger, i parami)
  {
    if (paramLogger.isLoggable(Level.FINE))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("RootDelete:");
      localStringBuilder.append(" Dbid=").append(parami.a);
      com.sleepycat.b.p.w.a(paramLogger, parami.c, Level.FINE, localStringBuilder.toString());
    }
  }
  
  private static void a(Logger paramLogger, i parami, String paramString, boolean paramBoolean1, com.sleepycat.b.l.ac paramac, long paramLong1, com.sleepycat.b.l.j paramj, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, long paramLong2, int paramInt)
  {
    a(paramLogger, Level.FINE, parami, paramString, paramBoolean1, paramac, paramLong1, paramj, paramBoolean2, paramBoolean3, paramBoolean4, paramLong2, -1L, paramInt);
  }
  
  public static void a(Logger paramLogger, Level paramLevel, i parami, com.sleepycat.b.l.al paramal, com.sleepycat.b.l.y paramy, byte[] paramArrayOfByte, long paramLong1, long paramLong2, boolean paramBoolean)
  {
    a(paramLogger, paramLevel, parami, paramal, paramy, paramArrayOfByte, paramLong1, paramLong2, paramBoolean, false, false);
  }
  
  private static void a(Logger paramLogger, Level paramLevel, i parami, com.sleepycat.b.l.al paramal, com.sleepycat.b.l.y paramy, byte[] paramArrayOfByte, long paramLong1, long paramLong2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    boolean bool3 = false;
    boolean bool5 = false;
    boolean bool6 = false;
    boolean bool4 = false;
    boolean bool1 = bool3;
    boolean bool2 = bool4;
    try
    {
      paramal.a();
      bool1 = bool3;
      bool2 = bool4;
      bool3 = parami.b.a(paramal, paramArrayOfByte, paramBoolean2, true, com.sleepycat.b.a.a);
      paramBoolean2 = bool6;
      if (!bool3) {
        break label438;
      }
      bool1 = bool3;
      bool2 = bool4;
      if (paramal.d != -1L) {
        break label312;
      }
      bool1 = bool3;
      bool2 = bool4;
      i1 = paramal.b;
      bool1 = bool3;
      bool2 = bool4;
      if (!paramal.a.o(i1))
      {
        bool1 = bool3;
        bool2 = bool4;
        if (!paramal.a.l(i1))
        {
          bool1 = bool3;
          bool2 = bool4;
          throw com.sleepycat.b.aa.c(paramal + " has a NULL_LSN but the slot is not empty. KD=" + paramal.a.o(i1) + " PD=" + paramal.a.l(i1));
        }
      }
    }
    finally
    {
      if (paramal.a != null) {
        paramal.a.C();
      }
      a(paramLogger, paramLevel, parami, "LNUndo", false, paramy, paramLong1, paramal.a, bool1, bool2, false, paramal.d, paramLong2, paramal.b);
    }
    if (paramal.a != null) {
      paramal.a.C();
    }
    paramArrayOfByte = paramal.a;
    long l1 = paramal.d;
    int i1 = paramal.b;
    paramBoolean2 = bool5;
    paramal = paramArrayOfByte;
    a(paramLogger, paramLevel, parami, "LNUndo", true, paramy, paramLong1, paramal, bool3, paramBoolean2, false, l1, paramLong2, i1);
    return;
    label312:
    bool1 = bool3;
    bool2 = bool4;
    if (com.sleepycat.b.p.j.b(paramLong1, paramal.d) == 0)
    {
      i1 = 1;
      label335:
      paramBoolean2 = bool6;
      if (i1 != 0)
      {
        if (paramLong2 != -1L) {
          break label504;
        }
        if (!paramBoolean3) {
          break label482;
        }
        bool1 = bool3;
        bool2 = bool4;
        paramArrayOfByte = paramal.a;
        bool1 = bool3;
        bool2 = bool4;
        i1 = paramal.b;
        bool1 = bool3;
        bool2 = bool4;
        paramArrayOfByte.b(i1);
        bool1 = bool3;
        bool2 = bool4;
        paramArrayOfByte.a(i1, -1L);
      }
    }
    for (;;)
    {
      bool1 = bool3;
      bool2 = bool4;
      paramal.a.q();
      paramBoolean2 = bool6;
      label438:
      if (paramal.a != null) {
        paramal.a.C();
      }
      paramArrayOfByte = paramal.a;
      l1 = paramal.d;
      i1 = paramal.b;
      paramal = paramArrayOfByte;
      break;
      i1 = 0;
      break label335;
      label482:
      bool1 = bool3;
      bool2 = bool4;
      paramal.a.b(paramal.b);
    }
    label504:
    bool4 = true;
    paramBoolean2 = true;
    bool1 = bool3;
    bool2 = paramBoolean2;
    paramal.a.a(paramal.b, null, paramLong2);
    if (paramBoolean1)
    {
      bool1 = bool3;
      bool2 = paramBoolean2;
      paramal.a.b(paramal.b);
      label556:
      if (!paramBoolean3)
      {
        bool1 = bool3;
        bool2 = paramBoolean2;
        if (parami.o == null)
        {
          bool1 = bool3;
          bool2 = paramBoolean2;
          if (parami.n == null) {
            break label723;
          }
        }
      }
      bool1 = bool3;
      bool2 = paramBoolean2;
      paramArrayOfByte = (com.sleepycat.b.l.y)paramal.a.g(paramal.b);
      if ((!paramBoolean3) || (paramArrayOfByte == null)) {
        break label723;
      }
      bool1 = bool3;
      bool2 = paramBoolean2;
      if (!paramArrayOfByte.i()) {
        break label723;
      }
    }
    label723:
    for (i1 = 1;; i1 = 0)
    {
      if (i1 != 0)
      {
        bool1 = bool3;
        bool2 = paramBoolean2;
        paramal.a.m(paramal.b);
        paramBoolean2 = bool4;
        break;
        bool1 = bool3;
        bool2 = paramBoolean2;
        paramal.a.c(paramal.b);
        break label556;
      }
      bool1 = bool3;
      bool2 = paramBoolean2;
      paramal.a.n(paramal.b);
      paramBoolean2 = bool4;
      break;
    }
  }
  
  private static void a(Logger paramLogger, Level paramLevel, i parami, String paramString, boolean paramBoolean1, com.sleepycat.b.l.ac paramac, long paramLong1, com.sleepycat.b.l.j paramj, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, long paramLong2, long paramLong3, int paramInt)
  {
    if (!paramBoolean1) {
      paramLevel = Level.SEVERE;
    }
    StringBuilder localStringBuilder;
    if (paramLogger.isLoggable(paramLevel))
    {
      localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramString);
      localStringBuilder.append(" success=").append(paramBoolean1);
      if ((paramac instanceof com.sleepycat.b.l.j))
      {
        localStringBuilder.append(" node=");
        localStringBuilder.append(((com.sleepycat.b.l.j)paramac).c);
      }
      localStringBuilder.append(" lsn=");
      localStringBuilder.append(com.sleepycat.b.p.j.h(paramLong1));
      if (paramj != null) {
        localStringBuilder.append(" parent=").append(paramj.c);
      }
      localStringBuilder.append(" found=");
      localStringBuilder.append(paramBoolean2);
      localStringBuilder.append(" replaced=");
      localStringBuilder.append(paramBoolean3);
      localStringBuilder.append(" inserted=");
      localStringBuilder.append(paramBoolean4);
      if (paramLong2 != -1L)
      {
        localStringBuilder.append(" replacedLsn=");
        localStringBuilder.append(com.sleepycat.b.p.j.h(paramLong2));
      }
      if (paramLong3 != -1L)
      {
        localStringBuilder.append(" abortLsn=");
        localStringBuilder.append(com.sleepycat.b.p.j.h(paramLong3));
      }
      localStringBuilder.append(" index=").append(paramInt);
      if (paramLevel.equals(Level.SEVERE)) {
        com.sleepycat.b.p.w.b(paramLogger, parami.c, paramLevel, localStringBuilder.toString());
      }
    }
    else
    {
      return;
    }
    com.sleepycat.b.p.w.a(paramLogger, parami.c, paramLevel, localStringBuilder.toString());
  }
  
  public static void a(Logger paramLogger, Level paramLevel, com.sleepycat.b.n.al paramal, com.sleepycat.b.n.af paramaf, com.sleepycat.b.l.al paramal1, long paramLong)
  {
    a(paramLogger, paramLevel, paramal.c, paramal1, paramal.b, paramal.a.k(), paramLong, paramaf.a, paramaf.b, false, true);
  }
  
  private void a(boolean paramBoolean, bg parambg1, bg parambg2)
  {
    HashSet localHashSet = new HashSet();
    localHashSet.add(com.sleepycat.b.g.af.l);
    localHashSet.add(com.sleepycat.b.g.af.m);
    localHashSet.add(com.sleepycat.b.g.af.v);
    this.n.a(parambg1);
    this.n.a();
    j localj = new j();
    if (paramBoolean) {
      a(this.d.d, localj, this.n.c(parambg1));
    }
    for (;;)
    {
      this.n.b(parambg1);
      parambg1 = localj.a();
      if (parambg1.size() > 0)
      {
        this.n.a(parambg2);
        this.n.a();
        a(this.d.d, localHashSet, parambg1, this.n.c(parambg2));
        this.n.b(parambg2);
      }
      return;
      a(this.d.d, localHashSet, localj, this.n.c(parambg1));
    }
  }
  
  private void b()
  {
    this.n.a(bg.e);
    com.sleepycat.b.g.af localaf;
    try
    {
      Object localObject1 = bg.f;
      localObject2 = bg.g;
      i1 = bb.c;
      i1 = bb.d;
      a(true, (bg)localObject1, (bg)localObject2);
      this.n.a(bg.h);
      localObject1 = this.n;
      i1 = bb.e;
      ((bd)localObject1).a();
      localObject1 = new HashSet();
      ((Set)localObject1).add(com.sleepycat.b.g.af.c);
      ((Set)localObject1).add(com.sleepycat.b.g.af.q);
      ((Set)localObject1).add(com.sleepycat.b.g.af.r);
      ((Set)localObject1).add(com.sleepycat.b.g.af.A);
      ((Set)localObject1).add(com.sleepycat.b.g.af.B);
      ((Set)localObject1).add(com.sleepycat.b.g.af.C);
      a((Set)localObject1, true, this.n.c(bg.h));
      this.n.b(bg.h);
      this.n.a(bg.i);
      localObject2 = this.n;
      i1 = bb.f;
      ((bd)localObject2).a();
      ((Set)localObject1).add(com.sleepycat.b.g.af.d);
      a((Set)localObject1, this.n.c(bg.i));
      this.n.b(bg.i);
      f();
      localObject1 = bg.j;
      localObject2 = bg.k;
      i1 = bb.g;
      i1 = bb.h;
      a(false, (bg)localObject1, (bg)localObject2);
      c();
      if (this.b.i) {
        this.b.A.a(this.b);
      }
      this.b.u();
      this.n.a(bg.l);
      localObject1 = this.n;
      i1 = bb.i;
      ((bd)localObject1).a();
      localObject1 = new HashSet();
      localObject2 = com.sleepycat.b.g.af.a().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localaf = (com.sleepycat.b.g.af)((Iterator)localObject2).next();
        if ((localaf.d()) && (localaf.N.c)) {
          ((Set)localObject1).add(localaf);
        }
      }
      localSet.add(com.sleepycat.b.g.af.e);
    }
    finally
    {
      this.n.b(bg.e);
    }
    a(localSet, false, this.n.c(bg.l));
    this.n.b(bg.l);
    this.n.a(bg.m);
    Object localObject2 = this.n;
    int i1 = bb.j;
    ((bd)localObject2).a();
    localObject2 = com.sleepycat.b.g.af.a().iterator();
    while (((Iterator)localObject2).hasNext())
    {
      localaf = (com.sleepycat.b.g.af)((Iterator)localObject2).next();
      if ((localaf.d()) && (!localaf.N.c)) {
        localSet.add(localaf);
      }
    }
    localSet.add(com.sleepycat.b.g.af.f);
    localSet.add(com.sleepycat.b.g.af.k);
    a(localSet, this.n.c(bg.m));
    this.n.b(bg.m);
    p localp = this.l;
    if (!localp.a.g) {
      localp.a.x.a(localp.d);
    }
    this.n.b(bg.e);
  }
  
  /* Error */
  private void c()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 55	com/sleepycat/b/h/m:b	Lcom/sleepycat/b/c/ad;
    //   4: getfield 1202	com/sleepycat/b/c/ad:t	Lcom/sleepycat/b/c/al;
    //   7: invokevirtual 1205	com/sleepycat/b/c/al:c	()V
    //   10: aload_0
    //   11: getfield 55	com/sleepycat/b/h/m:b	Lcom/sleepycat/b/c/ad;
    //   14: getfield 400	com/sleepycat/b/c/ad:q	Lcom/sleepycat/b/c/p;
    //   17: getfield 1207	com/sleepycat/b/c/p:e	Lcom/sleepycat/b/c/i;
    //   20: getfield 149	com/sleepycat/b/c/i:b	Lcom/sleepycat/b/l/ah;
    //   23: invokevirtual 1208	com/sleepycat/b/l/ah:f	()V
    //   26: aload_0
    //   27: getfield 90	com/sleepycat/b/h/m:i	Ljava/util/Set;
    //   30: invokeinterface 520 1 0
    //   35: astore_1
    //   36: aload_1
    //   37: invokeinterface 262 1 0
    //   42: ifeq +81 -> 123
    //   45: aload_1
    //   46: invokeinterface 266 1 0
    //   51: checkcast 411	com/sleepycat/b/c/h
    //   54: astore_2
    //   55: aload_2
    //   56: getstatic 409	com/sleepycat/b/c/p:a	Lcom/sleepycat/b/c/h;
    //   59: invokevirtual 415	com/sleepycat/b/c/h:equals	(Ljava/lang/Object;)Z
    //   62: ifne -26 -> 36
    //   65: aload_0
    //   66: getfield 55	com/sleepycat/b/h/m:b	Lcom/sleepycat/b/c/ad;
    //   69: getfield 400	com/sleepycat/b/c/ad:q	Lcom/sleepycat/b/c/p;
    //   72: aload_2
    //   73: invokevirtual 418	com/sleepycat/b/c/p:b	(Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;
    //   76: astore_2
    //   77: aload_2
    //   78: ifnull +17 -> 95
    //   81: aload_2
    //   82: invokevirtual 768	com/sleepycat/b/c/i:e	()Z
    //   85: ifne +10 -> 95
    //   88: aload_2
    //   89: getfield 149	com/sleepycat/b/c/i:b	Lcom/sleepycat/b/l/ah;
    //   92: invokevirtual 1208	com/sleepycat/b/l/ah:f	()V
    //   95: aload_0
    //   96: getfield 55	com/sleepycat/b/h/m:b	Lcom/sleepycat/b/c/ad;
    //   99: getfield 400	com/sleepycat/b/c/ad:q	Lcom/sleepycat/b/c/p;
    //   102: aload_2
    //   103: invokevirtual 426	com/sleepycat/b/c/p:c	(Lcom/sleepycat/b/c/i;)V
    //   106: goto -70 -> 36
    //   109: astore_1
    //   110: aload_0
    //   111: getfield 55	com/sleepycat/b/h/m:b	Lcom/sleepycat/b/c/ad;
    //   114: getfield 400	com/sleepycat/b/c/ad:q	Lcom/sleepycat/b/c/p;
    //   117: aload_2
    //   118: invokevirtual 426	com/sleepycat/b/c/p:c	(Lcom/sleepycat/b/c/i;)V
    //   121: aload_1
    //   122: athrow
    //   123: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	124	0	this	m
    //   35	11	1	localIterator	Iterator
    //   109	13	1	localObject1	Object
    //   54	64	2	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   81	95	109	finally
  }
  
  private void d()
  {
    Iterator localIterator = this.k.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (com.sleepycat.b.c.h)localIterator.next();
      localObject = this.b.q.b((com.sleepycat.b.c.h)localObject);
      if (localObject != null) {
        ((i)localObject).C();
      }
    }
  }
  
  private void e()
  {
    this.n.a(bg.o);
    Object localObject1 = this.n;
    int i1 = bb.l;
    ((bd)localObject1).a();
    be localbe = this.n.c(bg.o);
    com.sleepycat.b.c.p localp1 = this.b.q;
    localObject1 = com.sleepycat.b.n.a.a(this.b, false);
    for (;;)
    {
      i locali;
      try
      {
        Iterator localIterator = this.j.iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        localbe.a();
        locali = localp1.b((com.sleepycat.b.c.h)localIterator.next());
        localp1.c(locali);
        if (locali == null) {
          continue;
        }
        if ((!a) && (!locali.e())) {
          throw new AssertionError();
        }
      }
      catch (Error localError)
      {
        this.b.a(localError);
        throw localError;
      }
      finally
      {
        ((com.sleepycat.b.n.a)localObject1).a_(false);
        this.n.b(bg.o);
      }
      boolean bool = locali.z();
      if (!bool) {
        try
        {
          ((be)localObject2).b();
          this.b.q.a((com.sleepycat.b.n.q)localObject1, locali.x(), locali.a);
        }
        catch (com.sleepycat.b.c.s locals)
        {
          throw com.sleepycat.b.aa.a(this.b, locals);
        }
        catch (com.sleepycat.b.p localp)
        {
          throw com.sleepycat.b.aa.a(localp);
        }
      } else {
        localp.c();
      }
    }
    ((com.sleepycat.b.n.a)localObject1).a_(true);
    this.n.b(bg.o);
  }
  
  private void f()
  {
    Object localObject2 = this.p.iterator();
    Object localObject4;
    Object localObject1;
    for (;;)
    {
      if (!((Iterator)localObject2).hasNext()) {
        break label175;
      }
      localObject4 = (com.sleepycat.b.c.h)((Iterator)localObject2).next();
      localObject1 = this.b.q;
      localObject4 = ((com.sleepycat.b.c.p)localObject1).b((com.sleepycat.b.c.h)localObject4);
      if (localObject4 != null) {
        break;
      }
      ((com.sleepycat.b.c.p)localObject1).c((i)localObject4);
    }
    for (;;)
    {
      try
      {
        boolean bool = ((i)localObject4).h();
        if (!bool) {
          break;
        }
        i1 = 1;
        ((com.sleepycat.b.c.p)localObject1).c((i)localObject4);
        bool = this.q.get();
        if ((i1 == 0) && (!bool)) {
          break label174;
        }
        if (i1 != 0)
        {
          localObject1 = "JE 4.1 duplicate DB entries";
          localObject2 = new StringBuilder().append((String)localObject1).append(" were found in the recovery interval. Before upgrading to JE 5.0, the following utility must be run using JE 4.1 (4.1.20 or later): ");
          if (!this.b.I()) {
            break label167;
          }
          localObject1 = "DbRepPreUpgrade_4_1 ";
          throw com.sleepycat.b.aa.c((String)localObject1 + ". See the change log.");
        }
      }
      finally
      {
        ((com.sleepycat.b.c.p)localObject1).c((i)localObject4);
      }
      localObject1 = "JE 4.1 BINDeltas";
      continue;
      label167:
      localObject1 = "DbPreUpgrade_4_1 ";
      continue;
      label174:
      return;
      label175:
      int i1 = 0;
    }
  }
  
  /* Error */
  public final l a(boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 7
    //   3: aload_0
    //   4: getfield 135	com/sleepycat/b/h/m:n	Lcom/sleepycat/b/c/bd;
    //   7: getstatic 1264	com/sleepycat/b/c/bg:b	Lcom/sleepycat/b/c/bg;
    //   10: invokevirtual 283	com/sleepycat/b/c/bd:a	(Lcom/sleepycat/b/c/bg;)V
    //   13: aload_0
    //   14: getfield 55	com/sleepycat/b/h/m:b	Lcom/sleepycat/b/c/ad;
    //   17: getfield 1194	com/sleepycat/b/c/ad:x	Lcom/sleepycat/b/g/m;
    //   20: astore_2
    //   21: aload_0
    //   22: getfield 55	com/sleepycat/b/h/m:b	Lcom/sleepycat/b/c/ad;
    //   25: getfield 61	com/sleepycat/b/c/ad:u	Lcom/sleepycat/b/c/m;
    //   28: astore_3
    //   29: aload_3
    //   30: getstatic 1267	com/sleepycat/b/b/d:h	Lcom/sleepycat/b/b/a;
    //   33: invokevirtual 1270	com/sleepycat/b/c/m:a	(Lcom/sleepycat/b/b/a;)Z
    //   36: ifeq +180 -> 216
    //   39: aload_2
    //   40: iconst_1
    //   41: putfield 1272	com/sleepycat/b/g/m:s	Z
    //   44: iconst_1
    //   45: istore 15
    //   47: aload_2
    //   48: invokevirtual 1273	com/sleepycat/b/g/m:d	()Z
    //   51: ifeq +1066 -> 1117
    //   54: aload_2
    //   55: invokevirtual 1276	com/sleepycat/b/g/m:c	()[Ljava/lang/Long;
    //   58: pop
    //   59: aload_0
    //   60: getfield 135	com/sleepycat/b/h/m:n	Lcom/sleepycat/b/c/bd;
    //   63: getstatic 1278	com/sleepycat/b/c/bg:c	Lcom/sleepycat/b/c/bg;
    //   66: invokevirtual 283	com/sleepycat/b/c/bd:a	(Lcom/sleepycat/b/c/bg;)V
    //   69: aload_0
    //   70: getfield 135	com/sleepycat/b/h/m:n	Lcom/sleepycat/b/c/bd;
    //   73: astore_3
    //   74: getstatic 1279	com/sleepycat/b/bb:a	I
    //   77: istore 8
    //   79: aload_3
    //   80: invokevirtual 287	com/sleepycat/b/c/bd:a	()V
    //   83: aload_0
    //   84: getfield 135	com/sleepycat/b/h/m:n	Lcom/sleepycat/b/c/bd;
    //   87: getstatic 1278	com/sleepycat/b/c/bg:c	Lcom/sleepycat/b/c/bg;
    //   90: invokevirtual 290	com/sleepycat/b/c/bd:c	(Lcom/sleepycat/b/c/bg;)Lcom/sleepycat/b/c/be;
    //   93: astore 4
    //   95: new 1281	com/sleepycat/b/g/z
    //   98: dup
    //   99: aload_0
    //   100: getfield 55	com/sleepycat/b/h/m:b	Lcom/sleepycat/b/c/ad;
    //   103: aload_0
    //   104: getfield 74	com/sleepycat/b/h/m:c	I
    //   107: invokespecial 1284	com/sleepycat/b/g/z:<init>	(Lcom/sleepycat/b/c/ad;I)V
    //   110: astore_3
    //   111: aload_3
    //   112: invokevirtual 1285	com/sleepycat/b/g/z:e	()Z
    //   115: ifeq +177 -> 292
    //   118: aload 4
    //   120: invokevirtual 306	com/sleepycat/b/c/be:a	()V
    //   123: aload 4
    //   125: invokevirtual 308	com/sleepycat/b/c/be:b	()V
    //   128: aload_3
    //   129: getfield 1287	com/sleepycat/b/g/z:b	Lcom/sleepycat/b/g/af;
    //   132: astore 5
    //   134: getstatic 1289	com/sleepycat/b/g/af:t	Lcom/sleepycat/b/g/af;
    //   137: aload 5
    //   139: invokevirtual 1290	com/sleepycat/b/g/af:equals	(Ljava/lang/Object;)Z
    //   142: ifeq +86 -> 228
    //   145: aload_0
    //   146: getfield 121	com/sleepycat/b/h/m:d	Lcom/sleepycat/b/h/l;
    //   149: aload_3
    //   150: invokevirtual 1291	com/sleepycat/b/g/z:c	()J
    //   153: putfield 292	com/sleepycat/b/h/l:e	J
    //   156: aload_0
    //   157: getfield 121	com/sleepycat/b/h/m:d	Lcom/sleepycat/b/h/l;
    //   160: ldc2_w 178
    //   163: putfield 346	com/sleepycat/b/h/l:g	J
    //   166: goto -55 -> 111
    //   169: astore_2
    //   170: aload_0
    //   171: getfield 55	com/sleepycat/b/h/m:b	Lcom/sleepycat/b/c/ad;
    //   174: ldc_w 500
    //   177: ldc_w 1293
    //   180: ldc_w 1295
    //   183: aload_2
    //   184: invokestatic 508	com/sleepycat/b/p/w:a	(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   187: new 333	com/sleepycat/b/aa
    //   190: dup
    //   191: aload_0
    //   192: getfield 55	com/sleepycat/b/h/m:b	Lcom/sleepycat/b/c/ad;
    //   195: getstatic 1297	com/sleepycat/b/c/ac:n	Lcom/sleepycat/b/c/ac;
    //   198: aload_2
    //   199: invokespecial 1300	com/sleepycat/b/aa:<init>	(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V
    //   202: athrow
    //   203: astore_2
    //   204: aload_0
    //   205: getfield 135	com/sleepycat/b/h/m:n	Lcom/sleepycat/b/c/bd;
    //   208: getstatic 1264	com/sleepycat/b/c/bg:b	Lcom/sleepycat/b/c/bg;
    //   211: invokevirtual 329	com/sleepycat/b/c/bd:b	(Lcom/sleepycat/b/c/bg;)V
    //   214: aload_2
    //   215: athrow
    //   216: aload_3
    //   217: getstatic 1302	com/sleepycat/b/b/d:g	Lcom/sleepycat/b/b/a;
    //   220: invokevirtual 1270	com/sleepycat/b/c/m:a	(Lcom/sleepycat/b/b/a;)Z
    //   223: istore 15
    //   225: goto -178 -> 47
    //   228: getstatic 1304	com/sleepycat/b/g/af:s	Lcom/sleepycat/b/g/af;
    //   231: aload 5
    //   233: invokevirtual 1290	com/sleepycat/b/g/af:equals	(Ljava/lang/Object;)Z
    //   236: ifeq +31 -> 267
    //   239: aload_0
    //   240: getfield 121	com/sleepycat/b/h/m:d	Lcom/sleepycat/b/h/l;
    //   243: getfield 346	com/sleepycat/b/h/l:g	J
    //   246: ldc2_w 178
    //   249: lcmp
    //   250: ifne -139 -> 111
    //   253: aload_0
    //   254: getfield 121	com/sleepycat/b/h/m:d	Lcom/sleepycat/b/h/l;
    //   257: aload_3
    //   258: invokevirtual 1291	com/sleepycat/b/g/z:c	()J
    //   261: putfield 346	com/sleepycat/b/h/l:g	J
    //   264: goto -153 -> 111
    //   267: getstatic 1306	com/sleepycat/b/g/af:p	Lcom/sleepycat/b/g/af;
    //   270: aload 5
    //   272: invokevirtual 1290	com/sleepycat/b/g/af:equals	(Ljava/lang/Object;)Z
    //   275: ifeq -164 -> 111
    //   278: aload_0
    //   279: getfield 121	com/sleepycat/b/h/m:d	Lcom/sleepycat/b/h/l;
    //   282: aload_3
    //   283: invokevirtual 1291	com/sleepycat/b/g/z:c	()J
    //   286: putfield 331	com/sleepycat/b/h/l:f	J
    //   289: goto -178 -> 111
    //   292: getstatic 48	com/sleepycat/b/h/m:a	Z
    //   295: ifne +62 -> 357
    //   298: aload_3
    //   299: invokevirtual 1308	com/sleepycat/b/g/z:i	()J
    //   302: aload_3
    //   303: invokevirtual 1310	com/sleepycat/b/g/z:h	()J
    //   306: lcmp
    //   307: ifne +50 -> 357
    //   310: new 230	java/lang/AssertionError
    //   313: dup
    //   314: new 241	java/lang/StringBuilder
    //   317: dup
    //   318: ldc_w 1312
    //   321: invokespecial 505	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   324: aload_3
    //   325: invokevirtual 1308	com/sleepycat/b/g/z:i	()J
    //   328: invokestatic 498	com/sleepycat/b/p/j:h	(J)Ljava/lang/String;
    //   331: invokevirtual 254	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   334: ldc_w 1314
    //   337: invokevirtual 254	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   340: aload_3
    //   341: invokevirtual 1310	com/sleepycat/b/g/z:h	()J
    //   344: invokestatic 498	com/sleepycat/b/p/j:h	(J)Ljava/lang/String;
    //   347: invokevirtual 254	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   350: invokevirtual 273	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   353: invokespecial 615	java/lang/AssertionError:<init>	(Ljava/lang/Object;)V
    //   356: athrow
    //   357: iload_1
    //   358: ifne +7 -> 365
    //   361: aload_3
    //   362: invokevirtual 1315	com/sleepycat/b/g/z:b	()V
    //   365: aload_0
    //   366: getfield 121	com/sleepycat/b/h/m:d	Lcom/sleepycat/b/h/l;
    //   369: aload_3
    //   370: invokevirtual 1308	com/sleepycat/b/g/z:i	()J
    //   373: putfield 296	com/sleepycat/b/h/l:a	J
    //   376: aload_0
    //   377: getfield 121	com/sleepycat/b/h/m:d	Lcom/sleepycat/b/h/l;
    //   380: aload_3
    //   381: invokevirtual 1310	com/sleepycat/b/g/z:h	()J
    //   384: putfield 298	com/sleepycat/b/h/l:b	J
    //   387: aload 4
    //   389: aload_3
    //   390: getfield 318	com/sleepycat/b/g/s:g	Lcom/sleepycat/b/g/u;
    //   393: getfield 322	com/sleepycat/b/g/u:g	J
    //   396: putfield 323	com/sleepycat/b/c/be:a	J
    //   399: aload_0
    //   400: getfield 55	com/sleepycat/b/h/m:b	Lcom/sleepycat/b/c/ad;
    //   403: getfield 1194	com/sleepycat/b/c/ad:x	Lcom/sleepycat/b/g/m;
    //   406: astore 4
    //   408: aload_0
    //   409: getfield 121	com/sleepycat/b/h/m:d	Lcom/sleepycat/b/h/l;
    //   412: getfield 298	com/sleepycat/b/h/l:b	J
    //   415: lstore 9
    //   417: aload_0
    //   418: getfield 121	com/sleepycat/b/h/m:d	Lcom/sleepycat/b/h/l;
    //   421: getfield 296	com/sleepycat/b/h/l:a	J
    //   424: lstore 11
    //   426: aload_3
    //   427: getfield 1316	com/sleepycat/b/g/z:a	J
    //   430: lstore 13
    //   432: aload 4
    //   434: lload 11
    //   436: putfield 1318	com/sleepycat/b/g/m:q	J
    //   439: aload 4
    //   441: getfield 1320	com/sleepycat/b/g/m:z	Ljava/util/Map;
    //   444: lload 11
    //   446: invokestatic 1323	com/sleepycat/b/p/j:d	(J)J
    //   449: invokestatic 801	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   452: lload 11
    //   454: invokestatic 801	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   457: invokeinterface 571 3 0
    //   462: pop
    //   463: aload 4
    //   465: lload 9
    //   467: putfield 1325	com/sleepycat/b/g/m:p	J
    //   470: aload 4
    //   472: aload 4
    //   474: getfield 1325	com/sleepycat/b/g/m:p	J
    //   477: invokestatic 1323	com/sleepycat/b/p/j:d	(J)J
    //   480: putfield 1327	com/sleepycat/b/g/m:o	J
    //   483: aload 4
    //   485: lload 13
    //   487: putfield 1329	com/sleepycat/b/g/m:r	J
    //   490: aload 4
    //   492: invokevirtual 1330	com/sleepycat/b/g/m:b	()V
    //   495: aload_0
    //   496: getfield 135	com/sleepycat/b/h/m:n	Lcom/sleepycat/b/c/bd;
    //   499: getstatic 1278	com/sleepycat/b/c/bg:c	Lcom/sleepycat/b/c/bg;
    //   502: invokevirtual 329	com/sleepycat/b/c/bd:b	(Lcom/sleepycat/b/c/bg;)V
    //   505: aload_0
    //   506: getfield 55	com/sleepycat/b/h/m:b	Lcom/sleepycat/b/c/ad;
    //   509: ldc_w 1332
    //   512: invokestatic 1337	com/sleepycat/b/g/aw:b	(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   515: aload_0
    //   516: invokespecial 1338	com/sleepycat/b/h/m:a	()V
    //   519: aload_0
    //   520: getfield 55	com/sleepycat/b/h/m:b	Lcom/sleepycat/b/c/ad;
    //   523: getfield 351	com/sleepycat/b/c/ad:w	Lcom/sleepycat/b/g/am;
    //   526: aload_2
    //   527: getfield 1318	com/sleepycat/b/g/m:q	J
    //   530: putfield 1339	com/sleepycat/b/g/am:h	J
    //   533: aload_0
    //   534: getfield 55	com/sleepycat/b/h/m:b	Lcom/sleepycat/b/c/ad;
    //   537: astore_2
    //   538: aload_0
    //   539: getfield 121	com/sleepycat/b/h/m:d	Lcom/sleepycat/b/h/l;
    //   542: getfield 331	com/sleepycat/b/h/l:f	J
    //   545: lstore 9
    //   547: aload_2
    //   548: getfield 400	com/sleepycat/b/c/ad:q	Lcom/sleepycat/b/c/p;
    //   551: ifnull +10 -> 561
    //   554: aload_2
    //   555: getfield 400	com/sleepycat/b/c/ad:q	Lcom/sleepycat/b/c/p;
    //   558: invokevirtual 1341	com/sleepycat/b/c/p:g	()V
    //   561: aload_2
    //   562: aload_2
    //   563: getfield 351	com/sleepycat/b/c/ad:w	Lcom/sleepycat/b/g/am;
    //   566: lload 9
    //   568: invokevirtual 1343	com/sleepycat/b/g/am:e	(J)Ljava/lang/Object;
    //   571: checkcast 406	com/sleepycat/b/c/p
    //   574: putfield 400	com/sleepycat/b/c/ad:q	Lcom/sleepycat/b/c/p;
    //   577: aload_2
    //   578: getfield 400	com/sleepycat/b/c/ad:q	Lcom/sleepycat/b/c/p;
    //   581: invokevirtual 1344	com/sleepycat/b/c/p:d	()Z
    //   584: ifne +38 -> 622
    //   587: aload_2
    //   588: invokevirtual 1347	com/sleepycat/b/c/ad:M	()Z
    //   591: ifeq +31 -> 622
    //   594: aload_2
    //   595: getfield 400	com/sleepycat/b/c/ad:q	Lcom/sleepycat/b/c/p;
    //   598: invokevirtual 1349	com/sleepycat/b/c/p:e	()V
    //   601: aload_2
    //   602: getfield 400	com/sleepycat/b/c/ad:q	Lcom/sleepycat/b/c/p;
    //   605: astore_3
    //   606: aload_3
    //   607: aload_3
    //   608: getfield 1351	com/sleepycat/b/c/p:g	B
    //   611: iconst_2
    //   612: ior
    //   613: i2b
    //   614: putfield 1351	com/sleepycat/b/c/p:g	B
    //   617: aload_2
    //   618: iconst_1
    //   619: putfield 1353	com/sleepycat/b/c/ad:m	Z
    //   622: aload_2
    //   623: getfield 400	com/sleepycat/b/c/ad:q	Lcom/sleepycat/b/c/p;
    //   626: astore_3
    //   627: aload_3
    //   628: invokevirtual 1344	com/sleepycat/b/c/p:d	()Z
    //   631: istore 17
    //   633: aload_3
    //   634: getfield 1351	com/sleepycat/b/c/p:g	B
    //   637: bipush 8
    //   639: iand
    //   640: ifeq +461 -> 1101
    //   643: iconst_1
    //   644: istore 16
    //   646: aload_2
    //   647: iload 17
    //   649: iload 16
    //   651: invokevirtual 1356	com/sleepycat/b/c/ad:b	(ZZ)V
    //   654: aload_3
    //   655: aload_2
    //   656: putfield 1358	com/sleepycat/b/c/p:h	Lcom/sleepycat/b/c/ad;
    //   659: aload_3
    //   660: getfield 1207	com/sleepycat/b/c/p:e	Lcom/sleepycat/b/c/i;
    //   663: aload_2
    //   664: invokevirtual 1359	com/sleepycat/b/c/i:a	(Lcom/sleepycat/b/c/ad;)V
    //   667: aload_3
    //   668: getfield 1361	com/sleepycat/b/c/p:f	Lcom/sleepycat/b/c/i;
    //   671: aload_2
    //   672: invokevirtual 1359	com/sleepycat/b/c/i:a	(Lcom/sleepycat/b/c/ad;)V
    //   675: aload_2
    //   676: getfield 1364	com/sleepycat/b/c/ad:s	Lcom/sleepycat/b/f/a;
    //   679: invokevirtual 1367	com/sleepycat/b/f/a:a	()V
    //   682: aload_2
    //   683: lload 9
    //   685: putfield 1368	com/sleepycat/b/c/ad:r	J
    //   688: aload_2
    //   689: getfield 1364	com/sleepycat/b/c/ad:s	Lcom/sleepycat/b/f/a;
    //   692: invokevirtual 1369	com/sleepycat/b/f/a:c	()V
    //   695: aload_0
    //   696: invokespecial 1370	com/sleepycat/b/h/m:b	()V
    //   699: aload_0
    //   700: getfield 86	com/sleepycat/b/h/m:g	Ljava/util/Map;
    //   703: invokeinterface 1371 1 0
    //   708: istore 8
    //   710: iload 8
    //   712: ifle +96 -> 808
    //   715: iload 8
    //   717: iconst_1
    //   718: if_icmpne +525 -> 1243
    //   721: aload_0
    //   722: getfield 111	com/sleepycat/b/h/m:o	Ljava/util/logging/Logger;
    //   725: astore_3
    //   726: aload_0
    //   727: getfield 55	com/sleepycat/b/h/m:b	Lcom/sleepycat/b/c/ad;
    //   730: astore 4
    //   732: getstatic 940	java/util/logging/Level:INFO	Ljava/util/logging/Level;
    //   735: astore 5
    //   737: new 241	java/lang/StringBuilder
    //   740: dup
    //   741: ldc_w 1373
    //   744: invokespecial 505	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   747: astore 6
    //   749: iload 7
    //   751: ifeq +498 -> 1249
    //   754: ldc_w 1375
    //   757: astore_2
    //   758: aload 6
    //   760: aload_2
    //   761: invokevirtual 254	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   764: iload 8
    //   766: invokevirtual 1085	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   769: ldc_w 1377
    //   772: invokevirtual 254	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   775: astore 6
    //   777: iload 7
    //   779: ifeq +477 -> 1256
    //   782: ldc_w 1379
    //   785: astore_2
    //   786: aload_3
    //   787: aload 4
    //   789: aload 5
    //   791: aload 6
    //   793: aload_2
    //   794: invokevirtual 254	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   797: invokevirtual 273	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   800: invokestatic 947	com/sleepycat/b/p/w:a	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V
    //   803: aload_0
    //   804: aconst_null
    //   805: putfield 86	com/sleepycat/b/h/m:g	Ljava/util/Map;
    //   808: aload_0
    //   809: getfield 55	com/sleepycat/b/h/m:b	Lcom/sleepycat/b/c/ad;
    //   812: getfield 61	com/sleepycat/b/c/ad:u	Lcom/sleepycat/b/c/m;
    //   815: getfield 1382	com/sleepycat/b/c/m:b	Lcom/sleepycat/b/z;
    //   818: getfield 1385	com/sleepycat/b/z:b	Z
    //   821: ifeq +61 -> 882
    //   824: aload_0
    //   825: getfield 135	com/sleepycat/b/h/m:n	Lcom/sleepycat/b/c/bd;
    //   828: getstatic 1387	com/sleepycat/b/c/bg:n	Lcom/sleepycat/b/c/bg;
    //   831: invokevirtual 283	com/sleepycat/b/c/bd:a	(Lcom/sleepycat/b/c/bg;)V
    //   834: aload_0
    //   835: getfield 135	com/sleepycat/b/h/m:n	Lcom/sleepycat/b/c/bd;
    //   838: astore_2
    //   839: getstatic 1389	com/sleepycat/b/bb:k	I
    //   842: istore 7
    //   844: aload_2
    //   845: invokevirtual 287	com/sleepycat/b/c/bd:a	()V
    //   848: aload_0
    //   849: getfield 55	com/sleepycat/b/h/m:b	Lcom/sleepycat/b/c/ad;
    //   852: getfield 1393	com/sleepycat/b/c/ad:D	Lcom/sleepycat/b/a/c;
    //   855: getfield 1399	com/sleepycat/b/a/c:aa	Lcom/sleepycat/b/a/ad;
    //   858: aload_0
    //   859: getfield 135	com/sleepycat/b/h/m:n	Lcom/sleepycat/b/c/bd;
    //   862: getstatic 1387	com/sleepycat/b/c/bg:n	Lcom/sleepycat/b/c/bg;
    //   865: invokevirtual 290	com/sleepycat/b/c/bd:c	(Lcom/sleepycat/b/c/bg;)Lcom/sleepycat/b/c/be;
    //   868: invokevirtual 1404	com/sleepycat/b/a/ad:a	(Lcom/sleepycat/b/c/be;)Z
    //   871: pop
    //   872: aload_0
    //   873: getfield 135	com/sleepycat/b/h/m:n	Lcom/sleepycat/b/c/bd;
    //   876: getstatic 1387	com/sleepycat/b/c/bg:n	Lcom/sleepycat/b/c/bg;
    //   879: invokevirtual 329	com/sleepycat/b/c/bd:b	(Lcom/sleepycat/b/c/bg;)V
    //   882: aload_0
    //   883: getfield 100	com/sleepycat/b/h/m:m	Lcom/sleepycat/b/a/y;
    //   886: aload_0
    //   887: getfield 55	com/sleepycat/b/h/m:b	Lcom/sleepycat/b/c/ad;
    //   890: getfield 1393	com/sleepycat/b/c/ad:D	Lcom/sleepycat/b/a/c;
    //   893: getfield 1408	com/sleepycat/b/a/c:ab	Lcom/sleepycat/b/a/ae;
    //   896: invokevirtual 1411	com/sleepycat/b/a/y:a	(Lcom/sleepycat/b/a/ae;)V
    //   899: aload_0
    //   900: getfield 121	com/sleepycat/b/h/m:d	Lcom/sleepycat/b/h/l;
    //   903: getfield 361	com/sleepycat/b/h/l:h	Lcom/sleepycat/b/h/a;
    //   906: ifnull +30 -> 936
    //   909: aload_0
    //   910: getfield 55	com/sleepycat/b/h/m:b	Lcom/sleepycat/b/c/ad;
    //   913: getfield 1393	com/sleepycat/b/c/ad:D	Lcom/sleepycat/b/a/c;
    //   916: astore_2
    //   917: aload_0
    //   918: getfield 121	com/sleepycat/b/h/m:d	Lcom/sleepycat/b/h/l;
    //   921: getfield 361	com/sleepycat/b/h/l:h	Lcom/sleepycat/b/h/a;
    //   924: getfield 1414	com/sleepycat/b/h/a:l	Lcom/sleepycat/b/a/d;
    //   927: astore_3
    //   928: aload_2
    //   929: getfield 1417	com/sleepycat/b/a/c:ac	Lcom/sleepycat/b/a/aa;
    //   932: aload_3
    //   933: invokevirtual 1422	com/sleepycat/b/a/aa:a	(Lcom/sleepycat/b/a/d;)V
    //   936: aload_0
    //   937: invokespecial 1423	com/sleepycat/b/h/m:e	()V
    //   940: aload_0
    //   941: invokespecial 1424	com/sleepycat/b/h/m:d	()V
    //   944: aload_0
    //   945: getfield 55	com/sleepycat/b/h/m:b	Lcom/sleepycat/b/c/ad;
    //   948: aload_0
    //   949: getfield 121	com/sleepycat/b/h/m:d	Lcom/sleepycat/b/h/l;
    //   952: invokevirtual 1427	com/sleepycat/b/c/ad:a	(Lcom/sleepycat/b/h/l;)V
    //   955: iload_1
    //   956: ifne +229 -> 1185
    //   959: aload_0
    //   960: getfield 55	com/sleepycat/b/h/m:b	Lcom/sleepycat/b/c/ad;
    //   963: getfield 351	com/sleepycat/b/c/ad:w	Lcom/sleepycat/b/g/am;
    //   966: getfield 1339	com/sleepycat/b/g/am:h	J
    //   969: aload_0
    //   970: getfield 121	com/sleepycat/b/h/m:d	Lcom/sleepycat/b/h/l;
    //   973: getfield 292	com/sleepycat/b/h/l:e	J
    //   976: lcmp
    //   977: ifne +8 -> 985
    //   980: iload 15
    //   982: ifeq +203 -> 1185
    //   985: new 1429	com/sleepycat/b/c
    //   988: dup
    //   989: invokespecial 1430	com/sleepycat/b/c:<init>	()V
    //   992: astore_2
    //   993: aload_2
    //   994: iconst_1
    //   995: putfield 1431	com/sleepycat/b/c:b	Z
    //   998: aload_2
    //   999: iconst_1
    //   1000: putfield 1433	com/sleepycat/b/c:e	Z
    //   1003: aload_0
    //   1004: getfield 135	com/sleepycat/b/h/m:n	Lcom/sleepycat/b/c/bd;
    //   1007: astore_3
    //   1008: getstatic 1434	com/sleepycat/b/bb:m	I
    //   1011: istore 7
    //   1013: aload_3
    //   1014: invokevirtual 287	com/sleepycat/b/c/bd:a	()V
    //   1017: aload_0
    //   1018: getfield 135	com/sleepycat/b/h/m:n	Lcom/sleepycat/b/c/bd;
    //   1021: getstatic 1436	com/sleepycat/b/c/bg:p	Lcom/sleepycat/b/c/bg;
    //   1024: invokevirtual 283	com/sleepycat/b/c/bd:a	(Lcom/sleepycat/b/c/bg;)V
    //   1027: aload_0
    //   1028: getfield 55	com/sleepycat/b/h/m:b	Lcom/sleepycat/b/c/ad;
    //   1031: aload_2
    //   1032: ldc_w 1438
    //   1035: invokevirtual 1441	com/sleepycat/b/c/ad:a	(Lcom/sleepycat/b/c;Ljava/lang/String;)Z
    //   1038: pop
    //   1039: aload_0
    //   1040: getfield 135	com/sleepycat/b/h/m:n	Lcom/sleepycat/b/c/bd;
    //   1043: astore_2
    //   1044: getstatic 1436	com/sleepycat/b/c/bg:p	Lcom/sleepycat/b/c/bg;
    //   1047: astore_3
    //   1048: aload_0
    //   1049: getfield 55	com/sleepycat/b/h/m:b	Lcom/sleepycat/b/c/ad;
    //   1052: getfield 367	com/sleepycat/b/c/ad:C	Lcom/sleepycat/b/h/d;
    //   1055: getstatic 1446	com/sleepycat/b/bn:a	Lcom/sleepycat/b/bn;
    //   1058: invokevirtual 1449	com/sleepycat/b/h/d:a	(Lcom/sleepycat/b/bn;)Lcom/sleepycat/b/p/ai;
    //   1061: astore 4
    //   1063: aload_2
    //   1064: getfield 1450	com/sleepycat/b/c/bd:a	Ljava/util/Map;
    //   1067: aload_3
    //   1068: aload 4
    //   1070: invokeinterface 571 3 0
    //   1075: pop
    //   1076: aload_0
    //   1077: getfield 135	com/sleepycat/b/h/m:n	Lcom/sleepycat/b/c/bd;
    //   1080: getstatic 1436	com/sleepycat/b/c/bg:p	Lcom/sleepycat/b/c/bg;
    //   1083: invokevirtual 329	com/sleepycat/b/c/bd:b	(Lcom/sleepycat/b/c/bg;)V
    //   1086: aload_0
    //   1087: getfield 135	com/sleepycat/b/h/m:n	Lcom/sleepycat/b/c/bd;
    //   1090: getstatic 1264	com/sleepycat/b/c/bg:b	Lcom/sleepycat/b/c/bg;
    //   1093: invokevirtual 329	com/sleepycat/b/c/bd:b	(Lcom/sleepycat/b/c/bg;)V
    //   1096: aload_0
    //   1097: getfield 121	com/sleepycat/b/h/m:d	Lcom/sleepycat/b/h/l;
    //   1100: areturn
    //   1101: iconst_0
    //   1102: istore 16
    //   1104: goto -458 -> 646
    //   1107: astore_3
    //   1108: aload_2
    //   1109: getfield 1364	com/sleepycat/b/c/ad:s	Lcom/sleepycat/b/f/a;
    //   1112: invokevirtual 1369	com/sleepycat/b/f/a:c	()V
    //   1115: aload_3
    //   1116: athrow
    //   1117: aload_0
    //   1118: getfield 111	com/sleepycat/b/h/m:o	Ljava/util/logging/Logger;
    //   1121: aload_0
    //   1122: getfield 55	com/sleepycat/b/h/m:b	Lcom/sleepycat/b/c/ad;
    //   1125: getstatic 1453	java/util/logging/Level:CONFIG	Ljava/util/logging/Level;
    //   1128: ldc_w 1455
    //   1131: invokestatic 947	com/sleepycat/b/p/w:a	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V
    //   1134: aload_0
    //   1135: getfield 55	com/sleepycat/b/h/m:b	Lcom/sleepycat/b/c/ad;
    //   1138: getfield 1202	com/sleepycat/b/c/ad:t	Lcom/sleepycat/b/c/al;
    //   1141: invokevirtual 1205	com/sleepycat/b/c/al:c	()V
    //   1144: iload_1
    //   1145: ifne +13 -> 1158
    //   1148: aload_0
    //   1149: getfield 55	com/sleepycat/b/h/m:b	Lcom/sleepycat/b/c/ad;
    //   1152: ldc2_w 178
    //   1155: invokevirtual 1456	com/sleepycat/b/c/ad:a	(J)V
    //   1158: aload_0
    //   1159: getfield 55	com/sleepycat/b/h/m:b	Lcom/sleepycat/b/c/ad;
    //   1162: getfield 1160	com/sleepycat/b/c/ad:i	Z
    //   1165: ifeq +72 -> 1237
    //   1168: aload_0
    //   1169: getfield 55	com/sleepycat/b/h/m:b	Lcom/sleepycat/b/c/ad;
    //   1172: getfield 1163	com/sleepycat/b/c/ad:A	Lcom/sleepycat/b/d/b;
    //   1175: aload_0
    //   1176: getfield 55	com/sleepycat/b/h/m:b	Lcom/sleepycat/b/c/ad;
    //   1179: invokevirtual 1167	com/sleepycat/b/d/b:a	(Lcom/sleepycat/b/c/ad;)V
    //   1182: goto +55 -> 1237
    //   1185: aload_0
    //   1186: getfield 55	com/sleepycat/b/h/m:b	Lcom/sleepycat/b/c/ad;
    //   1189: getfield 367	com/sleepycat/b/c/ad:C	Lcom/sleepycat/b/h/d;
    //   1192: astore_2
    //   1193: aload_0
    //   1194: getfield 121	com/sleepycat/b/h/m:d	Lcom/sleepycat/b/h/l;
    //   1197: getfield 324	com/sleepycat/b/h/l:d	J
    //   1200: lstore 9
    //   1202: aload_0
    //   1203: getfield 121	com/sleepycat/b/h/m:d	Lcom/sleepycat/b/h/l;
    //   1206: getfield 292	com/sleepycat/b/h/l:e	J
    //   1209: lstore 11
    //   1211: invokestatic 1461	java/lang/System:currentTimeMillis	()J
    //   1214: lstore 13
    //   1216: aload_2
    //   1217: lload 9
    //   1219: putfield 1462	com/sleepycat/b/h/d:h	J
    //   1222: aload_2
    //   1223: lload 11
    //   1225: putfield 1463	com/sleepycat/b/h/d:i	J
    //   1228: aload_2
    //   1229: lload 13
    //   1231: putfield 1464	com/sleepycat/b/h/d:g	J
    //   1234: goto -148 -> 1086
    //   1237: iconst_1
    //   1238: istore 15
    //   1240: goto -541 -> 699
    //   1243: iconst_0
    //   1244: istore 7
    //   1246: goto -525 -> 721
    //   1249: ldc_w 1466
    //   1252: astore_2
    //   1253: goto -495 -> 758
    //   1256: ldc_w 1468
    //   1259: astore_2
    //   1260: goto -474 -> 786
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1263	0	this	m
    //   0	1263	1	paramBoolean	boolean
    //   20	35	2	localm	com.sleepycat.b.g.m
    //   169	30	2	localIOException	java.io.IOException
    //   203	324	2	localObject1	Object
    //   537	723	2	localObject2	Object
    //   28	1040	3	localObject3	Object
    //   1107	9	3	localObject4	Object
    //   93	976	4	localObject5	Object
    //   132	658	5	localObject6	Object
    //   747	45	6	localStringBuilder	StringBuilder
    //   1	1244	7	i1	int
    //   77	688	8	i2	int
    //   415	803	9	l1	long
    //   424	800	11	l2	long
    //   430	800	13	l3	long
    //   45	1194	15	bool1	boolean
    //   644	459	16	bool2	boolean
    //   631	17	17	bool3	boolean
    // Exception table:
    //   from	to	target	type
    //   13	44	169	java/io/IOException
    //   47	111	169	java/io/IOException
    //   111	166	169	java/io/IOException
    //   216	225	169	java/io/IOException
    //   228	264	169	java/io/IOException
    //   267	289	169	java/io/IOException
    //   292	357	169	java/io/IOException
    //   361	365	169	java/io/IOException
    //   365	561	169	java/io/IOException
    //   561	622	169	java/io/IOException
    //   622	643	169	java/io/IOException
    //   646	682	169	java/io/IOException
    //   688	699	169	java/io/IOException
    //   699	710	169	java/io/IOException
    //   721	749	169	java/io/IOException
    //   758	777	169	java/io/IOException
    //   786	808	169	java/io/IOException
    //   808	882	169	java/io/IOException
    //   882	936	169	java/io/IOException
    //   936	955	169	java/io/IOException
    //   959	980	169	java/io/IOException
    //   985	1086	169	java/io/IOException
    //   1108	1117	169	java/io/IOException
    //   1117	1144	169	java/io/IOException
    //   1148	1158	169	java/io/IOException
    //   1158	1182	169	java/io/IOException
    //   1185	1234	169	java/io/IOException
    //   13	44	203	finally
    //   47	111	203	finally
    //   111	166	203	finally
    //   170	203	203	finally
    //   216	225	203	finally
    //   228	264	203	finally
    //   267	289	203	finally
    //   292	357	203	finally
    //   361	365	203	finally
    //   365	561	203	finally
    //   561	622	203	finally
    //   622	643	203	finally
    //   646	682	203	finally
    //   688	699	203	finally
    //   699	710	203	finally
    //   721	749	203	finally
    //   758	777	203	finally
    //   786	808	203	finally
    //   808	882	203	finally
    //   882	936	203	finally
    //   936	955	203	finally
    //   959	980	203	finally
    //   985	1086	203	finally
    //   1108	1117	203	finally
    //   1117	1144	203	finally
    //   1148	1158	203	finally
    //   1158	1182	203	finally
    //   1185	1234	203	finally
    //   682	688	1107	finally
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\h\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */