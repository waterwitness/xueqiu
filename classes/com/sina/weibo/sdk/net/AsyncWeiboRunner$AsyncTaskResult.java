package com.sina.weibo.sdk.net;

import com.sina.weibo.sdk.exception.WeiboException;

class AsyncWeiboRunner$AsyncTaskResult<T>
{
  private WeiboException error;
  private T result;
  
  public AsyncWeiboRunner$AsyncTaskResult(WeiboException paramWeiboException)
  {
    this.error = paramWeiboException;
  }
  
  public AsyncWeiboRunner$AsyncTaskResult(T paramT)
  {
    this.result = paramT;
  }
  
  public WeiboException getError()
  {
    return this.error;
  }
  
  public T getResult()
  {
    return (T)this.result;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\net\AsyncWeiboRunner$AsyncTaskResult.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */