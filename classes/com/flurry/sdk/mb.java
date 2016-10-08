package com.flurry.sdk;

import android.content.Context;

public class mb
  implements kj, ll.a, Thread.UncaughtExceptionHandler
{
  private static final String a = mb.class.getSimpleName();
  private boolean b;
  
  public void a(Context paramContext)
  {
    paramContext = lk.a();
    this.b = ((Boolean)paramContext.a("CaptureUncaughtExceptions")).booleanValue();
    paramContext.a("CaptureUncaughtExceptions", this);
    kg.a(4, a, "initSettings, CrashReportingEnabled = " + this.b);
    mc.a().a(this);
  }
  
  public void a(String paramString, Object paramObject)
  {
    if (paramString.equals("CaptureUncaughtExceptions"))
    {
      this.b = ((Boolean)paramObject).booleanValue();
      kg.a(4, a, "onSettingUpdate, CrashReportingEnabled = " + this.b);
      return;
    }
    kg.a(6, a, "onSettingUpdate internal error!");
  }
  
  public void b()
  {
    mc.b();
    lk.a().b("CaptureUncaughtExceptions", this);
  }
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    paramThrowable.printStackTrace();
    if (this.b)
    {
      paramThread = "";
      StackTraceElement[] arrayOfStackTraceElement = paramThrowable.getStackTrace();
      if ((arrayOfStackTraceElement == null) || (arrayOfStackTraceElement.length <= 0)) {
        break label100;
      }
      paramThread = new StringBuilder();
      if (paramThrowable.getMessage() != null) {
        paramThread.append(" (" + paramThrowable.getMessage() + ")\n");
      }
      paramThread = paramThread.toString();
    }
    for (;;)
    {
      hl.a().a("uncaught", paramThread, paramThrowable);
      lh.a().g();
      jj.a().d();
      return;
      label100:
      if (paramThrowable.getMessage() != null) {
        paramThread = paramThrowable.getMessage();
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\mb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */