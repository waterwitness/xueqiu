package com.umeng.analytics.social;

import android.content.Context;
import android.util.Log;

public abstract class UMSocialService
{
  private static void a(Context paramContext, UMSocialService.b paramb, String paramString, UMPlatformData... paramVarArgs)
  {
    int i = 0;
    if (paramVarArgs != null) {}
    for (;;)
    {
      int j;
      try
      {
        j = paramVarArgs.length;
      }
      catch (a paramContext)
      {
        Log.e("MobclickAgent", "unable send event.", paramContext);
        return;
        i += 1;
      }
      catch (Exception paramContext)
      {
        Log.e("MobclickAgent", "", paramContext);
        return;
      }
      new UMSocialService.a(f.a(paramContext, paramString, paramVarArgs), paramb, paramVarArgs).execute(new Void[0]);
      return;
      if (!paramVarArgs[i].isValid()) {
        throw new a("parameter is not valid.");
      }
      if (i < j) {}
    }
  }
  
  public static void share(Context paramContext, String paramString, UMPlatformData... paramVarArgs)
  {
    a(paramContext, null, paramString, paramVarArgs);
  }
  
  public static void share(Context paramContext, UMPlatformData... paramVarArgs)
  {
    a(paramContext, null, null, paramVarArgs);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\analytics\social\UMSocialService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */