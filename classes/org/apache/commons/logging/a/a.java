package org.apache.commons.logging.a;

import java.io.Serializable;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.logging.Log;

public class a
  implements Serializable, Log
{
  protected static final Level a = Level.FINE;
  protected transient Logger b;
  protected String c;
  
  private Logger a()
  {
    if (this.b == null) {
      this.b = Logger.getLogger(this.c);
    }
    return this.b;
  }
  
  private void a(Level paramLevel, String paramString, Throwable paramThrowable)
  {
    Logger localLogger = a();
    String str3;
    String str1;
    if (localLogger.isLoggable(paramLevel))
    {
      StackTraceElement[] arrayOfStackTraceElement = new Throwable().getStackTrace();
      str3 = this.c;
      String str2 = "unknown";
      str1 = str2;
      if (arrayOfStackTraceElement != null)
      {
        str1 = str2;
        if (arrayOfStackTraceElement.length > 2) {
          str1 = arrayOfStackTraceElement[2].getMethodName();
        }
      }
      if (paramThrowable == null) {
        localLogger.logp(paramLevel, str3, str1, paramString);
      }
    }
    else
    {
      return;
    }
    localLogger.logp(paramLevel, str3, str1, paramString, paramThrowable);
  }
  
  public void debug(Object paramObject)
  {
    a(Level.FINE, String.valueOf(paramObject), null);
  }
  
  public void debug(Object paramObject, Throwable paramThrowable)
  {
    a(Level.FINE, String.valueOf(paramObject), paramThrowable);
  }
  
  public void error(Object paramObject)
  {
    a(Level.SEVERE, String.valueOf(paramObject), null);
  }
  
  public void error(Object paramObject, Throwable paramThrowable)
  {
    a(Level.SEVERE, String.valueOf(paramObject), paramThrowable);
  }
  
  public void fatal(Object paramObject)
  {
    a(Level.SEVERE, String.valueOf(paramObject), null);
  }
  
  public void fatal(Object paramObject, Throwable paramThrowable)
  {
    a(Level.SEVERE, String.valueOf(paramObject), paramThrowable);
  }
  
  public void info(Object paramObject)
  {
    a(Level.INFO, String.valueOf(paramObject), null);
  }
  
  public void info(Object paramObject, Throwable paramThrowable)
  {
    a(Level.INFO, String.valueOf(paramObject), paramThrowable);
  }
  
  public boolean isDebugEnabled()
  {
    return a().isLoggable(Level.FINE);
  }
  
  public boolean isErrorEnabled()
  {
    return a().isLoggable(Level.SEVERE);
  }
  
  public boolean isFatalEnabled()
  {
    return a().isLoggable(Level.SEVERE);
  }
  
  public boolean isInfoEnabled()
  {
    return a().isLoggable(Level.INFO);
  }
  
  public boolean isTraceEnabled()
  {
    return a().isLoggable(Level.FINEST);
  }
  
  public boolean isWarnEnabled()
  {
    return a().isLoggable(Level.WARNING);
  }
  
  public void trace(Object paramObject)
  {
    a(Level.FINEST, String.valueOf(paramObject), null);
  }
  
  public void trace(Object paramObject, Throwable paramThrowable)
  {
    a(Level.FINEST, String.valueOf(paramObject), paramThrowable);
  }
  
  public void warn(Object paramObject)
  {
    a(Level.WARNING, String.valueOf(paramObject), null);
  }
  
  public void warn(Object paramObject, Throwable paramThrowable)
  {
    a(Level.WARNING, String.valueOf(paramObject), paramThrowable);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\commons\logging\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */