package com.d.a.a.a.a.a;

import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class a
  implements Closeable
{
  static final Pattern a = Pattern.compile("[a-z0-9_-]{1,64}");
  private static final OutputStream r = new OutputStream()
  {
    public final void write(int paramAnonymousInt) {}
  };
  final File b;
  final ThreadPoolExecutor c = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue());
  private final File d;
  private final File e;
  private final File f;
  private final int g;
  private long h;
  private int i;
  private final int j;
  private long k = 0L;
  private int l = 0;
  private Writer m;
  private final LinkedHashMap<String, d> n = new LinkedHashMap(0, 0.75F, true);
  private int o;
  private long p = 0L;
  private final Callable<Void> q = new Callable()
  {
    private Void a()
    {
      synchronized (a.this)
      {
        if (a.a(a.this) == null) {
          return null;
        }
        a.b(a.this);
        a.c(a.this);
        if (a.d(a.this))
        {
          a.e(a.this);
          a.f(a.this);
        }
        return null;
      }
    }
  };
  
  private a(File paramFile, long paramLong, int paramInt)
  {
    this.b = paramFile;
    this.g = 1;
    this.d = new File(paramFile, "journal");
    this.e = new File(paramFile, "journal.tmp");
    this.f = new File(paramFile, "journal.bkp");
    this.j = 1;
    this.h = paramLong;
    this.i = paramInt;
  }
  
  public static a a(File paramFile, long paramLong, int paramInt)
  {
    if (paramLong <= 0L) {
      throw new IllegalArgumentException("maxSize <= 0");
    }
    if (paramInt <= 0) {
      throw new IllegalArgumentException("maxFileCount <= 0");
    }
    Object localObject = new File(paramFile, "journal.bkp");
    File localFile;
    if (((File)localObject).exists())
    {
      localFile = new File(paramFile, "journal");
      if (!localFile.exists()) {
        break label147;
      }
      ((File)localObject).delete();
    }
    for (;;)
    {
      localObject = new a(paramFile, paramLong, paramInt);
      if (!((a)localObject).d.exists()) {
        break label205;
      }
      try
      {
        ((a)localObject).e();
        ((a)localObject).f();
        ((a)localObject).m = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(((a)localObject).d, true), h.a));
        return (a)localObject;
      }
      catch (IOException localIOException)
      {
        label147:
        System.out.println("DiskLruCache " + paramFile + " is corrupt: " + localIOException.getMessage() + ", removing");
        ((a)localObject).c();
      }
      a((File)localObject, localFile, false);
    }
    label205:
    paramFile.mkdirs();
    paramFile = new a(paramFile, paramLong, paramInt);
    paramFile.g();
    return paramFile;
  }
  
  private void a(b paramb, boolean paramBoolean)
  {
    int i3 = 0;
    d locald;
    try
    {
      locald = paramb.a;
      if (locald.d != paramb) {
        throw new IllegalStateException();
      }
    }
    finally {}
    int i2 = i3;
    if (paramBoolean)
    {
      i2 = i3;
      if (!locald.c)
      {
        int i1 = 0;
        for (;;)
        {
          i2 = i3;
          if (i1 >= this.j) {
            break;
          }
          if (paramb.b[i1] == 0)
          {
            paramb.c();
            throw new IllegalStateException("Newly created entry didn't create value for index " + i1);
          }
          if (!locald.b(i1).exists())
          {
            paramb.c();
            return;
          }
          i1 += 1;
        }
      }
    }
    for (;;)
    {
      long l1;
      if (i2 < this.j)
      {
        paramb = locald.b(i2);
        if (paramBoolean)
        {
          if (paramb.exists())
          {
            File localFile = locald.a(i2);
            paramb.renameTo(localFile);
            l1 = locald.b[i2];
            long l2 = localFile.length();
            locald.b[i2] = l2;
            this.k = (this.k - l1 + l2);
            this.l += 1;
          }
        }
        else {
          a(paramb);
        }
      }
      else
      {
        this.o += 1;
        locald.d = null;
        if ((locald.c | paramBoolean))
        {
          locald.c = true;
          this.m.write("CLEAN " + locald.a + locald.a() + '\n');
          if (paramBoolean)
          {
            l1 = this.p;
            this.p = (1L + l1);
            locald.e = l1;
          }
        }
        for (;;)
        {
          this.m.flush();
          if ((this.k <= this.h) && (this.l <= this.i) && (!h())) {
            break;
          }
          this.c.submit(this.q);
          break;
          this.n.remove(locald.a);
          this.m.write("REMOVE " + locald.a + '\n');
        }
      }
      i2 += 1;
    }
  }
  
  private static void a(File paramFile)
  {
    if ((paramFile.exists()) && (!paramFile.delete())) {
      throw new IOException();
    }
  }
  
  private static void a(File paramFile1, File paramFile2, boolean paramBoolean)
  {
    if (paramBoolean) {
      a(paramFile2);
    }
    if (!paramFile1.renameTo(paramFile2)) {
      throw new IOException();
    }
  }
  
  private static void d(String paramString)
  {
    if (!a.matcher(paramString).matches()) {
      throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,64}: \"" + paramString + "\"");
    }
  }
  
  private void e()
  {
    g localg = new g(new FileInputStream(this.d), h.a);
    int i1;
    label517:
    try
    {
      String str1 = localg.a();
      localObject3 = localg.a();
      localObject4 = localg.a();
      str2 = localg.a();
      String str3 = localg.a();
      if ((!"libcore.io.DiskLruCache".equals(str1)) || (!"1".equals(localObject3)) || (!Integer.toString(this.g).equals(localObject4)) || (!Integer.toString(this.j).equals(str2)) || (!"".equals(str3))) {
        throw new IOException("unexpected journal header: [" + str1 + ", " + (String)localObject3 + ", " + str2 + ", " + str3 + "]");
      }
    }
    finally
    {
      Object localObject3;
      Object localObject4;
      String str2;
      h.a(localg);
      throw ((Throwable)localObject1);
      i1 = 0;
      int i2;
      try
      {
        str2 = localg.a();
        i2 = str2.indexOf(' ');
        if (i2 == -1) {
          throw new IOException("unexpected journal line: " + str2);
        }
      }
      catch (EOFException localEOFException)
      {
        this.o = (i1 - this.n.size());
        h.a(localg);
        return;
      }
      int i3 = i2 + 1;
      int i4 = str2.indexOf(' ', i3);
      Object localObject2;
      if (i4 == -1)
      {
        localObject2 = str2.substring(i3);
        if ((i2 == 6) && (str2.startsWith("REMOVE")))
        {
          this.n.remove(localObject2);
          break label517;
        }
      }
      else
      {
        localObject2 = str2.substring(i3, i4);
      }
      for (;;)
      {
        localObject4 = (d)this.n.get(localObject2);
        localObject3 = localObject4;
        if (localObject4 == null)
        {
          localObject3 = new d(this, (String)localObject2, (byte)0);
          this.n.put(localObject2, localObject3);
        }
        if ((i4 != -1) && (i2 == 5) && (str2.startsWith("CLEAN")))
        {
          localObject2 = str2.substring(i4 + 1).split(" ");
          ((d)localObject3).c = true;
          ((d)localObject3).d = null;
          ((d)localObject3).a((String[])localObject2);
          break;
        }
        if ((i4 == -1) && (i2 == 5) && (str2.startsWith("DIRTY")))
        {
          ((d)localObject3).d = new b(this, (d)localObject3, (byte)0);
          break;
        }
        if ((i4 == -1) && (i2 == 4) && (str2.startsWith("READ"))) {
          break;
        }
        throw new IOException("unexpected journal line: " + str2);
      }
    }
  }
  
  private void f()
  {
    a(this.e);
    Iterator localIterator = this.n.values().iterator();
    while (localIterator.hasNext())
    {
      d locald = (d)localIterator.next();
      int i1;
      if (locald.d == null)
      {
        i1 = 0;
        while (i1 < this.j)
        {
          this.k += locald.b[i1];
          this.l += 1;
          i1 += 1;
        }
      }
      else
      {
        locald.d = null;
        i1 = 0;
        while (i1 < this.j)
        {
          a(locald.a(i1));
          a(locald.b(i1));
          i1 += 1;
        }
        localIterator.remove();
      }
    }
  }
  
  private void g()
  {
    for (;;)
    {
      try
      {
        if (this.m != null) {
          this.m.close();
        }
        BufferedWriter localBufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.e), h.a));
        d locald;
        try
        {
          localBufferedWriter.write("libcore.io.DiskLruCache");
          localBufferedWriter.write("\n");
          localBufferedWriter.write("1");
          localBufferedWriter.write("\n");
          localBufferedWriter.write(Integer.toString(this.g));
          localBufferedWriter.write("\n");
          localBufferedWriter.write(Integer.toString(this.j));
          localBufferedWriter.write("\n");
          localBufferedWriter.write("\n");
          Iterator localIterator = this.n.values().iterator();
          if (!localIterator.hasNext()) {
            break;
          }
          locald = (d)localIterator.next();
          if (locald.d != null)
          {
            localBufferedWriter.write("DIRTY " + locald.a + '\n');
            continue;
            localObject1 = finally;
          }
        }
        finally
        {
          localBufferedWriter.close();
        }
        ((Writer)localObject1).write("CLEAN " + locald.a + locald.a() + '\n');
      }
      finally {}
    }
    ((Writer)localObject1).close();
    if (this.d.exists()) {
      a(this.d, this.f, true);
    }
    a(this.e, this.d, false);
    this.f.delete();
    this.m = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.d, true), h.a));
  }
  
  private boolean h()
  {
    return (this.o >= 2000) && (this.o >= this.n.size());
  }
  
  private void i()
  {
    if (this.m == null) {
      throw new IllegalStateException("cache is closed");
    }
  }
  
  private void j()
  {
    while (this.k > this.h) {
      c((String)((Map.Entry)this.n.entrySet().iterator().next()).getKey());
    }
  }
  
  private void k()
  {
    while (this.l > this.i) {
      c((String)((Map.Entry)this.n.entrySet().iterator().next()).getKey());
    }
  }
  
  public final long a()
  {
    try
    {
      long l1 = this.h;
      return l1;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public final e a(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: invokespecial 462	com/d/a/a/a/a/a/a:i	()V
    //   8: aload_1
    //   9: invokestatic 464	com/d/a/a/a/a/a/a:d	(Ljava/lang/String;)V
    //   12: aload_0
    //   13: getfield 71	com/d/a/a/a/a/a/a:n	Ljava/util/LinkedHashMap;
    //   16: aload_1
    //   17: invokevirtual 385	java/util/LinkedHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   20: checkcast 226	com/d/a/a/a/a/a/d
    //   23: astore 5
    //   25: aload 5
    //   27: ifnonnull +9 -> 36
    //   30: aload_3
    //   31: astore_2
    //   32: aload_0
    //   33: monitorexit
    //   34: aload_2
    //   35: areturn
    //   36: aload_3
    //   37: astore_2
    //   38: aload 5
    //   40: getfield 235	com/d/a/a/a/a/a/d:c	Z
    //   43: ifeq -11 -> 32
    //   46: aload_0
    //   47: getfield 119	com/d/a/a/a/a/a/a:j	I
    //   50: anewarray 102	java/io/File
    //   53: astore_2
    //   54: aload_0
    //   55: getfield 119	com/d/a/a/a/a/a/a:j	I
    //   58: anewarray 466	java/io/InputStream
    //   61: astore 4
    //   63: iconst_0
    //   64: istore 7
    //   66: iload 7
    //   68: aload_0
    //   69: getfield 119	com/d/a/a/a/a/a/a:j	I
    //   72: if_icmpge +83 -> 155
    //   75: aload 5
    //   77: iload 7
    //   79: invokevirtual 250	com/d/a/a/a/a/a/d:a	(I)Ljava/io/File;
    //   82: astore 6
    //   84: aload_2
    //   85: iload 7
    //   87: aload 6
    //   89: aastore
    //   90: aload 4
    //   92: iload 7
    //   94: new 324	java/io/FileInputStream
    //   97: dup
    //   98: aload 6
    //   100: invokespecial 326	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   103: aastore
    //   104: iload 7
    //   106: iconst_1
    //   107: iadd
    //   108: istore 7
    //   110: goto -44 -> 66
    //   113: astore_1
    //   114: iconst_0
    //   115: istore 7
    //   117: aload_3
    //   118: astore_2
    //   119: iload 7
    //   121: aload_0
    //   122: getfield 119	com/d/a/a/a/a/a/a:j	I
    //   125: if_icmpge -93 -> 32
    //   128: aload_3
    //   129: astore_2
    //   130: aload 4
    //   132: iload 7
    //   134: aaload
    //   135: ifnull -103 -> 32
    //   138: aload 4
    //   140: iload 7
    //   142: aaload
    //   143: invokestatic 357	com/d/a/a/a/a/a/h:a	(Ljava/io/Closeable;)V
    //   146: iload 7
    //   148: iconst_1
    //   149: iadd
    //   150: istore 7
    //   152: goto -35 -> 117
    //   155: aload_0
    //   156: aload_0
    //   157: getfield 266	com/d/a/a/a/a/a/a:o	I
    //   160: iconst_1
    //   161: iadd
    //   162: putfield 266	com/d/a/a/a/a/a/a:o	I
    //   165: aload_0
    //   166: getfield 170	com/d/a/a/a/a/a/a:m	Ljava/io/Writer;
    //   169: new 181	java/lang/StringBuilder
    //   172: dup
    //   173: ldc_w 468
    //   176: invokespecial 184	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   179: aload_1
    //   180: invokevirtual 193	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   183: bipush 10
    //   185: invokevirtual 276	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   188: invokevirtual 202	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   191: invokevirtual 471	java/io/Writer:append	(Ljava/lang/CharSequence;)Ljava/io/Writer;
    //   194: pop
    //   195: aload_0
    //   196: invokespecial 288	com/d/a/a/a/a/a/a:h	()Z
    //   199: ifeq +15 -> 214
    //   202: aload_0
    //   203: getfield 91	com/d/a/a/a/a/a/a:c	Ljava/util/concurrent/ThreadPoolExecutor;
    //   206: aload_0
    //   207: getfield 96	com/d/a/a/a/a/a/a:q	Ljava/util/concurrent/Callable;
    //   210: invokevirtual 292	java/util/concurrent/ThreadPoolExecutor:submit	(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    //   213: pop
    //   214: new 473	com/d/a/a/a/a/a/e
    //   217: dup
    //   218: aload_0
    //   219: aload_1
    //   220: aload 5
    //   222: getfield 283	com/d/a/a/a/a/a/d:e	J
    //   225: aload_2
    //   226: aload 4
    //   228: aload 5
    //   230: getfield 257	com/d/a/a/a/a/a/d:b	[J
    //   233: iconst_0
    //   234: invokespecial 476	com/d/a/a/a/a/a/e:<init>	(Lcom/d/a/a/a/a/a/a;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[JB)V
    //   237: astore_2
    //   238: goto -206 -> 32
    //   241: astore_1
    //   242: aload_0
    //   243: monitorexit
    //   244: aload_1
    //   245: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	246	0	this	a
    //   0	246	1	paramString	String
    //   31	207	2	localObject1	Object
    //   1	128	3	localObject2	Object
    //   61	166	4	arrayOfInputStream	java.io.InputStream[]
    //   23	206	5	locald	d
    //   82	17	6	localFile	File
    //   64	87	7	i1	int
    // Exception table:
    //   from	to	target	type
    //   66	84	113	java/io/FileNotFoundException
    //   90	104	113	java/io/FileNotFoundException
    //   4	25	241	finally
    //   38	63	241	finally
    //   66	84	241	finally
    //   90	104	241	finally
    //   119	128	241	finally
    //   138	146	241	finally
    //   155	214	241	finally
    //   214	238	241	finally
  }
  
  public final int b()
  {
    try
    {
      int i1 = this.i;
      return i1;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final b b(String paramString)
  {
    for (;;)
    {
      b localb;
      try
      {
        i();
        d(paramString);
        d locald = (d)this.n.get(paramString);
        if (-1L != -1L) {
          if (locald != null)
          {
            long l1 = locald.e;
            if (l1 == -1L) {}
          }
          else
          {
            paramString = null;
            return paramString;
          }
        }
        if (locald == null)
        {
          locald = new d(this, paramString, (byte)0);
          this.n.put(paramString, locald);
          localb = new b(this, locald, (byte)0);
          locald.d = localb;
          this.m.write("DIRTY " + paramString + '\n');
          this.m.flush();
          paramString = localb;
          continue;
        }
        localb = locald.d;
      }
      finally {}
      if (localb != null) {
        paramString = null;
      }
    }
  }
  
  public final void c()
  {
    close();
    h.a(this.b);
  }
  
  public final boolean c(String paramString)
  {
    int i1 = 0;
    for (;;)
    {
      try
      {
        i();
        d(paramString);
        d locald = (d)this.n.get(paramString);
        Object localObject;
        if (locald != null)
        {
          localObject = locald.d;
          if (localObject == null) {}
        }
        else
        {
          bool = false;
          return bool;
          this.k -= locald.b[i1];
          this.l -= 1;
          locald.b[i1] = 0L;
          i1 += 1;
        }
        if (i1 < this.j)
        {
          localObject = locald.a(i1);
          if ((!((File)localObject).exists()) || (((File)localObject).delete())) {
            continue;
          }
          throw new IOException("failed to delete " + localObject);
        }
      }
      finally {}
      this.o += 1;
      this.m.append("REMOVE " + paramString + '\n');
      this.n.remove(paramString);
      if (h()) {
        this.c.submit(this.q);
      }
      boolean bool = true;
    }
  }
  
  public final void close()
  {
    for (;;)
    {
      try
      {
        Object localObject1 = this.m;
        if (localObject1 == null) {
          return;
        }
        localObject1 = new ArrayList(this.n.values()).iterator();
        if (((Iterator)localObject1).hasNext())
        {
          d locald = (d)((Iterator)localObject1).next();
          if (locald.d == null) {
            continue;
          }
          locald.d.c();
          continue;
        }
        j();
      }
      finally {}
      k();
      this.m.close();
      this.m = null;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\d\a\a\a\a\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */