package com.sina.weibo.sdk.api.share;

import android.content.Context;
import android.os.Bundle;

public class ProvideMessageForWeiboRequest
  extends BaseRequest
{
  public ProvideMessageForWeiboRequest() {}
  
  public ProvideMessageForWeiboRequest(Bundle paramBundle)
  {
    fromBundle(paramBundle);
  }
  
  final boolean check(Context paramContext, VersionCheckHandler paramVersionCheckHandler)
  {
    return true;
  }
  
  public int getType()
  {
    return 2;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\api\share\ProvideMessageForWeiboRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */