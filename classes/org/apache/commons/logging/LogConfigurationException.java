package org.apache.commons.logging;

public class LogConfigurationException
  extends RuntimeException
{
  private static final long serialVersionUID = 8486587136871052495L;
  protected Throwable cause = null;
  
  public LogConfigurationException() {}
  
  public LogConfigurationException(String paramString)
  {
    super(paramString);
  }
  
  public LogConfigurationException(String paramString, Throwable paramThrowable)
  {
    super(paramString + " (Caused by " + paramThrowable + ")");
    this.cause = paramThrowable;
  }
  
  public LogConfigurationException(Throwable paramThrowable) {}
  
  public Throwable getCause()
  {
    return this.cause;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\commons\logging\LogConfigurationException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */