package com.snowballfinance.message.io.logger;

import java.lang.reflect.Constructor;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public abstract class LoggerFactory
{
  private static String defaultInstance = "com.snowballfinance.message.io.logger.JdkLogger";
  private static final Map<String, Logger> loggerMap = new ConcurrentHashMap();
  
  public static void configure(String paramString)
  {
    defaultInstance = paramString;
  }
  
  public static Logger getLogger(Class<?> paramClass)
  {
    if (!loggerMap.containsKey(paramClass.getName())) {
      try
      {
        Logger localLogger = (Logger)Class.forName(defaultInstance).getConstructor(new Class[] { String.class }).newInstance(new Object[] { paramClass.getName() });
        loggerMap.put(paramClass.getName(), localLogger);
        return localLogger;
      }
      catch (Exception paramClass)
      {
        throw new RuntimeException(paramClass);
      }
    }
    return (Logger)loggerMap.get(paramClass.getName());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\message\io\logger\LoggerFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */