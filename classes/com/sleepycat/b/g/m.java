package com.sleepycat.b.g;

import com.sleepycat.b.ab;
import com.sleepycat.b.at;
import com.sleepycat.b.bo;
import com.sleepycat.b.c.ac;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.f.a;
import com.sleepycat.b.p.ai;
import com.sleepycat.b.p.z;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.PrintStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.locks.ReentrantLock;
import java.util.zip.Checksum;

public class m
{
  public static final boolean W;
  public static p X;
  private static final String Z;
  static boolean a;
  private static final String[] aa;
  private static Comparator<File> an;
  private static Comparator<String> ao;
  private static String ap;
  static boolean b;
  static boolean c;
  public static long d;
  public static long e;
  public static long f;
  public static boolean g;
  static final String[] h;
  static final String[] i;
  public boolean A = false;
  long B = -1L;
  long C = 0L;
  final ai D;
  final z E;
  final z F;
  final z G;
  final z H;
  final z I;
  final z J;
  final z K;
  final z L;
  final com.sleepycat.b.p.o M;
  final com.sleepycat.b.p.o N;
  final z O;
  final z P;
  final z Q;
  final z R;
  final z S;
  final z T;
  final z U;
  final z V;
  private final File ab;
  private final File[] ac;
  private boolean ad = false;
  private final a ae;
  private RandomAccessFile af;
  private FileChannel ag;
  private FileLock ah;
  private final boolean ai;
  private final boolean aj;
  private final int ak;
  private final boolean al;
  private final int am;
  private int aq = 0;
  private boolean ar = false;
  private Random as = null;
  boolean j = true;
  public final ad k;
  final long l;
  final o m;
  public FileLock n;
  public long o;
  public long p;
  public long q;
  public long r;
  public boolean s;
  long t;
  long u;
  long v;
  long w;
  boolean x;
  final r y;
  public final Map<Long, Long> z;
  
  static
  {
    boolean bool2 = true;
    if (!m.class.desiredAssertionStatus())
    {
      bool1 = true;
      Y = bool1;
      a = false;
      b = false;
      c = false;
      Z = m.class.getName();
      d = 0L;
      e = Long.MAX_VALUE;
      f = Long.MAX_VALUE;
      g = false;
      h = new String[] { ".del" };
      i = new String[] { ".jdb" };
      aa = new String[] { ".jdb", ".del" };
      an = new Comparator()
      {
        private static String a(File paramAnonymousFile)
        {
          paramAnonymousFile = paramAnonymousFile.toString();
          return paramAnonymousFile.substring(paramAnonymousFile.indexOf(File.separator) + 1);
        }
      };
      ao = new Comparator()
      {
        private static String a(String paramAnonymousString)
        {
          return paramAnonymousString.substring(paramAnonymousString.indexOf(File.separator) + 1);
        }
      };
      ap = "je.logwrite.exception.testing";
      if (System.getProperty("je.logwrite.exception.testing") == null) {
        break label152;
      }
    }
    label152:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      W = bool1;
      X = new p()
      {
        public final RandomAccessFile a(String paramAnonymousString1, String paramAnonymousString2)
        {
          return new n(paramAnonymousString1, paramAnonymousString2);
        }
      };
      return;
      bool1 = false;
      break;
    }
  }
  
  public m(ad paramad, File paramFile, boolean paramBoolean)
  {
    this.k = paramad;
    this.ab = paramFile;
    this.ai = paramBoolean;
    this.D = new ai("FileManager", "FileManager statistics");
    this.E = new z(this.D, aq.a);
    this.F = new z(this.D, aq.b);
    this.G = new z(this.D, aq.c);
    this.H = new z(this.D, aq.d);
    this.I = new z(this.D, aq.e);
    this.J = new z(this.D, aq.f);
    this.K = new z(this.D, aq.g);
    this.L = new z(this.D, aq.h);
    this.M = new com.sleepycat.b.p.o(this.D, aq.i);
    this.N = new com.sleepycat.b.p.o(this.D, aq.j);
    this.O = new z(this.D, aq.k);
    this.P = new z(this.D, aq.l);
    this.Q = new z(this.D, aq.m);
    this.R = new z(this.D, aq.n);
    this.S = new z(this.D, aq.o);
    this.T = new z(this.D, aq.p);
    this.U = new z(this.D, aq.t);
    this.V = new z(this.D, aq.u);
    try
    {
      localObject = paramad.u;
      this.l = ((com.sleepycat.b.c.m)localObject).a(com.sleepycat.b.b.d.N);
      this.aj = ((com.sleepycat.b.c.m)localObject).a(com.sleepycat.b.b.d.Y);
      this.ak = ((com.sleepycat.b.c.m)localObject).a(com.sleepycat.b.b.d.Z);
      this.al = ((com.sleepycat.b.c.m)localObject).a(com.sleepycat.b.b.d.W);
      this.A = ((com.sleepycat.b.c.m)localObject).a(com.sleepycat.b.b.d.Q);
      this.am = ((com.sleepycat.b.c.m)localObject).a(com.sleepycat.b.b.d.O);
      if (this.am != 0)
      {
        this.ac = i();
        if (paramad.h) {
          break label675;
        }
        if (paramFile.exists()) {
          break label622;
        }
        throw new IllegalArgumentException("Environment home " + paramFile + " doesn't exist");
      }
    }
    finally
    {
      try
      {
        Object localObject;
        for (;;)
        {
          g();
          throw paramad;
          String[] arrayOfString = this.ab.list(new FilenameFilter()
          {
            public final boolean accept(File paramAnonymousFile, String paramAnonymousString)
            {
              return (paramAnonymousString != null) && (paramAnonymousString.length() == 7) && (paramAnonymousString.startsWith("data"));
            }
          });
          if ((arrayOfString != null) && (arrayOfString.length != 0)) {
            throw com.sleepycat.b.aa.c(com.sleepycat.b.b.d.O.a + " was not set and expected to find no data directories, but found " + arrayOfString.length + " data directories instead.");
          }
          this.ac = null;
        }
        label622:
        if (!a(paramBoolean, false))
        {
          localObject = new StringBuilder("The environment cannot be locked for ");
          if (paramBoolean)
          {
            paramFile = "shared";
            throw new ab(paramad, paramFile + " access.");
          }
        }
        else
        {
          label675:
          this.m = new o((com.sleepycat.b.c.m)localObject);
          this.ae = new a(Z + "_fileCache");
          this.o = 0L;
          this.p = com.sleepycat.b.p.j.a(this.o, 38);
          this.q = -1L;
          this.z = Collections.synchronizedMap(new HashMap());
          this.r = 0L;
          this.y = new r(this);
          this.s = false;
          b();
          paramad = System.getProperty("je.debug.stopOnWriteCount");
          if (paramad != null) {}
          try
          {
            e = Long.parseLong(paramad);
            paramad = System.getProperty("je.debug.stopOnWriteAction");
            if (paramad == null) {
              return;
            }
            if (paramad.compareToIgnoreCase("throw") == 0)
            {
              g = true;
              return;
            }
          }
          catch (NumberFormatException paramad)
          {
            throw new IllegalArgumentException("Could not parse: je.debug.stopOnWriteCount", paramad);
          }
          if (paramad.compareToIgnoreCase("stop") == 0)
          {
            g = false;
            return;
          }
          throw new IllegalArgumentException("Unknown value for: je.debug.stopOnWriteAction" + paramad);
        }
      }
      catch (IOException paramFile)
      {
        for (;;)
        {
          continue;
          paramFile = "single writer";
        }
      }
    }
  }
  
  private j a(long paramLong, q paramq)
  {
    j localj = new j(paramLong, h(paramLong));
    a(localj, paramq, null);
    return localj;
  }
  
  /* Error */
  private void a(j paramj1, q paramq, j paramj2)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 264	com/sleepycat/b/g/m:M	Lcom/sleepycat/b/p/o;
    //   4: invokevirtual 514	com/sleepycat/b/p/o:f	()V
    //   7: aload_1
    //   8: getfield 515	com/sleepycat/b/g/j:d	J
    //   11: lstore 17
    //   13: aload_0
    //   14: lload 17
    //   16: invokevirtual 518	com/sleepycat/b/g/m:b	(J)[Ljava/lang/String;
    //   19: astore 12
    //   21: aconst_null
    //   22: astore 7
    //   24: aconst_null
    //   25: astore 11
    //   27: aconst_null
    //   28: astore 6
    //   30: aconst_null
    //   31: astore 9
    //   33: aconst_null
    //   34: astore 10
    //   36: aconst_null
    //   37: astore 4
    //   39: aload 11
    //   41: astore 5
    //   43: aload 12
    //   45: arraylength
    //   46: istore 14
    //   48: iconst_0
    //   49: istore 13
    //   51: aconst_null
    //   52: astore 4
    //   54: aconst_null
    //   55: astore 8
    //   57: iload 13
    //   59: iload 14
    //   61: if_icmpge +1279 -> 1340
    //   64: aload 12
    //   66: iload 13
    //   68: aaload
    //   69: astore 4
    //   71: aload 11
    //   73: astore 5
    //   75: getstatic 175	com/sleepycat/b/g/m:X	Lcom/sleepycat/b/g/p;
    //   78: aload 4
    //   80: aload_2
    //   81: getfield 522	com/sleepycat/b/g/q:e	Ljava/lang/String;
    //   84: invokeinterface 527 3 0
    //   89: astore 7
    //   91: aload 7
    //   93: astore 5
    //   95: aload 4
    //   97: astore 6
    //   99: aload 5
    //   101: astore 4
    //   103: aload 4
    //   105: ifnonnull +125 -> 230
    //   108: aload 4
    //   110: astore 7
    //   112: aload 4
    //   114: astore 5
    //   116: getstatic 118	com/sleepycat/b/g/m:Y	Z
    //   119: ifne +59 -> 178
    //   122: aload 8
    //   124: ifnonnull +54 -> 178
    //   127: aload 4
    //   129: astore 7
    //   131: aload 4
    //   133: astore 5
    //   135: new 529	java/lang/AssertionError
    //   138: dup
    //   139: invokespecial 530	java/lang/AssertionError:<init>	()V
    //   142: athrow
    //   143: astore_1
    //   144: aload 7
    //   146: astore 5
    //   148: aload_1
    //   149: athrow
    //   150: astore_1
    //   151: aload 5
    //   153: invokestatic 533	com/sleepycat/b/g/m:a	(Ljava/io/RandomAccessFile;)V
    //   156: aload_1
    //   157: athrow
    //   158: astore 5
    //   160: aload 8
    //   162: ifnonnull +1171 -> 1333
    //   165: iload 13
    //   167: iconst_1
    //   168: iadd
    //   169: istore 13
    //   171: aload 5
    //   173: astore 8
    //   175: goto -118 -> 57
    //   178: aload 4
    //   180: astore 7
    //   182: aload 4
    //   184: astore 5
    //   186: aload 8
    //   188: athrow
    //   189: astore_1
    //   190: aload 6
    //   192: astore_2
    //   193: aload 4
    //   195: astore 5
    //   197: new 400	com/sleepycat/b/aa
    //   200: dup
    //   201: aload_0
    //   202: getfield 202	com/sleepycat/b/g/m:k	Lcom/sleepycat/b/c/ad;
    //   205: getstatic 538	com/sleepycat/b/c/ac:n	Lcom/sleepycat/b/c/ac;
    //   208: new 359	java/lang/StringBuilder
    //   211: dup
    //   212: ldc_w 540
    //   215: invokespecial 364	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   218: aload_2
    //   219: invokevirtual 373	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   222: invokevirtual 376	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   225: aload_1
    //   226: invokespecial 543	com/sleepycat/b/aa:<init>	(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   229: athrow
    //   230: aload_3
    //   231: ifnull +39 -> 270
    //   234: aload 4
    //   236: astore 7
    //   238: aload 4
    //   240: astore 5
    //   242: aload_3
    //   243: getfield 545	com/sleepycat/b/g/j:c	I
    //   246: istore 13
    //   248: iload 13
    //   250: ifle +20 -> 270
    //   253: aload 4
    //   255: astore 7
    //   257: aload 4
    //   259: astore 5
    //   261: aload_1
    //   262: aload 4
    //   264: iload 13
    //   266: invokevirtual 548	com/sleepycat/b/g/j:a	(Ljava/io/RandomAccessFile;I)V
    //   269: return
    //   270: aload 4
    //   272: astore 7
    //   274: aload 4
    //   276: astore 5
    //   278: aload 4
    //   280: invokevirtual 554	java/io/RandomAccessFile:length	()J
    //   283: lconst_0
    //   284: lcmp
    //   285: ifne +750 -> 1035
    //   288: aload 4
    //   290: astore 7
    //   292: aload 4
    //   294: astore 5
    //   296: aload_2
    //   297: getfield 556	com/sleepycat/b/g/q:f	Z
    //   300: ifeq +1026 -> 1326
    //   303: aload 4
    //   305: astore 7
    //   307: aload 4
    //   309: astore 5
    //   311: aload_0
    //   312: getfield 453	com/sleepycat/b/g/m:z	Ljava/util/Map;
    //   315: lload 17
    //   317: lconst_1
    //   318: lsub
    //   319: invokestatic 560	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   322: invokeinterface 566 2 0
    //   327: checkcast 468	java/lang/Long
    //   330: invokestatic 569	com/sleepycat/b/p/j:a	(Ljava/lang/Long;)J
    //   333: lstore 19
    //   335: lconst_0
    //   336: lstore 15
    //   338: lload 19
    //   340: ldc2_w 189
    //   343: lcmp
    //   344: ifeq +18 -> 362
    //   347: aload 4
    //   349: astore 7
    //   351: aload 4
    //   353: astore 5
    //   355: lload 19
    //   357: invokestatic 572	com/sleepycat/b/p/j:e	(J)J
    //   360: lstore 15
    //   362: lload 15
    //   364: lconst_0
    //   365: lcmp
    //   366: ifne +145 -> 511
    //   369: lload 17
    //   371: lconst_1
    //   372: lcmp
    //   373: ifle +138 -> 511
    //   376: aload 4
    //   378: astore 7
    //   380: aload 4
    //   382: astore 5
    //   384: aload_0
    //   385: getfield 184	com/sleepycat/b/g/m:j	Z
    //   388: ifeq +123 -> 511
    //   391: aload 4
    //   393: astore 7
    //   395: aload 4
    //   397: astore 5
    //   399: aload_0
    //   400: getfield 202	com/sleepycat/b/g/m:k	Lcom/sleepycat/b/c/ad;
    //   403: new 359	java/lang/StringBuilder
    //   406: dup
    //   407: ldc_w 574
    //   410: invokespecial 364	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   413: lload 17
    //   415: invokestatic 577	java/lang/Long:toHexString	(J)Ljava/lang/String;
    //   418: invokevirtual 373	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   421: ldc_w 579
    //   424: invokevirtual 373	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   427: lload 19
    //   429: invokestatic 580	com/sleepycat/b/p/j:h	(J)Ljava/lang/String;
    //   432: invokevirtual 373	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   435: ldc_w 582
    //   438: invokevirtual 373	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   441: aload_0
    //   442: getfield 453	com/sleepycat/b/g/m:z	Ljava/util/Map;
    //   445: invokevirtual 368	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   448: ldc_w 584
    //   451: invokevirtual 373	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   454: aload 4
    //   456: invokevirtual 554	java/io/RandomAccessFile:length	()J
    //   459: invokevirtual 587	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   462: invokevirtual 376	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   465: invokestatic 590	com/sleepycat/b/aa:a	(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;
    //   468: athrow
    //   469: astore_1
    //   470: aload 4
    //   472: astore 5
    //   474: aload 4
    //   476: invokestatic 533	com/sleepycat/b/g/m:a	(Ljava/io/RandomAccessFile;)V
    //   479: aload 4
    //   481: astore 5
    //   483: aload_1
    //   484: new 359	java/lang/StringBuilder
    //   487: dup
    //   488: ldc_w 540
    //   491: invokespecial 364	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   494: aload 6
    //   496: invokevirtual 373	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   499: invokevirtual 376	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   502: invokevirtual 592	com/sleepycat/b/n:a	(Ljava/lang/String;)V
    //   505: aload 4
    //   507: astore 5
    //   509: aload_1
    //   510: athrow
    //   511: aload 4
    //   513: astore 7
    //   515: aload 4
    //   517: astore 5
    //   519: new 594	com/sleepycat/b/g/l
    //   522: dup
    //   523: lload 17
    //   525: lload 15
    //   527: invokespecial 597	com/sleepycat/b/g/l:<init>	(JJ)V
    //   530: astore_2
    //   531: aload 4
    //   533: astore 7
    //   535: aload 4
    //   537: astore 5
    //   539: aload_0
    //   540: getfield 202	com/sleepycat/b/g/m:k	Lcom/sleepycat/b/c/ad;
    //   543: invokevirtual 599	com/sleepycat/b/c/ad:n	()V
    //   546: aload 4
    //   548: astore 7
    //   550: aload 4
    //   552: astore 5
    //   554: aload_0
    //   555: getfield 202	com/sleepycat/b/g/m:k	Lcom/sleepycat/b/c/ad;
    //   558: invokevirtual 601	com/sleepycat/b/c/ad:m	()Z
    //   561: ifne +790 -> 1351
    //   564: aload 4
    //   566: astore 7
    //   568: aload 4
    //   570: astore 5
    //   572: new 603	com/sleepycat/b/g/a/h
    //   575: dup
    //   576: getstatic 608	com/sleepycat/b/g/af:y	Lcom/sleepycat/b/g/af;
    //   579: aload_2
    //   580: invokespecial 611	com/sleepycat/b/g/a/h:<init>	(Lcom/sleepycat/b/g/af;Lcom/sleepycat/b/g/l;)V
    //   583: astore_2
    //   584: aload 4
    //   586: astore 7
    //   588: aload 4
    //   590: astore 5
    //   592: aload_0
    //   593: getfield 202	com/sleepycat/b/g/m:k	Lcom/sleepycat/b/c/ad;
    //   596: getfield 614	com/sleepycat/b/c/ad:w	Lcom/sleepycat/b/g/am;
    //   599: astore_3
    //   600: aload 4
    //   602: astore 7
    //   604: aload 4
    //   606: astore 5
    //   608: new 616	com/sleepycat/b/g/ae
    //   611: dup
    //   612: aload_2
    //   613: getstatic 621	com/sleepycat/b/g/au:a	Lcom/sleepycat/b/g/au;
    //   616: getstatic 626	com/sleepycat/b/g/av:g	Lcom/sleepycat/b/g/av;
    //   619: invokespecial 629	com/sleepycat/b/g/ae:<init>	(Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/au;Lcom/sleepycat/b/g/av;)V
    //   622: astore_3
    //   623: aload 4
    //   625: astore 7
    //   627: aload 4
    //   629: astore 5
    //   631: getstatic 632	com/sleepycat/b/g/am:j	Z
    //   634: ifne +42 -> 676
    //   637: aload 4
    //   639: astore 7
    //   641: aload 4
    //   643: astore 5
    //   645: aload_2
    //   646: invokeinterface 637 1 0
    //   651: getfield 640	com/sleepycat/b/g/af:N	Lcom/sleepycat/b/g/aj;
    //   654: getfield 643	com/sleepycat/b/g/aj:c	Z
    //   657: ifeq +19 -> 676
    //   660: aload 4
    //   662: astore 7
    //   664: aload 4
    //   666: astore 5
    //   668: new 529	java/lang/AssertionError
    //   671: dup
    //   672: invokespecial 530	java/lang/AssertionError:<init>	()V
    //   675: athrow
    //   676: aload 4
    //   678: astore 7
    //   680: aload 4
    //   682: astore 5
    //   684: aload_3
    //   685: aload_3
    //   686: aload_2
    //   687: invokestatic 646	com/sleepycat/b/g/am:a	(Lcom/sleepycat/b/g/ae;Lcom/sleepycat/b/g/a/m;)Ljava/nio/ByteBuffer;
    //   690: lconst_0
    //   691: aconst_null
    //   692: invokevirtual 649	com/sleepycat/b/g/ae:a	(Ljava/nio/ByteBuffer;JLcom/sleepycat/b/p/au;)Ljava/nio/ByteBuffer;
    //   695: astore_3
    //   696: aload 4
    //   698: astore 7
    //   700: aload 4
    //   702: astore 5
    //   704: getstatic 172	com/sleepycat/b/g/m:W	Z
    //   707: ifeq +21 -> 728
    //   710: aload 4
    //   712: astore 7
    //   714: aload 4
    //   716: astore 5
    //   718: aload_0
    //   719: aload 4
    //   721: aload_3
    //   722: lconst_0
    //   723: lload 17
    //   725: invokespecial 652	com/sleepycat/b/g/m:b	(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;JJ)V
    //   728: aload 4
    //   730: astore 7
    //   732: aload 4
    //   734: astore 5
    //   736: aload_0
    //   737: aload 4
    //   739: aload_3
    //   740: lconst_0
    //   741: lload 17
    //   743: iconst_1
    //   744: invokespecial 655	com/sleepycat/b/g/m:b	(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;JJZ)I
    //   747: istore 13
    //   749: aload 4
    //   751: astore 7
    //   753: aload 4
    //   755: astore 5
    //   757: lload 17
    //   759: aload_0
    //   760: getfield 657	com/sleepycat/b/g/m:t	J
    //   763: lcmp
    //   764: ifle +127 -> 891
    //   767: aload 4
    //   769: astore 7
    //   771: aload 4
    //   773: astore 5
    //   775: lload 17
    //   777: iload 13
    //   779: invokestatic 438	com/sleepycat/b/p/j:a	(JI)J
    //   782: lstore 15
    //   784: aload 4
    //   786: astore 7
    //   788: aload 4
    //   790: astore 5
    //   792: aload_0
    //   793: getfield 440	com/sleepycat/b/g/m:p	J
    //   796: lload 15
    //   798: invokestatic 660	com/sleepycat/b/p/j:b	(JJ)I
    //   801: ifge +17 -> 818
    //   804: aload 4
    //   806: astore 7
    //   808: aload 4
    //   810: astore 5
    //   812: aload_0
    //   813: lload 15
    //   815: putfield 440	com/sleepycat/b/g/m:p	J
    //   818: aload 4
    //   820: astore 7
    //   822: aload 4
    //   824: astore 5
    //   826: aload_0
    //   827: lload 17
    //   829: iload 13
    //   831: invokestatic 438	com/sleepycat/b/p/j:a	(JI)J
    //   834: putfield 442	com/sleepycat/b/g/m:q	J
    //   837: aload 4
    //   839: astore 7
    //   841: aload 4
    //   843: astore 5
    //   845: aload_0
    //   846: iload 13
    //   848: i2l
    //   849: putfield 455	com/sleepycat/b/g/m:r	J
    //   852: aload 4
    //   854: astore 7
    //   856: aload 4
    //   858: astore 5
    //   860: aload_0
    //   861: iconst_0
    //   862: putfield 462	com/sleepycat/b/g/m:s	Z
    //   865: aload 4
    //   867: astore 7
    //   869: aload 4
    //   871: astore 5
    //   873: aload_0
    //   874: lload 17
    //   876: putfield 433	com/sleepycat/b/g/m:o	J
    //   879: aload 4
    //   881: astore 7
    //   883: aload 4
    //   885: astore 5
    //   887: aload_0
    //   888: invokevirtual 464	com/sleepycat/b/g/m:b	()V
    //   891: aload 4
    //   893: astore 7
    //   895: aload 4
    //   897: astore 5
    //   899: iload 13
    //   901: aload_2
    //   902: invokeinterface 664 1 0
    //   907: bipush 14
    //   909: iadd
    //   910: if_icmpeq +441 -> 1351
    //   913: aload 4
    //   915: astore 7
    //   917: aload 4
    //   919: astore 5
    //   921: new 400	com/sleepycat/b/aa
    //   924: dup
    //   925: aload_0
    //   926: getfield 202	com/sleepycat/b/g/m:k	Lcom/sleepycat/b/c/ad;
    //   929: getstatic 666	com/sleepycat/b/c/ac:m	Lcom/sleepycat/b/c/ac;
    //   932: new 359	java/lang/StringBuilder
    //   935: dup
    //   936: ldc_w 668
    //   939: invokespecial 364	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   942: aload 6
    //   944: invokevirtual 373	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   947: ldc_w 670
    //   950: invokevirtual 373	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   953: iload 13
    //   955: invokevirtual 396	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   958: ldc_w 672
    //   961: invokevirtual 373	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   964: invokevirtual 376	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   967: invokespecial 675	com/sleepycat/b/aa:<init>	(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;)V
    //   970: athrow
    //   971: astore_1
    //   972: aload 4
    //   974: astore 7
    //   976: aload 4
    //   978: astore 5
    //   980: new 677	com/sleepycat/b/bo
    //   983: dup
    //   984: aload_0
    //   985: getfield 202	com/sleepycat/b/g/m:k	Lcom/sleepycat/b/c/ad;
    //   988: ldc_w 679
    //   991: aload_1
    //   992: invokespecial 682	com/sleepycat/b/bo:<init>	(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   995: athrow
    //   996: astore_1
    //   997: aload 4
    //   999: astore 7
    //   1001: aload 4
    //   1003: astore 5
    //   1005: new 684	com/sleepycat/b/at
    //   1008: dup
    //   1009: aload_0
    //   1010: getfield 202	com/sleepycat/b/g/m:k	Lcom/sleepycat/b/c/ad;
    //   1013: aload_1
    //   1014: invokespecial 687	com/sleepycat/b/at:<init>	(Lcom/sleepycat/b/c/ad;Ljava/lang/Throwable;)V
    //   1017: athrow
    //   1018: aload 4
    //   1020: astore 7
    //   1022: aload 4
    //   1024: astore 5
    //   1026: aload_1
    //   1027: aload 4
    //   1029: iload 13
    //   1031: invokevirtual 548	com/sleepycat/b/g/j:a	(Ljava/io/RandomAccessFile;I)V
    //   1034: return
    //   1035: aload 4
    //   1037: astore 7
    //   1039: aload 4
    //   1041: astore 5
    //   1043: aload_0
    //   1044: getfield 202	com/sleepycat/b/g/m:k	Lcom/sleepycat/b/c/ad;
    //   1047: getfield 614	com/sleepycat/b/c/ad:w	Lcom/sleepycat/b/g/am;
    //   1050: astore_2
    //   1051: aload 4
    //   1053: astore 7
    //   1055: aload 4
    //   1057: astore 5
    //   1059: lload 17
    //   1061: iconst_0
    //   1062: invokestatic 438	com/sleepycat/b/p/j:a	(JI)J
    //   1065: lstore 15
    //   1067: aload 4
    //   1069: astore 7
    //   1071: aload 4
    //   1073: astore 5
    //   1075: aload_2
    //   1076: lload 15
    //   1078: new 689	com/sleepycat/b/g/v
    //   1081: dup
    //   1082: aload 4
    //   1084: aload_2
    //   1085: getfield 691	com/sleepycat/b/g/am:g	I
    //   1088: aload_2
    //   1089: getfield 694	com/sleepycat/b/g/am:d	Lcom/sleepycat/b/g/m;
    //   1092: lload 15
    //   1094: invokestatic 696	com/sleepycat/b/p/j:d	(J)J
    //   1097: iconst_m1
    //   1098: invokespecial 699	com/sleepycat/b/g/v:<init>	(Ljava/io/RandomAccessFile;ILcom/sleepycat/b/g/m;JI)V
    //   1101: iconst_0
    //   1102: invokevirtual 702	com/sleepycat/b/g/am:a	(JLcom/sleepycat/b/g/ap;Z)Lcom/sleepycat/b/g/ay;
    //   1105: getfield 707	com/sleepycat/b/g/ay:b	Lcom/sleepycat/b/g/a/m;
    //   1108: invokeinterface 710 1 0
    //   1113: checkcast 594	com/sleepycat/b/g/l
    //   1116: astore_2
    //   1117: aload 4
    //   1119: astore 7
    //   1121: aload 4
    //   1123: astore 5
    //   1125: aload_0
    //   1126: getfield 202	com/sleepycat/b/g/m:k	Lcom/sleepycat/b/c/ad;
    //   1129: astore_3
    //   1130: aload 4
    //   1132: astore 7
    //   1134: aload 4
    //   1136: astore 5
    //   1138: aload_2
    //   1139: getfield 711	com/sleepycat/b/g/l:c	I
    //   1142: bipush 8
    //   1144: if_icmple +40 -> 1184
    //   1147: aload 4
    //   1149: astore 7
    //   1151: aload 4
    //   1153: astore 5
    //   1155: new 713	com/sleepycat/b/bw
    //   1158: dup
    //   1159: aload_3
    //   1160: new 359	java/lang/StringBuilder
    //   1163: dup
    //   1164: ldc_w 715
    //   1167: invokespecial 364	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1170: aload_2
    //   1171: getfield 711	com/sleepycat/b/g/l:c	I
    //   1174: invokevirtual 396	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1177: invokevirtual 376	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1180: invokespecial 716	com/sleepycat/b/bw:<init>	(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   1183: athrow
    //   1184: aload 4
    //   1186: astore 7
    //   1188: aload 4
    //   1190: astore 5
    //   1192: aload_2
    //   1193: getfield 718	com/sleepycat/b/g/l:a	J
    //   1196: lload 17
    //   1198: lcmp
    //   1199: ifeq +65 -> 1264
    //   1202: aload 4
    //   1204: astore 7
    //   1206: aload 4
    //   1208: astore 5
    //   1210: new 400	com/sleepycat/b/aa
    //   1213: dup
    //   1214: aload_3
    //   1215: getstatic 666	com/sleepycat/b/c/ac:m	Lcom/sleepycat/b/c/ac;
    //   1218: new 359	java/lang/StringBuilder
    //   1221: dup
    //   1222: ldc_w 720
    //   1225: invokespecial 364	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1228: aload 6
    //   1230: invokevirtual 373	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1233: ldc_w 722
    //   1236: invokevirtual 373	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1239: lload 17
    //   1241: invokevirtual 587	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   1244: ldc_w 724
    //   1247: invokevirtual 373	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1250: aload_2
    //   1251: getfield 718	com/sleepycat/b/g/l:a	J
    //   1254: invokevirtual 587	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   1257: invokevirtual 376	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1260: invokespecial 675	com/sleepycat/b/aa:<init>	(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;)V
    //   1263: athrow
    //   1264: aload 4
    //   1266: astore 7
    //   1268: aload 4
    //   1270: astore 5
    //   1272: aload_2
    //   1273: getfield 711	com/sleepycat/b/g/l:c	I
    //   1276: istore 13
    //   1278: goto -260 -> 1018
    //   1281: astore_1
    //   1282: aconst_null
    //   1283: astore 6
    //   1285: aload 9
    //   1287: astore 4
    //   1289: goto -819 -> 470
    //   1292: astore_1
    //   1293: aload 4
    //   1295: astore 6
    //   1297: aload 9
    //   1299: astore 4
    //   1301: goto -831 -> 470
    //   1304: astore_1
    //   1305: aload 4
    //   1307: astore_2
    //   1308: aload 6
    //   1310: astore 4
    //   1312: goto -1119 -> 193
    //   1315: astore_1
    //   1316: aload 4
    //   1318: astore_2
    //   1319: aload 6
    //   1321: astore 4
    //   1323: goto -1130 -> 193
    //   1326: bipush 8
    //   1328: istore 13
    //   1330: goto -312 -> 1018
    //   1333: aload 8
    //   1335: astore 5
    //   1337: goto -1172 -> 165
    //   1340: aload 4
    //   1342: astore 6
    //   1344: aload 10
    //   1346: astore 4
    //   1348: goto -1245 -> 103
    //   1351: bipush 8
    //   1353: istore 13
    //   1355: goto -337 -> 1018
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1358	0	this	m
    //   0	1358	1	paramj1	j
    //   0	1358	2	paramq	q
    //   0	1358	3	paramj2	j
    //   37	1310	4	localObject1	Object
    //   41	111	5	localObject2	Object
    //   158	14	5	localFileNotFoundException1	FileNotFoundException
    //   184	1152	5	localObject3	Object
    //   28	1315	6	localObject4	Object
    //   22	1245	7	localObject5	Object
    //   55	1279	8	localFileNotFoundException2	FileNotFoundException
    //   31	1267	9	localObject6	Object
    //   34	1311	10	localObject7	Object
    //   25	47	11	localObject8	Object
    //   19	46	12	arrayOfString	String[]
    //   49	1305	13	i1	int
    //   46	16	14	i2	int
    //   336	757	15	l1	long
    //   11	1229	17	l2	long
    //   333	95	19	l3	long
    // Exception table:
    //   from	to	target	type
    //   43	48	143	java/io/FileNotFoundException
    //   116	122	143	java/io/FileNotFoundException
    //   135	143	143	java/io/FileNotFoundException
    //   186	189	143	java/io/FileNotFoundException
    //   242	248	143	java/io/FileNotFoundException
    //   261	269	143	java/io/FileNotFoundException
    //   278	288	143	java/io/FileNotFoundException
    //   296	303	143	java/io/FileNotFoundException
    //   311	335	143	java/io/FileNotFoundException
    //   355	362	143	java/io/FileNotFoundException
    //   384	391	143	java/io/FileNotFoundException
    //   399	469	143	java/io/FileNotFoundException
    //   519	531	143	java/io/FileNotFoundException
    //   539	546	143	java/io/FileNotFoundException
    //   554	564	143	java/io/FileNotFoundException
    //   572	584	143	java/io/FileNotFoundException
    //   592	600	143	java/io/FileNotFoundException
    //   608	623	143	java/io/FileNotFoundException
    //   631	637	143	java/io/FileNotFoundException
    //   645	660	143	java/io/FileNotFoundException
    //   668	676	143	java/io/FileNotFoundException
    //   684	696	143	java/io/FileNotFoundException
    //   704	710	143	java/io/FileNotFoundException
    //   718	728	143	java/io/FileNotFoundException
    //   736	749	143	java/io/FileNotFoundException
    //   757	767	143	java/io/FileNotFoundException
    //   775	784	143	java/io/FileNotFoundException
    //   792	804	143	java/io/FileNotFoundException
    //   812	818	143	java/io/FileNotFoundException
    //   826	837	143	java/io/FileNotFoundException
    //   845	852	143	java/io/FileNotFoundException
    //   860	865	143	java/io/FileNotFoundException
    //   873	879	143	java/io/FileNotFoundException
    //   887	891	143	java/io/FileNotFoundException
    //   899	913	143	java/io/FileNotFoundException
    //   921	971	143	java/io/FileNotFoundException
    //   980	996	143	java/io/FileNotFoundException
    //   1005	1018	143	java/io/FileNotFoundException
    //   1026	1034	143	java/io/FileNotFoundException
    //   1043	1051	143	java/io/FileNotFoundException
    //   1059	1067	143	java/io/FileNotFoundException
    //   1075	1117	143	java/io/FileNotFoundException
    //   1125	1130	143	java/io/FileNotFoundException
    //   1138	1147	143	java/io/FileNotFoundException
    //   1155	1184	143	java/io/FileNotFoundException
    //   1192	1202	143	java/io/FileNotFoundException
    //   1210	1264	143	java/io/FileNotFoundException
    //   1272	1278	143	java/io/FileNotFoundException
    //   43	48	150	finally
    //   75	91	150	finally
    //   116	122	150	finally
    //   135	143	150	finally
    //   148	150	150	finally
    //   186	189	150	finally
    //   197	230	150	finally
    //   242	248	150	finally
    //   261	269	150	finally
    //   278	288	150	finally
    //   296	303	150	finally
    //   311	335	150	finally
    //   355	362	150	finally
    //   384	391	150	finally
    //   399	469	150	finally
    //   474	479	150	finally
    //   483	505	150	finally
    //   509	511	150	finally
    //   519	531	150	finally
    //   539	546	150	finally
    //   554	564	150	finally
    //   572	584	150	finally
    //   592	600	150	finally
    //   608	623	150	finally
    //   631	637	150	finally
    //   645	660	150	finally
    //   668	676	150	finally
    //   684	696	150	finally
    //   704	710	150	finally
    //   718	728	150	finally
    //   736	749	150	finally
    //   757	767	150	finally
    //   775	784	150	finally
    //   792	804	150	finally
    //   812	818	150	finally
    //   826	837	150	finally
    //   845	852	150	finally
    //   860	865	150	finally
    //   873	879	150	finally
    //   887	891	150	finally
    //   899	913	150	finally
    //   921	971	150	finally
    //   980	996	150	finally
    //   1005	1018	150	finally
    //   1026	1034	150	finally
    //   1043	1051	150	finally
    //   1059	1067	150	finally
    //   1075	1117	150	finally
    //   1125	1130	150	finally
    //   1138	1147	150	finally
    //   1155	1184	150	finally
    //   1192	1202	150	finally
    //   1210	1264	150	finally
    //   1272	1278	150	finally
    //   75	91	158	java/io/FileNotFoundException
    //   116	122	189	java/io/IOException
    //   135	143	189	java/io/IOException
    //   186	189	189	java/io/IOException
    //   242	248	189	java/io/IOException
    //   261	269	189	java/io/IOException
    //   278	288	189	java/io/IOException
    //   296	303	189	java/io/IOException
    //   311	335	189	java/io/IOException
    //   355	362	189	java/io/IOException
    //   384	391	189	java/io/IOException
    //   399	469	189	java/io/IOException
    //   519	531	189	java/io/IOException
    //   539	546	189	java/io/IOException
    //   554	564	189	java/io/IOException
    //   572	584	189	java/io/IOException
    //   592	600	189	java/io/IOException
    //   608	623	189	java/io/IOException
    //   631	637	189	java/io/IOException
    //   645	660	189	java/io/IOException
    //   668	676	189	java/io/IOException
    //   684	696	189	java/io/IOException
    //   899	913	189	java/io/IOException
    //   921	971	189	java/io/IOException
    //   980	996	189	java/io/IOException
    //   1005	1018	189	java/io/IOException
    //   1026	1034	189	java/io/IOException
    //   1043	1051	189	java/io/IOException
    //   1059	1067	189	java/io/IOException
    //   1075	1117	189	java/io/IOException
    //   1125	1130	189	java/io/IOException
    //   1138	1147	189	java/io/IOException
    //   1155	1184	189	java/io/IOException
    //   1192	1202	189	java/io/IOException
    //   1210	1264	189	java/io/IOException
    //   1272	1278	189	java/io/IOException
    //   116	122	469	com/sleepycat/b/n
    //   135	143	469	com/sleepycat/b/n
    //   186	189	469	com/sleepycat/b/n
    //   242	248	469	com/sleepycat/b/n
    //   261	269	469	com/sleepycat/b/n
    //   278	288	469	com/sleepycat/b/n
    //   296	303	469	com/sleepycat/b/n
    //   311	335	469	com/sleepycat/b/n
    //   355	362	469	com/sleepycat/b/n
    //   384	391	469	com/sleepycat/b/n
    //   399	469	469	com/sleepycat/b/n
    //   519	531	469	com/sleepycat/b/n
    //   539	546	469	com/sleepycat/b/n
    //   554	564	469	com/sleepycat/b/n
    //   572	584	469	com/sleepycat/b/n
    //   592	600	469	com/sleepycat/b/n
    //   608	623	469	com/sleepycat/b/n
    //   631	637	469	com/sleepycat/b/n
    //   645	660	469	com/sleepycat/b/n
    //   668	676	469	com/sleepycat/b/n
    //   684	696	469	com/sleepycat/b/n
    //   704	710	469	com/sleepycat/b/n
    //   718	728	469	com/sleepycat/b/n
    //   736	749	469	com/sleepycat/b/n
    //   757	767	469	com/sleepycat/b/n
    //   775	784	469	com/sleepycat/b/n
    //   792	804	469	com/sleepycat/b/n
    //   812	818	469	com/sleepycat/b/n
    //   826	837	469	com/sleepycat/b/n
    //   845	852	469	com/sleepycat/b/n
    //   860	865	469	com/sleepycat/b/n
    //   873	879	469	com/sleepycat/b/n
    //   887	891	469	com/sleepycat/b/n
    //   899	913	469	com/sleepycat/b/n
    //   921	971	469	com/sleepycat/b/n
    //   980	996	469	com/sleepycat/b/n
    //   1005	1018	469	com/sleepycat/b/n
    //   1026	1034	469	com/sleepycat/b/n
    //   1043	1051	469	com/sleepycat/b/n
    //   1059	1067	469	com/sleepycat/b/n
    //   1075	1117	469	com/sleepycat/b/n
    //   1125	1130	469	com/sleepycat/b/n
    //   1138	1147	469	com/sleepycat/b/n
    //   1155	1184	469	com/sleepycat/b/n
    //   1192	1202	469	com/sleepycat/b/n
    //   1210	1264	469	com/sleepycat/b/n
    //   1272	1278	469	com/sleepycat/b/n
    //   704	710	971	java/nio/channels/ClosedChannelException
    //   718	728	971	java/nio/channels/ClosedChannelException
    //   736	749	971	java/nio/channels/ClosedChannelException
    //   757	767	971	java/nio/channels/ClosedChannelException
    //   775	784	971	java/nio/channels/ClosedChannelException
    //   792	804	971	java/nio/channels/ClosedChannelException
    //   812	818	971	java/nio/channels/ClosedChannelException
    //   826	837	971	java/nio/channels/ClosedChannelException
    //   845	852	971	java/nio/channels/ClosedChannelException
    //   860	865	971	java/nio/channels/ClosedChannelException
    //   873	879	971	java/nio/channels/ClosedChannelException
    //   887	891	971	java/nio/channels/ClosedChannelException
    //   704	710	996	java/io/IOException
    //   718	728	996	java/io/IOException
    //   736	749	996	java/io/IOException
    //   757	767	996	java/io/IOException
    //   775	784	996	java/io/IOException
    //   792	804	996	java/io/IOException
    //   812	818	996	java/io/IOException
    //   826	837	996	java/io/IOException
    //   845	852	996	java/io/IOException
    //   860	865	996	java/io/IOException
    //   873	879	996	java/io/IOException
    //   887	891	996	java/io/IOException
    //   43	48	1281	com/sleepycat/b/n
    //   75	91	1292	com/sleepycat/b/n
    //   43	48	1304	java/io/IOException
    //   75	91	1315	java/io/IOException
  }
  
  private static void a(RandomAccessFile paramRandomAccessFile)
  {
    if (paramRandomAccessFile != null) {}
    try
    {
      paramRandomAccessFile.close();
      return;
    }
    catch (Exception paramRandomAccessFile) {}
  }
  
  private static void a(ByteBuffer paramByteBuffer)
  {
    int i1 = af.q.K;
    paramByteBuffer.position(0);
    while (paramByteBuffer.remaining() > 0)
    {
      int i2 = paramByteBuffer.position();
      ae localae;
      try
      {
        localae = new ae(paramByteBuffer, 8);
        if (localae.b != i1) {
          break label183;
        }
        if ((!ae.k) && (localae.b != af.q.K)) {
          throw new AssertionError();
        }
      }
      catch (c paramByteBuffer)
      {
        throw com.sleepycat.b.aa.a(paramByteBuffer);
      }
      int i3 = paramByteBuffer.position();
      int i4 = i3 - (localae.b() - 4);
      paramByteBuffer.position(i4);
      paramByteBuffer.put(af.r.K);
      Checksum localChecksum = com.sleepycat.b.p.b.a();
      int i5 = localae.d;
      int i6 = localae.b();
      localChecksum.update(paramByteBuffer.array(), i4 + paramByteBuffer.arrayOffset(), i5 + (i6 - 4));
      paramByteBuffer.position(i3 - localae.b());
      localae.a = localChecksum.getValue();
      ar.a(paramByteBuffer, localae.a);
      label183:
      paramByteBuffer.position(i2 + localae.b() + localae.d);
    }
    paramByteBuffer.position(0);
  }
  
  public static boolean a()
  {
    return (a) && (!c);
  }
  
  private static boolean a(File paramFile, boolean paramBoolean)
  {
    if (!paramFile.canWrite()) {}
    for (boolean bool = true; (bool) && (!paramBoolean); bool = false) {
      throw new IllegalArgumentException("The Environment directory " + paramFile.getAbsolutePath() + " is not writable, but the Environment was opened for read-write access.");
    }
    return bool;
  }
  
  private String[] a(x paramx)
  {
    if (this.am == 0)
    {
      paramx = this.ab.list(paramx);
      if (paramx != null)
      {
        Arrays.sort(paramx);
        return paramx;
      }
      return new String[0];
    }
    String[][] arrayOfString = new String[this.am][];
    Object localObject = this.ac;
    int i5 = localObject.length;
    int i1 = 0;
    int i2 = 0;
    int i3 = 0;
    while (i1 < i5)
    {
      String str = localObject[i1];
      arrayOfString[i2] = str.list(paramx);
      str = str.toString();
      str = str.substring(str.lastIndexOf(File.separator) + 1);
      i4 = 0;
      while (i4 < arrayOfString[i2].length)
      {
        arrayOfString[i2][i4] = (str + File.separator + arrayOfString[i2][i4]);
        i4 += 1;
      }
      i3 += arrayOfString[i2].length;
      i2 += 1;
      i1 += 1;
    }
    if (i3 == 0) {
      return new String[0];
    }
    paramx = new String[i3];
    int i4 = arrayOfString.length;
    i1 = 0;
    i2 = 0;
    while (i1 < i4)
    {
      localObject = arrayOfString[i1];
      i5 = localObject.length;
      i3 = 0;
      while (i3 < i5)
      {
        paramx[i2] = localObject[i3];
        i3 += 1;
        i2 += 1;
      }
      i1 += 1;
    }
    Arrays.sort(paramx, ao);
    return paramx;
  }
  
  private String[] a(String[] paramArrayOfString)
  {
    return a(new x(paramArrayOfString));
  }
  
  private int b(RandomAccessFile paramRandomAccessFile, ByteBuffer paramByteBuffer, long paramLong1, long paramLong2, boolean paramBoolean)
  {
    c("write");
    int i1 = paramByteBuffer.position();
    int i2 = paramByteBuffer.limit() - i1;
    if ((this.B == paramLong2) && (Math.abs(paramLong1 - this.C) < 1048576L))
    {
      this.H.f();
      this.L.b(i2);
    }
    for (;;)
    {
      if (this.A) {
        b(paramByteBuffer, paramLong1, "pre-write");
      }
      boolean bool3 = r.a(this.y).tryLock();
      boolean bool2 = false;
      boolean bool1 = bool2;
      if (!bool3)
      {
        bool1 = bool2;
        if (this.aj)
        {
          bool1 = bool2;
          if (!paramBoolean) {
            bool1 = this.y.a(paramLong2, paramByteBuffer.array(), paramLong1, i1 + paramByteBuffer.arrayOffset(), i2);
          }
        }
      }
      if (!bool1) {
        if (!bool3) {
          r.a(this.y).lock();
        }
      }
      try
      {
        if (this.aj) {
          r.b(this.y);
        }
        try
        {
          paramRandomAccessFile.seek(paramLong1);
          paramRandomAccessFile.write(paramByteBuffer.array(), paramByteBuffer.arrayOffset() + i1, i2);
          if (this.A)
          {
            paramRandomAccessFile.seek(paramLong1);
            paramRandomAccessFile.read(paramByteBuffer.array(), paramByteBuffer.arrayOffset() + i1, i2);
            b(paramByteBuffer, paramLong1, "post-write");
          }
          r.a(this.y).unlock();
          paramByteBuffer.position(i1 + i2);
          this.B = paramLong2;
          this.C = (i2 + paramLong1);
          return i2;
        }
        finally {}
        this.F.f();
        this.J.b(i2);
      }
      finally
      {
        r.a(this.y).unlock();
      }
    }
  }
  
  private void b(RandomAccessFile paramRandomAccessFile, ByteBuffer paramByteBuffer, long paramLong1, long paramLong2)
  {
    if (this.ar) {
      new Exception("Write after LogWriteException").printStackTrace();
    }
    this.aq += 1;
    if (this.aq >= 100) {
      this.aq = 0;
    }
    if (this.as == null) {
      this.as = new Random(System.currentTimeMillis());
    }
    if (this.aq == this.as.nextInt(100))
    {
      int i1 = this.as.nextInt(paramByteBuffer.remaining());
      if (i1 > 0)
      {
        byte[] arrayOfByte = new byte[i1];
        paramByteBuffer.get(arrayOfByte, 0, i1);
        b(paramRandomAccessFile, ByteBuffer.wrap(arrayOfByte), paramLong1, paramLong2, false);
      }
      this.ar = true;
      throw new IOException("Randomly generated for testing");
    }
  }
  
  private static void b(ByteBuffer paramByteBuffer, long paramLong, String paramString)
  {
    int i1 = paramByteBuffer.position();
    for (;;)
    {
      d locald;
      try
      {
        int i3;
        if (paramByteBuffer.remaining() > 0)
        {
          int i2 = paramByteBuffer.position();
          ae localae = new ae(paramByteBuffer, 8);
          locald = new d();
          i3 = localae.b() - 4;
          int i4 = paramByteBuffer.position();
          paramByteBuffer.position(i4 - i3);
          locald.a(paramByteBuffer, i3);
          paramByteBuffer.position(i4);
          i3 = localae.d;
          if (paramByteBuffer.remaining() >= i3) {
            break label217;
          }
          System.err.println("Couldn't verify checksum (" + paramString + ")");
          paramByteBuffer.position(i2 + localae.b() + localae.d);
        }
        locald.a(paramByteBuffer, i3);
      }
      catch (c localc)
      {
        System.err.println("ChecksumException: (" + paramString + ") " + localc);
        System.err.println("start stack trace");
        localc.printStackTrace(System.err);
        System.err.println("end stack trace");
        paramByteBuffer.position(i1);
        return;
      }
      label217:
      locald.a(localc.a, paramLong);
    }
  }
  
  public static String c(long paramLong)
  {
    return c(paramLong, ".jdb");
  }
  
  private static String c(long paramLong, String paramString)
  {
    return h(paramLong) + paramString;
  }
  
  private static void c(String paramString)
  {
    long l1 = d + 1L;
    d = l1;
    if ((l1 >= e) && (d < e + f))
    {
      if (g) {
        throw new IOException("IOException generated for testing: " + d + " " + paramString);
      }
      Runtime.getRuntime().halt(255);
    }
  }
  
  public static int h()
  {
    return 38;
  }
  
  private static String h(long paramLong)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(Long.toHexString(paramLong));
    localStringBuilder.insert(0, "0000000000000000".substring(0, 16 - localStringBuilder.length()));
    localStringBuilder.insert(0, "0x");
    return localStringBuilder.toString().substring(10);
  }
  
  private void i(long paramLong)
  {
    o localo;
    Iterator localIterator;
    Long localLong;
    j localj;
    synchronized (this.ae)
    {
      localo = this.m;
      localIterator = localo.b.iterator();
      while (localIterator.hasNext())
      {
        localLong = (Long)localIterator.next();
        if (localLong.longValue() == paramLong) {
          localj = (j)localo.a.get(localLong);
        }
      }
    }
  }
  
  private File[] i()
  {
    int i1 = 0;
    Object localObject1 = this.ab.list(new FilenameFilter()
    {
      public final boolean accept(File paramAnonymousFile, String paramAnonymousString)
      {
        return (paramAnonymousString != null) && (paramAnonymousString.length() == 7) && (paramAnonymousString.startsWith("data"));
      }
    });
    if (localObject1 != null) {
      Arrays.sort((Object[])localObject1);
    }
    while (localObject1.length != this.am)
    {
      throw com.sleepycat.b.aa.c(com.sleepycat.b.b.d.O.a + " was set and expected to find " + this.am + " data directories, but found " + localObject1.length + " instead.");
      localObject1 = new String[0];
    }
    int i2 = 1;
    Object localObject2 = new File[this.am];
    int i3 = localObject1.length;
    while (i1 < i3)
    {
      Object localObject3 = localObject1[i1];
      String str = ((String)localObject3).substring(4);
      try
      {
        if (Integer.parseInt(str) != i2)
        {
          localObject1 = new StringBuilder("Expected to find data subdir: data");
          localObject2 = "000" + i2;
          throw com.sleepycat.b.aa.c(((String)localObject2).substring(((String)localObject2).length() - 3) + " but found data" + str + " instead.");
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw com.sleepycat.b.aa.c("Illegal data subdir: data" + str);
      }
      localObject3 = new File(this.ab, (String)localObject3);
      if (!((File)localObject3).exists()) {
        throw com.sleepycat.b.aa.c("Data dir: " + localObject3 + " doesn't exist.");
      }
      if (!((File)localObject3).isDirectory()) {
        throw com.sleepycat.b.aa.c("Data dir: " + localObject3 + " is not a directory.");
      }
      localObject2[(i2 - 1)] = localObject3;
      i2 += 1;
      i1 += 1;
    }
    return (File[])localObject2;
  }
  
  private q j()
  {
    if (this.al) {
      return q.c;
    }
    return q.b;
  }
  
  public final Long a(long paramLong, boolean paramBoolean)
  {
    int i2 = 1;
    String[] arrayOfString = a(i);
    int i1 = Arrays.binarySearch(arrayOfString, c(paramLong, ".jdb"), ao);
    if (i1 >= 0) {
      if (paramBoolean)
      {
        i1 += 1;
        if ((!paramBoolean) || (i1 >= arrayOfString.length)) {
          break label105;
        }
      }
    }
    for (;;)
    {
      if (i2 == 0) {
        break label120;
      }
      return a(arrayOfString[i1]);
      i1 -= 1;
      break;
      int i3 = Math.abs(i1 + 1);
      i1 = i3;
      if (paramBoolean) {
        break;
      }
      i1 = i3 - 1;
      break;
      label105:
      if ((paramBoolean) || (i1 < 0)) {
        i2 = 0;
      }
    }
    label120:
    return null;
  }
  
  public final Long a(String paramString)
  {
    String str = paramString;
    if (this.am != 0) {
      str = paramString.substring(paramString.lastIndexOf(File.separator) + 1);
    }
    return Long.valueOf(Long.parseLong(str.substring(0, str.indexOf(".")), 16));
  }
  
  public final Long a(boolean paramBoolean)
  {
    String[] arrayOfString = a(i);
    if (arrayOfString.length == 0) {
      return null;
    }
    int i1 = 0;
    if (!paramBoolean) {
      i1 = arrayOfString.length - 1;
    }
    return a(arrayOfString[i1]);
  }
  
  public final String a(long paramLong, String paramString)
  {
    if (this.am == 0) {}
    for (File localFile = this.ab;; localFile = this.ac[((int)(paramLong % this.am))]) {
      return localFile + File.separator + c(paramLong, paramString);
    }
  }
  
  public final void a(long paramLong, List<Long> paramList)
  {
    if (paramList.size() == 0) {
      return;
    }
    Object localObject;
    for (;;)
    {
      try
      {
        localObject = a(paramLong, j());
        localObject = ((j)localObject).a;
        Long localLong;
        try
        {
          paramList = paramList.iterator();
          if (!paramList.hasNext()) {
            break;
          }
          localLong = (Long)paramList.next();
          if (com.sleepycat.b.p.j.d(localLong.longValue()) != paramLong) {
            throw new com.sleepycat.b.aa(this.k, ac.B, "LSN of " + com.sleepycat.b.p.j.h(localLong.longValue()) + " did not match file number" + paramLong);
          }
        }
        catch (IOException paramList)
        {
          paramList = paramList;
          throw new com.sleepycat.b.aa(this.k, ac.p, "Flipping invisibility in file " + paramLong, paramList);
        }
        finally {}
        i1 = (int)(com.sleepycat.b.p.j.e(localLong.longValue()) + 5L);
      }
      catch (c paramList)
      {
        try
        {
          ((RandomAccessFile)localObject).close();
          throw paramList;
        }
        catch (IOException paramList)
        {
          int i1;
          int i2;
          throw new com.sleepycat.b.aa(this.k, ac.p, "Closing after invisibility cloaking: file " + paramLong, paramList);
        }
        paramList = paramList;
        throw new com.sleepycat.b.aa(this.k, ac.j, "Opening file " + paramLong + " for invisible marking ", paramList);
      }
      catch (FileNotFoundException paramList)
      {
        throw new com.sleepycat.b.aa(this.k, ac.k, "Opening file " + paramLong + " for invisible marking ", paramList);
      }
      ((RandomAccessFile)localObject).seek(i1);
      i2 = ae.a(((RandomAccessFile)localObject).readByte());
      ((RandomAccessFile)localObject).seek(i1);
      ((RandomAccessFile)localObject).writeByte(i2);
    }
    try
    {
      ((RandomAccessFile)localObject).close();
      return;
    }
    catch (IOException paramList)
    {
      throw new com.sleepycat.b.aa(this.k, ac.p, "Closing after invisibility cloaking: file " + paramLong, paramList);
    }
  }
  
  final void a(aa paramaa, boolean paramBoolean)
  {
    this.k.n();
    if (this.k.m()) {}
    for (;;)
    {
      return;
      long l1 = paramaa.b;
      if (l1 != -1L)
      {
        RandomAccessFile localRandomAccessFile = r.a(this.y, com.sleepycat.b.p.j.d(l1));
        ByteBuffer localByteBuffer = paramaa.a;
        try
        {
          if ((!Y) && (!paramaa.e) && (com.sleepycat.b.p.j.e(l1) < localRandomAccessFile.length()) && (localRandomAccessFile.length() != 38L)) {
            throw new AssertionError("FileManager would overwrite non-empty file 0x" + Long.toHexString(com.sleepycat.b.p.j.d(l1)) + " lsnOffset=0x" + Long.toHexString(com.sleepycat.b.p.j.e(l1)) + " fileLength=0x" + Long.toHexString(localRandomAccessFile.length()));
          }
        }
        catch (ClosedChannelException paramaa)
        {
          throw new bo(this.k, "File closed, may be due to thread interrupt", paramaa);
          if (!a) {
            break label210;
          }
          throw new IOException("generated for testing (write)");
        }
        catch (IOException localIOException2)
        {
          if (a()) {
            break label263;
          }
        }
        throw new at(this.k, localIOException2);
        label210:
        if (W) {
          b(localRandomAccessFile, localByteBuffer, com.sleepycat.b.p.j.e(l1), com.sleepycat.b.p.j.d(l1));
        }
        b(localRandomAccessFile, localByteBuffer, com.sleepycat.b.p.j.e(l1), com.sleepycat.b.p.j.d(l1), paramBoolean);
        while (!Y)
        {
          ad.H();
          return;
          label263:
          a(localByteBuffer);
          try
          {
            if (a) {
              throw new IOException("generated for testing (write)");
            }
          }
          catch (IOException localIOException1)
          {
            paramaa.e = true;
            throw com.sleepycat.b.aa.a(localIOException1);
          }
          b(localIOException1, localByteBuffer, com.sleepycat.b.p.j.e(l1), com.sleepycat.b.p.j.d(l1), paramBoolean);
        }
      }
    }
  }
  
  final void a(RandomAccessFile paramRandomAccessFile, ByteBuffer paramByteBuffer, long paramLong1, long paramLong2)
  {
    a(paramRandomAccessFile, paramByteBuffer, paramLong1, paramLong2, true);
  }
  
  /* Error */
  public final void a(java.util.Set<Long> paramSet)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokeinterface 1157 1 0
    //   6: astore 6
    //   8: aload 6
    //   10: invokeinterface 999 1 0
    //   15: ifeq +247 -> 262
    //   18: aload 6
    //   20: invokeinterface 1002 1 0
    //   25: checkcast 468	java/lang/Long
    //   28: invokevirtual 1005	java/lang/Long:longValue	()J
    //   31: lstore 7
    //   33: aconst_null
    //   34: astore_1
    //   35: aconst_null
    //   36: astore 4
    //   38: aconst_null
    //   39: astore 5
    //   41: aconst_null
    //   42: astore_3
    //   43: aload_0
    //   44: lload 7
    //   46: aload_0
    //   47: invokespecial 972	com/sleepycat/b/g/m:j	()Lcom/sleepycat/b/g/q;
    //   50: invokespecial 506	com/sleepycat/b/g/m:a	(JLcom/sleepycat/b/g/q;)Lcom/sleepycat/b/g/j;
    //   53: getfield 1082	com/sleepycat/b/g/j:a	Ljava/io/RandomAccessFile;
    //   56: astore_2
    //   57: aload_2
    //   58: astore_3
    //   59: aload_2
    //   60: astore_1
    //   61: aload_2
    //   62: astore 4
    //   64: aload_2
    //   65: astore 5
    //   67: aload_2
    //   68: invokevirtual 1161	java/io/RandomAccessFile:getChannel	()Ljava/nio/channels/FileChannel;
    //   71: iconst_0
    //   72: invokevirtual 1167	java/nio/channels/FileChannel:force	(Z)V
    //   75: aload_2
    //   76: astore_3
    //   77: aload_2
    //   78: astore_1
    //   79: aload_2
    //   80: astore 4
    //   82: aload_2
    //   83: astore 5
    //   85: aload_0
    //   86: getfield 296	com/sleepycat/b/g/m:U	Lcom/sleepycat/b/p/z;
    //   89: invokevirtual 855	com/sleepycat/b/p/z:f	()V
    //   92: aload_2
    //   93: ifnull -85 -> 8
    //   96: aload_2
    //   97: invokevirtual 729	java/io/RandomAccessFile:close	()V
    //   100: goto -92 -> 8
    //   103: astore_1
    //   104: new 400	com/sleepycat/b/aa
    //   107: dup
    //   108: aload_0
    //   109: getfield 202	com/sleepycat/b/g/m:k	Lcom/sleepycat/b/c/ad;
    //   112: getstatic 1090	com/sleepycat/b/c/ac:p	Lcom/sleepycat/b/c/ac;
    //   115: new 359	java/lang/StringBuilder
    //   118: dup
    //   119: ldc_w 1169
    //   122: invokespecial 364	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   125: lload 7
    //   127: invokevirtual 587	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   130: invokevirtual 376	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   133: aload_1
    //   134: invokespecial 543	com/sleepycat/b/aa:<init>	(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   137: athrow
    //   138: astore_2
    //   139: aload_3
    //   140: astore_1
    //   141: new 400	com/sleepycat/b/aa
    //   144: dup
    //   145: aload_0
    //   146: getfield 202	com/sleepycat/b/g/m:k	Lcom/sleepycat/b/c/ad;
    //   149: getstatic 1100	com/sleepycat/b/c/ac:k	Lcom/sleepycat/b/c/ac;
    //   152: new 359	java/lang/StringBuilder
    //   155: dup
    //   156: ldc_w 1169
    //   159: invokespecial 364	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   162: lload 7
    //   164: invokevirtual 587	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   167: invokevirtual 376	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   170: aload_2
    //   171: invokespecial 543	com/sleepycat/b/aa:<init>	(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   174: athrow
    //   175: astore_2
    //   176: aload_1
    //   177: ifnull +7 -> 184
    //   180: aload_1
    //   181: invokevirtual 729	java/io/RandomAccessFile:close	()V
    //   184: aload_2
    //   185: athrow
    //   186: astore_2
    //   187: aload 4
    //   189: astore_1
    //   190: new 400	com/sleepycat/b/aa
    //   193: dup
    //   194: aload_0
    //   195: getfield 202	com/sleepycat/b/g/m:k	Lcom/sleepycat/b/c/ad;
    //   198: getstatic 1094	com/sleepycat/b/c/ac:j	Lcom/sleepycat/b/c/ac;
    //   201: new 359	java/lang/StringBuilder
    //   204: dup
    //   205: ldc_w 1169
    //   208: invokespecial 364	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   211: lload 7
    //   213: invokevirtual 587	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   216: invokevirtual 376	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   219: aload_2
    //   220: invokespecial 543	com/sleepycat/b/aa:<init>	(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   223: athrow
    //   224: astore_2
    //   225: aload 5
    //   227: astore_1
    //   228: new 400	com/sleepycat/b/aa
    //   231: dup
    //   232: aload_0
    //   233: getfield 202	com/sleepycat/b/g/m:k	Lcom/sleepycat/b/c/ad;
    //   236: getstatic 1090	com/sleepycat/b/c/ac:p	Lcom/sleepycat/b/c/ac;
    //   239: new 359	java/lang/StringBuilder
    //   242: dup
    //   243: ldc_w 1169
    //   246: invokespecial 364	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   249: lload 7
    //   251: invokevirtual 587	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   254: invokevirtual 376	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   257: aload_2
    //   258: invokespecial 543	com/sleepycat/b/aa:<init>	(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   261: athrow
    //   262: return
    //   263: astore_1
    //   264: new 400	com/sleepycat/b/aa
    //   267: dup
    //   268: aload_0
    //   269: getfield 202	com/sleepycat/b/g/m:k	Lcom/sleepycat/b/c/ad;
    //   272: getstatic 1090	com/sleepycat/b/c/ac:p	Lcom/sleepycat/b/c/ac;
    //   275: new 359	java/lang/StringBuilder
    //   278: dup
    //   279: ldc_w 1169
    //   282: invokespecial 364	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   285: lload 7
    //   287: invokevirtual 587	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   290: invokevirtual 376	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   293: aload_1
    //   294: invokespecial 543	com/sleepycat/b/aa:<init>	(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   297: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	298	0	this	m
    //   0	298	1	paramSet	java.util.Set<Long>
    //   56	41	2	localRandomAccessFile	RandomAccessFile
    //   138	33	2	localFileNotFoundException	FileNotFoundException
    //   175	10	2	localObject1	Object
    //   186	34	2	localc	c
    //   224	34	2	localIOException	IOException
    //   42	98	3	localObject2	Object
    //   36	152	4	localObject3	Object
    //   39	187	5	localObject4	Object
    //   6	13	6	localIterator	Iterator
    //   31	255	7	l1	long
    // Exception table:
    //   from	to	target	type
    //   96	100	103	java/io/IOException
    //   43	57	138	java/io/FileNotFoundException
    //   67	75	138	java/io/FileNotFoundException
    //   85	92	138	java/io/FileNotFoundException
    //   43	57	175	finally
    //   67	75	175	finally
    //   85	92	175	finally
    //   141	175	175	finally
    //   190	224	175	finally
    //   228	262	175	finally
    //   43	57	186	com/sleepycat/b/g/c
    //   67	75	186	com/sleepycat/b/g/c
    //   85	92	186	com/sleepycat/b/g/c
    //   43	57	224	java/io/IOException
    //   67	75	224	java/io/IOException
    //   85	92	224	java/io/IOException
    //   180	184	263	java/io/IOException
  }
  
  public final boolean a(long paramLong)
  {
    if ((paramLong == this.o) || (this.k.h)) {
      return true;
    }
    return new File(a(paramLong, ".jdb")).exists();
  }
  
  final boolean a(RandomAccessFile paramRandomAccessFile, ByteBuffer paramByteBuffer, long paramLong1, long paramLong2, boolean paramBoolean)
  {
    for (;;)
    {
      try
      {
        if ((this.aj) && (this.y.a(paramByteBuffer, paramLong1, paramLong2))) {
          return true;
        }
        if (paramBoolean) {
          break label247;
        }
        if (paramLong1 >= paramRandomAccessFile.length()) {
          continue;
        }
        i1 = 1;
      }
      catch (ClosedChannelException paramRandomAccessFile)
      {
        throw new bo(this.k, "Channel closed, may be due to thread interrupt", paramRandomAccessFile);
        i1 = 0;
        continue;
        this.E.f();
        this.I.b(i2);
        continue;
        int i2 = paramRandomAccessFile.read(paramByteBuffer.array(), paramByteBuffer.arrayOffset() + i1, i2);
        if (i2 <= 0) {
          continue;
        }
        paramByteBuffer.position(i1 + i2);
        this.B = paramLong2;
        this.C = (i2 + paramLong1);
        return true;
        return false;
      }
      catch (IOException paramRandomAccessFile)
      {
        throw new com.sleepycat.b.aa(this.k, ac.n, paramRandomAccessFile);
      }
      if (i1 != 0) {
        try
        {
          i1 = paramByteBuffer.position();
          i2 = paramByteBuffer.limit() - i1;
          if ((this.B == paramLong2) && (Math.abs(paramLong1 - this.C) < 1048576L))
          {
            this.G.f();
            this.K.b(i2);
            paramRandomAccessFile.seek(paramLong1);
            if (!b) {
              continue;
            }
            throw new IOException("generated for testing (read)");
          }
        }
        finally {}
      }
      label247:
      int i1 = 1;
    }
  }
  
  public final boolean a(boolean paramBoolean1, boolean paramBoolean2)
  {
    try
    {
      if (b(paramBoolean1)) {
        return true;
      }
      if (this.af == null) {
        this.af = new RandomAccessFile(new File(this.ab, "je.lck"), q.b.e);
      }
      this.ag = this.af.getChannel();
      if (paramBoolean2) {}
      try
      {
        this.n = this.ag.tryLock(1L, 1L, false);
        if (this.n != null) {
          break label150;
        }
        return false;
      }
      catch (OverlappingFileLockException localOverlappingFileLockException)
      {
        return false;
      }
      if (paramBoolean1) {}
      for (this.ah = this.ag.tryLock(1L, 1L, true); this.ah == null; this.ah = this.ag.tryLock(0L, 1L, false)) {
        return false;
      }
      return true;
    }
    catch (IOException localIOException)
    {
      throw new com.sleepycat.b.aa(this.k, ac.m, localIOException);
    }
  }
  
  public final String[] a(long paramLong1, long paramLong2)
  {
    return a(new x(i, paramLong1, paramLong2));
  }
  
  public final void b()
  {
    this.u = this.p;
    this.v = this.q;
    this.w = this.r;
    this.x = this.s;
    this.t = this.o;
  }
  
  public final void b(long paramLong1, long paramLong2)
  {
    int i1 = 1;
    for (;;)
    {
      try
      {
        j localj = a(paramLong1, j());
        RandomAccessFile localRandomAccessFile = localj.a;
        try
        {
          localRandomAccessFile.getChannel().truncate(paramLong2);
          localRandomAccessFile.close();
          if (localj.c < 8)
          {
            if (i1 == 0) {
              break;
            }
            this.s = true;
            return;
          }
        }
        finally
        {
          localRandomAccessFile.close();
        }
        i1 = 0;
      }
      catch (c localc)
      {
        throw new com.sleepycat.b.aa(this.k, ac.j, localc);
      }
    }
  }
  
  public final boolean b(long paramLong, String paramString)
  {
    Object localObject = "";
    int i1 = 0;
    for (;;)
    {
      localObject = new File(a(paramLong, paramString + (String)localObject));
      if (!((File)localObject).exists())
      {
        paramString = b(paramLong)[0];
        i(paramLong);
        return new File(paramString).renameTo((File)localObject);
      }
      i1 += 1;
      localObject = "." + i1;
    }
  }
  
  public final boolean b(boolean paramBoolean)
  {
    boolean bool2 = false;
    boolean bool1;
    if (this.am == 0)
    {
      bool1 = a(this.ab, paramBoolean);
      return bool1;
    }
    File[] arrayOfFile = this.ac;
    int i2 = arrayOfFile.length;
    int i1 = 0;
    for (;;)
    {
      if (i1 >= i2) {
        break label61;
      }
      bool1 = bool2;
      if (!a(arrayOfFile[i1], paramBoolean)) {
        break;
      }
      i1 += 1;
    }
    label61:
    return true;
  }
  
  final String[] b(long paramLong)
  {
    int i1 = 0;
    if (this.ad)
    {
      int i2 = aa.length;
      String[] arrayOfString2 = new String[i2];
      for (;;)
      {
        arrayOfString1 = arrayOfString2;
        if (i1 >= i2) {
          break;
        }
        arrayOfString2[i1] = a(paramLong, aa[i1]);
        i1 += 1;
      }
    }
    String[] arrayOfString1 = new String[1];
    arrayOfString1[0] = a(paramLong, ".jdb");
    return arrayOfString1;
  }
  
  public final void c(long paramLong1, long paramLong2)
  {
    for (long l1 = a(false).longValue(); l1 >= paramLong1; l1 -= 1L) {
      if (a(l1)) {
        if (l1 == paramLong1)
        {
          b(paramLong1, paramLong2);
          if (paramLong2 != 0L) {}
        }
        else
        {
          boolean bool = d(l1);
          if ((!Y) && (!bool)) {
            throw new AssertionError("File " + a(l1, ".jdb") + " not deleted during truncateLog");
          }
        }
      }
    }
  }
  
  public final Long[] c()
  {
    String[] arrayOfString = a(i);
    Long[] arrayOfLong = new Long[arrayOfString.length];
    int i1 = 0;
    while (i1 < arrayOfLong.length)
    {
      String str = arrayOfString[i1];
      Long localLong = a(str);
      arrayOfLong[i1] = localLong;
      long l1 = localLong.longValue();
      if (this.am != 0)
      {
        if (this.am == 0) {}
        for (int i2 = -1;; i2 = Integer.valueOf(Integer.parseInt(str.substring(0, str.lastIndexOf(File.separator)).substring(4))).intValue())
        {
          i2 -= 1;
          if (i2 == l1 % this.am) {
            break;
          }
          throw com.sleepycat.b.aa.c("Found file " + str + " but it should have been in data directory " + (i2 + 1) + ". Perhaps it was moved or restored incorrectly?");
        }
      }
      i1 += 1;
    }
    return arrayOfLong;
  }
  
  public final boolean d()
  {
    return a(i).length != 0;
  }
  
  public final boolean d(long paramLong)
  {
    String str = b(paramLong)[0];
    i(paramLong);
    return new File(str).delete();
  }
  
  public final int e(long paramLong)
  {
    try
    {
      j localj = f(paramLong);
      int i1 = localj.c;
      localj.a();
      return i1;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      throw new com.sleepycat.b.aa(this.k, ac.k, localFileNotFoundException);
    }
    catch (c localc)
    {
      throw new com.sleepycat.b.aa(this.k, ac.j, localc);
    }
  }
  
  final void e()
  {
    try
    {
      r.c(this.y);
      return;
    }
    catch (IOException localIOException)
    {
      throw new at(this.k, "IOException during fsync", localIOException);
    }
  }
  
  public final j f(long paramLong)
  {
    Long localLong1 = Long.valueOf(paramLong);
    for (;;)
    {
      try
      {
        localj2 = o.a(this.m, localLong1);
        i1 = 0;
        i2 = 0;
        localj1 = localj2;
        if (localj2 != null) {}
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        j localj2;
        synchronized (this.ae)
        {
          int i2;
          localj2 = o.a(this.m, localLong1);
          int i1 = i2;
          j localj1 = localj2;
          o localo;
          Iterator localIterator;
          Long localLong2;
          if (localj2 == null)
          {
            localj1 = new j(localLong1.longValue(), h(localLong1.longValue()));
            localo = this.m;
            if (localo.b.size() >= localo.c)
            {
              localIterator = localo.b.iterator();
              if (localIterator.hasNext())
              {
                localLong2 = (Long)localIterator.next();
                localj2 = (j)localo.a.get(localLong2);
                boolean bool = localj2.b.b();
                if (!bool) {
                  continue;
                }
              }
            }
          }
          try
          {
            localo.a.remove(localLong2);
            localIterator.remove();
            localj2.b();
            localj2.a();
            localo.b.add(localLong1);
            localo.a.put(localLong1, localj1);
            localj1.b.a();
            i1 = 1;
            if (i1 == 0) {
              break label320;
            }
          }
          finally
          {
            localj2.a();
          }
          try
          {
            a(localj1, q.a, null);
            if (localj1.a != null) {
              break label369;
            }
            localj1.a();
            continue;
          }
          finally
          {
            localIOException.a();
            i(paramLong);
          }
          localFileNotFoundException = localFileNotFoundException;
          throw localFileNotFoundException;
        }
      }
      catch (IOException localIOException)
      {
        throw new com.sleepycat.b.aa(this.k, ac.n, localIOException);
      }
      label320:
      if (!localIOException.b.b())
      {
        j local52 = new j(localLong1.longValue(), h(localLong1.longValue()))
        {
          public final void a()
          {
            try
            {
              b();
              return;
            }
            catch (IOException localIOException) {}
          }
        };
        a(local52, q.a, localIOException);
        j local51 = local52;
        continue;
        label369:
        return local51;
      }
    }
  }
  
  public final void f()
  {
    Iterator localIterator;
    j localj;
    synchronized (this.ae)
    {
      o localo = this.m;
      localIterator = localo.a.values().iterator();
      if (localIterator.hasNext()) {
        localj = (j)localIterator.next();
      }
    }
    ((o)localObject2).a.clear();
    ((o)localObject2).b.clear();
    this.y.a();
  }
  
  final long g(long paramLong)
  {
    try
    {
      am localam = this.k.w;
      paramLong = com.sleepycat.b.p.j.a(paramLong, 0);
      paramLong = ((l)localam.a(paramLong, localam.f(paramLong), false).b.h()).b;
      return paramLong;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      throw new com.sleepycat.b.aa(this.k, ac.k, localFileNotFoundException);
    }
  }
  
  public final void g()
  {
    if (this.ah != null)
    {
      this.ah.release();
      this.ah = null;
    }
    if (this.n != null)
    {
      this.n.release();
      this.n = null;
    }
    if (this.ag != null)
    {
      this.ag.close();
      this.ag = null;
    }
    if (this.af != null)
    {
      this.af.close();
      this.af = null;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */