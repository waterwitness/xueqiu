package com.umeng.update.net;

import org.json.JSONObject;

public class i
  extends u.a.i
{
  public i.a a;
  
  public i(JSONObject paramJSONObject)
  {
    super(paramJSONObject);
    if (("ok".equalsIgnoreCase(paramJSONObject.optString("status"))) || ("ok".equalsIgnoreCase(paramJSONObject.optString("success"))))
    {
      this.a = i.a.a;
      return;
    }
    this.a = i.a.b;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\update\net\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */