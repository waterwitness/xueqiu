package com.tencent.bugly.crashreport.crash.jni;

import android.content.Context;
import com.tencent.bugly.crashreport.common.info.AppInfo;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.crashreport.crash.c;
import com.tencent.bugly.proguard.w;
import com.tencent.bugly.proguard.x;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class a
  implements NativeExceptionHandler
{
  private final Context a;
  private final com.tencent.bugly.crashreport.crash.b b;
  private final com.tencent.bugly.crashreport.common.info.a c;
  private final com.tencent.bugly.crashreport.common.strategy.a d;
  private final String e;
  
  public a(Context paramContext, com.tencent.bugly.crashreport.common.info.a parama, com.tencent.bugly.crashreport.crash.b paramb, com.tencent.bugly.crashreport.common.strategy.a parama1, String paramString)
  {
    this.a = paramContext;
    this.b = paramb;
    this.c = parama;
    this.d = parama1;
    this.e = paramString;
  }
  
  public final void handleNativeException(int paramInt1, int paramInt2, long paramLong1, long paramLong2, String paramString1, String paramString2, String paramString3, String paramString4, int paramInt3, String paramString5, int paramInt4, int paramInt5, int paramInt6, String paramString6, String paramString7)
  {
    w.a("Native Crash Happen v1", new Object[0]);
    handleNativeException2(paramInt1, paramInt2, paramLong1, paramLong2, paramString1, paramString2, paramString3, paramString4, paramInt3, paramString5, paramInt4, paramInt5, paramInt6, paramString6, paramString7, null);
  }
  
  public final void handleNativeException2(int paramInt1, int paramInt2, long paramLong1, long paramLong2, String paramString1, String paramString2, String paramString3, String paramString4, int paramInt3, String paramString5, int paramInt4, int paramInt5, int paramInt6, String paramString6, String paramString7, String[] paramArrayOfString)
  {
    w.a("Native Crash Happen v2", new Object[0]);
    String str2;
    String str1;
    for (;;)
    {
      try
      {
        this.d.c();
        if (!this.d.b())
        {
          w.e("waiting for remote sync", new Object[0]);
          paramInt1 = 0;
          boolean bool = this.d.b();
          if (bool) {}
        }
        try
        {
          Thread.sleep(500L);
          paramInt2 = paramInt1 + 500;
          paramInt1 = paramInt2;
          if (paramInt2 < 5000) {
            continue;
          }
          paramLong2 /= 1000L;
          str2 = b.a(paramString3);
          str1 = "UNKNOWN(" + paramInt4 + ")";
          if (paramInt3 <= 0) {
            break label335;
          }
          paramString1 = paramString1 + "(" + paramString5 + ")";
          paramString3 = "KERNEL";
          if (!this.d.b()) {
            w.d("no remote but still store!", new Object[0]);
          }
          if ((this.d.c().d) || (!this.d.b())) {
            break;
          }
          w.e("crash report was closed by remote , will not upload to Bugly , print local for helpful!", new Object[0]);
          com.tencent.bugly.crashreport.crash.b.a("NATIVE_CRASH", com.tencent.bugly.proguard.a.n(), this.c.d, Thread.currentThread(), paramString1 + "\n" + paramString2 + "\n" + str2, null);
          if (paramString4 == null) {
            break label840;
          }
          paramString1 = new File(paramString4);
          if ((!paramString1.isFile()) || (!paramString1.exists()) || (!paramString1.canWrite())) {
            break label840;
          }
          paramString1.delete();
          return;
        }
        catch (InterruptedException paramString6)
        {
          paramString6.printStackTrace();
          continue;
        }
        paramString1.printStackTrace();
      }
      catch (Throwable paramString1)
      {
        if (w.a(paramString1)) {
          break label840;
        }
      }
      return;
      label335:
      if (paramInt4 <= 0) {
        break label833;
      }
      str1 = AppInfo.a(paramInt4);
      paramString3 = paramString5;
    }
    paramString6 = null;
    paramString5 = null;
    if (paramArrayOfString != null)
    {
      paramString5 = new HashMap();
      paramInt2 = paramArrayOfString.length;
      paramInt1 = 0;
    }
    for (;;)
    {
      Object localObject;
      if (paramInt1 < paramInt2)
      {
        paramString6 = paramArrayOfString[paramInt1];
        localObject = paramString6.split("=");
        if (localObject.length == 2) {
          paramString5.put(localObject[0], localObject[1]);
        } else {
          w.d("bad extraMsg %s", new Object[] { paramString6 });
        }
      }
      else
      {
        paramString6 = (String)paramString5.get("ExceptionProcessName");
        paramString5 = (String)paramString5.get("ExceptionThreadName");
        if ((paramString6 == null) || (paramString6.length() == 0))
        {
          paramArrayOfString = this.c.d;
          label494:
          if ((paramString5 != null) && (paramString5.length() != 0)) {
            break label636;
          }
          paramString5 = Thread.currentThread();
          paramString6 = paramString5.getName() + "(" + paramString5.getId() + ")";
        }
        for (;;)
        {
          paramString3 = packageCrashDatas(paramArrayOfString, paramString6, 1000L * paramLong1 + paramLong2, paramString1, paramString2, str2, paramString3, str1, paramString4, paramString7, null, null, true);
          if (paramString3 != null) {
            break label743;
          }
          w.e("pkg crash datas fail!", new Object[0]);
          return;
          w.c("not found extraMsg", new Object[0]);
          break;
          w.c("crash process name change to %s", new Object[] { paramString6 });
          paramArrayOfString = paramString6;
          break label494;
          label636:
          w.c("crash thread name change to %s", new Object[] { paramString5 });
          localObject = Thread.getAllStackTraces().keySet().iterator();
          do
          {
            paramString6 = paramString5;
            if (!((Iterator)localObject).hasNext()) {
              break;
            }
            paramString6 = (Thread)((Iterator)localObject).next();
          } while (!paramString6.getName().equals(paramString5));
          paramString6 = paramString5 + "(" + paramString6.getId() + ")";
        }
        label743:
        com.tencent.bugly.crashreport.crash.b.a("NATIVE_CRASH", com.tencent.bugly.proguard.a.n(), this.c.d, Thread.currentThread(), paramString1 + "\n" + paramString2 + "\n" + str2, paramString3);
        if (!this.b.a(paramString3, paramInt3)) {
          this.b.a(paramString3, 5000L, true);
        }
        b.b(this.e);
        return;
        label833:
        paramString3 = paramString5;
        break;
        label840:
        return;
      }
      paramInt1 += 1;
    }
  }
  
  public final CrashDetailBean packageCrashDatas(String paramString1, String paramString2, long paramLong, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, byte[] paramArrayOfByte, Map<String, String> paramMap, boolean paramBoolean)
  {
    boolean bool = c.a().l();
    if (bool) {}
    CrashDetailBean localCrashDetailBean;
    for (String str = " This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful![Bugly]";; str = "")
    {
      if (bool) {
        w.e("This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!", new Object[0]);
      }
      localCrashDetailBean = new CrashDetailBean();
      localCrashDetailBean.b = 1;
      localCrashDetailBean.e = this.c.g();
      localCrashDetailBean.f = this.c.i;
      localCrashDetailBean.g = this.c.t();
      localCrashDetailBean.m = this.c.f();
      localCrashDetailBean.n = paramString3;
      localCrashDetailBean.o = str;
      localCrashDetailBean.p = paramString4;
      localCrashDetailBean.q = paramString5;
      localCrashDetailBean.r = paramLong;
      localCrashDetailBean.u = com.tencent.bugly.proguard.a.b(localCrashDetailBean.q.getBytes());
      localCrashDetailBean.z = paramString1;
      localCrashDetailBean.A = paramString2;
      localCrashDetailBean.H = this.c.v();
      localCrashDetailBean.h = this.c.s();
      localCrashDetailBean.i = this.c.E();
      localCrashDetailBean.v = paramString8;
      localCrashDetailBean.I = paramString7;
      localCrashDetailBean.J = paramString6;
      localCrashDetailBean.K = paramString9;
      localCrashDetailBean.E = this.c.o();
      localCrashDetailBean.F = this.c.n();
      localCrashDetailBean.G = this.c.p();
      if (!paramBoolean) {
        break;
      }
      localCrashDetailBean.B = com.tencent.bugly.proguard.a.i();
      localCrashDetailBean.C = com.tencent.bugly.proguard.a.g();
      localCrashDetailBean.D = com.tencent.bugly.proguard.a.k();
      localCrashDetailBean.w = com.tencent.bugly.proguard.a.a(this.a, c.d, null);
      localCrashDetailBean.x = x.a(true);
      localCrashDetailBean.L = this.c.a;
      localCrashDetailBean.M = this.c.n;
      localCrashDetailBean.O = this.c.B();
      localCrashDetailBean.P = this.c.C();
      localCrashDetailBean.Q = this.c.w();
      localCrashDetailBean.R = this.c.A();
      localCrashDetailBean.y = com.tencent.bugly.proguard.a.a(c.e, false);
      if (localCrashDetailBean.q != null)
      {
        int i = localCrashDetailBean.q.indexOf("java:\n");
        if (i > 0)
        {
          i += "java:\n".length();
          paramString2 = localCrashDetailBean.q.substring(i, localCrashDetailBean.q.length() - 1);
          if ((paramString2.length() > 0) && (localCrashDetailBean.y.containsKey(localCrashDetailBean.A)))
          {
            paramString3 = (String)localCrashDetailBean.y.get(localCrashDetailBean.A);
            int j = paramString3.indexOf(paramString2);
            if (j > 0)
            {
              paramString2 = paramString3.substring(j);
              localCrashDetailBean.y.put(localCrashDetailBean.A, paramString2);
              localCrashDetailBean.q = localCrashDetailBean.q.substring(0, i);
              localCrashDetailBean.q += paramString2;
            }
          }
        }
      }
      if (paramString1 == null) {
        localCrashDetailBean.z = this.c.d;
      }
      this.b.b(localCrashDetailBean);
      return localCrashDetailBean;
    }
    localCrashDetailBean.B = -1L;
    localCrashDetailBean.C = -1L;
    localCrashDetailBean.D = -1L;
    localCrashDetailBean.w = "this crash is occurred at last process! Log is miss, when get an terrible ABRT Native Exception etc.";
    localCrashDetailBean.L = -1L;
    localCrashDetailBean.O = -1;
    localCrashDetailBean.P = -1;
    localCrashDetailBean.Q = paramMap;
    localCrashDetailBean.R = null;
    localCrashDetailBean.y = null;
    if (paramString1 == null) {
      localCrashDetailBean.z = "unknown(record)";
    }
    if (paramArrayOfByte == null)
    {
      localCrashDetailBean.x = "this crash is occurred at last process! Log is miss, when get an terrible ABRT Native Exception etc.".getBytes();
      return localCrashDetailBean;
    }
    localCrashDetailBean.x = paramArrayOfByte;
    return localCrashDetailBean;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\crashreport\crash\jni\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */