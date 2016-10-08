package com.tencent.stat;

import android.content.Context;
import com.tencent.stat.common.StatCommonHelper;
import com.tencent.stat.common.StatLogger;
import com.tencent.stat.common.StatPreferences;
import java.util.Iterator;
import org.apache.http.HttpHost;
import org.json.JSONException;
import org.json.JSONObject;

public class StatConfig
{
  static String HIBERNATE;
  private static String appkey;
  private static volatile int curSessionStatReportCount;
  private static int currentDaySessionNumbers;
  private static boolean enableSmartReporting;
  private static boolean enableStatService;
  private static String installChannel;
  public static boolean isAutoExceptionCaught;
  private static long lastReportStrategyCheckTime;
  private static StatLogger logger = ;
  private static int maxBatchReportCount;
  private static int maxDaySessionNumbers;
  private static int maxLoadEventCount;
  private static int maxParallelTimmingEvents;
  private static int maxReportEventLength = 4096;
  private static long maxReportStrategyCheckTime;
  private static int maxSendRetryCount;
  private static int maxSessionStatReportCount;
  private static int maxStoreEventCount;
  static String qq;
  private static boolean reportTrafficStat;
  static a sdkCfg;
  private static int sendPeriodMinutes;
  private static int sessionTimoutMillis;
  private static String statReportUrl;
  private static StatReportStrategy statSendStrategy;
  private static String ta_http_proxy;
  static a userCfg = new a(2);
  
  static
  {
    sdkCfg = new a(1);
    statSendStrategy = StatReportStrategy.APP_LAUNCH;
    enableStatService = true;
    sessionTimoutMillis = 30000;
    maxStoreEventCount = 1024;
    maxLoadEventCount = 30;
    maxSendRetryCount = 3;
    maxBatchReportCount = 30;
    HIBERNATE = "__HIBERNATE__";
    ta_http_proxy = null;
    qq = "";
    sendPeriodMinutes = 1440;
    maxParallelTimmingEvents = 1024;
    enableSmartReporting = true;
    lastReportStrategyCheckTime = 0L;
    maxReportStrategyCheckTime = 300000L;
    isAutoExceptionCaught = true;
    statReportUrl = "http://pingma.qq.com:80/mstat/report";
    maxSessionStatReportCount = 0;
    curSessionStatReportCount = 0;
    maxDaySessionNumbers = 20;
    currentDaySessionNumbers = 0;
    reportTrafficStat = false;
  }
  
  static void checkHibernate(JSONObject paramJSONObject)
  {
    try
    {
      paramJSONObject = paramJSONObject.getString(HIBERNATE);
      logger.d("hibernateVer:" + paramJSONObject + ", current version:1.0.0");
      long l = StatCommonHelper.getSDKLongVersion(paramJSONObject);
      if (StatCommonHelper.getSDKLongVersion("1.0.0") <= l)
      {
        StatPreferences.putLong(c.a(), HIBERNATE, l);
        setEnableStatService(false);
        logger.warn("MTA has disable for SDK version of " + paramJSONObject + " or lower.");
      }
      return;
    }
    catch (JSONException paramJSONObject)
    {
      logger.d("__HIBERNATE__ not found.");
    }
  }
  
  public static String getAppKey(Context paramContext)
  {
    if (appkey != null) {
      return appkey;
    }
    if ((paramContext != null) && (appkey == null)) {
      appkey = StatCommonHelper.getAppKey(paramContext);
    }
    if ((appkey == null) || (appkey.trim().length() == 0)) {
      logger.error("AppKey can not be null or empty, please read Developer's Guide first!");
    }
    return appkey;
  }
  
  public static int getCurSessionStatReportCount()
  {
    return curSessionStatReportCount;
  }
  
  static int getCurrentDaySessionNumbers()
  {
    return currentDaySessionNumbers;
  }
  
  public static String getCustomProperty(String paramString)
  {
    try
    {
      paramString = userCfg.b.getString(paramString);
      return paramString;
    }
    catch (JSONException paramString) {}
    return null;
  }
  
  public static String getCustomProperty(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = userCfg.b.getString(paramString1);
      if (paramString1 != null) {
        paramString2 = paramString1;
      }
      return paramString2;
    }
    catch (JSONException paramString1) {}
    return paramString2;
  }
  
  public static String getInstallChannel(Context paramContext)
  {
    if (installChannel != null) {
      return installChannel;
    }
    paramContext = StatCommonHelper.getInstallChannel(paramContext);
    installChannel = paramContext;
    if ((paramContext == null) || (installChannel.trim().length() == 0)) {
      logger.e("installChannel can not be null or empty, please read Developer's Guide first!");
    }
    return installChannel;
  }
  
  public static int getMaxBatchReportCount()
  {
    return maxBatchReportCount;
  }
  
  public static int getMaxDaySessionNumbers()
  {
    return maxDaySessionNumbers;
  }
  
  static int getMaxLoadEventCount()
  {
    return maxLoadEventCount;
  }
  
  public static int getMaxParallelTimmingEvents()
  {
    return maxParallelTimmingEvents;
  }
  
  public static int getMaxReportEventLength()
  {
    return maxReportEventLength;
  }
  
  public static int getMaxSendRetryCount()
  {
    return maxSendRetryCount;
  }
  
  public static int getMaxSessionStatReportCount()
  {
    return maxSessionStatReportCount;
  }
  
  public static int getMaxStoreEventCount()
  {
    return maxStoreEventCount;
  }
  
  public static String getQQ()
  {
    return qq;
  }
  
  public static int getSendPeriodMinutes()
  {
    return sendPeriodMinutes;
  }
  
  public static int getSessionTimoutMillis()
  {
    return sessionTimoutMillis;
  }
  
  static HttpHost getStatHttpProxy()
  {
    if ((ta_http_proxy != null) && (ta_http_proxy.length() > 0))
    {
      String str = ta_http_proxy;
      String[] arrayOfString = str.split(":");
      int i = 80;
      if (arrayOfString.length == 2)
      {
        str = arrayOfString[0];
        i = Integer.parseInt(arrayOfString[1]);
      }
      return new HttpHost(str, i);
    }
    return null;
  }
  
  public static String getStatReportUrl()
  {
    return statReportUrl;
  }
  
  public static StatReportStrategy getStatSendStrategy()
  {
    return statSendStrategy;
  }
  
  static String getStoredAppkeys(Context paramContext)
  {
    return StatCommonHelper.decode(StatPreferences.getString(paramContext, "_mta_ky_tag_", null));
  }
  
  static void incCurSessionStatReportCount()
  {
    try
    {
      curSessionStatReportCount += 1;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  static void incCurrentDaySessionNumbers()
  {
    currentDaySessionNumbers += 1;
  }
  
  public static boolean isAutoExceptionCaught()
  {
    return isAutoExceptionCaught;
  }
  
  static boolean isBetween(int paramInt1, int paramInt2, int paramInt3)
  {
    return (paramInt1 >= paramInt2) && (paramInt1 <= paramInt3);
  }
  
  public static boolean isDebugEnable()
  {
    return StatCommonHelper.getLogger().isDebugEnable();
  }
  
  public static boolean isEnableSmartReporting()
  {
    return enableSmartReporting;
  }
  
  public static boolean isEnableStatService()
  {
    return enableStatService;
  }
  
  public static void setAppKey(Context paramContext, String paramString)
  {
    if (paramContext == null) {
      logger.error("ctx in StatConfig.setAppKey() is null");
    }
    do
    {
      return;
      if ((paramString == null) || (paramString.length() > 256))
      {
        logger.error("appkey in StatConfig.setAppKey() is null or exceed 256 bytes");
        return;
      }
      if (appkey == null) {
        appkey = getStoredAppkeys(paramContext);
      }
    } while (!(updateAppkeys(paramString) | updateAppkeys(StatCommonHelper.getAppKey(paramContext))));
    storeAppkeys(paramContext, appkey);
  }
  
  @Deprecated
  public static void setAppKey(String paramString)
  {
    if (paramString == null)
    {
      logger.error("appkey in StatConfig.setAppKey() is null");
      return;
    }
    if (paramString.length() > 256)
    {
      logger.error("The length of appkey cann't exceed 256 bytes.");
      return;
    }
    appkey = paramString;
  }
  
  public static void setAutoExceptionCaught(boolean paramBoolean)
  {
    isAutoExceptionCaught = paramBoolean;
  }
  
  static void setConfig(a parama)
  {
    if (parama.a == sdkCfg.a)
    {
      sdkCfg = parama;
      updateReportStrategy(parama.b);
    }
    while (parama.a != userCfg.a) {
      return;
    }
    userCfg = parama;
  }
  
  static void setCurSessionStatReportCount(int paramInt)
  {
    try
    {
      curSessionStatReportCount = paramInt;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  static void setCurrentDaySessionNumbers(int paramInt)
  {
    if (paramInt < 0) {
      return;
    }
    currentDaySessionNumbers = paramInt;
  }
  
  public static void setDebugEnable(boolean paramBoolean)
  {
    StatCommonHelper.getLogger().setDebugEnable(paramBoolean);
  }
  
  public static void setEnableSmartReporting(boolean paramBoolean)
  {
    enableSmartReporting = paramBoolean;
  }
  
  public static void setEnableStatService(boolean paramBoolean)
  {
    enableStatService = paramBoolean;
    if (!paramBoolean) {
      logger.warn("!!!!!!MTA StatService has been disabled!!!!!!");
    }
  }
  
  public static void setInstallChannel(String paramString)
  {
    if (paramString.length() > 128)
    {
      logger.error("the length of installChannel can not exceed the range of 128 bytes.");
      return;
    }
    installChannel = paramString;
  }
  
  public static void setMaxBatchReportCount(int paramInt)
  {
    if (!isBetween(paramInt, 2, 1000))
    {
      logger.error("setMaxBatchReportCount can not exceed the range of [2,1000].");
      return;
    }
    maxBatchReportCount = paramInt;
  }
  
  public static void setMaxDaySessionNumbers(int paramInt)
  {
    if (paramInt <= 0)
    {
      logger.e("maxDaySessionNumbers must be greater than 0.");
      return;
    }
    maxDaySessionNumbers = paramInt;
  }
  
  public static void setMaxParallelTimmingEvents(int paramInt)
  {
    if (!isBetween(paramInt, 1, 4096))
    {
      logger.error("setMaxParallelTimmingEvents can not exceed the range of [1, 4096].");
      return;
    }
    maxParallelTimmingEvents = paramInt;
  }
  
  public static void setMaxReportEventLength(int paramInt)
  {
    if (paramInt <= 0)
    {
      logger.error("maxReportEventLength on setMaxReportEventLength() must greater than 0.");
      return;
    }
    maxReportEventLength = paramInt;
  }
  
  public static void setMaxSendRetryCount(int paramInt)
  {
    if (!isBetween(paramInt, 1, 10))
    {
      logger.error("setMaxSendRetryCount can not exceed the range of [1,10].");
      return;
    }
    maxSendRetryCount = paramInt;
  }
  
  public static void setMaxSessionStatReportCount(int paramInt)
  {
    if (paramInt < 0)
    {
      logger.error("maxSessionStatReportCount cannot be less than 0.");
      return;
    }
    maxSessionStatReportCount = paramInt;
  }
  
  public static void setMaxStoreEventCount(int paramInt)
  {
    if (!isBetween(paramInt, 0, 500000))
    {
      logger.error("setMaxStoreEventCount can not exceed the range of [0, 500000].");
      return;
    }
    maxStoreEventCount = paramInt;
  }
  
  public static void setQQ(Context paramContext, String paramString)
  {
    StatService.reportQQ(paramContext, paramString);
  }
  
  public static void setSendPeriodMinutes(int paramInt)
  {
    if (!isBetween(paramInt, 1, 10080))
    {
      logger.error("setSendPeriodMinutes can not exceed the range of [1, 7*24*60] minutes.");
      return;
    }
    sendPeriodMinutes = paramInt;
  }
  
  public static void setSessionTimoutMillis(int paramInt)
  {
    if (!isBetween(paramInt, 1000, 86400000))
    {
      logger.error("setSessionTimoutMillis can not exceed the range of [1000, 24 * 60 * 60 * 1000].");
      return;
    }
    sessionTimoutMillis = paramInt;
  }
  
  public static void setStatReportUrl(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
    {
      logger.error("statReportUrl cannot be null or empty.");
      return;
    }
    statReportUrl = paramString;
  }
  
  public static void setStatSendStrategy(StatReportStrategy paramStatReportStrategy)
  {
    statSendStrategy = paramStatReportStrategy;
    logger.d("Change to statSendStrategy: " + paramStatReportStrategy);
  }
  
  static void storeAppkeys(Context paramContext, String paramString)
  {
    if (paramString != null) {
      StatPreferences.putString(paramContext, "_mta_ky_tag_", StatCommonHelper.encode(paramString));
    }
  }
  
  private static boolean updateAppkeys(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return false;
      if (appkey == null)
      {
        appkey = paramString;
        return true;
      }
    } while (appkey.contains(paramString));
    appkey = appkey + "|" + paramString;
    return true;
  }
  
  static void updateCfg(a parama, JSONObject paramJSONObject)
  {
    do
    {
      for (;;)
      {
        String str;
        try
        {
          Iterator localIterator = paramJSONObject.keys();
          if (!localIterator.hasNext()) {
            break;
          }
          str = (String)localIterator.next();
          if (str.equalsIgnoreCase("v"))
          {
            parama.d = paramJSONObject.getInt(str);
            continue;
          }
        }
        catch (JSONException parama)
        {
          logger.e(parama);
          return;
          if (str.equalsIgnoreCase("c"))
          {
            str = paramJSONObject.getString("c");
            if (str.length() <= 0) {
              continue;
            }
            parama.b = new JSONObject(str);
            continue;
          }
        }
        catch (Throwable parama)
        {
          logger.e(parama);
          return;
        }
        if (str.equalsIgnoreCase("m")) {
          parama.c = paramJSONObject.getString("m");
        }
      }
      paramJSONObject = StatStore.getInstance(c.a());
      if (paramJSONObject != null) {
        paramJSONObject.storeCfg(parama);
      }
    } while (parama.a != sdkCfg.a);
    updateReportStrategy(parama.b);
    checkHibernate(parama.b);
  }
  
  static void updateOnlineConfig(JSONObject paramJSONObject)
  {
    for (;;)
    {
      try
      {
        Iterator localIterator = paramJSONObject.keys();
        if (localIterator.hasNext())
        {
          localObject = (String)localIterator.next();
          if (((String)localObject).equalsIgnoreCase(Integer.toString(sdkCfg.a)))
          {
            localObject = paramJSONObject.getJSONObject((String)localObject);
            updateCfg(sdkCfg, (JSONObject)localObject);
          }
        }
        else
        {
          return;
        }
      }
      catch (JSONException paramJSONObject)
      {
        logger.e(paramJSONObject);
      }
      do
      {
        if (((String)localObject).equalsIgnoreCase(Integer.toString(userCfg.a)))
        {
          localObject = paramJSONObject.getJSONObject((String)localObject);
          updateCfg(userCfg, (JSONObject)localObject);
          break;
        }
      } while (!((String)localObject).equalsIgnoreCase("rs"));
      Object localObject = StatReportStrategy.getStatReportStrategy(paramJSONObject.getInt((String)localObject));
      if (localObject != null)
      {
        statSendStrategy = (StatReportStrategy)localObject;
        logger.d("Change to ReportStrategy:" + ((StatReportStrategy)localObject).name());
      }
    }
  }
  
  static void updateReportStrategy(JSONObject paramJSONObject)
  {
    try
    {
      paramJSONObject = StatReportStrategy.getStatReportStrategy(paramJSONObject.getInt("rs"));
      if (paramJSONObject != null)
      {
        setStatSendStrategy(paramJSONObject);
        logger.debug("Change to ReportStrategy: " + paramJSONObject.name());
      }
      return;
    }
    catch (JSONException paramJSONObject)
    {
      logger.d("rs not found.");
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\stat\StatConfig.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */