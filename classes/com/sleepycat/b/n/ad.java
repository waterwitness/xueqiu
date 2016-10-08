package com.sleepycat.b.n;

import com.sleepycat.b.c.h;
import com.sleepycat.b.c.i;
import com.sleepycat.b.p.au;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;

public class ad
{
  public final Set<Long> a;
  public au b;
  private final Map<h, i> c;
  private final com.sleepycat.b.c.ad d;
  private final LinkedList<af> e;
  
  public ad(long paramLong1, long paramLong2, long paramLong3, com.sleepycat.b.c.ad paramad)
  {
    this(paramLong1, paramLong2, paramLong3, null, paramad);
  }
  
  /* Error */
  public ad(long paramLong1, long paramLong2, long paramLong3, Map<h, i> paramMap, com.sleepycat.b.c.ad paramad)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 28	java/lang/Object:<init>	()V
    //   4: aload_0
    //   5: aload 8
    //   7: putfield 30	com/sleepycat/b/n/ad:d	Lcom/sleepycat/b/c/ad;
    //   10: aload_0
    //   11: aload 7
    //   13: putfield 32	com/sleepycat/b/n/ad:c	Ljava/util/Map;
    //   16: aload 8
    //   18: getfield 38	com/sleepycat/b/c/ad:w	Lcom/sleepycat/b/g/am;
    //   21: astore 10
    //   23: aload_0
    //   24: new 40	java/util/HashSet
    //   27: dup
    //   28: invokespecial 41	java/util/HashSet:<init>	()V
    //   31: putfield 43	com/sleepycat/b/n/ad:a	Ljava/util/Set;
    //   34: new 45	java/util/TreeMap
    //   37: dup
    //   38: invokespecial 46	java/util/TreeMap:<init>	()V
    //   41: astore 11
    //   43: new 48	java/util/LinkedList
    //   46: dup
    //   47: invokespecial 49	java/util/LinkedList:<init>	()V
    //   50: astore 12
    //   52: aload_0
    //   53: getstatic 53	com/sleepycat/b/p/au:a	Lcom/sleepycat/b/p/au;
    //   56: putfield 55	com/sleepycat/b/n/ad:b	Lcom/sleepycat/b/p/au;
    //   59: lload_1
    //   60: lstore 16
    //   62: lload 16
    //   64: ldc2_w 56
    //   67: lcmp
    //   68: ifeq +387 -> 455
    //   71: lload 16
    //   73: lstore_1
    //   74: aload 10
    //   76: lload 16
    //   78: iconst_1
    //   79: invokevirtual 62	com/sleepycat/b/g/am:a	(JZ)Lcom/sleepycat/b/g/ay;
    //   82: astore 13
    //   84: lload 16
    //   86: lstore_1
    //   87: aload 13
    //   89: getfield 67	com/sleepycat/b/g/ay:b	Lcom/sleepycat/b/g/a/m;
    //   92: checkcast 69	com/sleepycat/b/g/a/k
    //   95: astore 14
    //   97: lload 16
    //   99: lstore_1
    //   100: aload 14
    //   102: getfield 72	com/sleepycat/b/g/a/k:d	Lcom/sleepycat/b/c/h;
    //   105: astore 7
    //   107: lload 16
    //   109: lstore_1
    //   110: aload_0
    //   111: getfield 32	com/sleepycat/b/n/ad:c	Ljava/util/Map;
    //   114: ifnull +216 -> 330
    //   117: lload 16
    //   119: lstore_1
    //   120: aload_0
    //   121: getfield 32	com/sleepycat/b/n/ad:c	Ljava/util/Map;
    //   124: aload 7
    //   126: invokeinterface 78 2 0
    //   131: checkcast 80	com/sleepycat/b/c/i
    //   134: astore 7
    //   136: lload 16
    //   138: lstore_1
    //   139: aload 14
    //   141: aload 7
    //   143: invokevirtual 83	com/sleepycat/b/g/a/k:c	(Lcom/sleepycat/b/c/i;)V
    //   146: new 85	com/sleepycat/b/n/ae
    //   149: dup
    //   150: aload 7
    //   152: aload 14
    //   154: invokespecial 88	com/sleepycat/b/n/ae:<init>	(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/g/a/k;)V
    //   157: astore 15
    //   159: aload 11
    //   161: aload 15
    //   163: invokevirtual 89	java/util/TreeMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   166: checkcast 48	java/util/LinkedList
    //   169: astore 9
    //   171: aload 9
    //   173: ifnonnull +482 -> 655
    //   176: new 48	java/util/LinkedList
    //   179: dup
    //   180: invokespecial 49	java/util/LinkedList:<init>	()V
    //   183: astore 9
    //   185: aload 11
    //   187: aload 15
    //   189: aload 9
    //   191: invokevirtual 93	java/util/TreeMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   194: pop
    //   195: aload 9
    //   197: lload 16
    //   199: invokestatic 99	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   202: invokevirtual 103	java/util/LinkedList:add	(Ljava/lang/Object;)Z
    //   205: pop
    //   206: lload 16
    //   208: lload 5
    //   210: invokestatic 108	com/sleepycat/b/p/j:b	(JJ)I
    //   213: ifle +137 -> 350
    //   216: aload 12
    //   218: new 110	com/sleepycat/b/n/ag
    //   221: dup
    //   222: lload 16
    //   224: aload 14
    //   226: getfield 113	com/sleepycat/b/g/a/k:e	J
    //   229: aload 14
    //   231: getfield 117	com/sleepycat/b/g/a/k:f	Z
    //   234: aload 9
    //   236: invokespecial 120	com/sleepycat/b/n/ag:<init>	(JJZLjava/util/LinkedList;)V
    //   239: invokevirtual 103	java/util/LinkedList:add	(Ljava/lang/Object;)Z
    //   242: pop
    //   243: aload 14
    //   245: invokevirtual 124	com/sleepycat/b/g/a/k:m	()Lcom/sleepycat/b/n/z;
    //   248: getfield 129	com/sleepycat/b/n/z:z	J
    //   251: lstore 18
    //   253: lload 18
    //   255: lstore 16
    //   257: lload 18
    //   259: lstore_1
    //   260: aload_0
    //   261: getfield 32	com/sleepycat/b/n/ad:c	Ljava/util/Map;
    //   264: ifnonnull -202 -> 62
    //   267: lload 18
    //   269: lstore_1
    //   270: aload_0
    //   271: getfield 30	com/sleepycat/b/n/ad:d	Lcom/sleepycat/b/c/ad;
    //   274: getfield 133	com/sleepycat/b/c/ad:q	Lcom/sleepycat/b/c/p;
    //   277: aload 7
    //   279: invokevirtual 136	com/sleepycat/b/c/p:c	(Lcom/sleepycat/b/c/i;)V
    //   282: lload 18
    //   284: lstore 16
    //   286: goto -224 -> 62
    //   289: astore 7
    //   291: aload 8
    //   293: getstatic 141	com/sleepycat/b/c/ac:m	Lcom/sleepycat/b/c/ac;
    //   296: new 143	java/lang/StringBuilder
    //   299: dup
    //   300: ldc -111
    //   302: invokespecial 148	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   305: lload_3
    //   306: invokevirtual 152	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   309: ldc -102
    //   311: invokevirtual 157	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   314: lload_1
    //   315: invokestatic 161	com/sleepycat/b/p/j:h	(J)Ljava/lang/String;
    //   318: invokevirtual 157	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   321: invokevirtual 165	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   324: aload 7
    //   326: invokestatic 170	com/sleepycat/b/aa:a	(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/sleepycat/b/aa;
    //   329: athrow
    //   330: lload 16
    //   332: lstore_1
    //   333: aload_0
    //   334: getfield 30	com/sleepycat/b/n/ad:d	Lcom/sleepycat/b/c/ad;
    //   337: getfield 133	com/sleepycat/b/c/ad:q	Lcom/sleepycat/b/c/p;
    //   340: aload 7
    //   342: invokevirtual 173	com/sleepycat/b/c/p:b	(Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;
    //   345: astore 7
    //   347: goto -211 -> 136
    //   350: aload_0
    //   351: getfield 43	com/sleepycat/b/n/ad:a	Ljava/util/Set;
    //   354: lload 16
    //   356: invokestatic 99	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   359: invokeinterface 176 2 0
    //   364: pop
    //   365: aload_0
    //   366: getfield 55	com/sleepycat/b/n/ad:b	Lcom/sleepycat/b/p/au;
    //   369: ifnull -126 -> 243
    //   372: aload_0
    //   373: getfield 55	com/sleepycat/b/n/ad:b	Lcom/sleepycat/b/p/au;
    //   376: invokevirtual 179	com/sleepycat/b/p/au:c	()Z
    //   379: ifeq -136 -> 243
    //   382: aload 13
    //   384: getfield 182	com/sleepycat/b/g/ay:a	Lcom/sleepycat/b/g/ae;
    //   387: getfield 186	com/sleepycat/b/g/ae:e	Lcom/sleepycat/b/p/au;
    //   390: ifnull -147 -> 243
    //   393: aload 13
    //   395: getfield 182	com/sleepycat/b/g/ay:a	Lcom/sleepycat/b/g/ae;
    //   398: getfield 186	com/sleepycat/b/g/ae:e	Lcom/sleepycat/b/p/au;
    //   401: invokevirtual 179	com/sleepycat/b/p/au:c	()Z
    //   404: ifne -161 -> 243
    //   407: aload_0
    //   408: aload 13
    //   410: getfield 182	com/sleepycat/b/g/ay:a	Lcom/sleepycat/b/g/ae;
    //   413: getfield 186	com/sleepycat/b/g/ae:e	Lcom/sleepycat/b/p/au;
    //   416: putfield 55	com/sleepycat/b/n/ad:b	Lcom/sleepycat/b/p/au;
    //   419: goto -176 -> 243
    //   422: astore 9
    //   424: lload 16
    //   426: lstore_1
    //   427: aload_0
    //   428: getfield 32	com/sleepycat/b/n/ad:c	Ljava/util/Map;
    //   431: ifnonnull +18 -> 449
    //   434: lload 16
    //   436: lstore_1
    //   437: aload_0
    //   438: getfield 30	com/sleepycat/b/n/ad:d	Lcom/sleepycat/b/c/ad;
    //   441: getfield 133	com/sleepycat/b/c/ad:q	Lcom/sleepycat/b/c/p;
    //   444: aload 7
    //   446: invokevirtual 136	com/sleepycat/b/c/p:c	(Lcom/sleepycat/b/c/i;)V
    //   449: lload 16
    //   451: lstore_1
    //   452: aload 9
    //   454: athrow
    //   455: aload_0
    //   456: new 48	java/util/LinkedList
    //   459: dup
    //   460: invokespecial 49	java/util/LinkedList:<init>	()V
    //   463: putfield 188	com/sleepycat/b/n/ad:e	Ljava/util/LinkedList;
    //   466: aload 12
    //   468: invokevirtual 192	java/util/LinkedList:iterator	()Ljava/util/Iterator;
    //   471: astore 8
    //   473: aload 8
    //   475: invokeinterface 197 1 0
    //   480: ifeq +169 -> 649
    //   483: aload 8
    //   485: invokeinterface 201 1 0
    //   490: checkcast 110	com/sleepycat/b/n/ag
    //   493: astore 7
    //   495: aload_0
    //   496: getfield 188	com/sleepycat/b/n/ad:e	Ljava/util/LinkedList;
    //   499: astore 9
    //   501: aload 7
    //   503: getfield 203	com/sleepycat/b/n/ag:d	Ljava/util/LinkedList;
    //   506: invokevirtual 206	java/util/LinkedList:remove	()Ljava/lang/Object;
    //   509: checkcast 95	java/lang/Long
    //   512: astore 10
    //   514: getstatic 208	com/sleepycat/b/n/ag:e	Z
    //   517: ifne +64 -> 581
    //   520: aload 7
    //   522: getfield 210	com/sleepycat/b/n/ag:a	J
    //   525: aload 10
    //   527: invokevirtual 214	java/lang/Long:longValue	()J
    //   530: lcmp
    //   531: ifeq +50 -> 581
    //   534: new 216	java/lang/AssertionError
    //   537: dup
    //   538: new 143	java/lang/StringBuilder
    //   541: dup
    //   542: ldc -38
    //   544: invokespecial 148	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   547: aload 7
    //   549: getfield 210	com/sleepycat/b/n/ag:a	J
    //   552: invokestatic 161	com/sleepycat/b/p/j:h	(J)Ljava/lang/String;
    //   555: invokevirtual 157	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   558: ldc -36
    //   560: invokevirtual 157	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   563: aload 10
    //   565: invokevirtual 214	java/lang/Long:longValue	()J
    //   568: invokestatic 161	com/sleepycat/b/p/j:h	(J)Ljava/lang/String;
    //   571: invokevirtual 157	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   574: invokevirtual 165	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   577: invokespecial 223	java/lang/AssertionError:<init>	(Ljava/lang/Object;)V
    //   580: athrow
    //   581: aload 7
    //   583: getfield 203	com/sleepycat/b/n/ag:d	Ljava/util/LinkedList;
    //   586: invokevirtual 227	java/util/LinkedList:size	()I
    //   589: ifne +33 -> 622
    //   592: new 229	com/sleepycat/b/n/af
    //   595: dup
    //   596: aload 7
    //   598: getfield 231	com/sleepycat/b/n/ag:b	J
    //   601: aload 7
    //   603: getfield 233	com/sleepycat/b/n/ag:c	Z
    //   606: invokespecial 236	com/sleepycat/b/n/af:<init>	(JZ)V
    //   609: astore 7
    //   611: aload 9
    //   613: aload 7
    //   615: invokevirtual 103	java/util/LinkedList:add	(Ljava/lang/Object;)Z
    //   618: pop
    //   619: goto -146 -> 473
    //   622: new 229	com/sleepycat/b/n/af
    //   625: dup
    //   626: aload 7
    //   628: getfield 203	com/sleepycat/b/n/ag:d	Ljava/util/LinkedList;
    //   631: invokevirtual 239	java/util/LinkedList:getFirst	()Ljava/lang/Object;
    //   634: checkcast 95	java/lang/Long
    //   637: invokevirtual 214	java/lang/Long:longValue	()J
    //   640: iconst_0
    //   641: invokespecial 236	com/sleepycat/b/n/af:<init>	(JZ)V
    //   644: astore 7
    //   646: goto -35 -> 611
    //   649: return
    //   650: astore 7
    //   652: goto -361 -> 291
    //   655: goto -460 -> 195
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	658	0	this	ad
    //   0	658	1	paramLong1	long
    //   0	658	3	paramLong2	long
    //   0	658	5	paramLong3	long
    //   0	658	7	paramMap	Map<h, i>
    //   0	658	8	paramad	com.sleepycat.b.c.ad
    //   169	66	9	localLinkedList1	LinkedList
    //   422	31	9	localObject1	Object
    //   499	113	9	localLinkedList2	LinkedList
    //   21	543	10	localObject2	Object
    //   41	145	11	localTreeMap	java.util.TreeMap
    //   50	417	12	localLinkedList3	LinkedList
    //   82	327	13	localay	com.sleepycat.b.g.ay
    //   95	149	14	localk	com.sleepycat.b.g.a.k
    //   157	31	15	localae	ae
    //   60	390	16	l1	long
    //   251	32	18	l2	long
    // Exception table:
    //   from	to	target	type
    //   74	84	289	java/io/FileNotFoundException
    //   87	97	289	java/io/FileNotFoundException
    //   100	107	289	java/io/FileNotFoundException
    //   110	117	289	java/io/FileNotFoundException
    //   120	136	289	java/io/FileNotFoundException
    //   139	146	289	java/io/FileNotFoundException
    //   260	267	289	java/io/FileNotFoundException
    //   270	282	289	java/io/FileNotFoundException
    //   333	347	289	java/io/FileNotFoundException
    //   427	434	289	java/io/FileNotFoundException
    //   437	449	289	java/io/FileNotFoundException
    //   452	455	289	java/io/FileNotFoundException
    //   146	171	422	finally
    //   176	195	422	finally
    //   195	243	422	finally
    //   243	253	422	finally
    //   350	419	422	finally
    //   52	59	650	java/io/FileNotFoundException
  }
  
  public final af a()
  {
    return (af)this.e.remove();
  }
  
  public String toString()
  {
    return this.e.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\n\ad.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */