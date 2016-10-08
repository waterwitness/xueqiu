package com.sina.weibo.sdk.api.share;

import android.content.Context;
import com.sina.weibo.sdk.api.CmdObject;
import com.sina.weibo.sdk.api.VoiceObject;
import com.sina.weibo.sdk.api.WeiboMessage;
import com.sina.weibo.sdk.api.WeiboMultiMessage;
import com.sina.weibo.sdk.utils.LogUtil;

public class VersionCheckHandler
  implements IVersionCheckHandler
{
  private static final String TAG = "VersionCheckHandler";
  private String mPackageName;
  
  public VersionCheckHandler() {}
  
  public VersionCheckHandler(String paramString)
  {
    this.mPackageName = paramString;
  }
  
  public boolean check(Context paramContext, WeiboMessage paramWeiboMessage)
  {
    LogUtil.d("VersionCheckHandler", "check WeiboMessage package : " + this.mPackageName);
    if ((this.mPackageName == null) || (this.mPackageName.length() == 0)) {}
    do
    {
      return false;
      paramContext = ApiUtils.queryWeiboInfoByPackage(paramContext, this.mPackageName);
    } while (paramContext == null);
    LogUtil.d("VersionCheckHandler", "check WeiboMessage WeiboInfo supportApi : " + paramContext.supportApi);
    if ((paramContext.supportApi < 10351) && (paramWeiboMessage.mediaObject != null) && ((paramWeiboMessage.mediaObject instanceof VoiceObject))) {
      paramWeiboMessage.mediaObject = null;
    }
    if ((paramContext.supportApi < 10352) && (paramWeiboMessage.mediaObject != null) && ((paramWeiboMessage.mediaObject instanceof CmdObject))) {
      paramWeiboMessage.mediaObject = null;
    }
    return true;
  }
  
  public boolean check(Context paramContext, WeiboMultiMessage paramWeiboMultiMessage)
  {
    LogUtil.d("VersionCheckHandler", "check WeiboMultiMessage package : " + this.mPackageName);
    if ((this.mPackageName == null) || (this.mPackageName.length() == 0)) {}
    do
    {
      do
      {
        return false;
        paramContext = ApiUtils.queryWeiboInfoByPackage(paramContext, this.mPackageName);
      } while (paramContext == null);
      LogUtil.d("VersionCheckHandler", "check WeiboMultiMessage WeiboInfo supportApi : " + paramContext.supportApi);
    } while (paramContext.supportApi < 10351);
    if ((paramContext.supportApi < 10352) && (paramWeiboMultiMessage.mediaObject != null) && ((paramWeiboMultiMessage.mediaObject instanceof CmdObject))) {
      paramWeiboMultiMessage.mediaObject = null;
    }
    return true;
  }
  
  public void setPackageName(String paramString)
  {
    this.mPackageName = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\api\share\VersionCheckHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */