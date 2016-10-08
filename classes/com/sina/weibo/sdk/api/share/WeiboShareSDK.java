package com.sina.weibo.sdk.api.share;

import android.content.Context;

public class WeiboShareSDK
{
  public static IWeiboShareAPI createWeiboAPI(Context paramContext, String paramString)
  {
    return createWeiboAPI(paramContext, paramString, true);
  }
  
  public static IWeiboShareAPI createWeiboAPI(Context paramContext, String paramString, boolean paramBoolean)
  {
    return new WeiboShareAPIImpl(paramContext, paramString, paramBoolean);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\api\share\WeiboShareSDK.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */