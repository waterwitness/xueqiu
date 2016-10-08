package com.umeng.analytics;

import android.graphics.Bitmap;
import android.os.Message;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;

final class MobclickAgentJSInterface$a
  extends WebChromeClient
{
  WebChromeClient a = null;
  private final String c = "ekv";
  private final String d = "event";
  
  public MobclickAgentJSInterface$a(MobclickAgentJSInterface paramMobclickAgentJSInterface, WebChromeClient paramWebChromeClient)
  {
    if (paramWebChromeClient == null)
    {
      this.a = new WebChromeClient();
      return;
    }
    this.a = paramWebChromeClient;
  }
  
  public final void onCloseWindow(WebView paramWebView)
  {
    this.a.onCloseWindow(paramWebView);
  }
  
  public final boolean onCreateWindow(WebView paramWebView, boolean paramBoolean1, boolean paramBoolean2, Message paramMessage)
  {
    return this.a.onCreateWindow(paramWebView, paramBoolean1, paramBoolean2, paramMessage);
  }
  
  public final boolean onJsAlert(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    return this.a.onJsAlert(paramWebView, paramString1, paramString2, paramJsResult);
  }
  
  public final boolean onJsBeforeUnload(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    return this.a.onJsBeforeUnload(paramWebView, paramString1, paramString2, paramJsResult);
  }
  
  public final boolean onJsConfirm(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    return this.a.onJsConfirm(paramWebView, paramString1, paramString2, paramJsResult);
  }
  
  public final boolean onJsPrompt(WebView paramWebView, String paramString1, String paramString2, String paramString3, JsPromptResult paramJsPromptResult)
  {
    if ("ekv".equals(paramString2)) {}
    for (;;)
    {
      try
      {
        paramWebView = new JSONObject(paramString3);
        paramString1 = new HashMap();
        paramString2 = (String)paramWebView.remove("id");
        if (!paramWebView.isNull("duration")) {
          continue;
        }
        i = 0;
        paramString3 = paramWebView.keys();
        if (paramString3.hasNext()) {
          continue;
        }
        MobclickAgent.getAgent().a(MobclickAgentJSInterface.a(this.b), paramString2, paramString1, i);
      }
      catch (Exception paramWebView)
      {
        int i;
        String str;
        paramWebView.printStackTrace();
        continue;
      }
      paramJsPromptResult.confirm();
      return true;
      i = ((Integer)paramWebView.remove("duration")).intValue();
      continue;
      str = (String)paramString3.next();
      paramString1.put(str, paramWebView.getString(str));
      continue;
      if (!"event".equals(paramString2)) {
        break;
      }
      try
      {
        paramString2 = new JSONObject(paramString3);
        paramString1 = paramString2.optString("label");
        paramWebView = paramString1;
        if ("".equals(paramString1)) {
          paramWebView = null;
        }
        MobclickAgent.getAgent().a(MobclickAgentJSInterface.a(this.b), paramString2.getString("tag"), paramWebView, paramString2.optInt("duration"), 1);
      }
      catch (Exception paramWebView) {}
    }
    return this.a.onJsPrompt(paramWebView, paramString1, paramString2, paramString3, paramJsPromptResult);
  }
  
  public final void onProgressChanged(WebView paramWebView, int paramInt)
  {
    this.a.onProgressChanged(paramWebView, paramInt);
  }
  
  public final void onReceivedIcon(WebView paramWebView, Bitmap paramBitmap)
  {
    this.a.onReceivedIcon(paramWebView, paramBitmap);
  }
  
  public final void onReceivedTitle(WebView paramWebView, String paramString)
  {
    this.a.onReceivedTitle(paramWebView, paramString);
  }
  
  public final void onRequestFocus(WebView paramWebView)
  {
    this.a.onRequestFocus(paramWebView);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\analytics\MobclickAgentJSInterface$a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */