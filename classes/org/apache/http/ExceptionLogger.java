package org.apache.http;

public abstract interface ExceptionLogger
{
  public static final ExceptionLogger NO_OP = new ExceptionLogger()
  {
    public final void log(Exception paramAnonymousException) {}
  };
  public static final ExceptionLogger STD_ERR = new ExceptionLogger()
  {
    public final void log(Exception paramAnonymousException)
    {
      paramAnonymousException.printStackTrace();
    }
  };
  
  public abstract void log(Exception paramException);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\ExceptionLogger.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */