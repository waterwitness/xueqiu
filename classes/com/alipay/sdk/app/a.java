package com.alipay.sdk.app;

import android.app.AlertDialog.Builder;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

final class a
  extends WebChromeClient
{
  private a(H5PayActivity paramH5PayActivity) {}
  
  public final boolean onJsAlert(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    new AlertDialog.Builder(this.a).setTitle("提示").setMessage(paramString2).setPositiveButton("确定", new i(this, paramJsResult)).setNegativeButton("取消", new h(this, paramJsResult)).show();
    return true;
  }
  
  public final boolean onJsConfirm(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    new AlertDialog.Builder(this.a).setTitle("提示").setMessage(paramString2).setPositiveButton("确定", new k(this, paramJsResult)).setNegativeButton("取消", new j(this, paramJsResult)).show();
    return true;
  }
  
  public final boolean onJsPrompt(WebView paramWebView, String paramString1, String paramString2, String paramString3, JsPromptResult paramJsPromptResult)
  {
    new AlertDialog.Builder(this.a).setTitle("提示").setMessage(paramString2).setPositiveButton("确定", new m(this, paramJsPromptResult)).setNegativeButton("取消", new l(this, paramJsPromptResult)).show();
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\sdk\app\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */