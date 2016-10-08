package com.sleepycat.b;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.aw;
import com.sleepycat.b.c.bh;
import com.sleepycat.b.c.c;
import com.sleepycat.b.c.m;
import com.sleepycat.b.c.n;
import com.sleepycat.b.c.p.5;
import com.sleepycat.b.m.b;
import com.sleepycat.b.n.aj;
import com.sleepycat.b.n.d;
import com.sleepycat.b.n.q;
import com.sleepycat.b.n.r;
import com.sleepycat.b.p.ab;
import com.sleepycat.b.q.a;
import java.io.Closeable;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.logging.Level;

public class x
  implements Closeable
{
  public ad a;
  public br b;
  final Map<i, i> c;
  private ac e;
  private final z f;
  private final Map<bp, bp> g;
  
  static
  {
    if (!x.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      d = bool;
      return;
    }
  }
  
  public x(File paramFile, z paramz)
  {
    this(paramFile, paramz, true, null, null);
  }
  
  public x(File paramFile, z paramz, aw paramaw, ad paramad)
  {
    this(paramFile, paramz, true, paramaw, paramad);
  }
  
  public x(File paramFile, z paramz, boolean paramBoolean, aw paramaw, ad paramad)
  {
    if ((!d) && (!paramBoolean) && (paramz != null) && (paramad == null)) {
      throw new AssertionError();
    }
    this.a = null;
    this.c = new ConcurrentHashMap();
    this.g = new ConcurrentHashMap();
    com.sleepycat.b.p.i.a(paramFile, "envHome");
    z localz;
    Object localObject;
    if (paramz == null)
    {
      localz = z.a;
      localz = localz.g();
      if (localz.p) {
        m.a(paramFile, localz.j());
      }
      localObject = new ac();
      ((ac)localObject).l = localz.l;
      ((ac)localObject).m = localz.m;
      ((ac)localObject).a(localz.i());
      this.e = ((ac)localObject);
      localObject = br.a.a();
      boolean bool = this.e.l;
      br.a(((br)localObject).b, bool, ((br)localObject).d, ((br)localObject).e);
      ((br)localObject).c = bool;
      bool = this.e.m;
      br.a(((br)localObject).b, ((br)localObject).c, bool, ((br)localObject).e);
      ((br)localObject).d = bool;
      ((br)localObject).a(this.e.i());
      if (localz == null) {
        break label307;
      }
      ((br)localObject).j = localz.d();
      ((br)localObject).i = localz.e;
    }
    for (;;)
    {
      if (paramaw != null) {
        ((br)localObject).f = paramaw.a();
      }
      this.b = ((br)localObject);
      this.f = localz;
      if (paramad == null) {
        break label346;
      }
      this.a = paramad;
      return;
      localz = paramz;
      break;
      label307:
      ((br)localObject).j = this.b.j;
      ((br)localObject).i = this.b.i;
      ((br)localObject).f = this.b.f;
    }
    label346:
    this.a = a(paramFile, paramz, paramBoolean, paramaw);
  }
  
  private void a(bp parambp, i parami, String paramString, l paraml, boolean paramBoolean)
  {
    com.sleepycat.b.c.i locali = null;
    boolean bool2 = true;
    g();
    com.sleepycat.b.p.i.a(paramString, "databaseName");
    com.sleepycat.b.p.w.a(Level.FINEST, this.a, "Environment.open:  name=" + paramString + " dbConfig=" + paraml);
    if ((paraml.j) && (this.a.I())) {}
    for (boolean bool1 = true; ((paraml.g) && (paraml.h)) || ((paraml.g) && (paraml.d)) || ((paraml.h) && (paraml.d)); bool1 = false) {
      throw new IllegalArgumentException("Attempted to open Database " + paramString + " and two ore more of the following exclusive properties are true: deferredWrite, temporary, transactional");
    }
    if ((paraml.v != null) && (paraml.v.size() > 0))
    {
      boolean bool3 = l.b(paraml.v);
      if ((bool1) && (!bool3)) {
        throw new IllegalArgumentException("For a replicated Database, triggers must implement " + b.class.getName());
      }
    }
    if ((this.a.I()) && (paraml.j) && (!paraml.e) && (!paraml.d)) {
      throw new IllegalArgumentException("Read/Write Database instances for replicated database " + paramString + " must be transactional.");
    }
    if ((!paramBoolean) && (paraml.d) && (!this.a.e)) {
      throw new IllegalArgumentException("Attempted to open Database " + paramString + " transactionally, but parent Environment is not transactional");
    }
    if ((this.a.g) && (!paraml.e)) {
      throw new IllegalArgumentException("Attempted to open Database " + paramString + " as writable but parent Environment is read only ");
    }
    this.a.E();
    q localq = r.b(this, parambp, paramBoolean, paraml.d, bool1);
    int i;
    for (;;)
    {
      try
      {
        parami.g = new d(this.a, localq);
        parambp = parami.g;
      }
      finally
      {
        try
        {
          this.c.put(parami, parami);
          localq.a(parami);
          if ((parami.e) && (parami.c.k.incrementAndGet() == 1))
          {
            i = 1;
            break label797;
            bh.a(localq, parami, paramBoolean);
            localq.a_(true);
            return;
            this.a.q.c(locali);
            if ((!paramBoolean) && (com.sleepycat.b.c.p.b(paramString))) {
              throw new IllegalArgumentException(paramString + " is a reserved database name.");
            }
            if (!paraml.b) {
              throw new p("Database " + paramString + " not found.");
            }
            paramString = parami.a(this, localq, paramString, paraml);
            paramBoolean = true;
          }
          else
          {
            i = 0;
          }
        }
        finally
        {
          paraml = paramString;
          paramString = parambp;
          parambp = (bp)localObject1;
          paramBoolean = bool2;
        }
        parambp = finally;
        paramBoolean = false;
        paraml = null;
        paramString = locali;
        continue;
        continue;
      }
      try
      {
        locali = this.a.q.a(localq, paramString, parambp);
        if (locali == null) {
          continue;
        }
        try
        {
          if (locali.z()) {
            continue;
          }
          i = 1;
          if (i == 0) {
            continue;
          }
          if ((!paraml.b) || (!paraml.c)) {
            continue;
          }
          throw new o("Database " + paramString + " already exists");
        }
        finally
        {
          paramBoolean = false;
          paraml = locali;
          paramString = parambp;
          parambp = (bp)localObject3;
        }
      }
      finally
      {
        paramBoolean = false;
        paraml = null;
        paramString = parambp;
        parambp = (bp)localObject2;
        continue;
      }
      if (!paramBoolean)
      {
        this.a.q.c(paraml);
        if (paramString != null) {
          paramString.a_(false);
        }
        parami.b();
      }
      localq.a_(paramBoolean);
      throw parambp;
      i = 0;
      continue;
      parami.a(this, localq, locali, paramString, paraml);
      paramString = locali;
      paramBoolean = false;
    }
    for (;;)
    {
      label797:
      if (!paramBoolean) {
        if (i != 0) {}
      }
    }
  }
  
  private void a(StringBuilder paramStringBuilder)
  {
    int m = 0;
    Object localObject;
    int i;
    if (!this.c.isEmpty())
    {
      Iterator localIterator = this.c.keySet().iterator();
      int j = 0;
      while (localIterator.hasNext())
      {
        i locali = (i)localIterator.next();
        localObject = "";
        i = j;
        try
        {
          String str = locali.d();
          int k = j;
          i = j;
          localObject = str;
          if (!locali.c.f().a())
          {
            k = j + 1;
            i = k;
            localObject = str;
            paramStringBuilder.append("Unclosed Database: ");
            i = k;
            localObject = str;
            paramStringBuilder.append(str).append("\n");
          }
          i = k;
          localObject = str;
          locali.close();
          j = k;
        }
        catch (RuntimeException localRuntimeException1)
        {
          if (!this.a.j()) {
            throw localRuntimeException1;
          }
          paramStringBuilder.append("\nWhile closing Database ");
          paramStringBuilder.append((String)localObject);
          paramStringBuilder.append(" encountered exception: ");
          paramStringBuilder.append(com.sleepycat.b.p.w.a(localRuntimeException1)).append("\n");
          j = i;
        }
      }
      if (j > 0)
      {
        paramStringBuilder.append("Databases left open: ");
        paramStringBuilder.append(j).append("\n");
      }
    }
    if (this.g == null)
    {
      i = m;
      if (i == 0) {
        break label454;
      }
      paramStringBuilder.append("There ");
      if (i != 1) {
        break label379;
      }
      paramStringBuilder.append("is 1 existing transaction opened");
      paramStringBuilder.append(" against the Environment.\n");
      label279:
      paramStringBuilder.append("Aborting open transactions ...\n");
      localObject = this.g.keySet().iterator();
    }
    for (;;)
    {
      if (!((Iterator)localObject).hasNext()) {
        break label454;
      }
      bp localbp = (bp)((Iterator)localObject).next();
      try
      {
        paramStringBuilder.append("aborting " + localbp);
        localbp.a();
      }
      catch (RuntimeException localRuntimeException2)
      {
        if (this.a.j()) {
          break label413;
        }
      }
      throw localRuntimeException2;
      i = this.g.size();
      break;
      label379:
      paramStringBuilder.append("are ");
      paramStringBuilder.append(i);
      paramStringBuilder.append(" existing transactions opened against");
      paramStringBuilder.append(" the Environment.\n");
      break label279;
      label413:
      paramStringBuilder.append("\nWhile aborting transaction ");
      paramStringBuilder.append(localbp.c);
      paramStringBuilder.append(" encountered exception: ");
      paramStringBuilder.append(localRuntimeException2).append("\n");
    }
    label454:
    if (!f())
    {
      localObject = this.a.y.e.keySet();
      localObject = (a[])((Set)localObject).toArray(new a[((Set)localObject).size()]);
      if ((localObject != null) && (localObject.length > 0))
      {
        paramStringBuilder.append("There ");
        i = localObject.length;
        if (i != 1) {
          break label556;
        }
        paramStringBuilder.append("is 1 existing XA transaction opened");
        paramStringBuilder.append(" in the Environment.\n");
        paramStringBuilder.append("It");
      }
    }
    for (;;)
    {
      paramStringBuilder.append(" will be left open ...\n");
      return;
      label556:
      paramStringBuilder.append("are ");
      paramStringBuilder.append(i);
      paramStringBuilder.append(" existing transactions opened in");
      paramStringBuilder.append(" the Environment.\n");
      paramStringBuilder.append("They");
    }
  }
  
  public final bp a(boolean paramBoolean)
  {
    e();
    g();
    if ((!paramBoolean) && (!this.a.e)) {
      throw new UnsupportedOperationException("Transactions can not be used in a non-transactional environment");
    }
    Object localObject = this.b;
    localObject = new bp(this, com.sleepycat.b.n.z.c(this.a.y.b, (br)localObject));
    this.g.put(localObject, localObject);
    return (bp)localObject;
  }
  
  public final ad a(File paramFile, z paramz, boolean paramBoolean, aw paramaw)
  {
    n localn = n.a();
    z localz = this.f;
    if (paramz != null) {}
    for (boolean bool = true;; bool = false)
    {
      this.a = localn.a(paramFile, localz, bool, paramBoolean, a(paramFile, paramaw, paramz));
      if (this.a != null) {
        this.a.a(this);
      }
      return this.a;
    }
  }
  
  public aw a(File paramFile, aw paramaw, z paramz)
  {
    return null;
  }
  
  public final i a(bp parambp, String paramString, l paraml)
  {
    try
    {
      e();
      g();
      if (paraml == null) {}
      for (;;)
      {
        try
        {
          paraml = l.a;
          i locali = new i(this);
          a(parambp, locali, paramString, paraml, false);
          return locali;
        }
        catch (Error parambp)
        {
          this.a.a(parambp);
          throw parambp;
        }
      }
    }
    finally {}
  }
  
  public final void a()
  {
    try
    {
      StringBuilder localStringBuilder = new StringBuilder();
      a(localStringBuilder);
      if (localStringBuilder.length() > 0) {
        throw new IllegalStateException(localStringBuilder.toString());
      }
    }
    finally {}
  }
  
  final void a(bp parambp)
  {
    this.g.remove(parambp);
  }
  
  public final void a(bp parambp, final String paramString)
  {
    com.sleepycat.b.p.i.a(paramString, "databaseName");
    new y(parambp, paramString, paramString)
    {
      final ab<com.sleepycat.b.c.i, Void> a(q paramAnonymousq)
      {
        return new ab(this.c.a(paramAnonymousq, paramString, null), null);
      }
      
      final void a(q paramAnonymousq, com.sleepycat.b.c.i paramAnonymousi)
      {
        bh.b(paramAnonymousq, paramAnonymousi);
      }
    }.a();
  }
  
  public final bp b()
  {
    try
    {
      bp localbp = a(false);
      return localbp;
    }
    catch (Error localError)
    {
      if (this.a != null) {
        this.a.a(localError);
      }
      throw localError;
    }
  }
  
  public final i b(bp parambp, String paramString, l paraml)
  {
    try
    {
      if ((!d) && (!com.sleepycat.b.c.p.b(paramString))) {
        throw new AssertionError(paramString);
      }
    }
    finally {}
    i locali = new i(this);
    a(parambp, locali, paramString, paraml, true);
    return locali;
  }
  
  public final List<String> c()
  {
    try
    {
      e();
      g();
      com.sleepycat.b.c.p localp = this.a.q;
      ArrayList localArrayList = new ArrayList();
      c.a(localp.f, com.sleepycat.b.n.o.f, true, new p.5(localp, localArrayList));
      return localArrayList;
    }
    catch (Error localError)
    {
      if (this.a != null) {
        this.a.a(localError);
      }
      throw localError;
    }
  }
  
  /* Error */
  public void close()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 47	com/sleepycat/b/x:a	Lcom/sleepycat/b/c/ad;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnonnull +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: getfield 47	com/sleepycat/b/x:a	Lcom/sleepycat/b/c/ad;
    //   18: invokevirtual 378	com/sleepycat/b/c/ad:j	()Z
    //   21: istore_3
    //   22: iload_3
    //   23: ifne +36 -> 59
    //   26: aload_0
    //   27: getfield 47	com/sleepycat/b/x:a	Lcom/sleepycat/b/c/ad;
    //   30: astore_1
    //   31: invokestatic 470	com/sleepycat/b/c/n:a	()Lcom/sleepycat/b/c/n;
    //   34: aload_1
    //   35: invokevirtual 542	com/sleepycat/b/c/n:a	(Lcom/sleepycat/b/c/ad;)V
    //   38: aload_0
    //   39: aconst_null
    //   40: putfield 47	com/sleepycat/b/x:a	Lcom/sleepycat/b/c/ad;
    //   43: goto -32 -> 11
    //   46: astore_1
    //   47: aload_0
    //   48: monitorexit
    //   49: aload_1
    //   50: athrow
    //   51: astore_1
    //   52: aload_0
    //   53: aconst_null
    //   54: putfield 47	com/sleepycat/b/x:a	Lcom/sleepycat/b/c/ad;
    //   57: aload_1
    //   58: athrow
    //   59: new 155	java/lang/StringBuilder
    //   62: dup
    //   63: invokespecial 317	java/lang/StringBuilder:<init>	()V
    //   66: astore_1
    //   67: aload_0
    //   68: aload_1
    //   69: invokespecial 493	com/sleepycat/b/x:a	(Ljava/lang/StringBuilder;)V
    //   72: aload_0
    //   73: getfield 47	com/sleepycat/b/x:a	Lcom/sleepycat/b/c/ad;
    //   76: astore_2
    //   77: invokestatic 470	com/sleepycat/b/c/n:a	()Lcom/sleepycat/b/c/n;
    //   80: aload_2
    //   81: iconst_1
    //   82: iconst_0
    //   83: invokevirtual 545	com/sleepycat/b/c/n:a	(Lcom/sleepycat/b/c/ad;ZZ)V
    //   86: aload_1
    //   87: invokevirtual 496	java/lang/StringBuilder:length	()I
    //   90: ifle +59 -> 149
    //   93: new 498	java/lang/IllegalStateException
    //   96: dup
    //   97: aload_1
    //   98: invokevirtual 173	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   101: invokespecial 499	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   104: athrow
    //   105: astore_1
    //   106: aload_0
    //   107: aconst_null
    //   108: putfield 47	com/sleepycat/b/x:a	Lcom/sleepycat/b/c/ad;
    //   111: aload_1
    //   112: athrow
    //   113: astore_2
    //   114: aload_0
    //   115: getfield 47	com/sleepycat/b/x:a	Lcom/sleepycat/b/c/ad;
    //   118: invokevirtual 378	com/sleepycat/b/c/ad:j	()Z
    //   121: ifne +5 -> 126
    //   124: aload_2
    //   125: athrow
    //   126: aload_1
    //   127: ldc_w 547
    //   130: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   133: pop
    //   134: aload_1
    //   135: aload_2
    //   136: invokevirtual 169	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   139: ldc_w 373
    //   142: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   145: pop
    //   146: goto -60 -> 86
    //   149: aload_0
    //   150: aconst_null
    //   151: putfield 47	com/sleepycat/b/x:a	Lcom/sleepycat/b/c/ad;
    //   154: goto -143 -> 11
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	157	0	this	x
    //   6	29	1	localad1	ad
    //   46	4	1	localObject1	Object
    //   51	7	1	localObject2	Object
    //   66	32	1	localStringBuilder	StringBuilder
    //   105	30	1	localObject3	Object
    //   76	5	2	localad2	ad
    //   113	23	2	localRuntimeException	RuntimeException
    //   21	2	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	46	finally
    //   14	22	46	finally
    //   38	43	46	finally
    //   52	59	46	finally
    //   59	67	46	finally
    //   106	113	46	finally
    //   149	154	46	finally
    //   26	38	51	finally
    //   67	72	105	finally
    //   72	86	105	finally
    //   86	105	105	finally
    //   114	126	105	finally
    //   126	146	105	finally
    //   72	86	113	java/lang/RuntimeException
  }
  
  public final bp d()
  {
    e();
    g();
    try
    {
      bp localbp = (bp)this.a.y.f.get(Thread.currentThread());
      return localbp;
    }
    catch (Error localError)
    {
      if (this.a != null) {
        this.a.a(localError);
      }
      throw localError;
    }
  }
  
  public final void e()
  {
    if (this.a == null) {
      throw new IllegalStateException("Attempt to use non-open Environment object().");
    }
  }
  
  public boolean f()
  {
    return false;
  }
  
  public final void g()
  {
    if (this.a == null) {}
    do
    {
      return;
      this.a.n();
    } while (this.a.a != com.sleepycat.b.c.o.c);
    throw new IllegalStateException("Attempt to use a Environment that has been closed.");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */