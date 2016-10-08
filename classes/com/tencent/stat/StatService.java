package com.tencent.stat;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.tencent.stat.common.Env;
import com.tencent.stat.common.SdkProtection;
import com.tencent.stat.common.StatCommonHelper;
import com.tencent.stat.common.StatLogger;
import com.tencent.stat.common.StatPreferences;
import com.tencent.stat.common.User;
import com.tencent.stat.event.AdditionEvent;
import com.tencent.stat.event.CustomEvent;
import com.tencent.stat.event.CustomEvent.Key;
import com.tencent.stat.event.ErrorEvent;
import com.tencent.stat.event.Event;
import com.tencent.stat.event.MonitorStatEvent;
import com.tencent.stat.event.PageView;
import com.tencent.stat.event.SessionEnv;
import java.util.Map;
import java.util.Properties;
import java.util.WeakHashMap;
import org.json.JSONException;
import org.json.JSONObject;

public class StatService
{
  private static boolean firstSession = true;
  private static Handler handler;
  private static volatile long lastActivityTimestamp;
  private static volatile String lastReferPageId;
  private static volatile String last_pageId;
  private static StatLogger logger;
  private static volatile long nextDayStartTimestamp;
  private static Thread.UncaughtExceptionHandler originalExceptionHandler;
  private static volatile int sessionId;
  private static Map<CustomEvent.Key, Long> timedEventMap = new WeakHashMap();
  private static Map<String, Long> timedPageEventMap;
  
  static
  {
    lastActivityTimestamp = 0L;
    nextDayStartTimestamp = 0L;
    sessionId = 0;
    last_pageId = "";
    lastReferPageId = "";
    timedPageEventMap = new WeakHashMap();
    logger = StatCommonHelper.getLogger();
    originalExceptionHandler = null;
  }
  
  public static void commitEvents(Context paramContext, int paramInt)
  {
    if (!StatConfig.isEnableStatService()) {
      return;
    }
    if (paramContext == null)
    {
      logger.error("The Context of StatService.commitEvents() can not be null!");
      return;
    }
    if ((paramInt < -1) || (paramInt == 0))
    {
      logger.error("The maxNumber of StatService.commitEvents() should be -1 or bigger than 0.");
      return;
    }
    try
    {
      StatStore.getInstance(paramContext).loadEvents(paramInt);
      return;
    }
    catch (Throwable localThrowable)
    {
      reportSdkSelfException(paramContext, localThrowable);
    }
  }
  
  static JSONObject getEncodeConfig()
  {
    JSONObject localJSONObject1 = new JSONObject();
    try
    {
      JSONObject localJSONObject2 = new JSONObject();
      if (StatConfig.sdkCfg.d != 0) {
        localJSONObject2.put("v", StatConfig.sdkCfg.d);
      }
      localJSONObject1.put(Integer.toString(StatConfig.sdkCfg.a), localJSONObject2);
      localJSONObject2 = new JSONObject();
      if (StatConfig.userCfg.d != 0) {
        localJSONObject2.put("v", StatConfig.userCfg.d);
      }
      localJSONObject1.put(Integer.toString(StatConfig.userCfg.a), localJSONObject2);
      return localJSONObject1;
    }
    catch (JSONException localJSONException)
    {
      logger.e(localJSONException);
    }
    return localJSONObject1;
  }
  
  private static Handler getHandler(Context paramContext)
  {
    init(paramContext);
    return handler;
  }
  
  static int getSessionID(Context paramContext, boolean paramBoolean)
  {
    int j = 1;
    long l = System.currentTimeMillis();
    if ((paramBoolean) && (l - lastActivityTimestamp >= StatConfig.getSessionTimoutMillis())) {}
    for (int i = 1;; i = 0)
    {
      lastActivityTimestamp = l;
      if (nextDayStartTimestamp == 0L) {
        nextDayStartTimestamp = StatCommonHelper.getTomorrowStartMilliseconds();
      }
      if (l >= nextDayStartTimestamp)
      {
        nextDayStartTimestamp = StatCommonHelper.getTomorrowStartMilliseconds();
        if (StatStore.getInstance(paramContext).getUser(paramContext).getType() != 1) {
          StatStore.getInstance(paramContext).getUser(paramContext).setType(1);
        }
        StatConfig.setCurrentDaySessionNumbers(0);
        i = 1;
      }
      if (firstSession) {
        i = j;
      }
      for (;;)
      {
        if (i != 0)
        {
          if (StatConfig.getCurrentDaySessionNumbers() >= StatConfig.getMaxDaySessionNumbers()) {
            break label137;
          }
          sendNewSessionEnv(paramContext);
        }
        for (;;)
        {
          if (firstSession)
          {
            SdkProtection.endCheck(paramContext);
            firstSession = false;
          }
          return sessionId;
          label137:
          logger.e("Exceed StatConfig.getMaxDaySessionNumbers().");
        }
      }
    }
  }
  
  static void init(Context paramContext)
  {
    if (paramContext == null) {}
    while ((handler != null) || (!isServiceStatActive(paramContext))) {
      return;
    }
    if (!SdkProtection.beginCheck(paramContext))
    {
      logger.error("ooh, Compatibility problem was found in this device!");
      logger.error("If you are on debug mode, please delete apk and try again.");
      StatConfig.setEnableStatService(false);
      return;
    }
    StatStore.getInstance(paramContext);
    HandlerThread localHandlerThread = new HandlerThread("StatService");
    localHandlerThread.start();
    c.a(paramContext);
    handler = new Handler(localHandlerThread.getLooper());
    originalExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
    if (StatConfig.isAutoExceptionCaught()) {
      Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler()
      {
        public final void uncaughtException(Thread paramAnonymousThread, Throwable paramAnonymousThrowable)
        {
          if (!StatConfig.isEnableStatService()) {
            return;
          }
          StatStore.getInstance(StatService.this).storeEvent(new ErrorEvent(StatService.this, StatService.getSessionID(StatService.this, false), 2, paramAnonymousThrowable), null);
          StatService.logger.debug("MTA has caught the following uncaught exception:");
          StatService.logger.error(paramAnonymousThrowable);
          if (StatService.originalExceptionHandler != null)
          {
            StatService.logger.debug("Call the original uncaught exception handler.");
            StatService.originalExceptionHandler.uncaughtException(paramAnonymousThread, paramAnonymousThrowable);
            return;
          }
          StatService.logger.debug("Original uncaught exception handler not set.");
        }
      });
    }
    for (;;)
    {
      if ((StatConfig.getStatSendStrategy() == StatReportStrategy.APP_LAUNCH) && (StatCommonHelper.isNetworkAvailable(paramContext))) {
        StatStore.getInstance(paramContext).loadEvents(-1);
      }
      logger.d("Init MTA StatService success.");
      return;
      logger.warn("MTA SDK AutoExceptionCaught is disable");
    }
  }
  
  static boolean isEmpty(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }
  
  static boolean isServiceStatActive(Context paramContext)
  {
    long l = StatPreferences.getLong(paramContext, StatConfig.HIBERNATE, 0L);
    if (StatCommonHelper.getSDKLongVersion("1.0.0") <= l)
    {
      StatConfig.setEnableStatService(false);
      return false;
    }
    return true;
  }
  
  public static void onPause(Context paramContext)
  {
    if (!StatConfig.isEnableStatService()) {
      return;
    }
    if (paramContext == null)
    {
      logger.error("The Context of StatService.onPause() can not be null!");
      return;
    }
    String str;
    try
    {
      str = StatCommonHelper.getActivityName(paramContext);
      Object localObject = (Long)timedPageEventMap.remove(str);
      if (localObject != null)
      {
        Long localLong = Long.valueOf((System.currentTimeMillis() - ((Long)localObject).longValue()) / 1000L);
        localObject = localLong;
        if (localLong.longValue() == 0L) {
          localObject = Long.valueOf(1L);
        }
        if (lastReferPageId.equals(str) == true) {
          lastReferPageId = "-";
        }
        localObject = new PageView(paramContext, lastReferPageId, getSessionID(paramContext, false), (Long)localObject);
        if (!((PageView)localObject).getPageId().equals(last_pageId)) {
          logger.warn("Invalid invocation since previous onResume on diff page.");
        }
        if (getHandler(paramContext) != null) {
          getHandler(paramContext).post(new d((Event)localObject));
        }
        lastReferPageId = str;
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      reportSdkSelfException(paramContext, localThrowable);
      return;
    }
    logger.e("Starttime for PageID:" + str + " not found, lost onResume()?");
  }
  
  public static void onResume(Context paramContext)
  {
    if (!StatConfig.isEnableStatService()) {}
    String str;
    do
    {
      return;
      if (paramContext == null)
      {
        logger.error("The Context of StatService.onResume() can not be null!");
        return;
      }
      try
      {
        if (timedPageEventMap.size() >= StatConfig.getMaxParallelTimmingEvents())
        {
          logger.error("The number of page events exceeds the maximum value " + Integer.toString(StatConfig.getMaxParallelTimmingEvents()));
          return;
        }
      }
      catch (Throwable localThrowable)
      {
        reportSdkSelfException(paramContext, localThrowable);
        return;
      }
      str = StatCommonHelper.getActivityName(paramContext);
      last_pageId = str;
    } while (str == null);
    if (timedPageEventMap.containsKey(last_pageId))
    {
      logger.e("Duplicate PageID : " + last_pageId + ", onResume() repeated?");
      return;
    }
    timedPageEventMap.put(last_pageId, Long.valueOf(System.currentTimeMillis()));
    getSessionID(paramContext, true);
  }
  
  public static void reportAppMonitorStat(Context paramContext, StatAppMonitor paramStatAppMonitor)
  {
    if (!StatConfig.isEnableStatService()) {}
    for (;;)
    {
      return;
      if (paramContext == null)
      {
        logger.error("The Context of StatService.reportAppMonitorStat() can not be null!");
        return;
      }
      if (paramStatAppMonitor == null)
      {
        logger.error("The StatAppMonitor of StatService.reportAppMonitorStat() can not be null!");
        return;
      }
      if (paramStatAppMonitor.getInterfaceName() == null)
      {
        logger.error("The interfaceName of StatAppMonitor on StatService.reportAppMonitorStat() can not be null!");
        return;
      }
      try
      {
        paramStatAppMonitor = new MonitorStatEvent(paramContext, getSessionID(paramContext, false), paramStatAppMonitor);
        if (getHandler(paramContext) != null)
        {
          getHandler(paramContext).post(new d(paramStatAppMonitor));
          return;
        }
      }
      catch (Throwable paramStatAppMonitor)
      {
        reportSdkSelfException(paramContext, paramStatAppMonitor);
      }
    }
  }
  
  public static void reportError(Context paramContext, String paramString)
  {
    if (!StatConfig.isEnableStatService()) {}
    for (;;)
    {
      return;
      if (paramContext == null)
      {
        logger.error("The Context of StatService.reportError() can not be null!");
        return;
      }
      if (isEmpty(paramString))
      {
        logger.error("Error message in StatService.reportError() is empty.");
        return;
      }
      try
      {
        paramString = new ErrorEvent(paramContext, getSessionID(paramContext, false), paramString);
        if (getHandler(paramContext) != null)
        {
          getHandler(paramContext).post(new d(paramString));
          return;
        }
      }
      catch (Throwable paramString)
      {
        reportSdkSelfException(paramContext, paramString);
      }
    }
  }
  
  public static void reportException(Context paramContext, Throwable paramThrowable)
  {
    if (!StatConfig.isEnableStatService()) {}
    do
    {
      return;
      if (paramContext == null)
      {
        logger.error("The Context of StatService.reportException() can not be null!");
        return;
      }
      if (paramThrowable == null)
      {
        logger.error("The Throwable error message of StatService.reportException() can not be null!");
        return;
      }
      paramThrowable = new ErrorEvent(paramContext, getSessionID(paramContext, false), 1, paramThrowable);
    } while (getHandler(paramContext) == null);
    getHandler(paramContext).post(new d(paramThrowable));
  }
  
  public static void reportQQ(Context paramContext, String paramString)
  {
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    if (!StatConfig.qq.equals(str))
    {
      StatConfig.qq = str;
      sendAdditionEvent(paramContext, null);
    }
  }
  
  static void reportSdkSelfException(Context paramContext, Throwable paramThrowable)
  {
    try
    {
      if (!StatConfig.isEnableStatService()) {
        return;
      }
      if (paramContext == null)
      {
        logger.error("The Context of StatService.reportSdkSelfException() can not be null!");
        return;
      }
    }
    catch (Throwable paramContext)
    {
      logger.e("reportSdkSelfException error: " + paramContext);
      return;
    }
    paramThrowable = new ErrorEvent(paramContext, getSessionID(paramContext, false), 99, paramThrowable);
    if (getHandler(paramContext) != null) {
      getHandler(paramContext).post(new d(paramThrowable));
    }
  }
  
  static void sendAdditionEvent(Context paramContext, Map<String, ?> paramMap)
  {
    if (!StatConfig.isEnableStatService()) {}
    for (;;)
    {
      return;
      if (paramContext == null)
      {
        logger.error("The Context of StatService.sendAdditionEvent() can not be null!");
        return;
      }
      try
      {
        paramMap = new AdditionEvent(paramContext, getSessionID(paramContext, false), paramMap);
        if (getHandler(paramContext) != null)
        {
          getHandler(paramContext).post(new d(paramMap));
          return;
        }
      }
      catch (Throwable paramMap)
      {
        reportSdkSelfException(paramContext, paramMap);
      }
    }
  }
  
  static void sendNewSessionEnv(Context paramContext)
  {
    if (getHandler(paramContext) != null)
    {
      logger.d("start new session.");
      sessionId = StatCommonHelper.getNextSessionID();
      StatConfig.setCurSessionStatReportCount(0);
      StatConfig.incCurrentDaySessionNumbers();
      getHandler(paramContext).post(new d(new SessionEnv(paramContext, sessionId, getEncodeConfig())));
    }
  }
  
  public static void setEnvAttributes(Context paramContext, Map<String, String> paramMap)
  {
    if ((paramMap == null) || (paramMap.size() > 512))
    {
      logger.error("The map in setEnvAttributes can't be null or its size can't exceed 512.");
      return;
    }
    try
    {
      Env.appendEnvAttr(paramContext, paramMap);
      return;
    }
    catch (JSONException paramContext)
    {
      logger.e(paramContext);
    }
  }
  
  public static void startNewSession(Context paramContext)
  {
    if (!StatConfig.isEnableStatService()) {
      return;
    }
    if (paramContext == null)
    {
      logger.error("The Context of StatService.startNewSession() can not be null!");
      return;
    }
    try
    {
      stopSession();
      getSessionID(paramContext, true);
      return;
    }
    catch (Throwable localThrowable)
    {
      reportSdkSelfException(paramContext, localThrowable);
    }
  }
  
  public static boolean startStatService(Context paramContext, String paramString1, String paramString2)
  {
    if (!StatConfig.isEnableStatService())
    {
      logger.error("MTA StatService is disable.");
      return false;
    }
    logger.d("MTA SDK version, current: " + "1.0.0" + " ,required: " + paramString2);
    if ((paramContext == null) || (paramString2 == null))
    {
      logger.error("Context or mtaSdkVersion in StatService.startStatService() is null, please check it!");
      StatConfig.setEnableStatService(false);
      throw new MtaSDkException("Context or mtaSdkVersion in StatService.startStatService() is null, please check it!");
    }
    if (StatCommonHelper.getSDKLongVersion("1.0.0") < StatCommonHelper.getSDKLongVersion(paramString2))
    {
      paramContext = "MTA SDK version conflicted, current: " + "1.0.0" + ",required: " + paramString2;
      paramContext = paramContext + ". please delete the current SDK and download the latest one. official website: http://mta.qq.com/ or http://mta.oa.com/";
      logger.error(paramContext);
      StatConfig.setEnableStatService(false);
      throw new MtaSDkException(paramContext);
    }
    try
    {
      paramString2 = StatConfig.getInstallChannel(paramContext);
      if ((paramString2 == null) || (paramString2.length() == 0)) {
        StatConfig.setInstallChannel("-");
      }
      StatConfig.setAppKey(paramContext, paramString1);
      getHandler(paramContext);
      return true;
    }
    catch (Throwable paramContext)
    {
      logger.e(paramContext);
    }
    return false;
  }
  
  public static void stopSession()
  {
    lastActivityTimestamp = 0L;
  }
  
  public static void trackCustomBeginEvent(Context paramContext, String paramString, String... paramVarArgs)
  {
    if (!StatConfig.isEnableStatService()) {
      return;
    }
    if (paramContext == null)
    {
      logger.error("The Context of StatService.trackCustomBeginEvent() can not be null!");
      return;
    }
    if (isEmpty(paramString))
    {
      logger.error("The event_id of StatService.trackCustomBeginEvent() can not be null or empty.");
      return;
    }
    try
    {
      paramString = new CustomEvent(paramContext, getSessionID(paramContext, false), paramString);
      paramString.setArgs(paramVarArgs);
      paramString = paramString.getKey();
      if (timedEventMap.containsKey(paramString))
      {
        logger.error("Duplicate CustomEvent key: " + paramString.toString() + ", trackCustomBeginEvent() repeated?");
        return;
      }
    }
    catch (Throwable paramString)
    {
      reportSdkSelfException(paramContext, paramString);
      return;
    }
    if (timedEventMap.size() <= StatConfig.getMaxParallelTimmingEvents())
    {
      timedEventMap.put(paramString, Long.valueOf(System.currentTimeMillis()));
      return;
    }
    logger.error("The number of timedEvent exceeds the maximum value " + Integer.toString(StatConfig.getMaxParallelTimmingEvents()));
  }
  
  public static void trackCustomBeginKVEvent(Context paramContext, String paramString, Properties paramProperties)
  {
    if (!StatConfig.isEnableStatService()) {
      return;
    }
    if (paramContext == null)
    {
      logger.error("The Context of StatService.trackCustomBeginEvent() can not be null!");
      return;
    }
    if (isEmpty(paramString))
    {
      logger.error("The event_id of StatService.trackCustomBeginEvent() can not be null or empty.");
      return;
    }
    try
    {
      paramString = new CustomEvent(paramContext, getSessionID(paramContext, false), paramString);
      paramString.setProperties(paramProperties);
      paramString = paramString.getKey();
      if (timedEventMap.containsKey(paramString))
      {
        logger.error("Duplicate CustomEvent key: " + paramString.toString() + ", trackCustomBeginKVEvent() repeated?");
        return;
      }
    }
    catch (Throwable paramString)
    {
      reportSdkSelfException(paramContext, paramString);
      return;
    }
    if (timedEventMap.size() <= StatConfig.getMaxParallelTimmingEvents())
    {
      timedEventMap.put(paramString, Long.valueOf(System.currentTimeMillis()));
      return;
    }
    logger.error("The number of timedEvent exceeds the maximum value " + Integer.toString(StatConfig.getMaxParallelTimmingEvents()));
  }
  
  public static void trackCustomEndEvent(Context paramContext, String paramString, String... paramVarArgs)
  {
    if (!StatConfig.isEnableStatService()) {
      return;
    }
    if (paramContext == null)
    {
      logger.error("The Context of StatService.trackCustomEndEvent() can not be null!");
      return;
    }
    if (isEmpty(paramString))
    {
      logger.error("The event_id of StatService.trackCustomEndEvent() can not be null or empty.");
      return;
    }
    for (;;)
    {
      try
      {
        paramString = new CustomEvent(paramContext, getSessionID(paramContext, false), paramString);
        paramString.setArgs(paramVarArgs);
        paramVarArgs = (Long)timedEventMap.remove(paramString.getKey());
        if (paramVarArgs == null) {
          break label155;
        }
        paramVarArgs = Long.valueOf((System.currentTimeMillis() - paramVarArgs.longValue()) / 1000L);
        if (paramVarArgs.longValue() == 0L)
        {
          l = 1L;
          paramString.setDuration(Long.valueOf(l).longValue());
          if (getHandler(paramContext) == null) {
            break;
          }
          getHandler(paramContext).post(new d(paramString));
          return;
        }
      }
      catch (Throwable paramString)
      {
        reportSdkSelfException(paramContext, paramString);
        return;
      }
      long l = paramVarArgs.longValue();
    }
    label155:
    logger.error("No start time found for custom event: " + paramString.getKey().toString() + ", lost trackCustomBeginEvent()?");
  }
  
  public static void trackCustomEndKVEvent(Context paramContext, String paramString, Properties paramProperties)
  {
    if (!StatConfig.isEnableStatService()) {
      return;
    }
    if (paramContext == null)
    {
      logger.error("The Context of StatService.trackCustomEndEvent() can not be null!");
      return;
    }
    if (isEmpty(paramString))
    {
      logger.error("The event_id of StatService.trackCustomEndEvent() can not be null or empty.");
      return;
    }
    for (;;)
    {
      try
      {
        paramString = new CustomEvent(paramContext, getSessionID(paramContext, false), paramString);
        paramString.setProperties(paramProperties);
        paramProperties = (Long)timedEventMap.remove(paramString.getKey());
        if (paramProperties == null) {
          break label155;
        }
        paramProperties = Long.valueOf((System.currentTimeMillis() - paramProperties.longValue()) / 1000L);
        if (paramProperties.longValue() == 0L)
        {
          l = 1L;
          paramString.setDuration(Long.valueOf(l).longValue());
          if (getHandler(paramContext) == null) {
            break;
          }
          getHandler(paramContext).post(new d(paramString));
          return;
        }
      }
      catch (Throwable paramString)
      {
        reportSdkSelfException(paramContext, paramString);
        return;
      }
      long l = paramProperties.longValue();
    }
    label155:
    logger.error("No start time found for custom event: " + paramString.getKey().toString() + ", lost trackCustomBeginKVEvent()?");
  }
  
  public static void trackCustomEvent(Context paramContext, String paramString, String... paramVarArgs)
  {
    if (!StatConfig.isEnableStatService()) {}
    for (;;)
    {
      return;
      if (paramContext == null)
      {
        logger.error("The Context of StatService.trackCustomEvent() can not be null!");
        return;
      }
      if (isEmpty(paramString))
      {
        logger.error("The event_id of StatService.trackCustomEvent() can not be null or empty.");
        return;
      }
      try
      {
        paramString = new CustomEvent(paramContext, getSessionID(paramContext, false), paramString);
        paramString.setArgs(paramVarArgs);
        if (getHandler(paramContext) != null)
        {
          getHandler(paramContext).post(new d(paramString));
          return;
        }
      }
      catch (Throwable paramString)
      {
        reportSdkSelfException(paramContext, paramString);
      }
    }
  }
  
  public static void trackCustomKVEvent(Context paramContext, String paramString, Properties paramProperties)
  {
    if (!StatConfig.isEnableStatService()) {}
    for (;;)
    {
      return;
      if (paramContext == null)
      {
        logger.error("The Context of StatService.trackCustomEvent() can not be null!");
        return;
      }
      if (isEmpty(paramString))
      {
        logger.error("The event_id of StatService.trackCustomEvent() can not be null or empty.");
        return;
      }
      try
      {
        paramString = new CustomEvent(paramContext, getSessionID(paramContext, false), paramString);
        paramString.setProperties(paramProperties);
        if (getHandler(paramContext) != null)
        {
          getHandler(paramContext).post(new d(paramString));
          return;
        }
      }
      catch (Throwable paramString)
      {
        reportSdkSelfException(paramContext, paramString);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\stat\StatService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */