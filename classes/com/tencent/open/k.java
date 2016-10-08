package com.tencent.open;

import android.os.Bundle;
import org.json.JSONObject;

final class k
  extends Thread
{
  k(OpenConfig paramOpenConfig, Bundle paramBundle) {}
  
  public final void run()
  {
    try
    {
      JSONObject localJSONObject = Util.d(Util.a(OpenConfig.a(this.b), "http://cgi.connect.qq.com/qqconnectopen/openapi/policy_conf", "GET", this.a).a);
      OpenConfig.a(this.b, localJSONObject);
      OpenConfig.a(this.b, 0);
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\open\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */