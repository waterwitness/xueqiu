package com.tencent.mm.sdk.modelmsg;

import android.os.Bundle;
import com.tencent.mm.sdk.modelbase.BaseReq;

public class LaunchFromWX$Req
  extends BaseReq
{
  public LaunchFromWX$Req() {}
  
  public LaunchFromWX$Req(Bundle paramBundle)
  {
    fromBundle(paramBundle);
  }
  
  public boolean checkArgs()
  {
    return true;
  }
  
  public int getType()
  {
    return 6;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\mm\sdk\modelmsg\LaunchFromWX$Req.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */