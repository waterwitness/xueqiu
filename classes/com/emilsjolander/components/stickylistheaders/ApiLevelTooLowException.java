package com.emilsjolander.components.stickylistheaders;

public class ApiLevelTooLowException
  extends RuntimeException
{
  private static final long serialVersionUID = -5480068364264456757L;
  
  public ApiLevelTooLowException(int paramInt)
  {
    super("Requires API level " + paramInt);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\emilsjolander\components\stickylistheaders\ApiLevelTooLowException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */