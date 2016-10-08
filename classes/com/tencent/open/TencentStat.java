package com.tencent.open;

import android.util.Log;
import com.tencent.stat.MtaSDkException;
import com.tencent.stat.StatConfig;
import com.tencent.stat.StatReportStrategy;
import com.tencent.stat.StatService;

public class TencentStat
{
  public static void a(TContext paramTContext, String paramString)
  {
    b(paramTContext);
    paramString = "Aqc" + paramString;
    StatConfig.setAutoExceptionCaught(false);
    StatConfig.setEnableSmartReporting(true);
    StatConfig.setSendPeriodMinutes(1440);
    StatConfig.setStatSendStrategy(StatReportStrategy.PERIOD);
    StatConfig.setStatReportUrl("http://cgi.connect.qq.com/qqconnectutil/sdk");
    try
    {
      StatService.startStatService(paramTContext.f(), paramString, "1.0.0");
      return;
    }
    catch (MtaSDkException paramTContext)
    {
      Log.e("DEBUG", "MTA init Failed.");
    }
  }
  
  public static void a(TContext paramTContext, String paramString, String... paramVarArgs)
  {
    b(paramTContext);
    StatService.trackCustomEvent(paramTContext.f(), paramString, paramVarArgs);
  }
  
  public static boolean a(TContext paramTContext)
  {
    return OpenConfig.a(paramTContext.f(), paramTContext.d()).d("Common_ta_enable");
  }
  
  public static void b(TContext paramTContext)
  {
    if (a(paramTContext))
    {
      StatConfig.setEnableStatService(true);
      return;
    }
    StatConfig.setEnableStatService(false);
  }
  
  public static void b(TContext paramTContext, String paramString)
  {
    b(paramTContext);
    if (paramString != null) {
      StatService.reportQQ(paramTContext.f(), paramString);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\open\TencentStat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */