package com.sina.weibo.sdk.net;

import android.os.AsyncTask;
import com.sina.weibo.sdk.exception.WeiboException;

class AsyncWeiboRunner$RequestRunner
  extends AsyncTask<Void, Void, AsyncWeiboRunner.AsyncTaskResult<String>>
{
  private final String mHttpMethod;
  private final RequestListener mListener;
  private final WeiboParameters mParams;
  private final String mUrl;
  
  public AsyncWeiboRunner$RequestRunner(String paramString1, WeiboParameters paramWeiboParameters, String paramString2, RequestListener paramRequestListener)
  {
    this.mUrl = paramString1;
    this.mParams = paramWeiboParameters;
    this.mHttpMethod = paramString2;
    this.mListener = paramRequestListener;
  }
  
  protected AsyncWeiboRunner.AsyncTaskResult<String> doInBackground(Void... paramVarArgs)
  {
    try
    {
      paramVarArgs = new AsyncWeiboRunner.AsyncTaskResult(HttpManager.openUrl(this.mUrl, this.mHttpMethod, this.mParams));
      return paramVarArgs;
    }
    catch (WeiboException paramVarArgs) {}
    return new AsyncWeiboRunner.AsyncTaskResult(paramVarArgs);
  }
  
  protected void onPostExecute(AsyncWeiboRunner.AsyncTaskResult<String> paramAsyncTaskResult)
  {
    WeiboException localWeiboException = paramAsyncTaskResult.getError();
    if (localWeiboException != null)
    {
      this.mListener.onWeiboException(localWeiboException);
      return;
    }
    this.mListener.onComplete((String)paramAsyncTaskResult.getResult());
  }
  
  protected void onPreExecute() {}
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\net\AsyncWeiboRunner$RequestRunner.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */