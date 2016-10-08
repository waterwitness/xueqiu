package com.flurry.sdk;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class ki
{
  private static final String a = ki.class.getSimpleName();
  private static final Map<Class<? extends kj>, kh> b = new LinkedHashMap();
  private final Map<Class<? extends kj>, kj> c = new LinkedHashMap();
  
  public static void a(Class<? extends kj> paramClass, int paramInt)
  {
    if (paramClass == null) {
      return;
    }
    synchronized (b)
    {
      b.put(paramClass, new kh(paramClass, paramInt));
      return;
    }
  }
  
  private List<kj> b()
  {
    ArrayList localArrayList = new ArrayList();
    synchronized (this.c)
    {
      localArrayList.addAll(this.c.values());
      return localArrayList;
    }
  }
  
  public final kj a(Class<? extends kj> paramClass)
  {
    if (paramClass == null) {
      ??? = null;
    }
    for (;;)
    {
      return (kj)???;
      synchronized (this.c)
      {
        kj localkj = (kj)this.c.get(paramClass);
        ??? = localkj;
        if (localkj != null) {
          continue;
        }
        throw new IllegalStateException("Module was not registered/initialized. " + paramClass);
      }
    }
  }
  
  public final void a()
  {
    try
    {
      jw.b();
      lh.b();
      List localList = b();
      int i = localList.size();
      i -= 1;
      for (;;)
      {
        if (i >= 0) {
          try
          {
            ((kj)this.c.remove(((kj)localList.get(i)).getClass())).b();
            i -= 1;
          }
          catch (Exception localException)
          {
            for (;;)
            {
              kg.a(5, a, "Error destroying module:", localException);
            }
          }
        }
      }
    }
    finally {}
  }
  
  /* Error */
  public final void a(android.content.Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnonnull +15 -> 18
    //   6: iconst_5
    //   7: getstatic 21	com/flurry/sdk/ki:a	Ljava/lang/String;
    //   10: ldc 121
    //   12: invokestatic 124	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   15: aload_0
    //   16: monitorexit
    //   17: return
    //   18: getstatic 28	com/flurry/sdk/ki:b	Ljava/util/Map;
    //   21: astore_2
    //   22: aload_2
    //   23: monitorenter
    //   24: new 48	java/util/ArrayList
    //   27: dup
    //   28: getstatic 28	com/flurry/sdk/ki:b	Ljava/util/Map;
    //   31: invokeinterface 53 1 0
    //   36: invokespecial 127	java/util/ArrayList:<init>	(Ljava/util/Collection;)V
    //   39: astore_3
    //   40: aload_2
    //   41: monitorexit
    //   42: aload_3
    //   43: invokeinterface 131 1 0
    //   48: astore_2
    //   49: aload_2
    //   50: invokeinterface 137 1 0
    //   55: ifeq +107 -> 162
    //   58: aload_2
    //   59: invokeinterface 141 1 0
    //   64: checkcast 35	com/flurry/sdk/kh
    //   67: astore_3
    //   68: aload_3
    //   69: invokevirtual 143	com/flurry/sdk/kh:b	()Z
    //   72: ifeq -23 -> 49
    //   75: aload_3
    //   76: invokevirtual 145	com/flurry/sdk/kh:a	()Ljava/lang/Class;
    //   79: invokevirtual 148	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   82: checkcast 67	com/flurry/sdk/kj
    //   85: astore 4
    //   87: aload 4
    //   89: aload_1
    //   90: invokeinterface 150 2 0
    //   95: aload_0
    //   96: getfield 32	com/flurry/sdk/ki:c	Ljava/util/Map;
    //   99: aload_3
    //   100: invokevirtual 145	com/flurry/sdk/kh:a	()Ljava/lang/Class;
    //   103: aload 4
    //   105: invokeinterface 43 3 0
    //   110: pop
    //   111: goto -62 -> 49
    //   114: astore 4
    //   116: iconst_5
    //   117: getstatic 21	com/flurry/sdk/ki:a	Ljava/lang/String;
    //   120: new 71	java/lang/StringBuilder
    //   123: dup
    //   124: ldc -104
    //   126: invokespecial 76	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   129: aload_3
    //   130: invokevirtual 145	com/flurry/sdk/kh:a	()Ljava/lang/Class;
    //   133: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   136: ldc -102
    //   138: invokevirtual 157	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: invokevirtual 83	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   144: aload 4
    //   146: invokestatic 118	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   149: goto -100 -> 49
    //   152: astore_1
    //   153: aload_0
    //   154: monitorexit
    //   155: aload_1
    //   156: athrow
    //   157: astore_1
    //   158: aload_2
    //   159: monitorexit
    //   160: aload_1
    //   161: athrow
    //   162: invokestatic 160	com/flurry/sdk/lh:a	()Lcom/flurry/sdk/lh;
    //   165: aload_1
    //   166: invokevirtual 161	com/flurry/sdk/lh:a	(Landroid/content/Context;)V
    //   169: invokestatic 164	com/flurry/sdk/jw:a	()Lcom/flurry/sdk/jw;
    //   172: pop
    //   173: goto -158 -> 15
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	176	0	this	ki
    //   0	176	1	paramContext	android.content.Context
    //   39	91	3	localObject2	Object
    //   85	19	4	localkj	kj
    //   114	31	4	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   68	111	114	java/lang/Exception
    //   6	15	152	finally
    //   18	24	152	finally
    //   42	49	152	finally
    //   49	68	152	finally
    //   68	111	152	finally
    //   116	149	152	finally
    //   160	162	152	finally
    //   162	173	152	finally
    //   24	42	157	finally
    //   158	160	157	finally
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\ki.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */