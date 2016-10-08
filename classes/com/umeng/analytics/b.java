package com.umeng.analytics;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.os.Process;
import android.text.TextUtils;
import java.util.Iterator;
import java.util.List;

public class b
{
  public static boolean a(Context paramContext)
  {
    for (;;)
    {
      try
      {
        i = Process.myPid();
        localIterator = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses().iterator();
        localObject1 = null;
        boolean bool = localIterator.hasNext();
        if (bool) {
          continue;
        }
      }
      catch (Exception localException)
      {
        int i;
        Iterator localIterator;
        Object localObject1;
        ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo;
        Object localObject2 = null;
        continue;
      }
      if ((!TextUtils.isEmpty((CharSequence)localObject1)) && (!paramContext.getPackageName().equals(localObject1))) {
        break;
      }
      return true;
      localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)localIterator.next();
      if (localRunningAppProcessInfo.pid == i) {
        localObject1 = localRunningAppProcessInfo.processName.trim();
      }
    }
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\analytics\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */