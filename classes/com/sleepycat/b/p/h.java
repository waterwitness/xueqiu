package com.sleepycat.b.p;

import com.sleepycat.b.aa;
import com.sleepycat.b.c.ac;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.q;
import java.util.logging.Logger;

public abstract class h
  implements Runnable
{
  public static boolean n;
  private volatile long a;
  private final Object b = new Object();
  private Thread c;
  private volatile boolean d = false;
  protected String l;
  protected int m;
  public volatile boolean o = false;
  public boolean p = false;
  public final ad q;
  public final Logger r;
  
  static
  {
    if (!h.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      s = bool;
      n = false;
      return;
    }
  }
  
  public h(long paramLong, String paramString, ad paramad)
  {
    this.a = paramLong;
    String str = paramad.af;
    if (str == null) {}
    for (this.l = paramString;; this.l = (paramString + " (" + str + ")"))
    {
      this.q = paramad;
      this.r = w.a(getClass());
      return;
    }
  }
  
  private void a(Exception paramException)
  {
    if (this.q == null) {}
    while (this.q.H == null) {
      return;
    }
    q.a(paramException, this.l);
  }
  
  private boolean a(Throwable paramThrowable)
  {
    if (Boolean.getBoolean("setErrorListener"))
    {
      if (!n) {
        this.r.severe(this.l + " " + w.a(paramThrowable));
      }
      new aa(this.q, ac.w, "Daemon thread failed during testing", paramThrowable);
    }
    return true;
  }
  
  public long a()
  {
    return 0L;
  }
  
  public final void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.o = false;
      if (this.c != null)
      {
        f();
        return;
      }
      this.c = new Thread(this, this.l);
      this.c.setDaemon(true);
      this.c.start();
      return;
    }
    this.o = true;
  }
  
  public abstract void b();
  
  public void c_()
  {
    this.d = true;
  }
  
  public final void e()
  {
    if (this.c != null)
    {
      this.d = true;
      while (this.c.isAlive()) {
        synchronized (this.b)
        {
          this.b.notifyAll();
          try
          {
            this.c.join(10L);
          }
          catch (InterruptedException localInterruptedException) {}
        }
      }
      this.c = null;
    }
  }
  
  public final void f()
  {
    if (!this.o) {
      synchronized (this.b)
      {
        this.b.notifyAll();
        return;
      }
    }
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 47	com/sleepycat/b/p/h:d	Z
    //   4: ifne +361 -> 365
    //   7: aload_0
    //   8: invokevirtual 174	com/sleepycat/b/p/h:a	()J
    //   11: lstore 7
    //   13: iconst_0
    //   14: istore 6
    //   16: iload 6
    //   18: i2l
    //   19: lload 7
    //   21: lcmp
    //   22: ifgt +45 -> 67
    //   25: aload_0
    //   26: getfield 47	com/sleepycat/b/p/h:d	Z
    //   29: ifne +38 -> 67
    //   32: aload_0
    //   33: getfield 49	com/sleepycat/b/p/h:o	Z
    //   36: istore 9
    //   38: iload 9
    //   40: ifne +27 -> 67
    //   43: aload_0
    //   44: aload_0
    //   45: getfield 176	com/sleepycat/b/p/h:m	I
    //   48: iconst_1
    //   49: iadd
    //   50: putfield 176	com/sleepycat/b/p/h:m	I
    //   53: aload_0
    //   54: iconst_1
    //   55: putfield 51	com/sleepycat/b/p/h:p	Z
    //   58: aload_0
    //   59: invokevirtual 178	com/sleepycat/b/p/h:b	()V
    //   62: aload_0
    //   63: iconst_0
    //   64: putfield 51	com/sleepycat/b/p/h:p	Z
    //   67: aload_0
    //   68: getfield 47	com/sleepycat/b/p/h:d	Z
    //   71: ifne -71 -> 0
    //   74: aload_0
    //   75: getfield 45	com/sleepycat/b/p/h:b	Ljava/lang/Object;
    //   78: astore_1
    //   79: aload_1
    //   80: monitorenter
    //   81: aload_0
    //   82: getfield 53	com/sleepycat/b/p/h:a	J
    //   85: lconst_0
    //   86: lcmp
    //   87: ifeq +10 -> 97
    //   90: aload_0
    //   91: getfield 49	com/sleepycat/b/p/h:o	Z
    //   94: ifeq +195 -> 289
    //   97: aload_0
    //   98: getfield 45	com/sleepycat/b/p/h:b	Ljava/lang/Object;
    //   101: invokevirtual 181	java/lang/Object:wait	()V
    //   104: aload_1
    //   105: monitorexit
    //   106: goto -106 -> 0
    //   109: astore_2
    //   110: aload_1
    //   111: monitorexit
    //   112: aload_2
    //   113: athrow
    //   114: astore_1
    //   115: aload_0
    //   116: aload_1
    //   117: invokespecial 183	com/sleepycat/b/p/h:a	(Ljava/lang/Exception;)V
    //   120: getstatic 38	com/sleepycat/b/p/h:n	Z
    //   123: ifne +35 -> 158
    //   126: aload_0
    //   127: getfield 73	com/sleepycat/b/p/h:r	Ljava/util/logging/Logger;
    //   130: new 75	java/lang/StringBuilder
    //   133: dup
    //   134: ldc -71
    //   136: invokespecial 187	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   139: aload_0
    //   140: invokevirtual 190	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   143: ldc -64
    //   145: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   148: aload_1
    //   149: invokevirtual 190	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   152: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   155: invokevirtual 195	java/util/logging/Logger:info	(Ljava/lang/String;)V
    //   158: aload_0
    //   159: iconst_1
    //   160: putfield 47	com/sleepycat/b/p/h:d	Z
    //   163: getstatic 36	com/sleepycat/b/p/h:s	Z
    //   166: ifne -166 -> 0
    //   169: aload_0
    //   170: aload_1
    //   171: invokespecial 197	com/sleepycat/b/p/h:a	(Ljava/lang/Throwable;)Z
    //   174: pop
    //   175: goto -175 -> 0
    //   178: astore_1
    //   179: aload_0
    //   180: iconst_0
    //   181: putfield 51	com/sleepycat/b/p/h:p	Z
    //   184: aload_1
    //   185: athrow
    //   186: astore_2
    //   187: aload_0
    //   188: aload_2
    //   189: invokespecial 183	com/sleepycat/b/p/h:a	(Ljava/lang/Exception;)V
    //   192: getstatic 38	com/sleepycat/b/p/h:n	Z
    //   195: ifne +64 -> 259
    //   198: aload_0
    //   199: getfield 73	com/sleepycat/b/p/h:r	Ljava/util/logging/Logger;
    //   202: astore_3
    //   203: getstatic 203	java/util/logging/Level:SEVERE	Ljava/util/logging/Level;
    //   206: astore 4
    //   208: new 75	java/lang/StringBuilder
    //   211: dup
    //   212: invokespecial 76	java/lang/StringBuilder:<init>	()V
    //   215: aload_0
    //   216: invokevirtual 204	com/sleepycat/b/p/h:toString	()Ljava/lang/String;
    //   219: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   222: ldc -50
    //   224: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   227: aload_2
    //   228: invokevirtual 190	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   231: astore 5
    //   233: aload_0
    //   234: getfield 47	com/sleepycat/b/p/h:d	Z
    //   237: ifeq +66 -> 303
    //   240: ldc -48
    //   242: astore_1
    //   243: aload_3
    //   244: aload 4
    //   246: aload 5
    //   248: aload_1
    //   249: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   252: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   255: aload_2
    //   256: invokevirtual 212	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   259: getstatic 36	com/sleepycat/b/p/h:s	Z
    //   262: ifne -262 -> 0
    //   265: aload_0
    //   266: aload_2
    //   267: invokespecial 197	com/sleepycat/b/p/h:a	(Ljava/lang/Throwable;)Z
    //   270: pop
    //   271: goto -271 -> 0
    //   274: astore_1
    //   275: aload_0
    //   276: iconst_0
    //   277: putfield 51	com/sleepycat/b/p/h:p	Z
    //   280: iload 6
    //   282: iconst_1
    //   283: iadd
    //   284: istore 6
    //   286: goto -270 -> 16
    //   289: aload_0
    //   290: getfield 45	com/sleepycat/b/p/h:b	Ljava/lang/Object;
    //   293: aload_0
    //   294: getfield 53	com/sleepycat/b/p/h:a	J
    //   297: invokevirtual 214	java/lang/Object:wait	(J)V
    //   300: goto -196 -> 104
    //   303: ldc -40
    //   305: astore_1
    //   306: goto -63 -> 243
    //   309: astore_1
    //   310: getstatic 36	com/sleepycat/b/p/h:s	Z
    //   313: ifne +9 -> 322
    //   316: aload_0
    //   317: aload_1
    //   318: invokespecial 197	com/sleepycat/b/p/h:a	(Ljava/lang/Throwable;)Z
    //   321: pop
    //   322: aload_0
    //   323: getfield 62	com/sleepycat/b/p/h:q	Lcom/sleepycat/b/c/ad;
    //   326: aload_1
    //   327: invokevirtual 219	com/sleepycat/b/c/ad:a	(Ljava/lang/Error;)V
    //   330: aload_0
    //   331: iconst_1
    //   332: putfield 47	com/sleepycat/b/p/h:d	Z
    //   335: aload_0
    //   336: getfield 73	com/sleepycat/b/p/h:r	Ljava/util/logging/Logger;
    //   339: getstatic 203	java/util/logging/Level:SEVERE	Ljava/util/logging/Level;
    //   342: new 75	java/lang/StringBuilder
    //   345: dup
    //   346: ldc -35
    //   348: invokespecial 187	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   351: aload_0
    //   352: invokevirtual 190	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   355: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   358: aload_1
    //   359: invokevirtual 212	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   362: goto -362 -> 0
    //   365: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	366	0	this	h
    //   78	33	1	localObject1	Object
    //   114	57	1	localInterruptedException	InterruptedException
    //   178	7	1	localObject2	Object
    //   242	7	1	str1	String
    //   274	1	1	localan	com.sleepycat.b.an
    //   305	1	1	str2	String
    //   309	50	1	localError	Error
    //   109	4	2	localObject3	Object
    //   186	81	2	localException	Exception
    //   202	42	3	localLogger	Logger
    //   206	39	4	localLevel	java.util.logging.Level
    //   231	16	5	localStringBuilder	StringBuilder
    //   14	271	6	i	int
    //   11	9	7	l1	long
    //   36	3	9	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   81	97	109	finally
    //   97	104	109	finally
    //   104	106	109	finally
    //   110	112	109	finally
    //   289	300	109	finally
    //   7	13	114	java/lang/InterruptedException
    //   25	38	114	java/lang/InterruptedException
    //   62	67	114	java/lang/InterruptedException
    //   67	81	114	java/lang/InterruptedException
    //   112	114	114	java/lang/InterruptedException
    //   179	186	114	java/lang/InterruptedException
    //   275	280	114	java/lang/InterruptedException
    //   43	62	178	finally
    //   7	13	186	java/lang/Exception
    //   25	38	186	java/lang/Exception
    //   62	67	186	java/lang/Exception
    //   67	81	186	java/lang/Exception
    //   112	114	186	java/lang/Exception
    //   179	186	186	java/lang/Exception
    //   275	280	186	java/lang/Exception
    //   43	62	274	com/sleepycat/b/an
    //   7	13	309	java/lang/Error
    //   25	38	309	java/lang/Error
    //   62	67	309	java/lang/Error
    //   67	81	309	java/lang/Error
    //   112	114	309	java/lang/Error
    //   179	186	309	java/lang/Error
    //   275	280	309	java/lang/Error
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("<DaemonThread name=\"").append(this.l).append("\"/>");
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\p\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */