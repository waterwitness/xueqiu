package com.tencent.bugly.proguard;

import android.content.Context;
import android.os.Process;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import java.util.HashMap;
import java.util.Map;

public final class u
  implements Runnable
{
  private int a = 3;
  private int b = 30000;
  private final Context c;
  private final int d;
  private final byte[] e;
  private final com.tencent.bugly.crashreport.common.info.a f;
  private final com.tencent.bugly.crashreport.common.strategy.a g;
  private final r h;
  private final t i;
  private final int j;
  private final s k;
  private final s l;
  private String m = "";
  private int n = 0;
  private long o = 0L;
  private long p = 0L;
  private boolean q = true;
  
  public u(Context paramContext, int paramInt1, int paramInt2, byte[] paramArrayOfByte, String paramString, s params, boolean paramBoolean)
  {
    this(paramContext, paramInt1, paramInt2, paramArrayOfByte, paramString, params, paramBoolean, 5, 60000);
  }
  
  private u(Context paramContext, int paramInt1, int paramInt2, byte[] paramArrayOfByte, String paramString, s params, boolean paramBoolean, int paramInt3, int paramInt4)
  {
    this.c = paramContext;
    this.f = com.tencent.bugly.crashreport.common.info.a.a(paramContext);
    this.e = paramArrayOfByte;
    this.g = com.tencent.bugly.crashreport.common.strategy.a.a();
    this.h = r.a(paramContext);
    this.i = t.a();
    this.j = paramInt1;
    this.m = paramString;
    this.k = params;
    this.l = null;
    this.q = paramBoolean;
    paramInt1 = paramInt2;
    if (paramBoolean) {
      switch (paramInt2)
      {
      default: 
        paramInt1 = paramInt2;
      }
    }
    for (;;)
    {
      this.d = paramInt1;
      this.a = 5;
      this.b = 60000;
      return;
      paramInt1 = 830;
      continue;
      paramInt1 = 840;
    }
  }
  
  public u(Context paramContext, int paramInt, am paramam, String paramString, s params, boolean paramBoolean)
  {
    this(paramContext, paramInt, paramam.g, a.a(paramam), paramString, params, paramBoolean);
  }
  
  private void a(an paraman, boolean paramBoolean, int paramInt1, String paramString, int paramInt2)
  {
    switch (this.d)
    {
    default: 
      paraman = String.valueOf(this.d);
      if (paramBoolean) {
        w.a("[upload] success: %s", new Object[] { paraman });
      }
      break;
    }
    for (;;)
    {
      if (this.o + this.p > 0L)
      {
        long l1 = this.i.b();
        long l2 = this.o;
        long l3 = this.p;
        this.i.a(l1 + l2 + l3);
      }
      if (this.k != null) {
        this.k.a(paramBoolean);
      }
      if (this.l != null) {
        this.l.a(paramBoolean);
      }
      return;
      paraman = "crash";
      break;
      paraman = "userinfo";
      break;
      w.e("[upload] fail! %s %d %s", new Object[] { paraman, Integer.valueOf(paramInt1), paramString });
      if (this.q) {
        this.i.a(paramInt2, null);
      }
    }
  }
  
  private static boolean a(an paraman, com.tencent.bugly.crashreport.common.info.a parama, com.tencent.bugly.crashreport.common.strategy.a parama1)
  {
    if (paraman == null)
    {
      w.d("resp == null!", new Object[0]);
      return false;
    }
    if (paraman.a != 0)
    {
      w.e("resp result error %d", new Object[] { Byte.valueOf(paraman.a) });
      return false;
    }
    for (;;)
    {
      try
      {
        String str = paraman.d;
        if ((str == null) || (str.trim().length() <= 0)) {
          continue;
        }
        i1 = 0;
        if ((i1 == 0) && (com.tencent.bugly.crashreport.common.info.a.a().h() != paraman.d))
        {
          o.a().a(com.tencent.bugly.crashreport.common.strategy.a.a, "key_ip", paraman.d.getBytes("UTF-8"), null, true);
          parama.d(paraman.d);
        }
        str = paraman.g;
        if ((str == null) || (str.trim().length() <= 0)) {
          continue;
        }
        i1 = 0;
        if ((i1 == 0) && (com.tencent.bugly.crashreport.common.info.a.a().i() != paraman.g))
        {
          o.a().a(com.tencent.bugly.crashreport.common.strategy.a.a, "key_imei", paraman.g.getBytes("UTF-8"), null, true);
          parama.e(paraman.g);
        }
      }
      catch (Throwable localThrowable)
      {
        int i1;
        boolean bool1;
        boolean bool2;
        boolean bool3;
        continue;
      }
      parama.h = paraman.e;
      if (paraman.b != 510) {
        continue;
      }
      if (paraman.c != null) {
        continue;
      }
      w.e("remote data is miss! %d", new Object[] { Integer.valueOf(paraman.b) });
      return false;
      i1 = 1;
      continue;
      i1 = 1;
    }
    parama = (ap)a.a(paraman.c, ap.class);
    if (parama == null)
    {
      w.e("remote data is error! %d", new Object[] { Integer.valueOf(paraman.b) });
      return false;
    }
    bool1 = parama.a;
    bool2 = parama.c;
    bool3 = parama.b;
    if (parama.g == null) {}
    for (i1 = -1;; i1 = parama.g.size())
    {
      w.c("en:%b qu:%b uin:%b vm:%d", new Object[] { Boolean.valueOf(bool1), Boolean.valueOf(bool2), Boolean.valueOf(bool3), Integer.valueOf(i1) });
      parama1.a(parama);
      return true;
    }
  }
  
  public final void a(long paramLong)
  {
    this.n += 1;
    this.o += paramLong;
  }
  
  public final void b(long paramLong)
  {
    this.p += paramLong;
  }
  
  public final void run()
  {
    Object localObject2;
    try
    {
      localObject2 = this.e;
      this.n = 0;
      this.o = 0L;
      this.p = 0L;
      this.i.a(this.j, System.currentTimeMillis());
      if (a.e(this.c) == null)
      {
        a(null, false, 0, "network is not availiable!", 0);
        return;
      }
      if ((localObject2 != null) && (localObject2.length != 0)) {
        break label90;
      }
      a(null, false, 0, "[upload] fail, request package is empty!", 0);
      return;
    }
    catch (Throwable localThrowable1)
    {
      if (w.a(localThrowable1)) {
        break label1344;
      }
    }
    localThrowable1.printStackTrace();
    return;
    label90:
    long l1 = this.i.b();
    if (localObject2.length + l1 >= 2097152L)
    {
      w.e("up too much wait to next time ! %d %d ", new Object[] { Long.valueOf(l1), Long.valueOf(2097152L) });
      a(null, false, 0, "[upload] fail, over net consume: 2048K", 0);
      return;
    }
    w.c("do upload task %d", new Object[] { Integer.valueOf(this.d) });
    if ((this.c == null) || (localObject2 == null) || (this.f == null) || (this.g == null) || (this.h == null))
    {
      a(null, false, 0, "[upload] fail, illegal access error!", 0);
      return;
    }
    StrategyBean localStrategyBean = this.g.c();
    if (localStrategyBean == null)
    {
      a(null, false, 0, "[upload] fail, illegal local strategy!", 0);
      return;
    }
    int i2 = 0;
    HashMap localHashMap = new HashMap();
    localHashMap.put("prodId", this.f.e());
    localHashMap.put("bundleId", this.f.c);
    localHashMap.put("appVer", this.f.i);
    Object localObject1 = localObject2;
    int i1;
    label558:
    int i4;
    label714:
    label725:
    int i3;
    Object localObject3;
    if (this.q)
    {
      localHashMap.put("cmd", Integer.toString(this.d));
      localHashMap.put("platformId", Byte.toString((byte)1));
      this.f.getClass();
      localHashMap.put("sdkVer", "2.1.9");
      localHashMap.put("strategylastUpdateTime", Long.toString(localStrategyBean.l));
      if (!this.i.a(localHashMap))
      {
        a(null, false, 0, "[upload] fail, failed to add security info to HTTP headers", 0);
        return;
      }
      localObject1 = a.a((byte[])localObject2, 2);
      if (localObject1 == null)
      {
        a(null, false, 0, "[upload] fail, failed to zip request body", 0);
        return;
      }
      localObject2 = this.i.a((byte[])localObject1);
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        a(null, false, 0, "[upload] fail, failed to encrypt request body", 0);
        return;
        for (;;)
        {
          if (i1 >= this.a) {
            break label1332;
          }
          i2 = i1 + 1;
          if (i1 != 0)
          {
            w.d("failed to upload last time, wait and try(%d) again", new Object[] { Integer.valueOf(i2) });
            i1 = this.b;
            l1 = i1;
          }
          try
          {
            Thread.sleep(l1);
            w.c("send %d", new Object[] { Integer.valueOf(localObject1.length) });
            localObject2 = this.m;
            if ((localObject2 == null) || (((String)localObject2).trim().length() <= 0)) {
              break label1354;
            }
            i1 = 0;
            if (i1 != 0)
            {
              if (!this.q) {
                break label714;
              }
              if (this.d == 830) {
                this.m = localStrategyBean.o;
              }
            }
            else
            {
              w.c("do upload to %s with cmd %d (pid=%d | tid=%d)", new Object[] { this.m, Integer.valueOf(this.d), Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()) });
              localObject2 = this.h.a(this.m, (byte[])localObject1, this, localHashMap);
              if (localObject2 != null) {
                break label725;
              }
              w.e("try upload fail! %d %s", new Object[] { Integer.valueOf(this.d), "upload fail, no response!" });
              i4 = 1;
              i1 = i2;
              i2 = i4;
            }
          }
          catch (InterruptedException localInterruptedException)
          {
            for (;;)
            {
              localInterruptedException.printStackTrace();
              continue;
              this.m = localStrategyBean.n;
              continue;
              this.m = localStrategyBean.p;
            }
            Map localMap = this.h.a;
            i4 = i3;
            if (this.q)
            {
              if ((localMap == null) || (localMap.size() == 0) || (!localMap.containsKey("status")))
              {
                w.c("no headers from server, just try again (pid=%d | tid=%d)", new Object[] { Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()) });
                w.e("try upload fail! %d %s", new Object[] { Integer.valueOf(this.d), "upload fail, no status header" });
                i4 = 1;
                i1 = i2;
                i2 = i4;
              }
              else
              {
                try
                {
                  i1 = Integer.parseInt((String)localMap.get("status"));
                  i3 = i1;
                  w.c("status from server is %d (pid=%d | tid=%d)", new Object[] { Integer.valueOf(i1), Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()) });
                  i4 = i1;
                  if (i1 == 0) {
                    break label1124;
                  }
                  if (i1 != 2) {
                    break label1093;
                  }
                  if (this.o + this.p > 0L)
                  {
                    l1 = this.i.b();
                    long l2 = this.o;
                    long l3 = this.p;
                    this.i.a(l1 + l2 + l3);
                  }
                  this.i.a(i1, null);
                  w.a("Session ID is invalid, will try again immediately (pid=%d | tid=%d)", new Object[] { Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()) });
                  this.i.a(this.j, this.d, this.e, null, this.l);
                  return;
                }
                catch (Throwable localThrowable2)
                {
                  localObject3 = "upload fail, format of status header is invalid: " + Integer.toString(i3);
                  w.e("try upload fail! %d %s", new Object[] { Integer.valueOf(this.d), localObject3 });
                  i4 = 1;
                  i1 = i2;
                  i2 = i4;
                }
                continue;
                label1093:
                a(null, false, 1, "upload fail, status: " + Integer.toString(i1), i1);
              }
            }
            else
            {
              label1124:
              w.c("recv %d", new Object[] { Integer.valueOf(localObject3.length) });
              if (!this.q) {
                break label1360;
              }
            }
          }
        }
        localObject1 = this.i.b((byte[])localObject3);
        if (localObject1 == null)
        {
          a(null, false, 1, "upload fail, failed to decrypt response from server", 0);
          return;
        }
        localObject3 = a.b((byte[])localObject1, 2);
        localObject1 = localObject3;
        if (localObject3 == null)
        {
          a(null, false, 1, "upload fail, failed to unzip(gzip) response from server", 0);
          return;
        }
      }
    }
    for (;;)
    {
      localObject1 = a.a((byte[])localObject1, this.q);
      if (localObject1 == null)
      {
        a(null, false, 1, "upload fail, resp null!", 0);
        return;
      }
      if (this.q) {
        this.i.a(i4, (an)localObject1);
      }
      i2 = ((an)localObject1).b;
      if (((an)localObject1).c == null) {}
      for (i1 = 0;; i1 = ((an)localObject1).c.length)
      {
        w.c("response %d %d", new Object[] { Integer.valueOf(i2), Integer.valueOf(i1) });
        if (a((an)localObject1, this.f, this.g)) {
          break;
        }
        a((an)localObject1, false, 2, ((an)localObject1).f, 0);
        return;
      }
      a((an)localObject1, true, 2, null, 0);
      return;
      label1332:
      a(null, false, i2, "try OT Fail!", 0);
      label1344:
      return;
      i3 = -1;
      i1 = 0;
      break;
      label1354:
      i1 = 1;
      break label558;
      label1360:
      localObject1 = localObject3;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\proguard\u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */