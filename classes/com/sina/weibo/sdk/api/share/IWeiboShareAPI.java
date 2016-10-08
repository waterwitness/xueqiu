package com.sina.weibo.sdk.api.share;

import android.content.Intent;

public abstract interface IWeiboShareAPI
{
  public abstract boolean checkEnvironment(boolean paramBoolean);
  
  public abstract int getWeiboAppSupportAPI();
  
  public abstract boolean handleWeiboRequest(Intent paramIntent, IWeiboHandler.Request paramRequest);
  
  public abstract boolean handleWeiboResponse(Intent paramIntent, IWeiboHandler.Response paramResponse);
  
  public abstract boolean isWeiboAppInstalled();
  
  public abstract boolean isWeiboAppSupportAPI();
  
  public abstract boolean launchWeibo();
  
  public abstract boolean registerApp();
  
  public abstract void registerWeiboDownloadListener(IWeiboDownloadListener paramIWeiboDownloadListener);
  
  public abstract boolean sendRequest(BaseRequest paramBaseRequest);
  
  public abstract boolean sendResponse(BaseResponse paramBaseResponse);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\api\share\IWeiboShareAPI.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */