package com.tencent.bugly;

import android.content.Context;
import android.text.TextUtils;
import com.tencent.bugly.crashreport.CrashReport;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.crashreport.crash.c;
import com.tencent.bugly.crashreport.crash.d;
import com.tencent.bugly.proguard.m;
import com.tencent.bugly.proguard.w;

public class CrashModule
  extends a
{
  public static final int MODULE_ID = 1004;
  private static int c = 0;
  private static boolean d = false;
  private static CrashModule e = new CrashModule();
  private long a;
  private BuglyStrategy.a b;
  
  private void a(Context paramContext, BuglyStrategy paramBuglyStrategy)
  {
    if (paramBuglyStrategy == null) {}
    for (;;)
    {
      return;
      try
      {
        String str = paramBuglyStrategy.getLibBuglySOFilePath();
        if (!TextUtils.isEmpty(str))
        {
          com.tencent.bugly.crashreport.common.info.a.a(paramContext).k = str;
          w.a("setted libBugly.so file path :%s", new Object[] { str });
        }
        if (paramBuglyStrategy.getCrashHandleCallback() != null)
        {
          this.b = paramBuglyStrategy.getCrashHandleCallback();
          w.a("setted CrashHanldeCallback", new Object[0]);
        }
        if (paramBuglyStrategy.getAppReportDelay() <= 0L) {
          continue;
        }
        this.a = paramBuglyStrategy.getAppReportDelay();
        w.a("setted delay: %d", new Object[] { Long.valueOf(this.a) });
      }
      finally {}
    }
  }
  
  public static CrashModule getInstance()
  {
    e.id = 1004;
    return e;
  }
  
  public static boolean hasInitialized()
  {
    return d;
  }
  
  public String[] getTables()
  {
    return new String[] { "t_cr" };
  }
  
  public void init(Context paramContext, boolean paramBoolean, BuglyStrategy paramBuglyStrategy)
  {
    if ((paramContext == null) || (d)) {
      return;
    }
    Object localObject = m.a();
    int i = c + 1;
    c = i;
    ((m)localObject).a(1004, i);
    d = true;
    CrashReport.setContext(paramContext);
    a(paramContext, paramBuglyStrategy);
    c.a(1004, paramContext, paramBoolean, this.b, null, null);
    localObject = c.a();
    ((c)localObject).e();
    if ((paramBuglyStrategy == null) || (paramBuglyStrategy.isEnableNativeCrashMonitor()))
    {
      ((c)localObject).g();
      if ((paramBuglyStrategy != null) && (!paramBuglyStrategy.isEnableANRCrashMonitor())) {
        break label172;
      }
      ((c)localObject).h();
    }
    for (;;)
    {
      com.tencent.bugly.crashreport.inner.InnerAPI.context = paramContext;
      d.a(paramContext);
      c.a().a(this.a);
      paramContext = m.a();
      i = c - 1;
      c = i;
      paramContext.a(1004, i);
      return;
      w.a("[crash] Closed native crash monitor!", new Object[0]);
      ((c)localObject).f();
      break;
      label172:
      w.a("[crash] Closed ANR monitor!", new Object[0]);
      ((c)localObject).i();
    }
  }
  
  public void onServerStrategyChanged(StrategyBean paramStrategyBean)
  {
    if (paramStrategyBean == null) {
      return;
    }
    c localc = c.a();
    if (localc != null) {
      localc.a(paramStrategyBean);
    }
    d.a(paramStrategyBean);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\CrashModule.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */