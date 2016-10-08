package com.tencent.tauth.http;

public class CommonException
  extends Throwable
{
  private static final long serialVersionUID = 1L;
  private int mErrorCode = 0;
  private String mErrorType;
  
  public CommonException(String paramString)
  {
    super(paramString);
  }
  
  public CommonException(String paramString1, String paramString2, int paramInt)
  {
    super(paramString1);
    this.mErrorType = paramString2;
    this.mErrorCode = paramInt;
  }
  
  public int getErrorCode()
  {
    return this.mErrorCode;
  }
  
  public String getErrorType()
  {
    return this.mErrorType;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\tauth\http\CommonException.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */