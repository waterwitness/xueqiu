package com.sleepycat.b.c;

import com.sleepycat.b.a.z;
import com.sleepycat.b.bi;
import com.sleepycat.b.g.ar;
import com.sleepycat.b.g.at;
import com.sleepycat.b.g.av;
import com.sleepycat.b.k;
import com.sleepycat.b.l;
import com.sleepycat.b.l.ah;
import com.sleepycat.b.n.q;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public class i
  implements at, Cloneable
{
  private static final boolean H = false;
  public static boolean m;
  private byte[] A = ar.a;
  private boolean B = false;
  private boolean C = false;
  private AtomicReference<List<com.sleepycat.b.m.d>> D = new AtomicReference(null);
  private List<com.sleepycat.b.m.d> E = null;
  private byte[][] F = null;
  private w G;
  public h a;
  public ah b;
  public ad c;
  public boolean d;
  public boolean e;
  public boolean f;
  public Set<com.sleepycat.b.i> g;
  long h;
  volatile short i;
  public AtomicInteger j = new AtomicInteger();
  public final AtomicInteger k = new AtomicInteger();
  public com.sleepycat.b.a.g l;
  public Comparator<byte[]> n = null;
  public Comparator<byte[]> o = null;
  public Comparator<byte[]> p = null;
  public int q;
  public int r;
  public int s;
  String t;
  public com.sleepycat.b.a u;
  public com.sleepycat.b.b v;
  private byte x;
  private byte y;
  private byte[] z = ar.a;
  
  static
  {
    if (!i.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      w = bool;
      if (!"true".equals(System.getProperty("je.forceKeyPrefixing"))) {
        break;
      }
      H = true;
      return;
    }
  }
  
  public i()
  {
    this.a = new h();
    this.c = null;
    this.b = new ah();
    E();
  }
  
  public i(q paramq, String paramString, h paramh, ad paramad, l paraml)
  {
    this.a = paramh;
    this.c = paramad;
    a(paramq, paramString, paraml, paramad);
    this.u = paraml.s;
    this.v = paraml.t;
    this.y = 8;
    if (h()) {
      j();
    }
    G();
    E();
    F();
    this.b = new ah(this);
    this.t = paramString;
  }
  
  private void E()
  {
    this.i = 1;
    this.g = Collections.synchronizedSet(new HashSet());
    this.l = new com.sleepycat.b.a.g(false);
  }
  
  private void F()
  {
    int i2 = 0;
    this.h = this.c.ac.a();
    if ((!w) && (o()))
    {
      if ((this.x & 0x8) != 0) {}
      for (i1 = 1; i1 != 0; i1 = 0) {
        throw new AssertionError("The replicated AND notReplicated bits should never be set  together");
      }
    }
    Object localObject = this.c.u;
    this.q = ((m)localObject).a(com.sleepycat.b.b.d.ag);
    this.r = ((m)localObject).a(com.sleepycat.b.b.d.af);
    if (this.s == 0) {
      this.s = ((m)localObject).a(com.sleepycat.b.b.d.ad);
    }
    this.l.a(this.c);
    int i1 = i2;
    if ((this.x & 0x20) != 0) {
      i1 = 1;
    }
    if (i1 == 0)
    {
      this.l.b(this.c);
      this.f = true;
      G();
    }
    if (!this.c.R)
    {
      localObject = new j(this.z, "Btree", this.c.J);
      this.n = ((j)localObject).c;
      this.B = ((j)localObject).a;
      localObject = new j(this.A, "Duplicate", this.c.J);
      this.o = ((j)localObject).c;
      this.C = ((j)localObject).a;
      H();
    }
  }
  
  private void G()
  {
    this.x = ((byte)(this.x | 0x20));
  }
  
  private void H()
  {
    ClassLoader localClassLoader;
    if ((this.n instanceof k)) {
      localClassLoader = this.c.J;
    }
    if ((this.o instanceof k)) {
      localClassLoader = this.c.J;
    }
    if (h())
    {
      this.p = new aa(this.n, this.o);
      return;
    }
    this.p = this.n;
  }
  
  static Object a(byte[] paramArrayOfByte, String paramString, ClassLoader paramClassLoader)
  {
    try
    {
      paramArrayOfByte = new com.sleepycat.c.b(new ByteArrayInputStream(paramArrayOfByte), paramClassLoader).readObject();
      return paramArrayOfByte;
    }
    catch (Exception paramArrayOfByte)
    {
      throw com.sleepycat.b.aa.a("Exception while trying to load " + paramString, paramArrayOfByte);
    }
  }
  
  private static String a(Comparator<byte[]> paramComparator, byte[] paramArrayOfByte)
  {
    if (paramComparator != null) {
      return paramComparator.getClass().getName();
    }
    if ((paramArrayOfByte != null) && (paramArrayOfByte.length > 0)) {
      return "byteLen: " + paramArrayOfByte.length;
    }
    return "";
  }
  
  public static Comparator<byte[]> a(Class<? extends Comparator<byte[]>> paramClass, String paramString)
  {
    if (paramClass == null) {
      return null;
    }
    try
    {
      paramClass = (Comparator)paramClass.newInstance();
      return paramClass;
    }
    catch (Exception paramClass)
    {
      throw com.sleepycat.b.aa.a("Exception while trying to load " + paramString + " Comparator class.", paramClass);
    }
  }
  
  static void a(StringBuilder paramStringBuilder, byte paramByte)
  {
    boolean bool2 = true;
    StringBuilder localStringBuilder = paramStringBuilder.append(" dupsort=\"");
    if ((paramByte & 0x1) != 0)
    {
      bool1 = true;
      localStringBuilder.append(bool1);
      localStringBuilder = paramStringBuilder.append("\" replicated=\"");
      if ((paramByte & 0x4) == 0) {
        break label82;
      }
      bool1 = true;
      label41:
      localStringBuilder.append(bool1);
      paramStringBuilder = paramStringBuilder.append("\" temp=\"");
      if ((paramByte & 0x2) == 0) {
        break label87;
      }
    }
    label82:
    label87:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      paramStringBuilder.append(bool1).append("\" ");
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label41;
    }
  }
  
  public static boolean a(byte paramByte)
  {
    return (paramByte & 0x2) != 0;
  }
  
  private static byte[] a(Object paramObject, String paramString)
  {
    try
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      new ObjectOutputStream(localByteArrayOutputStream).writeObject(paramObject);
      paramObject = localByteArrayOutputStream.toByteArray();
      return (byte[])paramObject;
    }
    catch (IOException paramObject)
    {
      throw com.sleepycat.b.aa.a("Exception while trying to store " + paramString, (Exception)paramObject);
    }
  }
  
  public static byte[] a(Comparator<byte[]> paramComparator, boolean paramBoolean, String paramString)
  {
    if (paramComparator == null) {
      return ar.a;
    }
    Object localObject = paramComparator;
    if (paramBoolean) {
      localObject = paramComparator.getClass().getName();
    }
    return a(localObject, paramString);
  }
  
  public static boolean b(byte paramByte)
  {
    return (paramByte & 0x1) != 0;
  }
  
  public static boolean c(byte paramByte)
  {
    return (paramByte & 0x10) != 0;
  }
  
  public final boolean A()
  {
    return this.i == 4;
  }
  
  public final void B()
  {
    if ((!w) && (this.i != 1)) {
      throw new AssertionError();
    }
    this.i = 2;
  }
  
  /* Error */
  public final void C()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 196	com/sleepycat/b/c/i:l	Lcom/sleepycat/b/a/g;
    //   4: ifnonnull +43 -> 47
    //   7: getstatic 75	com/sleepycat/b/c/i:w	Z
    //   10: ifne +37 -> 47
    //   13: new 215	java/lang/AssertionError
    //   16: dup
    //   17: invokespecial 380	java/lang/AssertionError:<init>	()V
    //   20: athrow
    //   21: astore_1
    //   22: aload_0
    //   23: getfield 196	com/sleepycat/b/c/i:l	Lcom/sleepycat/b/a/g;
    //   26: invokevirtual 382	com/sleepycat/b/a/g:a	()V
    //   29: aload_0
    //   30: iconst_4
    //   31: putfield 178	com/sleepycat/b/c/i:i	S
    //   34: aload_0
    //   35: getfield 140	com/sleepycat/b/c/i:c	Lcom/sleepycat/b/c/ad;
    //   38: getfield 385	com/sleepycat/b/c/ad:q	Lcom/sleepycat/b/c/p;
    //   41: aload_0
    //   42: invokevirtual 389	com/sleepycat/b/c/p:c	(Lcom/sleepycat/b/c/i;)V
    //   45: aload_1
    //   46: athrow
    //   47: aload_0
    //   48: getfield 145	com/sleepycat/b/c/i:b	Lcom/sleepycat/b/l/ah;
    //   51: invokevirtual 391	com/sleepycat/b/l/ah:d	()J
    //   54: lstore 4
    //   56: aload_0
    //   57: getfield 145	com/sleepycat/b/c/i:b	Lcom/sleepycat/b/l/ah;
    //   60: iconst_0
    //   61: invokevirtual 394	com/sleepycat/b/l/ah:a	(Z)Lcom/sleepycat/b/l/j;
    //   64: astore_1
    //   65: aload_0
    //   66: getfield 140	com/sleepycat/b/c/i:c	Lcom/sleepycat/b/c/ad;
    //   69: getfield 385	com/sleepycat/b/c/ad:q	Lcom/sleepycat/b/c/p;
    //   72: aload_0
    //   73: getfield 138	com/sleepycat/b/c/i:a	Lcom/sleepycat/b/c/h;
    //   76: invokevirtual 397	com/sleepycat/b/c/p:a	(Lcom/sleepycat/b/c/h;)V
    //   79: aload_0
    //   80: getfield 140	com/sleepycat/b/c/i:c	Lcom/sleepycat/b/c/ad;
    //   83: getfield 400	com/sleepycat/b/c/ad:w	Lcom/sleepycat/b/g/am;
    //   86: invokevirtual 403	com/sleepycat/b/g/am:a	()V
    //   89: aload_0
    //   90: getfield 163	com/sleepycat/b/c/i:y	B
    //   93: bipush 6
    //   95: if_icmplt +128 -> 223
    //   98: getstatic 405	com/sleepycat/b/c/i:m	Z
    //   101: ifne +122 -> 223
    //   104: aload_0
    //   105: getfield 140	com/sleepycat/b/c/i:c	Lcom/sleepycat/b/c/ad;
    //   108: getfield 400	com/sleepycat/b/c/ad:w	Lcom/sleepycat/b/g/am;
    //   111: aload_0
    //   112: invokevirtual 407	com/sleepycat/b/g/am:a	(Lcom/sleepycat/b/c/i;)V
    //   115: aload_0
    //   116: getfield 140	com/sleepycat/b/c/i:c	Lcom/sleepycat/b/c/ad;
    //   119: getfield 410	com/sleepycat/b/c/ad:n	Lcom/sleepycat/b/c/ao;
    //   122: astore_2
    //   123: aload_0
    //   124: getfield 140	com/sleepycat/b/c/i:c	Lcom/sleepycat/b/c/ad;
    //   127: getfield 413	com/sleepycat/b/c/ad:t	Lcom/sleepycat/b/c/al;
    //   130: astore_1
    //   131: aload_1
    //   132: invokevirtual 419	com/sleepycat/b/c/al:iterator	()Ljava/util/Iterator;
    //   135: astore_1
    //   136: lconst_0
    //   137: lstore 4
    //   139: lload 4
    //   141: lstore 6
    //   143: aload_1
    //   144: invokeinterface 424 1 0
    //   149: ifeq +165 -> 314
    //   152: lload 4
    //   154: lstore 6
    //   156: aload_1
    //   157: invokeinterface 427 1 0
    //   162: checkcast 429	com/sleepycat/b/l/j
    //   165: astore_3
    //   166: lload 4
    //   168: lstore 8
    //   170: lload 4
    //   172: lstore 6
    //   174: aload_3
    //   175: getfield 432	com/sleepycat/b/l/j:i	Lcom/sleepycat/b/c/i;
    //   178: aload_0
    //   179: if_acmpne +37 -> 216
    //   182: lload 4
    //   184: lstore 6
    //   186: aload_1
    //   187: invokeinterface 435 1 0
    //   192: lload 4
    //   194: lstore 6
    //   196: lload 4
    //   198: lconst_0
    //   199: aload_3
    //   200: invokevirtual 438	com/sleepycat/b/l/j:L	()J
    //   203: lsub
    //   204: ladd
    //   205: lstore 8
    //   207: lload 8
    //   209: lstore 6
    //   211: aload_3
    //   212: iconst_0
    //   213: invokevirtual 440	com/sleepycat/b/l/j:d	(Z)V
    //   216: lload 8
    //   218: lstore 4
    //   220: goto -81 -> 139
    //   223: new 442	com/sleepycat/b/a/s
    //   226: dup
    //   227: aload_0
    //   228: getfield 140	com/sleepycat/b/c/i:c	Lcom/sleepycat/b/c/ad;
    //   231: invokespecial 444	com/sleepycat/b/a/s:<init>	(Lcom/sleepycat/b/c/ad;)V
    //   234: astore_2
    //   235: lload 4
    //   237: ldc2_w 445
    //   240: lcmp
    //   241: ifeq +14 -> 255
    //   244: aload_2
    //   245: lload 4
    //   247: getstatic 451	com/sleepycat/b/g/af:l	Lcom/sleepycat/b/g/af;
    //   250: iconst_0
    //   251: aload_0
    //   252: invokevirtual 454	com/sleepycat/b/a/s:b	(JLcom/sleepycat/b/g/af;ILcom/sleepycat/b/c/i;)V
    //   255: new 456	com/sleepycat/b/c/l
    //   258: dup
    //   259: aload_0
    //   260: lload 4
    //   262: aload_0
    //   263: getfield 140	com/sleepycat/b/c/i:c	Lcom/sleepycat/b/c/ad;
    //   266: getfield 459	com/sleepycat/b/c/ad:D	Lcom/sleepycat/b/a/c;
    //   269: getfield 464	com/sleepycat/b/a/c:O	Z
    //   272: new 466	com/sleepycat/b/c/k
    //   275: dup
    //   276: aload_0
    //   277: aload_2
    //   278: invokespecial 469	com/sleepycat/b/c/k:<init>	(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/a/s;)V
    //   281: aload_1
    //   282: iconst_0
    //   283: invokespecial 472	com/sleepycat/b/c/l:<init>	(Lcom/sleepycat/b/c/i;JZLcom/sleepycat/b/c/bc;Lcom/sleepycat/b/l/j;B)V
    //   286: invokevirtual 475	com/sleepycat/b/c/ay:a	()V
    //   289: aload_0
    //   290: getfield 140	com/sleepycat/b/c/i:c	Lcom/sleepycat/b/c/ad;
    //   293: getfield 459	com/sleepycat/b/c/ad:D	Lcom/sleepycat/b/a/c;
    //   296: getfield 479	com/sleepycat/b/a/c:aa	Lcom/sleepycat/b/a/ad;
    //   299: aload_2
    //   300: invokevirtual 484	com/sleepycat/b/a/ad:a	(Lcom/sleepycat/b/a/s;)V
    //   303: goto -188 -> 115
    //   306: aload_2
    //   307: lload 6
    //   309: invokevirtual 489	com/sleepycat/b/c/ao:c	(J)V
    //   312: aload_1
    //   313: athrow
    //   314: aload_2
    //   315: lload 4
    //   317: invokevirtual 489	com/sleepycat/b/c/ao:c	(J)V
    //   320: aload_0
    //   321: getfield 140	com/sleepycat/b/c/i:c	Lcom/sleepycat/b/c/ad;
    //   324: getfield 459	com/sleepycat/b/c/ad:D	Lcom/sleepycat/b/a/c;
    //   327: invokevirtual 490	com/sleepycat/b/a/c:a	()V
    //   330: aload_0
    //   331: getfield 196	com/sleepycat/b/c/i:l	Lcom/sleepycat/b/a/g;
    //   334: invokevirtual 382	com/sleepycat/b/a/g:a	()V
    //   337: aload_0
    //   338: iconst_4
    //   339: putfield 178	com/sleepycat/b/c/i:i	S
    //   342: aload_0
    //   343: getfield 140	com/sleepycat/b/c/i:c	Lcom/sleepycat/b/c/ad;
    //   346: getfield 385	com/sleepycat/b/c/ad:q	Lcom/sleepycat/b/c/p;
    //   349: aload_0
    //   350: invokevirtual 389	com/sleepycat/b/c/p:c	(Lcom/sleepycat/b/c/i;)V
    //   353: return
    //   354: astore_1
    //   355: goto -49 -> 306
    //   358: astore_1
    //   359: lconst_0
    //   360: lstore 6
    //   362: goto -56 -> 306
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	365	0	this	i
    //   21	25	1	localObject1	Object
    //   64	249	1	localObject2	Object
    //   354	1	1	localObject3	Object
    //   358	1	1	localObject4	Object
    //   122	193	2	localObject5	Object
    //   165	47	3	localj	com.sleepycat.b.l.j
    //   54	262	4	l1	long
    //   141	220	6	l2	long
    //   168	49	8	l3	long
    // Exception table:
    //   from	to	target	type
    //   0	21	21	finally
    //   47	115	21	finally
    //   115	131	21	finally
    //   223	235	21	finally
    //   244	255	21	finally
    //   255	303	21	finally
    //   306	314	21	finally
    //   314	330	21	finally
    //   143	152	354	finally
    //   156	166	354	finally
    //   174	182	354	finally
    //   186	192	354	finally
    //   196	207	354	finally
    //   211	216	354	finally
    //   131	136	358	finally
  }
  
  public final av D()
  {
    if (o()) {
      return av.f;
    }
    return av.g;
  }
  
  public final int a()
  {
    int i1 = this.a.a();
    int i2 = this.b.a();
    int i3 = ar.a(this.z);
    int i4 = ar.a(this.A);
    int i5 = ar.a(this.s);
    int i6 = ar.a(this.l.c());
    Iterator localIterator = this.l.b().iterator();
    Object localObject;
    for (i1 = i1 + i2 + 1 + i3 + i4 + i5 + 1 + i6; localIterator.hasNext(); i1 = ((com.sleepycat.b.a.f)localObject).a() + i2 + i1)
    {
      localObject = (Map.Entry)localIterator.next();
      Long localLong = (Long)((Map.Entry)localObject).getKey();
      localObject = (com.sleepycat.b.a.f)((Map.Entry)localObject).getValue();
      i2 = ar.a(localLong.longValue());
    }
    return bk.a(this.F) + i1;
  }
  
  public final com.sleepycat.b.a.f a(Long paramLong)
  {
    this.f = true;
    if ((!w) && (this.l == null)) {
      throw new AssertionError();
    }
    return this.l.a(paramLong, true, true, this.c.x);
  }
  
  final com.sleepycat.b.g.g a(com.sleepycat.b.g.a.f paramf)
  {
    if ((!w) && (paramf == com.sleepycat.b.g.a.f.d)) {
      throw new AssertionError();
    }
    return a(paramf, null);
  }
  
  final com.sleepycat.b.g.g a(com.sleepycat.b.g.a.f paramf, h paramh)
  {
    com.sleepycat.b.g.g localg = new com.sleepycat.b.g.g(o(), paramf);
    if (com.sleepycat.b.g.a.f.a(paramf))
    {
      if ((!w) && (paramh != null)) {
        throw new AssertionError();
      }
      paramf = new ax(this.x, this.s, this.z, this.A, this.F);
      if ((!com.sleepycat.b.g.g.e) && (!com.sleepycat.b.g.a.f.a(localg.b))) {
        throw new AssertionError();
      }
      localg.c = paramf;
    }
    while (paramf != com.sleepycat.b.g.a.f.d) {
      return localg;
    }
    if ((!w) && (paramh == null)) {
      throw new AssertionError();
    }
    if ((!com.sleepycat.b.g.g.e) && (localg.b != com.sleepycat.b.g.a.f.d)) {
      throw new AssertionError();
    }
    localg.d = paramh;
    return localg;
  }
  
  public final String a(int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("                                                                                                                                ".substring(0, paramInt));
    localStringBuilder.append("<database id=\"");
    localStringBuilder.append(this.a.toString());
    localStringBuilder.append("\"");
    localStringBuilder.append(" deleteState=\"");
    localStringBuilder.append(this.i);
    localStringBuilder.append("\"");
    localStringBuilder.append(" useCount=\"");
    localStringBuilder.append(this.j.get());
    localStringBuilder.append("\"");
    localStringBuilder.append(" dupsort=\"");
    localStringBuilder.append(h());
    localStringBuilder.append("\"");
    localStringBuilder.append(" temporary=\"");
    localStringBuilder.append(e());
    localStringBuilder.append("\"");
    localStringBuilder.append(" deferredWrite=\"");
    localStringBuilder.append(this.e);
    localStringBuilder.append("\"");
    localStringBuilder.append(" keyPrefixing=\"");
    localStringBuilder.append(l());
    localStringBuilder.append("\"");
    if (this.n != null)
    {
      localStringBuilder.append(" btc=\"");
      localStringBuilder.append(a(this.n, this.z));
      localStringBuilder.append("\"");
    }
    if (this.o != null)
    {
      localStringBuilder.append(" dupc=\"");
      localStringBuilder.append(a(this.o, this.A));
      localStringBuilder.append("\"");
    }
    localStringBuilder.append(">");
    if (this.l != null)
    {
      Iterator localIterator = this.l.b().iterator();
      while (localIterator.hasNext())
      {
        Object localObject = (Map.Entry)localIterator.next();
        Long localLong = (Long)((Map.Entry)localObject).getKey();
        localObject = (com.sleepycat.b.a.f)((Map.Entry)localObject).getValue();
        localStringBuilder.append("<file file=\"").append(localLong);
        localStringBuilder.append("\">");
        localStringBuilder.append(localObject);
        localStringBuilder.append("/file>");
      }
    }
    localStringBuilder.append("</database>");
    return localStringBuilder.toString();
  }
  
  public final void a(com.sleepycat.b.a.b paramb, long paramLong)
  {
    if ((this.y >= 6) && (!m))
    {
      Iterator localIterator = this.l.b().iterator();
      while (localIterator.hasNext())
      {
        Object localObject2 = (Map.Entry)localIterator.next();
        Object localObject1 = (Long)((Map.Entry)localObject2).getKey();
        if (paramb.a((Long)localObject1, paramLong))
        {
          localObject2 = (com.sleepycat.b.a.f)((Map.Entry)localObject2).getValue();
          localObject1 = paramb.b(((Long)localObject1).longValue());
          int i1 = ((com.sleepycat.b.a.f)localObject2).c - ((com.sleepycat.b.a.f)localObject2).f;
          int i2 = ((com.sleepycat.b.a.f)localObject2).d;
          int i3 = ((com.sleepycat.b.a.f)localObject2).g;
          int i4 = ((com.sleepycat.b.a.f)localObject2).a;
          int i5 = ((com.sleepycat.b.a.f)localObject2).e;
          ((z)localObject1).i += i1;
          ((z)localObject1).j = (i2 - i3 + ((z)localObject1).j);
          ((z)localObject1).h += i4 - i5;
          ((z)localObject1).k = (((com.sleepycat.b.a.f)localObject2).f - ((com.sleepycat.b.a.f)localObject2).h + i1 + ((z)localObject1).k);
        }
      }
    }
  }
  
  public final void a(ad paramad)
  {
    this.c = paramad;
    F();
    this.b.a(this);
  }
  
  public final void a(com.sleepycat.b.i parami)
  {
    this.g.add(parami);
  }
  
  public final void a(q paramq, String paramString, l paraml, ad paramad)
  {
    b(paraml.l, paraml.n);
    a(paraml.m, paraml.o);
    a(paramq, paramString, paraml.v, true);
    if (paraml.f) {
      this.x = ((byte)(this.x | 0x1));
    }
    if ((paraml.i) || (H))
    {
      m();
      if (paraml.h) {
        this.x = ((byte)(this.x | 0x2));
      }
      if (paramad.I())
      {
        if (!paraml.j) {
          break label142;
        }
        p();
      }
    }
    for (;;)
    {
      this.d = paraml.d;
      this.e = paraml.g;
      this.s = paraml.k;
      return;
      n();
      break;
      label142:
      this.x = ((byte)(this.x | 0x8));
    }
  }
  
  public final void a(StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    paramStringBuilder.append("<database");
    a(paramStringBuilder, this.x);
    paramStringBuilder.append(" btcmp=\"");
    paramStringBuilder.append(a(this.n, this.z));
    paramStringBuilder.append("\"");
    paramStringBuilder.append(" dupcmp=\"");
    paramStringBuilder.append(a(this.o, this.A));
    paramStringBuilder.append("\" > ");
    this.a.a(paramStringBuilder, paramBoolean);
    this.b.a(paramStringBuilder, paramBoolean);
    if ((paramBoolean) && (this.l != null))
    {
      Iterator localIterator = this.l.b().iterator();
      while (localIterator.hasNext())
      {
        Object localObject = (Map.Entry)localIterator.next();
        Long localLong = (Long)((Map.Entry)localObject).getKey();
        localObject = (com.sleepycat.b.a.f)((Map.Entry)localObject).getValue();
        paramStringBuilder.append("<file file=\"").append(localLong);
        paramStringBuilder.append("\">");
        paramStringBuilder.append(localObject);
        paramStringBuilder.append("</file>");
      }
    }
    bk.a(paramStringBuilder, this.F, k());
    paramStringBuilder.append("</database>");
  }
  
  public final void a(ByteBuffer paramByteBuffer)
  {
    this.a.a(paramByteBuffer);
    this.b.a(paramByteBuffer);
    paramByteBuffer.put(this.x);
    ar.a(paramByteBuffer, this.z);
    ar.a(paramByteBuffer, this.A);
    ar.b(paramByteBuffer, this.s);
    paramByteBuffer.put(this.y);
    ar.b(paramByteBuffer, this.l.c());
    Iterator localIterator = this.l.b().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (Map.Entry)localIterator.next();
      Long localLong = (Long)((Map.Entry)localObject).getKey();
      localObject = (com.sleepycat.b.a.f)((Map.Entry)localObject).getValue();
      ar.c(paramByteBuffer, localLong.longValue());
      ((com.sleepycat.b.a.f)localObject).a(paramByteBuffer);
    }
    bk.a(paramByteBuffer, this.F);
    this.f = false;
  }
  
  public final void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    boolean bool2 = true;
    int i1;
    if (paramInt >= 6)
    {
      i1 = 1;
      this.a.a(paramByteBuffer, paramInt);
      this.b.a(paramByteBuffer, paramInt);
      this.x = paramByteBuffer.get();
      if (H) {
        m();
      }
      if (paramInt < 2) {
        break label215;
      }
      if (i1 != 0) {
        break label203;
      }
      bool1 = true;
      label61:
      this.z = ar.c(paramByteBuffer, bool1);
      if (i1 != 0) {
        break label209;
      }
      bool1 = true;
      label79:
      this.A = ar.c(paramByteBuffer, bool1);
      label89:
      if (paramInt > 0)
      {
        if (i1 != 0) {
          break label319;
        }
        bool1 = true;
        label101:
        this.s = ar.a(paramByteBuffer, bool1);
        if (paramInt < 8) {
          if (i1 != 0) {
            break label325;
          }
        }
      }
    }
    label203:
    label209:
    label215:
    label223:
    label238:
    label284:
    label290:
    label304:
    label319:
    label325:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      ar.a(paramByteBuffer, bool1);
      if (i1 == 0) {
        break label331;
      }
      this.y = paramByteBuffer.get();
      int i2 = ar.d(paramByteBuffer);
      i1 = 0;
      while (i1 < i2)
      {
        long l1 = ar.g(paramByteBuffer);
        this.l.a(Long.valueOf(l1), false, false, null).a(paramByteBuffer, paramInt);
        i1 += 1;
      }
      i1 = 0;
      break;
      bool1 = false;
      break label61;
      bool1 = false;
      break label79;
      String str1;
      String str2;
      if (i1 == 0)
      {
        bool1 = true;
        str1 = ar.d(paramByteBuffer, bool1);
        if (i1 != 0) {
          break label284;
        }
        bool1 = true;
        str2 = ar.d(paramByteBuffer, bool1);
        if (str1.length() != 0) {
          break label290;
        }
      }
      for (this.z = ar.a;; this.z = a(str1, "Btree"))
      {
        if (str2.length() != 0) {
          break label304;
        }
        this.A = ar.a;
        break;
        bool1 = false;
        break label223;
        bool1 = false;
        break label238;
      }
      this.A = a(str2, "Duplicate");
      break label89;
      bool1 = false;
      break label101;
    }
    label331:
    if (paramInt < 8) {}
    for (paramByteBuffer = null;; paramByteBuffer = bk.a(paramByteBuffer))
    {
      this.F = paramByteBuffer;
      return;
    }
  }
  
  public final void a(boolean paramBoolean)
  {
    try
    {
      if (!this.e) {
        throw new UnsupportedOperationException("Database.sync() is only supported for deferred-write databases");
      }
    }
    finally {}
    if (this.b.c())
    {
      com.sleepycat.b.h.d locald = this.c.C;
      com.sleepycat.b.h.d.a(this.c, this, paramBoolean);
    }
  }
  
  /* Error */
  public final void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 189	com/sleepycat/b/c/i:g	Ljava/util/Set;
    //   4: invokeinterface 808 1 0
    //   9: ifeq +151 -> 160
    //   12: aload_0
    //   13: invokevirtual 723	com/sleepycat/b/c/i:k	()Ljava/util/List;
    //   16: astore_3
    //   17: aload_3
    //   18: ifnull +65 -> 83
    //   21: new 810	java/util/LinkedList
    //   24: dup
    //   25: aload_3
    //   26: invokespecial 813	java/util/LinkedList:<init>	(Ljava/util/Collection;)V
    //   29: astore_3
    //   30: aload_3
    //   31: invokeinterface 816 1 0
    //   36: astore 4
    //   38: aload 4
    //   40: invokeinterface 424 1 0
    //   45: ifeq +29 -> 74
    //   48: aload 4
    //   50: invokeinterface 427 1 0
    //   55: checkcast 818	com/sleepycat/b/m/d
    //   58: instanceof 820
    //   61: ifne -23 -> 38
    //   64: aload 4
    //   66: invokeinterface 435 1 0
    //   71: goto -33 -> 38
    //   74: aload_0
    //   75: aconst_null
    //   76: aconst_null
    //   77: aload_3
    //   78: iconst_0
    //   79: invokevirtual 683	com/sleepycat/b/c/i:a	(Lcom/sleepycat/b/n/q;Ljava/lang/String;Ljava/util/List;Z)Z
    //   82: pop
    //   83: iload_2
    //   84: ifeq +60 -> 144
    //   87: aload_0
    //   88: invokevirtual 602	com/sleepycat/b/c/i:e	()Z
    //   91: ifeq +53 -> 144
    //   94: aload_0
    //   95: getfield 140	com/sleepycat/b/c/i:c	Lcom/sleepycat/b/c/ad;
    //   98: iconst_1
    //   99: invokestatic 825	com/sleepycat/b/n/a:a	(Lcom/sleepycat/b/c/ad;Z)Lcom/sleepycat/b/n/a;
    //   102: astore_3
    //   103: aload_0
    //   104: getfield 140	com/sleepycat/b/c/i:c	Lcom/sleepycat/b/c/ad;
    //   107: astore 4
    //   109: aload 4
    //   111: getfield 385	com/sleepycat/b/c/ad:q	Lcom/sleepycat/b/c/p;
    //   114: astore 4
    //   116: aload_0
    //   117: invokevirtual 827	com/sleepycat/b/c/i:x	()Ljava/lang/String;
    //   120: astore 5
    //   122: aload_0
    //   123: getfield 138	com/sleepycat/b/c/i:a	Lcom/sleepycat/b/c/h;
    //   126: astore 6
    //   128: aload 4
    //   130: aload_3
    //   131: aload 5
    //   133: aload 6
    //   135: invokevirtual 830	com/sleepycat/b/c/p:a	(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;
    //   138: pop
    //   139: aload_3
    //   140: iconst_1
    //   141: invokevirtual 835	com/sleepycat/b/n/q:a_	(Z)V
    //   144: iload_1
    //   145: ifeq +15 -> 160
    //   148: aload_0
    //   149: getfield 605	com/sleepycat/b/c/i:e	Z
    //   152: ifeq +8 -> 160
    //   155: aload_0
    //   156: iconst_1
    //   157: invokevirtual 837	com/sleepycat/b/c/i:a	(Z)V
    //   160: return
    //   161: astore 4
    //   163: aload_0
    //   164: getfield 140	com/sleepycat/b/c/i:c	Lcom/sleepycat/b/c/ad;
    //   167: aload 4
    //   169: invokestatic 840	com/sleepycat/b/aa:a	(Lcom/sleepycat/b/c/ad;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;
    //   172: athrow
    //   173: astore 4
    //   175: aload_3
    //   176: iconst_0
    //   177: invokevirtual 835	com/sleepycat/b/n/q:a_	(Z)V
    //   180: aload 4
    //   182: athrow
    //   183: astore 4
    //   185: aload_0
    //   186: getfield 140	com/sleepycat/b/c/i:c	Lcom/sleepycat/b/c/ad;
    //   189: aload 4
    //   191: invokevirtual 843	com/sleepycat/b/c/ad:a	(Ljava/lang/Error;)V
    //   194: aload 4
    //   196: athrow
    //   197: astore 4
    //   199: aload_3
    //   200: iconst_0
    //   201: invokevirtual 835	com/sleepycat/b/n/q:a_	(Z)V
    //   204: goto -60 -> 144
    //   207: astore 4
    //   209: goto -10 -> 199
    //   212: astore 4
    //   214: goto -15 -> 199
    //   217: astore 4
    //   219: goto -20 -> 199
    //   222: astore 4
    //   224: goto -25 -> 199
    //   227: astore 4
    //   229: goto -30 -> 199
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	232	0	this	i
    //   0	232	1	paramBoolean1	boolean
    //   0	232	2	paramBoolean2	boolean
    //   16	184	3	localObject1	Object
    //   36	93	4	localObject2	Object
    //   161	7	4	locals	s
    //   173	8	4	localObject3	Object
    //   183	12	4	localError	Error
    //   197	1	4	localan1	com.sleepycat.b.an
    //   207	1	4	localan2	com.sleepycat.b.an
    //   212	1	4	localan3	com.sleepycat.b.an
    //   217	1	4	localan4	com.sleepycat.b.an
    //   222	1	4	localan5	com.sleepycat.b.an
    //   227	1	4	localp	com.sleepycat.b.p
    //   120	12	5	str	String
    //   126	8	6	localh	h
    // Exception table:
    //   from	to	target	type
    //   103	109	161	com/sleepycat/b/c/s
    //   109	116	161	com/sleepycat/b/c/s
    //   116	122	161	com/sleepycat/b/c/s
    //   122	128	161	com/sleepycat/b/c/s
    //   128	139	161	com/sleepycat/b/c/s
    //   103	109	173	finally
    //   109	116	173	finally
    //   116	122	173	finally
    //   122	128	173	finally
    //   128	139	173	finally
    //   163	173	173	finally
    //   185	197	173	finally
    //   103	109	183	java/lang/Error
    //   109	116	183	java/lang/Error
    //   116	122	183	java/lang/Error
    //   122	128	183	java/lang/Error
    //   128	139	183	java/lang/Error
    //   103	109	197	com/sleepycat/b/an
    //   109	116	207	com/sleepycat/b/an
    //   116	122	212	com/sleepycat/b/an
    //   122	128	217	com/sleepycat/b/an
    //   128	139	222	com/sleepycat/b/an
    //   103	109	227	com/sleepycat/b/p
    //   109	116	227	com/sleepycat/b/p
    //   116	122	227	com/sleepycat/b/p
    //   122	128	227	com/sleepycat/b/p
    //   128	139	227	com/sleepycat/b/p
  }
  
  public final boolean a(at paramat)
  {
    return false;
  }
  
  public final boolean a(q paramq, String paramString, List<com.sleepycat.b.m.d> paramList, boolean paramBoolean)
  {
    int i3 = 1;
    int i4 = 1;
    int i2 = 1;
    List<com.sleepycat.b.m.d> localList = paramList;
    if (paramList != null)
    {
      localList = paramList;
      if (paramList.size() == 0) {
        localList = null;
      }
    }
    int i1;
    if (paramBoolean)
    {
      if (localList == null)
      {
        if (this.F != null) {}
        for (paramBoolean = true;; paramBoolean = false)
        {
          paramList = null;
          if (localList != null) {
            break label340;
          }
          if (this.E == null) {
            break;
          }
          i1 = i2;
          label69:
          paramString = null;
          if ((paramBoolean) || (i1 != 0))
          {
            bh.a(paramq, k(), localList);
            this.F = paramList;
            if ((paramString == null) || (paramString.size() <= 0)) {
              break label551;
            }
            label109:
            this.E = paramString;
            this.D.set(localList);
          }
          return paramBoolean;
        }
      }
      paramList = localList.iterator();
      i1 = 0;
      label143:
      if (paramList.hasNext())
      {
        if (!((com.sleepycat.b.m.d)paramList.next() instanceof com.sleepycat.b.m.a)) {
          break label559;
        }
        i1 += 1;
      }
    }
    label220:
    label340:
    label551:
    label556:
    label559:
    for (;;)
    {
      break label143;
      if (i1 == 0)
      {
        if (this.F != null) {}
        for (paramBoolean = true;; paramBoolean = false)
        {
          paramList = null;
          break;
        }
      }
      paramList = new byte[i1][];
      Object localObject1 = localList.iterator();
      i1 = 0;
      Object localObject2;
      if (((Iterator)localObject1).hasNext())
      {
        localObject2 = (com.sleepycat.b.m.d)((Iterator)localObject1).next();
        if (!(localObject2 instanceof com.sleepycat.b.m.a)) {
          break label556;
        }
        paramList[i1] = a(localObject2, "trigger " + ((com.sleepycat.b.m.d)localObject2).a());
        ((com.sleepycat.b.m.d)localObject2).a(paramString);
        i1 += 1;
      }
      for (;;)
      {
        break label220;
        if (!Arrays.equals(this.F, paramList)) {}
        for (paramBoolean = true;; paramBoolean = false) {
          break;
        }
        paramList = this.F;
        paramBoolean = false;
        break;
        i1 = 0;
        break label69;
        localObject1 = new LinkedList();
        localObject2 = new IdentityHashMap();
        Iterator localIterator = localList.iterator();
        while (localIterator.hasNext())
        {
          com.sleepycat.b.m.d locald = (com.sleepycat.b.m.d)localIterator.next();
          if (!(locald instanceof com.sleepycat.b.m.a))
          {
            ((Map)localObject2).put(locald, null);
            ((List)localObject1).add(locald);
            locald.a(paramString);
          }
        }
        if (this.E == null)
        {
          if (((List)localObject1).size() > 0) {}
          for (i1 = i3;; i1 = 0)
          {
            paramString = (String)localObject1;
            break;
          }
        }
        if (this.E.size() != ((List)localObject1).size()) {
          i1 = i4;
        }
        for (;;)
        {
          paramString = (String)localObject1;
          break;
          paramString = this.E.iterator();
          while (paramString.hasNext()) {
            ((Map)localObject2).remove((com.sleepycat.b.m.d)paramString.next());
          }
          i1 = i4;
          if (((Map)localObject2).size() <= 0) {
            i1 = 0;
          }
        }
        paramString = null;
        break label109;
      }
    }
  }
  
  public final boolean a(Comparator<byte[]> paramComparator, boolean paramBoolean)
  {
    this.o = paramComparator;
    paramComparator = a(paramComparator, paramBoolean, "Duplicate");
    boolean bool = Arrays.equals(paramComparator, this.A);
    this.A = paramComparator;
    this.C = paramBoolean;
    if (!bool) {
      H();
    }
    return !bool;
  }
  
  public final long b()
  {
    return 0L;
  }
  
  public final boolean b(Comparator<byte[]> paramComparator, boolean paramBoolean)
  {
    this.n = paramComparator;
    paramComparator = a(paramComparator, paramBoolean, "Btree");
    boolean bool = Arrays.equals(paramComparator, this.z);
    this.z = paramComparator;
    this.B = paramBoolean;
    if (!bool) {
      H();
    }
    return !bool;
  }
  
  public final String c()
  {
    if (this.t != null) {
      return this.t;
    }
    return "dBId=" + this.a;
  }
  
  public final i d()
  {
    try
    {
      i locali = (i)super.clone();
      locali.a = null;
      locali.b = null;
      locali.y = 8;
      locali.l = new com.sleepycat.b.a.g(false);
      locali.l.a(this.c);
      locali.j = new AtomicInteger();
      return locali;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      if (!w) {
        throw new AssertionError(localCloneNotSupportedException);
      }
    }
    return null;
  }
  
  public final boolean e()
  {
    return (this.x & 0x2) != 0;
  }
  
  public final w f()
  {
    if (this.G != null) {
      return this.G;
    }
    this.G = p.a(this.t);
    return this.G;
  }
  
  public final boolean g()
  {
    return (this.e) || (e());
  }
  
  public final boolean h()
  {
    return (this.x & 0x1) != 0;
  }
  
  public final boolean i()
  {
    return (this.x & 0x40) != 0;
  }
  
  public final void j()
  {
    this.x = ((byte)(this.x | 0x40));
  }
  
  public final List<com.sleepycat.b.m.d> k()
  {
    Object localObject1;
    if ((this.c == null) || (this.c.R)) {
      localObject1 = null;
    }
    Object localObject2;
    do
    {
      do
      {
        do
        {
          do
          {
            return (List<com.sleepycat.b.m.d>)localObject1;
            if ((this.F == null) && (this.E == null)) {
              return null;
            }
            localObject2 = (List)this.D.get();
            localObject1 = localObject2;
          } while (localObject2 != null);
          localObject1 = bk.a(x(), this.F, this.c.J);
          localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = new LinkedList();
          }
          if (this.E != null) {
            ((List)localObject2).addAll(this.E);
          }
          localObject1 = localObject2;
        } while (this.D.compareAndSet(null, localObject2));
        localObject2 = (List)this.D.get();
        localObject1 = localObject2;
      } while (w);
      localObject1 = localObject2;
    } while (localObject2 != null);
    throw new AssertionError();
  }
  
  public final boolean l()
  {
    return (this.x & 0x10) != 0;
  }
  
  public final void m()
  {
    this.x = ((byte)(this.x | 0x10));
  }
  
  public final void n()
  {
    if (H) {
      return;
    }
    this.x = ((byte)(this.x & 0xFFFFFFEF));
  }
  
  public final boolean o()
  {
    return (this.x & 0x4) != 0;
  }
  
  public final void p()
  {
    this.x = ((byte)(this.x | 0x4));
  }
  
  public final boolean q()
  {
    return (!o()) || (f() == w.b);
  }
  
  public final com.sleepycat.b.a r()
  {
    if (this.u != null) {
      return this.u;
    }
    if (f().a()) {
      return com.sleepycat.b.a.a;
    }
    ad localad = this.c;
    if (localad.k != null) {
      return localad.k;
    }
    return com.sleepycat.b.a.a;
  }
  
  public final Set<com.sleepycat.b.i> s()
  {
    HashSet localHashSet = new HashSet();
    synchronized (this.g)
    {
      localHashSet.addAll(this.g);
      return localHashSet;
    }
  }
  
  public final long t()
  {
    return this.l.c;
  }
  
  final void u()
  {
    this.j.incrementAndGet();
  }
  
  public final int v()
  {
    int i1 = this.k.decrementAndGet();
    if ((!w) && (i1 < 0)) {
      throw new AssertionError();
    }
    return i1;
  }
  
  public final com.sleepycat.b.i w()
  {
    synchronized (this.g)
    {
      Object localObject1 = this.g.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        com.sleepycat.b.i locali = (com.sleepycat.b.i)((Iterator)localObject1).next();
        if ((locali instanceof bi))
        {
          localObject1 = ((bi)locali).m;
          return (com.sleepycat.b.i)localObject1;
        }
      }
      return null;
    }
  }
  
  public final String x()
  {
    return this.c.q.c(this.a);
  }
  
  public final boolean y()
  {
    return (!z()) && ((this.f) || (e()));
  }
  
  public final boolean z()
  {
    return this.i != 1;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\c\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */