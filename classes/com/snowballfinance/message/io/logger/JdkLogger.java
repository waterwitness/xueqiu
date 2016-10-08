package com.snowballfinance.message.io.logger;

import java.io.PrintStream;
import java.io.Serializable;
import java.util.logging.Level;

public final class JdkLogger
  extends Logger
  implements Serializable
{
  private static final long serialVersionUID = -6740502646958462638L;
  private transient java.util.logging.Logger logger;
  
  public JdkLogger(String paramString)
  {
    super(paramString);
    this.logger = java.util.logging.Logger.getLogger(paramString);
  }
  
  public final void debug(String paramString)
  {
    System.out.println(paramString);
  }
  
  public final void debug(String paramString, Throwable paramThrowable)
  {
    this.logger.log(Level.FINE, paramString, paramThrowable);
  }
  
  public final void error(String paramString)
  {
    this.logger.log(Level.SEVERE, paramString);
  }
  
  public final void error(String paramString, Throwable paramThrowable)
  {
    this.logger.log(Level.SEVERE, paramString, paramThrowable);
  }
  
  public final void fatal(String paramString)
  {
    this.logger.log(Level.SEVERE, paramString);
  }
  
  public final void fatal(String paramString, Throwable paramThrowable)
  {
    this.logger.log(Level.SEVERE, paramString, paramThrowable);
  }
  
  public final void info(String paramString)
  {
    this.logger.log(Level.INFO, paramString);
  }
  
  public final void info(String paramString, Throwable paramThrowable)
  {
    this.logger.log(Level.INFO, paramString, paramThrowable);
  }
  
  public final boolean isDebugEnabled()
  {
    return true;
  }
  
  public final boolean isErrorEnabled()
  {
    return this.logger.isLoggable(Level.SEVERE);
  }
  
  public final boolean isFatalEnabled()
  {
    return this.logger.isLoggable(Level.SEVERE);
  }
  
  public final boolean isInfoEnabled()
  {
    return this.logger.isLoggable(Level.INFO);
  }
  
  public final boolean isTraceEnabled()
  {
    return this.logger.isLoggable(Level.FINEST);
  }
  
  public final boolean isWarnEnabled()
  {
    return this.logger.isLoggable(Level.WARNING);
  }
  
  public final void trace(String paramString)
  {
    this.logger.log(Level.FINEST, paramString);
  }
  
  public final void trace(String paramString, Throwable paramThrowable)
  {
    this.logger.log(Level.FINEST, paramString, paramThrowable);
  }
  
  public final void warn(String paramString)
  {
    System.out.println(paramString);
  }
  
  public final void warn(String paramString, Throwable paramThrowable)
  {
    System.out.println(String.format("%s\n%s", new Object[] { paramString, paramThrowable.getMessage() }));
    paramThrowable.printStackTrace();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\message\io\logger\JdkLogger.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */