package com.tencent.tauth;

import org.json.JSONObject;

public abstract interface IUiListener
{
  public abstract void onCancel();
  
  public abstract void onComplete(JSONObject paramJSONObject);
  
  public abstract void onError(UiError paramUiError);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\tauth\IUiListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */