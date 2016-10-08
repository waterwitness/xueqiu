package com.xueqiu.android.base.h5;

import android.webkit.JavascriptInterface;

public class GetWebViewHeightInterface
{
  a mListenter;
  
  public GetWebViewHeightInterface(a parama)
  {
    this.mListenter = parama;
  }
  
  @JavascriptInterface
  public void getWebViewHeight(String paramString)
  {
    if (paramString != null) {}
    try
    {
      if (this.mListenter != null) {
        Integer.parseInt(paramString);
      }
      return;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\h5\GetWebViewHeightInterface.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */