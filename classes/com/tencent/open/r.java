package com.tencent.open;

import android.app.ProgressDialog;
import android.graphics.Bitmap;
import android.webkit.HttpAuthHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import org.json.JSONException;
import org.json.JSONObject;

final class r
  extends WebViewClient
{
  private r(RedoDialog paramRedoDialog) {}
  
  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    RedoDialog.c(this.a).dismiss();
    RedoDialog.d(this.a).setBackgroundColor(0);
    RedoDialog.a(this.a).setVisibility(0);
  }
  
  public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    Util.a("TDialog", "Webview loading URL: " + paramString);
    super.onPageStarted(paramWebView, paramString, paramBitmap);
    RedoDialog.c(this.a).show();
  }
  
  public final void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    RedoDialog.b(this.a).onError(new UiError(paramInt, paramString1, paramString2));
    this.a.dismiss();
  }
  
  public final void onReceivedHttpAuthRequest(WebView paramWebView, HttpAuthHandler paramHttpAuthHandler, String paramString1, String paramString2)
  {
    super.onReceivedHttpAuthRequest(paramWebView, paramHttpAuthHandler, paramString1, paramString2);
  }
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    Util.a("TDialog", "Redirect URL: " + paramString);
    if (paramString.startsWith(ServerSetting.getInstance().getSettingUrl(null, 1)))
    {
      paramWebView = Util.c(paramString);
      try
      {
        if (paramWebView.getString("error") == null) {
          paramWebView.getString("error_type");
        }
        this.a.c = paramWebView.getString("access_token");
        this.a.d = paramWebView.getString("expires_in");
        if ((this.a.c == null) || (this.a.d == null))
        {
          RedoDialog.b(this.a).onComplete(this.a.b);
          this.a.dismiss();
        }
        return true;
      }
      catch (JSONException paramWebView)
      {
        RedoDialog.b(this.a).onComplete(this.a.b);
        this.a.dismiss();
        return true;
      }
    }
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\open\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */