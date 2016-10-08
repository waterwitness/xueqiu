package com.tencent.bugly.crashreport;

import android.content.Context;
import com.tencent.bugly.BuglyStrategy;

public class CrashReport$UserStrategy
  extends BuglyStrategy
{
  private CrashReport.CrashHandleCallback a;
  
  public CrashReport$UserStrategy(Context paramContext) {}
  
  public CrashReport.CrashHandleCallback getCrashHandleCallback()
  {
    try
    {
      CrashReport.CrashHandleCallback localCrashHandleCallback = this.a;
      return localCrashHandleCallback;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void setCrashHandleCallback(CrashReport.CrashHandleCallback paramCrashHandleCallback)
  {
    try
    {
      this.a = paramCrashHandleCallback;
      return;
    }
    finally
    {
      paramCrashHandleCallback = finally;
      throw paramCrashHandleCallback;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\crashreport\CrashReport$UserStrategy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */