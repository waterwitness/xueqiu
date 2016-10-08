package com.tencent.stat.common;

import android.util.Log;
import com.tencent.stat.StatConfig;

public final class StatLogger
{
  private boolean debugEnable = true;
  private int logLevel = 2;
  private String tag = "default";
  
  public StatLogger() {}
  
  public StatLogger(String paramString)
  {
    this.tag = paramString;
  }
  
  private String getLoggerClassInfo()
  {
    StackTraceElement[] arrayOfStackTraceElement = Thread.currentThread().getStackTrace();
    if (arrayOfStackTraceElement == null) {}
    for (;;)
    {
      return null;
      int j = arrayOfStackTraceElement.length;
      int i = 0;
      while (i < j)
      {
        StackTraceElement localStackTraceElement = arrayOfStackTraceElement[i];
        if ((!localStackTraceElement.isNativeMethod()) && (!localStackTraceElement.getClassName().equals(Thread.class.getName())) && (!localStackTraceElement.getClassName().equals(getClass().getName()))) {
          return "[" + Thread.currentThread().getName() + "(" + Thread.currentThread().getId() + "): " + localStackTraceElement.getFileName() + ":" + localStackTraceElement.getLineNumber() + "]";
        }
        i += 1;
      }
    }
  }
  
  public final void d(Object paramObject)
  {
    if (isDebugEnable()) {
      debug(paramObject);
    }
  }
  
  public final void debug(Object paramObject)
  {
    String str;
    if (this.logLevel <= 3)
    {
      str = getLoggerClassInfo();
      if (str != null) {
        break label32;
      }
    }
    label32:
    for (paramObject = paramObject.toString();; paramObject = str + " - " + paramObject)
    {
      Log.d(this.tag, (String)paramObject);
      return;
    }
  }
  
  public final void e(Exception paramException)
  {
    if (StatConfig.isDebugEnable()) {
      error(paramException);
    }
  }
  
  public final void e(Object paramObject)
  {
    if (isDebugEnable()) {
      error(paramObject);
    }
  }
  
  public final void error(Exception paramException)
  {
    if (this.logLevel <= 6)
    {
      StringBuffer localStringBuffer = new StringBuffer();
      String str = getLoggerClassInfo();
      StackTraceElement[] arrayOfStackTraceElement = paramException.getStackTrace();
      if (str != null) {
        localStringBuffer.append(str + " - " + paramException + "\r\n");
      }
      while ((arrayOfStackTraceElement != null) && (arrayOfStackTraceElement.length > 0))
      {
        int j = arrayOfStackTraceElement.length;
        int i = 0;
        while (i < j)
        {
          paramException = arrayOfStackTraceElement[i];
          if (paramException != null) {
            localStringBuffer.append("[ " + paramException.getFileName() + ":" + paramException.getLineNumber() + " ]\r\n");
          }
          i += 1;
        }
        localStringBuffer.append(paramException + "\r\n");
      }
      Log.e(this.tag, localStringBuffer.toString());
    }
  }
  
  public final void error(Object paramObject)
  {
    String str;
    if (this.logLevel <= 6)
    {
      str = getLoggerClassInfo();
      if (str != null) {
        break label33;
      }
    }
    label33:
    for (paramObject = paramObject.toString();; paramObject = str + " - " + paramObject)
    {
      Log.e(this.tag, (String)paramObject);
      return;
    }
  }
  
  public final int getLogLevel()
  {
    return this.logLevel;
  }
  
  public final void i(Object paramObject)
  {
    if (isDebugEnable()) {
      info(paramObject);
    }
  }
  
  public final void info(Object paramObject)
  {
    String str;
    if (this.logLevel <= 4)
    {
      str = getLoggerClassInfo();
      if (str != null) {
        break label32;
      }
    }
    label32:
    for (paramObject = paramObject.toString();; paramObject = str + " - " + paramObject)
    {
      Log.i(this.tag, (String)paramObject);
      return;
    }
  }
  
  public final boolean isDebugEnable()
  {
    return this.debugEnable;
  }
  
  public final void setDebugEnable(boolean paramBoolean)
  {
    this.debugEnable = paramBoolean;
  }
  
  public final void setLogLevel(int paramInt)
  {
    this.logLevel = paramInt;
  }
  
  public final void setTag(String paramString)
  {
    this.tag = paramString;
  }
  
  public final void v(Object paramObject)
  {
    if (isDebugEnable()) {
      verbose(paramObject);
    }
  }
  
  public final void verbose(Object paramObject)
  {
    String str;
    if (this.logLevel <= 2)
    {
      str = getLoggerClassInfo();
      if (str != null) {
        break label32;
      }
    }
    label32:
    for (paramObject = paramObject.toString();; paramObject = str + " - " + paramObject)
    {
      Log.v(this.tag, (String)paramObject);
      return;
    }
  }
  
  public final void w(Object paramObject)
  {
    if (isDebugEnable()) {
      warn(paramObject);
    }
  }
  
  public final void warn(Object paramObject)
  {
    String str;
    if (this.logLevel <= 5)
    {
      str = getLoggerClassInfo();
      if (str != null) {
        break label32;
      }
    }
    label32:
    for (paramObject = paramObject.toString();; paramObject = str + " - " + paramObject)
    {
      Log.w(this.tag, (String)paramObject);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\stat\common\StatLogger.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */