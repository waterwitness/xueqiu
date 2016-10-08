package com.xiaomi.push.service;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

public final class bb
{
  private static bb a;
  private ConcurrentHashMap<String, HashMap<String, bd>> b = new ConcurrentHashMap();
  private List<bc> c = new ArrayList();
  
  public static bb a()
  {
    try
    {
      if (a == null) {
        a = new bb();
      }
      bb localbb = a;
      return localbb;
    }
    finally {}
  }
  
  private static String d(String paramString)
  {
    String str;
    if (TextUtils.isEmpty(paramString)) {
      str = null;
    }
    int i;
    do
    {
      return str;
      i = paramString.indexOf("@");
      str = paramString;
    } while (i <= 0);
    return paramString.substring(0, i);
  }
  
  public final void a(int paramInt)
  {
    try
    {
      Iterator localIterator1 = this.b.values().iterator();
      while (localIterator1.hasNext())
      {
        Iterator localIterator2 = ((HashMap)localIterator1.next()).values().iterator();
        while (localIterator2.hasNext()) {
          ((bd)localIterator2.next()).a(bf.a, 2, paramInt, null, null);
        }
      }
    }
    finally {}
  }
  
  public final void a(bc parambc)
  {
    try
    {
      this.c.add(parambc);
      return;
    }
    finally
    {
      parambc = finally;
      throw parambc;
    }
  }
  
  public final void a(bd parambd)
  {
    try
    {
      HashMap localHashMap2 = (HashMap)this.b.get(parambd.h);
      HashMap localHashMap1 = localHashMap2;
      if (localHashMap2 == null)
      {
        localHashMap1 = new HashMap();
        this.b.put(parambd.h, localHashMap1);
      }
      localHashMap1.put(d(parambd.b), parambd);
      parambd = this.c.iterator();
      while (parambd.hasNext()) {
        ((bc)parambd.next()).a();
      }
    }
    finally {}
  }
  
  public final void a(String paramString)
  {
    try
    {
      HashMap localHashMap = (HashMap)this.b.get(paramString);
      if (localHashMap != null)
      {
        localHashMap.clear();
        this.b.remove(paramString);
      }
      paramString = this.c.iterator();
      while (paramString.hasNext()) {
        ((bc)paramString.next()).a();
      }
    }
    finally {}
  }
  
  public final void a(String paramString1, String paramString2)
  {
    try
    {
      HashMap localHashMap = (HashMap)this.b.get(paramString1);
      if (localHashMap != null)
      {
        localHashMap.remove(d(paramString2));
        if (localHashMap.isEmpty()) {
          this.b.remove(paramString1);
        }
      }
      paramString1 = this.c.iterator();
      while (paramString1.hasNext()) {
        ((bc)paramString1.next()).a();
      }
    }
    finally {}
  }
  
  /* Error */
  public final bd b(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 21	com/xiaomi/push/service/bb:b	Ljava/util/concurrent/ConcurrentHashMap;
    //   6: aload_1
    //   7: invokevirtual 101	java/util/concurrent/ConcurrentHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   10: checkcast 74	java/util/HashMap
    //   13: astore_1
    //   14: aload_1
    //   15: ifnonnull +9 -> 24
    //   18: aconst_null
    //   19: astore_1
    //   20: aload_0
    //   21: monitorexit
    //   22: aload_1
    //   23: areturn
    //   24: aload_1
    //   25: aload_2
    //   26: invokestatic 110	com/xiaomi/push/service/bb:d	(Ljava/lang/String;)Ljava/lang/String;
    //   29: invokevirtual 129	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   32: checkcast 77	com/xiaomi/push/service/bd
    //   35: astore_1
    //   36: goto -16 -> 20
    //   39: astore_1
    //   40: aload_0
    //   41: monitorexit
    //   42: aload_1
    //   43: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	44	0	this	bb
    //   0	44	1	paramString1	String
    //   0	44	2	paramString2	String
    // Exception table:
    //   from	to	target	type
    //   2	14	39	finally
    //   24	36	39	finally
  }
  
  public final ArrayList<bd> b()
  {
    try
    {
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = this.b.values().iterator();
      while (localIterator.hasNext()) {
        localArrayList.addAll(((HashMap)localIterator.next()).values());
      }
    }
    finally {}
    return localArrayList1;
  }
  
  public final List<String> b(String paramString)
  {
    ArrayList localArrayList;
    try
    {
      localArrayList = new ArrayList();
      Iterator localIterator1 = this.b.values().iterator();
      while (localIterator1.hasNext())
      {
        Iterator localIterator2 = ((HashMap)localIterator1.next()).values().iterator();
        while (localIterator2.hasNext())
        {
          bd localbd = (bd)localIterator2.next();
          if (paramString.equals(localbd.a)) {
            localArrayList.add(localbd.h);
          }
        }
      }
    }
    finally {}
    return localArrayList;
  }
  
  public final int c()
  {
    try
    {
      int i = this.b.size();
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public final Collection<bd> c(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 21	com/xiaomi/push/service/bb:b	Ljava/util/concurrent/ConcurrentHashMap;
    //   6: aload_1
    //   7: invokevirtual 151	java/util/concurrent/ConcurrentHashMap:containsKey	(Ljava/lang/Object;)Z
    //   10: ifne +15 -> 25
    //   13: new 23	java/util/ArrayList
    //   16: dup
    //   17: invokespecial 24	java/util/ArrayList:<init>	()V
    //   20: astore_1
    //   21: aload_0
    //   22: monitorexit
    //   23: aload_1
    //   24: areturn
    //   25: aload_0
    //   26: getfield 21	com/xiaomi/push/service/bb:b	Ljava/util/concurrent/ConcurrentHashMap;
    //   29: aload_1
    //   30: invokevirtual 101	java/util/concurrent/ConcurrentHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   33: checkcast 74	java/util/HashMap
    //   36: invokevirtual 154	java/util/HashMap:clone	()Ljava/lang/Object;
    //   39: checkcast 74	java/util/HashMap
    //   42: invokevirtual 75	java/util/HashMap:values	()Ljava/util/Collection;
    //   45: astore_1
    //   46: goto -25 -> 21
    //   49: astore_1
    //   50: aload_0
    //   51: monitorexit
    //   52: aload_1
    //   53: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	54	0	this	bb
    //   0	54	1	paramString	String
    // Exception table:
    //   from	to	target	type
    //   2	21	49	finally
    //   25	46	49	finally
  }
  
  public final void d()
  {
    try
    {
      this.b.clear();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void e()
  {
    try
    {
      Iterator localIterator1 = this.b.values().iterator();
      while (localIterator1.hasNext())
      {
        Iterator localIterator2 = ((HashMap)localIterator1.next()).values().iterator();
        while (localIterator2.hasNext()) {
          ((bd)localIterator2.next()).a(bf.a, 1, 3, null, null);
        }
      }
    }
    finally {}
  }
  
  public final void f()
  {
    try
    {
      this.c.clear();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\service\bb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */