package com.xiaomi.f;

import com.xiaomi.a.a.b.c;
import com.xiaomi.e.t;
import com.xiaomi.g.a.an;
import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.service.bd;
import java.net.UnknownHostException;
import java.util.Hashtable;

public final class j
{
  private static final int a = com.xiaomi.push.d.a.c.ac;
  
  public static void a()
  {
    a(a);
  }
  
  public static void a(int paramInt)
  {
    if (paramInt < 16777215) {}
    for (;;)
    {
      try
      {
        k.a.put(Integer.valueOf(paramInt | 0x0), Long.valueOf(System.currentTimeMillis()));
        return;
      }
      finally {}
      c.d("stats key should less than 16777215");
    }
  }
  
  /* Error */
  public static void a(int paramInt1, String paramString, int paramInt2)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: invokestatic 41	java/lang/System:currentTimeMillis	()J
    //   6: lstore 5
    //   8: iload_0
    //   9: iconst_0
    //   10: ior
    //   11: istore 4
    //   13: getstatic 29	com/xiaomi/f/k:a	Ljava/util/Hashtable;
    //   16: iload 4
    //   18: invokestatic 35	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   21: invokevirtual 65	java/util/Hashtable:containsKey	(Ljava/lang/Object;)Z
    //   24: ifeq +79 -> 103
    //   27: getstatic 70	com/xiaomi/f/h:a	Lcom/xiaomi/f/g;
    //   30: invokevirtual 76	com/xiaomi/f/g:b	()Lcom/xiaomi/push/d/b;
    //   33: astore_3
    //   34: aload_3
    //   35: iload_0
    //   36: invokevirtual 81	com/xiaomi/push/d/b:a	(I)Lcom/xiaomi/push/d/b;
    //   39: pop
    //   40: aload_3
    //   41: lload 5
    //   43: getstatic 29	com/xiaomi/f/k:a	Ljava/util/Hashtable;
    //   46: iload 4
    //   48: invokestatic 35	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   51: invokevirtual 85	java/util/Hashtable:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   54: checkcast 43	java/lang/Long
    //   57: invokevirtual 88	java/lang/Long:longValue	()J
    //   60: lsub
    //   61: l2i
    //   62: invokevirtual 90	com/xiaomi/push/d/b:b	(I)Lcom/xiaomi/push/d/b;
    //   65: pop
    //   66: aload_3
    //   67: aload_1
    //   68: putfield 94	com/xiaomi/push/d/b:e	Ljava/lang/String;
    //   71: iload_2
    //   72: iflt +9 -> 81
    //   75: aload_3
    //   76: iload_2
    //   77: invokevirtual 96	com/xiaomi/push/d/b:c	(I)Lcom/xiaomi/push/d/b;
    //   80: pop
    //   81: getstatic 70	com/xiaomi/f/h:a	Lcom/xiaomi/f/g;
    //   84: aload_3
    //   85: invokevirtual 99	com/xiaomi/f/g:a	(Lcom/xiaomi/push/d/b;)V
    //   88: getstatic 29	com/xiaomi/f/k:a	Ljava/util/Hashtable;
    //   91: iload_0
    //   92: invokestatic 35	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   95: invokevirtual 102	java/util/Hashtable:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   98: pop
    //   99: ldc 2
    //   101: monitorexit
    //   102: return
    //   103: ldc 104
    //   105: invokestatic 60	com/xiaomi/a/a/b/c:d	(Ljava/lang/String;)V
    //   108: goto -9 -> 99
    //   111: astore_1
    //   112: ldc 2
    //   114: monitorexit
    //   115: aload_1
    //   116: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	117	0	paramInt1	int
    //   0	117	1	paramString	String
    //   0	117	2	paramInt2	int
    //   33	52	3	localb	com.xiaomi.push.d.b
    //   11	36	4	i	int
    //   6	36	5	l	long
    // Exception table:
    //   from	to	target	type
    //   3	8	111	finally
    //   13	71	111	finally
    //   75	81	111	finally
    //   81	99	111	finally
    //   103	108	111	finally
  }
  
  public static void a(XMPushService paramXMPushService, bd parambd)
  {
    paramXMPushService = new a(paramXMPushService, parambd);
    paramXMPushService.b.a(paramXMPushService);
    paramXMPushService.c = paramXMPushService.a.a;
  }
  
  public static void a(String paramString, int paramInt, Exception paramException)
  {
    com.xiaomi.push.d.b localb = h.a.b();
    if (paramInt > 0)
    {
      localb.a(com.xiaomi.push.d.a.h.ac);
      localb.e = paramString;
      localb.b(paramInt);
      h.a.a(localb);
      return;
    }
    try
    {
      d.a(paramException);
      Object localObject = paramException;
      if ((paramException instanceof t))
      {
        localObject = paramException;
        if (((t)paramException).a != null) {
          localObject = ((t)paramException).a;
        }
      }
      e locale = new e();
      paramException = ((Throwable)localObject).getMessage();
      if (((Throwable)localObject).getCause() != null) {
        paramException = ((Throwable)localObject).getCause().getMessage();
      }
      paramException = localObject.getClass().getSimpleName() + ":" + paramException;
      paramInt = com.xiaomi.e.d.a((Throwable)localObject);
      if (paramInt != 0) {
        locale.a = com.xiaomi.push.d.a.a(paramInt + com.xiaomi.push.d.a.h.ac);
      }
      if (locale.a == null) {
        locale.a = com.xiaomi.push.d.a.p;
      }
      if (locale.a == com.xiaomi.push.d.a.p) {
        locale.b = paramException;
      }
      localb.a(locale.a.ac);
      localb.g = locale.b;
      localb.e = paramString;
      h.a.a(localb);
      return;
    }
    catch (NullPointerException paramString) {}
  }
  
  public static void a(String paramString, Exception paramException)
  {
    try
    {
      d.a(paramException);
      Object localObject = paramException;
      if ((paramException instanceof t))
      {
        localObject = paramException;
        if (((t)paramException).a != null) {
          localObject = ((t)paramException).a;
        }
      }
      e locale = new e();
      paramException = ((Throwable)localObject).getMessage();
      if (((Throwable)localObject).getCause() != null) {
        paramException = ((Throwable)localObject).getCause().getMessage();
      }
      int i = com.xiaomi.e.d.a((Throwable)localObject);
      paramException = localObject.getClass().getSimpleName() + ":" + paramException;
      if (i != 0)
      {
        locale.a = com.xiaomi.push.d.a.a(i + com.xiaomi.push.d.a.r.ac);
        if (locale.a == com.xiaomi.push.d.a.C)
        {
          localObject = ((Throwable)localObject).getCause();
          if ((localObject == null) || (!(localObject instanceof UnknownHostException))) {}
        }
      }
      for (locale.a = com.xiaomi.push.d.a.B;; locale.a = com.xiaomi.push.d.a.A)
      {
        if ((locale.a == com.xiaomi.push.d.a.z) || (locale.a == com.xiaomi.push.d.a.A) || (locale.a == com.xiaomi.push.d.a.C)) {
          locale.b = paramException;
        }
        paramException = h.a.b();
        paramException.a(locale.a.ac);
        paramException.g = locale.b;
        paramException.e = paramString;
        h.a.a(paramException);
        return;
      }
      return;
    }
    catch (NullPointerException paramString) {}
  }
  
  public static void b()
  {
    a(a, null, -1);
  }
  
  public static void b(int paramInt)
  {
    com.xiaomi.push.d.b localb = h.a.b();
    localb.a(com.xiaomi.push.d.a.ab.ac);
    localb.c(paramInt);
    h.a.a(localb);
  }
  
  public static void b(int paramInt1, String paramString, int paramInt2)
  {
    com.xiaomi.push.d.b localb = h.a.b();
    localb.a((byte)0);
    localb.a(paramInt1);
    localb.b(1);
    localb.e = paramString;
    localb.c(paramInt2);
    h.a.a(localb);
  }
  
  public static void b(String paramString, Exception paramException)
  {
    try
    {
      d.a(paramException);
      Object localObject = paramException;
      if ((paramException instanceof t))
      {
        localObject = paramException;
        if (((t)paramException).a != null) {
          localObject = ((t)paramException).a;
        }
      }
      paramException = new e();
      String str = ((Throwable)localObject).getMessage();
      int i = com.xiaomi.e.d.a((Throwable)localObject);
      localObject = localObject.getClass().getSimpleName() + ":" + str;
      switch (i)
      {
      }
      for (;;)
      {
        paramException.a = com.xiaomi.push.d.a.X;
        for (;;)
        {
          if ((paramException.a == com.xiaomi.push.d.a.W) || (paramException.a == com.xiaomi.push.d.a.X) || (paramException.a == com.xiaomi.push.d.a.Z)) {
            paramException.b = ((String)localObject);
          }
          localObject = h.a.b();
          ((com.xiaomi.push.d.b)localObject).a(paramException.a.ac);
          ((com.xiaomi.push.d.b)localObject).g = paramException.b;
          ((com.xiaomi.push.d.b)localObject).e = paramString;
          h.a.a((com.xiaomi.push.d.b)localObject);
          return;
          paramException.a = com.xiaomi.push.d.a.T;
          continue;
          paramException.a = com.xiaomi.push.d.a.U;
          continue;
          paramException.a = com.xiaomi.push.d.a.V;
          continue;
          paramException.a = com.xiaomi.push.d.a.W;
          continue;
          paramException.a = com.xiaomi.push.d.a.Z;
          if (str.startsWith("Terminal binding condition encountered: item-not-found")) {
            paramException.a = com.xiaomi.push.d.a.Y;
          }
        }
      }
      return;
    }
    catch (NullPointerException paramString) {}
  }
  
  public static String c()
  {
    Object localObject2 = null;
    Object localObject3 = h.a.a();
    Object localObject1 = localObject2;
    if (localObject3 != null)
    {
      localObject3 = an.a((org.apache.a.b)localObject3);
      localObject1 = localObject2;
      if (localObject3 != null)
      {
        localObject1 = new String(com.xiaomi.a.a.f.a.a((byte[])localObject3));
        c.a("stat encoded size = " + ((String)localObject1).length());
        c.c((String)localObject1);
      }
    }
    return (String)localObject1;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\f\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */