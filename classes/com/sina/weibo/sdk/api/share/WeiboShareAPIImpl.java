package com.sina.weibo.sdk.api.share;

import android.app.Activity;
import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.sina.weibo.sdk.exception.WeiboShareException;
import com.sina.weibo.sdk.utils.LogUtil;
import com.sina.weibo.sdk.utils.MD5;
import com.sina.weibo.sdk.utils.Utility;

class WeiboShareAPIImpl
  implements IWeiboShareAPI
{
  private static final String TAG = "WeiboApiImpl";
  private String mAppKey;
  private Context mContext;
  private Dialog mDownloadConfirmDialog = null;
  private IWeiboDownloadListener mDownloadListener;
  private boolean mNeedDownloadWeibo = true;
  private ApiUtils.WeiboInfo mWeiboInfo = null;
  
  public WeiboShareAPIImpl(Context paramContext, String paramString, boolean paramBoolean)
  {
    this.mContext = paramContext;
    this.mAppKey = paramString;
    this.mNeedDownloadWeibo = paramBoolean;
    this.mWeiboInfo = ApiUtils.queryWeiboInfo(this.mContext);
    if (this.mWeiboInfo != null)
    {
      LogUtil.d("WeiboApiImpl", this.mWeiboInfo.toString());
      return;
    }
    LogUtil.d("WeiboApiImpl", "WeiboInfo: is null");
  }
  
  private boolean launchWeiboActivity(Activity paramActivity, String paramString1, String paramString2, String paramString3, Bundle paramBundle)
  {
    if ((paramActivity == null) || (TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2)) || (TextUtils.isEmpty(paramString3)))
    {
      LogUtil.e("ActivityHandler", "send fail, invalid arguments");
      return false;
    }
    Intent localIntent = new Intent();
    localIntent.setPackage(paramString2);
    localIntent.setAction(paramString1);
    paramString1 = paramActivity.getPackageName();
    localIntent.putExtra("_weibo_sdkVersion", 22);
    localIntent.putExtra("_weibo_appPackage", paramString1);
    localIntent.putExtra("_weibo_appKey", paramString3);
    localIntent.putExtra("_weibo_flag", 538116905);
    localIntent.putExtra("_weibo_sign", MD5.hexdigest(Utility.getSign(paramActivity, paramString1)));
    if (paramBundle != null) {
      localIntent.putExtras(paramBundle);
    }
    try
    {
      LogUtil.d("WeiboApiImpl", "intent=" + localIntent + ", extra=" + localIntent.getExtras());
      paramActivity.startActivityForResult(localIntent, 765);
      return true;
    }
    catch (ActivityNotFoundException paramActivity)
    {
      LogUtil.e("WeiboApiImpl", "Failed, target ActivityNotFound");
    }
    return false;
  }
  
  private void sendBroadcast(Context paramContext, String paramString1, String paramString2, String paramString3, Bundle paramBundle)
  {
    paramString1 = new Intent(paramString1);
    String str = paramContext.getPackageName();
    paramString1.putExtra("_weibo_sdkVersion", 22);
    paramString1.putExtra("_weibo_appPackage", str);
    paramString1.putExtra("_weibo_appKey", paramString2);
    paramString1.putExtra("_weibo_flag", 538116905);
    paramString1.putExtra("_weibo_sign", MD5.hexdigest(Utility.getSign(paramContext, str)));
    if (!TextUtils.isEmpty(paramString3)) {
      paramString1.setPackage(paramString3);
    }
    if (paramBundle != null) {
      paramString1.putExtras(paramBundle);
    }
    LogUtil.d("WeiboApiImpl", "intent=" + paramString1 + ", extra=" + paramString1.getExtras());
    paramContext.sendBroadcast(paramString1, "com.sina.weibo.permission.WEIBO_SDK_PERMISSION");
  }
  
  public boolean checkEnvironment(boolean paramBoolean)
  {
    if (this.mWeiboInfo == null)
    {
      if (paramBoolean)
      {
        if (this.mDownloadConfirmDialog == null)
        {
          this.mDownloadConfirmDialog = WeiboDownloader.createDownloadConfirmDialog(this.mContext, this.mDownloadListener);
          this.mDownloadConfirmDialog.show();
        }
        for (;;)
        {
          return false;
          if (!this.mDownloadConfirmDialog.isShowing()) {
            this.mDownloadConfirmDialog.show();
          }
        }
      }
      throw new WeiboShareException("Weibo is NOT installed!");
    }
    if (!ApiUtils.isWeiboAppSupportAPI(this.mWeiboInfo.supportApi)) {
      throw new WeiboShareException("Weibo do NOT support Share API!");
    }
    if (!ApiUtils.validateWeiboSign(this.mContext, this.mWeiboInfo.packageName)) {
      throw new WeiboShareException("Weibo signature is incorrect!");
    }
    return true;
  }
  
  public int getWeiboAppSupportAPI()
  {
    if (this.mWeiboInfo == null) {
      return -1;
    }
    return this.mWeiboInfo.supportApi;
  }
  
  public boolean handleWeiboRequest(Intent paramIntent, IWeiboHandler.Request paramRequest)
  {
    if ((paramIntent == null) || (paramRequest == null)) {
      return false;
    }
    String str1 = paramIntent.getStringExtra("_weibo_appPackage");
    String str2 = paramIntent.getStringExtra("_weibo_transaction");
    if (str1 == null)
    {
      LogUtil.e("WeiboApiImpl", "requestListener() faild appPackage validateSign faild");
      paramRequest.onRequest(null);
      return false;
    }
    if (str2 == null)
    {
      LogUtil.e("WeiboApiImpl", "requestListener() faild intent TRAN is null");
      paramRequest.onRequest(null);
      return false;
    }
    if (!ApiUtils.validateWeiboSign(this.mContext, str1))
    {
      LogUtil.e("WeiboApiImpl", "requestListener() faild appPackage validateSign faild");
      paramRequest.onRequest(null);
      return false;
    }
    paramRequest.onRequest(new ProvideMessageForWeiboRequest(paramIntent.getExtras()));
    return true;
  }
  
  public boolean handleWeiboResponse(Intent paramIntent, IWeiboHandler.Response paramResponse)
  {
    String str1 = paramIntent.getStringExtra("_weibo_appPackage");
    if (str1 == null)
    {
      LogUtil.e("WeiboApiImpl", "responseListener() faild appPackage is null");
      return false;
    }
    if (!(paramResponse instanceof Activity))
    {
      LogUtil.e("WeiboApiImpl", "responseListener() faild handler is not Activity");
      return false;
    }
    String str2 = ((Activity)paramResponse).getCallingPackage();
    LogUtil.d("WeiboApiImpl", "responseListener() callPkg : " + str2);
    if (paramIntent.getStringExtra("_weibo_transaction") == null)
    {
      LogUtil.e("WeiboApiImpl", "responseListener() faild intent TRAN is null");
      return false;
    }
    if (!ApiUtils.validateWeiboSign(this.mContext, str1))
    {
      LogUtil.e("WeiboApiImpl", "responseListener() faild appPackage validateSign faild");
      return false;
    }
    paramResponse.onResponse(new SendMessageToWeiboResponse(paramIntent.getExtras()));
    return true;
  }
  
  public boolean isWeiboAppInstalled()
  {
    return this.mWeiboInfo != null;
  }
  
  public boolean isWeiboAppSupportAPI()
  {
    return ApiUtils.isWeiboAppSupportAPI(getWeiboAppSupportAPI());
  }
  
  public boolean launchWeibo()
  {
    if (this.mWeiboInfo == null)
    {
      LogUtil.e("WeiboApiImpl", "startWeibo() faild winfo is null");
      return false;
    }
    try
    {
      if (TextUtils.isEmpty(this.mWeiboInfo.packageName))
      {
        LogUtil.e("WeiboApiImpl", "startWeibo() faild packageName is null");
        return false;
      }
    }
    catch (Exception localException)
    {
      LogUtil.e("WeiboApiImpl", localException.getMessage());
      return false;
    }
    this.mContext.startActivity(this.mContext.getPackageManager().getLaunchIntentForPackage(this.mWeiboInfo.packageName));
    return true;
  }
  
  public boolean registerApp()
  {
    try
    {
      boolean bool = checkEnvironment(this.mNeedDownloadWeibo);
      if (!bool) {
        return false;
      }
      sendBroadcast(this.mContext, "com.sina.weibo.sdk.Intent.ACTION_WEIBO_REGISTER", this.mAppKey, null, null);
      return true;
    }
    catch (Exception localException) {}
    return false;
  }
  
  public void registerWeiboDownloadListener(IWeiboDownloadListener paramIWeiboDownloadListener)
  {
    this.mDownloadListener = paramIWeiboDownloadListener;
  }
  
  public boolean sendRequest(BaseRequest paramBaseRequest)
  {
    if (paramBaseRequest == null) {
      LogUtil.e("WeiboApiImpl", "sendRequest faild act == null or request == null");
    }
    for (;;)
    {
      return false;
      try
      {
        boolean bool = checkEnvironment(this.mNeedDownloadWeibo);
        if (bool)
        {
          Object localObject = new VersionCheckHandler(this.mWeiboInfo.packageName);
          if (!paramBaseRequest.check(this.mContext, (VersionCheckHandler)localObject))
          {
            LogUtil.e("WeiboApiImpl", "sendRequest faild request check faild");
            return false;
          }
          localObject = new Bundle();
          paramBaseRequest.toBundle((Bundle)localObject);
          return launchWeiboActivity((Activity)this.mContext, "com.sina.weibo.sdk.action.ACTION_WEIBO_ACTIVITY", this.mWeiboInfo.packageName, this.mAppKey, (Bundle)localObject);
        }
      }
      catch (Exception paramBaseRequest) {}
    }
    return false;
  }
  
  public boolean sendResponse(BaseResponse paramBaseResponse)
  {
    if (paramBaseResponse == null)
    {
      LogUtil.e("WeiboApiImpl", "sendResponse failed response null");
      return false;
    }
    if (!paramBaseResponse.check(this.mContext, new VersionCheckHandler()))
    {
      LogUtil.e("WeiboApiImpl", "sendResponse checkArgs fail");
      return false;
    }
    Bundle localBundle = new Bundle();
    paramBaseResponse.toBundle(localBundle);
    sendBroadcast(this.mContext, "com.sina.weibo.sdk.Intent.ACTION_WEIBO_RESPONSE", this.mAppKey, paramBaseResponse.reqPackageName, localBundle);
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\api\share\WeiboShareAPIImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */