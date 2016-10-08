package com.flurry.sdk;

import android.text.TextUtils;

public abstract class ka
{
  protected String g = "com.flurry.android.sdk.ReplaceMeWithAProperEventName";
  
  public ka(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("Event must have a name!");
    }
    this.g = paramString;
  }
  
  public String a()
  {
    return this.g;
  }
  
  public void b()
  {
    kc.a().a(this);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\ka.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */