package com.tencent.bugly.proguard;

import android.content.Context;
import android.os.Process;
import android.util.Base64;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;

public final class t
{
  private static t a = null;
  private final o b;
  private final Context c;
  private Map<Integer, Long> d = new HashMap();
  private LinkedBlockingQueue<Runnable> e = new LinkedBlockingQueue();
  private final Object f = new Object();
  private String g = null;
  private byte[] h = null;
  private long i = 0L;
  private byte[] j = null;
  private long k = 0L;
  private String l = null;
  private long m = 0L;
  private final Object n = new Object();
  private boolean o = false;
  private final Object p = new Object();
  private boolean q = true;
  
  private t(Context paramContext)
  {
    this.c = paramContext;
    this.b = o.a();
    try
    {
      Class.forName("android.util.Base64");
      if (this.q)
      {
        paramContext = new StringBuilder();
        paramContext.append("MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDP9x32s5pPtZBXzJBz2GWM/sbTvVO2+RvW0PH01IdaBxc/fB6fbHZocC9T3nl1+J5eAFjIRVuV8vHDky7Qo82Mnh0PVvcZIEQvMMVKU8dsMQopxgsOs2gkSHJwgWdinKNS8CmWobo6pFwPUW11lMv714jAUZRq2GBOqiO2vQI6iwIDAQAB");
        this.g = paramContext.toString();
      }
      return;
    }
    catch (ClassNotFoundException paramContext)
    {
      for (;;)
      {
        w.a("[UploadManager] can not find Base64 class, will not use stronger security way to upload", new Object[0]);
        this.q = false;
      }
    }
  }
  
  public static t a()
  {
    try
    {
      t localt = a;
      return localt;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static t a(Context paramContext)
  {
    try
    {
      if (a == null) {
        a = new t(paramContext);
      }
      paramContext = a;
      return paramContext;
    }
    finally {}
  }
  
  private void a(Runnable paramRunnable, long paramLong)
  {
    if (paramRunnable == null)
    {
      w.d("[UploadManager] upload task should not be null", new Object[0]);
      return;
    }
    w.c("[UploadManager] execute synchronized upload task (pid=%d | tid=%d)", new Object[] { Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()) });
    Thread localThread = new Thread(paramRunnable);
    localThread.setName("BuglySyncUploadThread");
    localThread.start();
    try
    {
      localThread.join(paramLong);
      return;
    }
    catch (Throwable localThrowable)
    {
      w.e("[UploadManager] failed to execute upload synchronized task with message: %s. Add it to queue", new Object[] { localThrowable.getMessage() });
      a(paramRunnable);
    }
  }
  
  private void a(Runnable paramRunnable, boolean paramBoolean, long paramLong)
  {
    if (paramRunnable == null) {
      w.d("[UploadManager] upload task should not be null", new Object[0]);
    }
    v localv = v.a();
    if (localv == null) {
      w.d("[UploadManager] async task handler has not been initialized", new Object[0]);
    }
    w.c("[UploadManager] add upload task (pid=%d | tid=%d)", new Object[] { Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()) });
    if (this.l != null)
    {
      if (c())
      {
        w.c("[UploadManager] sucessfully got session ID, try to execute upload task now (pid=%d | tid=%d)", new Object[] { Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()) });
        if (paramBoolean) {
          a(paramRunnable, paramLong);
        }
        for (;;)
        {
          b(0);
          return;
          if (localv == null) {
            a(paramRunnable);
          } else {
            localv.c(paramRunnable);
          }
        }
      }
      w.a("[UploadManager] session ID is expired, drop it (pid=%d | tid=%d)", new Object[] { Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()) });
      a(false);
    }
    for (;;)
    {
      synchronized (this.p)
      {
        if (this.o) {
          break label287;
        }
        this.o = true;
        w.c("[UploadManager] try to request session ID now (pid=%d | tid=%d)", new Object[] { Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()) });
        if (paramBoolean)
        {
          a(new at(this, this.c, paramRunnable, paramLong), 0L);
          return;
        }
      }
      a(paramRunnable);
      localv.c(new at(this, this.c));
      continue;
      label287:
      a(paramRunnable);
    }
  }
  
  private boolean a(Runnable paramRunnable)
  {
    if (paramRunnable == null)
    {
      w.d("[UploadManager] upload task should not be null", new Object[0]);
      return false;
    }
    try
    {
      w.c("[UploadManager] add upload task to queue (pid=%d | tid=%d)", new Object[] { Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()) });
      synchronized (this.f)
      {
        this.e.put(paramRunnable);
        return true;
      }
      return false;
    }
    catch (Throwable paramRunnable)
    {
      w.e("[UploadManager] failed to add upload task to queue: %s", new Object[] { paramRunnable.getMessage() });
    }
  }
  
  private boolean b(int paramInt)
  {
    if (paramInt < 0)
    {
      w.a("[UploadManager] number of task to execute should >= 0", new Object[0]);
      return false;
    }
    for (;;)
    {
      synchronized (this.f)
      {
        if (this.e.isEmpty()) {
          return true;
        }
        w.c("[UploadManager] execute upload tasks of queue which has %d tasks (pid=%d | tid=%d)", new Object[] { Integer.valueOf(this.e.size()), Integer.valueOf(Process.myPid()), Long.valueOf(Thread.currentThread().getId()) });
        int i1;
        if (paramInt != 0)
        {
          i1 = paramInt;
          if (paramInt <= this.e.size()) {}
        }
        else
        {
          i1 = this.e.size();
        }
        v localv = v.a();
        if (localv == null)
        {
          w.d("[UploadManager] async task handler has not been initialized", new Object[0]);
          return false;
        }
        paramInt = 0;
        if (paramInt < i1) {
          try
          {
            Runnable localRunnable = (Runnable)this.e.poll();
            if (localRunnable != null) {
              localv.c(localRunnable);
            } else {
              w.d("[UploadManager] upload task poll from queue is null", new Object[0]);
            }
          }
          catch (Throwable localThrowable)
          {
            w.e("[UploadManager] failed to execute upload task with message: %s", new Object[] { localThrowable.getMessage() });
            return false;
          }
        }
        return true;
      }
      paramInt += 1;
    }
  }
  
  private static boolean d()
  {
    w.c("[UploadManager] drop security info of database (pid=%d | tid=%d)", new Object[] { Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()) });
    try
    {
      o localo = o.a();
      if (localo == null)
      {
        w.d("[UploadManager] failed to get Database", new Object[0]);
        return false;
      }
      boolean bool = localo.a(555, "security_info", null, true);
      return bool;
    }
    catch (Throwable localThrowable)
    {
      w.a(localThrowable);
    }
    return false;
  }
  
  private boolean e()
  {
    w.c("[UploadManager] record security info to database (pid=%d | tid=%d)", new Object[] { Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()) });
    for (;;)
    {
      StringBuilder localStringBuilder;
      try
      {
        o localo = o.a();
        if (localo == null)
        {
          w.d("[UploadManager] failed to get Database", new Object[0]);
          return false;
        }
        localStringBuilder = new StringBuilder();
        if (this.j != null)
        {
          localStringBuilder.append(Base64.encodeToString(this.j, 0));
          localStringBuilder.append("#");
          if (this.m != 0L)
          {
            localStringBuilder.append(Long.toString(this.k));
            localStringBuilder.append("#");
            if (this.l == null) {
              break label218;
            }
            localStringBuilder.append(this.l);
            localStringBuilder.append("#");
            if (this.m == 0L) {
              break label229;
            }
            localStringBuilder.append(Long.toString(this.m));
            localo.a(555, "security_info", localStringBuilder.toString().getBytes(), null, true);
            return true;
          }
        }
        else
        {
          w.c("[UploadManager] AES key is null, will not record", new Object[0]);
          return false;
        }
        localStringBuilder.append("null");
        continue;
        localStringBuilder.append("null");
      }
      catch (Throwable localThrowable)
      {
        w.a(localThrowable);
        d();
        return false;
      }
      label218:
      continue;
      label229:
      localStringBuilder.append("null");
    }
  }
  
  private boolean f()
  {
    w.c("[UploadManager] load security info from dataBase (pid=%d | tid=%d)", new Object[] { Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()) });
    label365:
    for (;;)
    {
      try
      {
        Object localObject = o.a();
        if (localObject == null)
        {
          w.d("[UploadManager] failed to get Database", new Object[0]);
          return false;
        }
        localObject = ((o)localObject).a(555, null, true);
        if ((localObject == null) || (!((Map)localObject).containsKey("security_info"))) {
          break;
        }
        String str = new String((byte[])((Map)localObject).get("security_info"));
        localObject = str.split("#");
        int i2;
        if (localObject.length == 4)
        {
          if (localObject[0].isEmpty()) {
            break label365;
          }
          boolean bool = localObject[0].equals("null");
          if (bool) {
            break label365;
          }
          try
          {
            this.j = Base64.decode(localObject[0], 0);
            i1 = 0;
          }
          catch (Throwable localThrowable3)
          {
            w.a(localThrowable3);
            i1 = 1;
            continue;
          }
          i2 = i1;
          if (i1 == 0)
          {
            i2 = i1;
            if (!localObject[1].isEmpty())
            {
              bool = localObject[1].equals("null");
              i2 = i1;
              if (bool) {}
            }
          }
          try
          {
            this.k = Long.parseLong(localObject[1]);
            i2 = i1;
          }
          catch (Throwable localThrowable4)
          {
            w.a(localThrowable4);
            i2 = 1;
            continue;
          }
          if ((i2 == 0) && (!localObject[2].isEmpty()) && (!localObject[2].equals("null"))) {
            this.l = localObject[2];
          }
          i1 = i2;
          if (i2 == 0)
          {
            i1 = i2;
            if (!localObject[3].isEmpty())
            {
              bool = localObject[3].equals("null");
              i1 = i2;
              if (bool) {}
            }
          }
          try
          {
            this.m = Long.parseLong(localObject[3]);
            i1 = i2;
          }
          catch (Throwable localThrowable1)
          {
            w.a(localThrowable1);
            i1 = 1;
            continue;
          }
          if (i1 == 0) {
            break;
          }
          d();
          break;
        }
        w.a("securityInfo = %s, strings.length = %d", new Object[] { localThrowable4, Integer.valueOf(localThrowable1.length) });
        int i1 = 1;
        continue;
        i1 = 0;
      }
      catch (Throwable localThrowable2)
      {
        w.a(localThrowable2);
        return false;
      }
    }
    return true;
  }
  
  /* Error */
  public final long a(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iload_1
    //   3: iflt +40 -> 43
    //   6: aload_0
    //   7: getfield 49	com/tencent/bugly/proguard/t:d	Ljava/util/Map;
    //   10: iload_1
    //   11: invokestatic 144	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   14: invokeinterface 316 2 0
    //   19: checkcast 243	java/lang/Long
    //   22: astore_2
    //   23: aload_2
    //   24: ifnonnull +11 -> 35
    //   27: ldc2_w 340
    //   30: lstore_3
    //   31: aload_0
    //   32: monitorexit
    //   33: lload_3
    //   34: lreturn
    //   35: aload_2
    //   36: invokevirtual 344	java/lang/Long:longValue	()J
    //   39: lstore_3
    //   40: goto -9 -> 31
    //   43: ldc_w 346
    //   46: iconst_1
    //   47: anewarray 4	java/lang/Object
    //   50: dup
    //   51: iconst_0
    //   52: iload_1
    //   53: invokestatic 144	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   56: aastore
    //   57: invokestatic 174	com/tencent/bugly/proguard/w:e	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   60: pop
    //   61: ldc2_w 340
    //   64: lstore_3
    //   65: goto -34 -> 31
    //   68: astore_2
    //   69: aload_0
    //   70: monitorexit
    //   71: aload_2
    //   72: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	73	0	this	t
    //   0	73	1	paramInt	int
    //   22	14	2	localLong	Long
    //   68	4	2	localObject	Object
    //   30	35	3	l1	long
    // Exception table:
    //   from	to	target	type
    //   6	23	68	finally
    //   35	40	68	finally
    //   43	61	68	finally
  }
  
  public final void a(int paramInt1, int paramInt2, byte[] paramArrayOfByte, String paramString, s params)
  {
    try
    {
      if (this.q)
      {
        a(new u(this.c, paramInt1, paramInt2, paramArrayOfByte, null, params, true), false, 0L);
        return;
      }
      paramArrayOfByte = new u(this.c, paramInt1, paramInt2, paramArrayOfByte, null, params, false);
      v.a().b(paramArrayOfByte);
      return;
    }
    catch (Throwable paramArrayOfByte)
    {
      if (!w.a(paramArrayOfByte)) {
        paramArrayOfByte.printStackTrace();
      }
    }
  }
  
  public final void a(int paramInt, long paramLong)
  {
    if (paramInt >= 0) {}
    for (;;)
    {
      try
      {
        this.d.put(Integer.valueOf(paramInt), Long.valueOf(paramLong));
        w.c("up %d %d", new Object[] { Integer.valueOf(paramInt), Long.valueOf(paramLong) });
        return;
      }
      finally {}
      w.e("unknown up %d", new Object[] { Integer.valueOf(paramInt) });
    }
  }
  
  public final void a(int paramInt, am paramam, String paramString, s params)
  {
    a(paramInt, paramam, null, params, false, 0L);
  }
  
  public final void a(int paramInt, am paramam, String paramString, s params, boolean paramBoolean, long paramLong)
  {
    try
    {
      if (this.q)
      {
        a(new u(this.c, paramInt, paramam, paramString, params, true), paramBoolean, paramLong);
        return;
      }
      paramam = new u(this.c, paramInt, paramam, paramString, params, false);
      if (paramBoolean)
      {
        a(paramam, paramLong);
        return;
      }
    }
    catch (Throwable paramam)
    {
      if (!w.a(paramam))
      {
        paramam.printStackTrace();
        return;
        v.a().b(paramam);
      }
    }
  }
  
  public final void a(int paramInt, an arg2)
  {
    if (!this.q) {
      return;
    }
    if (paramInt == 2)
    {
      w.c("[UploadManager] Session ID is invalid, will clear security context (pid=%d | tid=%d)", new Object[] { Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()) });
      a(true);
    }
    for (;;)
    {
      synchronized (this.p)
      {
        if (this.o)
        {
          this.o = false;
          a.b(this.c, "security_info");
        }
        return;
      }
      if (!this.o) {
        break;
      }
      if (??? != null)
      {
        w.c("[UploadManager] record security context (pid=%d | tid=%d)", new Object[] { Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()) });
        try
        {
          localMap = ???.h;
          if ((localMap == null) || (!localMap.containsKey("S1")) || (!localMap.containsKey("S2"))) {
            break label414;
          }
          this.i = (???.e - System.currentTimeMillis());
          w.c("[UploadManager] time lag of server is: %d", new Object[] { Long.valueOf(this.i) });
          this.l = ((String)localMap.get("S1"));
          w.c("[UploadManager] session ID from server is: %s", new Object[] { this.l });
          paramInt = this.l.length();
          if (paramInt <= 0) {
            break label403;
          }
        }
        catch (Throwable ???)
        {
          for (;;)
          {
            Map localMap;
            label323:
            boolean bool;
            w.a(???);
            paramInt = 1;
            continue;
            w.c("[UploadManager] failed to record database", new Object[0]);
            paramInt = 1;
            continue;
            w.c("[UploadManager] session ID from server is invalid, try next time", new Object[0]);
            paramInt = 1;
          }
        }
        try
        {
          this.m = Long.parseLong((String)localMap.get("S2"));
          w.c("[UploadManager] session expired time from server is: %d(%s)", new Object[] { Long.valueOf(this.m), new Date(this.m).toString() });
          if (this.m < 1000L)
          {
            w.d("[UploadManager] session expired time from server is less than 1 second, will set to default value", new Object[0]);
            this.m = 259200000L;
          }
          b(0);
          bool = e();
          if (bool)
          {
            paramInt = 0;
            if (paramInt == 0) {
              continue;
            }
            a(false);
          }
        }
        catch (NumberFormatException ???)
        {
          w.d("[UploadManager] session expired time is invalid, will set to default value", new Object[0]);
          this.m = 259200000L;
          break label323;
        }
      }
      label403:
      label414:
      w.c("[UploadManager] fail to init security context and clear local info (pid=%d | tid=%d)", new Object[] { Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()) });
      a(false);
    }
  }
  
  protected final void a(long paramLong)
  {
    try
    {
      q localq = new q();
      localq.b = 3;
      localq.e = a.o();
      localq.c = "";
      localq.d = "";
      localq.g = a.a(paramLong);
      o.b(3);
      this.b.a(localq);
      w.c("consume update %d", new Object[] { Long.valueOf(paramLong) });
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  protected final void a(boolean paramBoolean)
  {
    synchronized (this.n)
    {
      w.c("[UploadManager] clear security context (pid=%d | tid=%d)", new Object[] { Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()) });
      this.j = null;
      this.l = null;
      this.m = 0L;
      if (paramBoolean) {
        d();
      }
      return;
    }
  }
  
  public final boolean a(Map<String, String> paramMap)
  {
    if (paramMap == null) {
      return false;
    }
    w.c("[UploadManager] integrate security to HTTP headers (pid=%d | tid=%d)", new Object[] { Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()) });
    if (this.l != null)
    {
      paramMap.put("secureSessionId", this.l);
      return true;
    }
    if ((this.j == null) || (this.j.length << 3 != 128))
    {
      w.d("[UploadManager] AES key is invalid", new Object[0]);
      return false;
    }
    if (this.h == null)
    {
      this.h = Base64.decode(this.g, 0);
      if (this.h == null)
      {
        w.d("[UploadManager] failed to decode RSA public key", new Object[0]);
        return false;
      }
    }
    Object localObject = a.b(1, this.j, this.h);
    if (localObject == null)
    {
      w.d("[UploadManager] failed to encrypt AES key", new Object[0]);
      return false;
    }
    localObject = Base64.encodeToString((byte[])localObject, 0);
    if (localObject == null)
    {
      w.d("[UploadManager] failed to encode AES key", new Object[0]);
      return false;
    }
    paramMap.put("raKey", localObject);
    return true;
  }
  
  public final byte[] a(byte[] paramArrayOfByte)
  {
    if ((this.j == null) || (this.j.length << 3 != 128))
    {
      w.d("[UploadManager] AES key is invalid (pid=%d | tid=%d)", new Object[] { Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()) });
      return null;
    }
    return a.a(1, paramArrayOfByte, this.j);
  }
  
  public final long b()
  {
    long l3 = 0L;
    long l4 = a.o();
    List localList = this.b.a(3);
    long l1;
    if ((localList != null) && (localList.size() > 0))
    {
      l1 = l3;
      try
      {
        q localq = (q)localList.get(0);
        l2 = l3;
        l1 = l3;
        if (localq.e >= l4)
        {
          l1 = l3;
          l2 = a.c(localq.g);
          l1 = l2;
          localList.remove(localq);
        }
        l1 = l2;
      }
      catch (Throwable localThrowable)
      {
        for (;;)
        {
          w.e("error local type %d", new Object[] { Integer.valueOf(3) });
        }
      }
      l2 = l1;
      if (localList.size() > 0) {
        o.a(localList);
      }
    }
    for (long l2 = l1;; l2 = 0L)
    {
      w.c("consume getted %d", new Object[] { Long.valueOf(l2) });
      return l2;
    }
  }
  
  public final byte[] b(byte[] paramArrayOfByte)
  {
    if ((this.j == null) || (this.j.length << 3 != 128))
    {
      w.d("[UploadManager] AES key is invalid (pid=%d | tid=%d)", new Object[] { Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()) });
      return null;
    }
    return a.a(2, paramArrayOfByte, this.j);
  }
  
  protected final boolean c()
  {
    if ((this.l == null) || (this.m == 0L)) {
      return false;
    }
    long l1 = System.currentTimeMillis() + this.i;
    if (this.m < l1)
    {
      w.c("[UploadManager] session ID expired time from server is: %d(%s), but now is: %d(%s)", new Object[] { Long.valueOf(this.m), new Date(this.m).toString(), Long.valueOf(l1), new Date(l1).toString() });
      return false;
    }
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\proguard\t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */