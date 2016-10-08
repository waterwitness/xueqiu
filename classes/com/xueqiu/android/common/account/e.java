package com.xueqiu.android.common.account;

import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import com.xueqiu.android.base.util.aa;
import org.json.JSONException;
import org.json.JSONObject;

public final class e
  implements IUiListener
{
  protected e(c paramc) {}
  
  public final void onCancel()
  {
    this.a.k.i();
  }
  
  public final void onComplete(JSONObject paramJSONObject)
  {
    this.a.k.i();
    try
    {
      this.a.e = paramJSONObject.getString("access_token");
      this.a.f = paramJSONObject.getLong("expires_in");
      this.a.d = paramJSONObject.getString("openid");
      if (this.a.e != null)
      {
        this.a.c = "qq";
        c.a(this.a);
      }
      return;
    }
    catch (JSONException paramJSONObject)
    {
      for (;;)
      {
        aa.a(paramJSONObject);
      }
    }
  }
  
  public final void onError(UiError paramUiError)
  {
    this.a.k.i();
    aa.a(paramUiError.errorDetail + "-" + paramUiError.errorMessage);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\account\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */