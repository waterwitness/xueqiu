package com.alipay.sdk.d;

import android.text.TextUtils;
import android.util.Log;

public final class a
  extends Exception
{
  private int a = 0;
  
  public a()
  {
    this(null, (byte)0);
  }
  
  public a(String paramString)
  {
    this(paramString, (byte)0);
  }
  
  private a(String paramString, byte paramByte)
  {
    super(paramString, null);
    if (!TextUtils.isEmpty(paramString)) {
      Log.w("NetError", "NetError--" + paramString);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\sdk\d\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */