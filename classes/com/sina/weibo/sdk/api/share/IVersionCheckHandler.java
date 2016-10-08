package com.sina.weibo.sdk.api.share;

import android.content.Context;
import com.sina.weibo.sdk.api.WeiboMessage;
import com.sina.weibo.sdk.api.WeiboMultiMessage;

abstract interface IVersionCheckHandler
{
  public abstract boolean check(Context paramContext, WeiboMessage paramWeiboMessage);
  
  public abstract boolean check(Context paramContext, WeiboMultiMessage paramWeiboMultiMessage);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\api\share\IVersionCheckHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */