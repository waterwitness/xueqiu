package com.sina.weibo.sdk.net;

import com.sina.weibo.sdk.exception.WeiboException;

public class AsyncWeiboRunner
{
  public static String request(String paramString1, WeiboParameters paramWeiboParameters, String paramString2)
  {
    return HttpManager.openUrl(paramString1, paramString2, paramWeiboParameters);
  }
  
  public static void requestAsync(String paramString1, WeiboParameters paramWeiboParameters, String paramString2, RequestListener paramRequestListener)
  {
    new AsyncWeiboRunner.RequestRunner(paramString1, paramWeiboParameters, paramString2, paramRequestListener).execute(new Void[1]);
  }
  
  @Deprecated
  public static void requestByThread(String paramString1, final WeiboParameters paramWeiboParameters, final String paramString2, final RequestListener paramRequestListener)
  {
    new Thread()
    {
      public void run()
      {
        try
        {
          String str = HttpManager.openUrl(AsyncWeiboRunner.this, paramString2, paramWeiboParameters);
          if (paramRequestListener != null) {
            paramRequestListener.onComplete(str);
          }
          return;
        }
        catch (WeiboException localWeiboException)
        {
          while (paramRequestListener == null) {}
          paramRequestListener.onWeiboException(localWeiboException);
        }
      }
    }.start();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\net\AsyncWeiboRunner.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */