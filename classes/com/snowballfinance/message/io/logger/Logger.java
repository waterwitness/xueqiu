package com.snowballfinance.message.io.logger;

public abstract class Logger
{
  public Logger(String paramString) {}
  
  public abstract void debug(String paramString);
  
  public abstract void debug(String paramString, Throwable paramThrowable);
  
  public abstract void error(String paramString);
  
  public abstract void error(String paramString, Throwable paramThrowable);
  
  public abstract void fatal(String paramString);
  
  public abstract void fatal(String paramString, Throwable paramThrowable);
  
  public abstract void info(String paramString);
  
  public abstract void info(String paramString, Throwable paramThrowable);
  
  public abstract boolean isDebugEnabled();
  
  public abstract boolean isErrorEnabled();
  
  public abstract boolean isFatalEnabled();
  
  public abstract boolean isInfoEnabled();
  
  public abstract boolean isTraceEnabled();
  
  public abstract boolean isWarnEnabled();
  
  public abstract void trace(String paramString);
  
  public abstract void trace(String paramString, Throwable paramThrowable);
  
  public abstract void warn(String paramString);
  
  public abstract void warn(String paramString, Throwable paramThrowable);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\message\io\logger\Logger.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */