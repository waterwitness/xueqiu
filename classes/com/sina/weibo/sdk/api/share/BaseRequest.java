package com.sina.weibo.sdk.api.share;

import android.os.Bundle;

public abstract class BaseRequest
  extends Base
{
  public String packageName;
  
  public void fromBundle(Bundle paramBundle)
  {
    this.transaction = paramBundle.getString("_weibo_transaction");
    this.packageName = paramBundle.getString("_weibo_appPackage");
  }
  
  public void toBundle(Bundle paramBundle)
  {
    paramBundle.putInt("_weibo_command_type", getType());
    paramBundle.putString("_weibo_transaction", this.transaction);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\api\share\BaseRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */