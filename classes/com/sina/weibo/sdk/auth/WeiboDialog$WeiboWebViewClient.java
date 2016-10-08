package com.sina.weibo.sdk.auth;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.sina.weibo.sdk.exception.WeiboDialogException;
import com.sina.weibo.sdk.utils.LogUtil;

class WeiboDialog$WeiboWebViewClient
  extends WebViewClient
{
  private boolean isCallBacked = false;
  
  private WeiboDialog$WeiboWebViewClient(WeiboDialog paramWeiboDialog) {}
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    LogUtil.d("WeiboDialog", "onPageFinished URL: " + paramString);
    super.onPageFinished(paramWebView, paramString);
    if ((!WeiboDialog.access$3(this.this$0)) && (WeiboDialog.access$4(this.this$0) != null)) {
      WeiboDialog.access$4(this.this$0).dismiss();
    }
    if (WeiboDialog.access$5(this.this$0) != null) {
      WeiboDialog.access$5(this.this$0).setVisibility(0);
    }
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    LogUtil.d("WeiboDialog", "onPageStarted URL: " + paramString);
    if ((paramString.startsWith(WeiboDialog.access$1(this.this$0).getAuthInfo().getRedirectUrl())) && (!this.isCallBacked))
    {
      this.isCallBacked = true;
      WeiboDialog.access$2(this.this$0, paramString);
      paramWebView.stopLoading();
      this.this$0.dismiss();
    }
    do
    {
      return;
      super.onPageStarted(paramWebView, paramString, paramBitmap);
    } while ((WeiboDialog.access$3(this.this$0)) || (WeiboDialog.access$4(this.this$0) == null) || (WeiboDialog.access$4(this.this$0).isShowing()));
    WeiboDialog.access$4(this.this$0).show();
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    LogUtil.d("WeiboDialog", "onReceivedError: errorCode = " + paramInt + ", description = " + paramString1 + ", failingUrl = " + paramString2);
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    if (WeiboDialog.access$0(this.this$0) != null) {
      WeiboDialog.access$0(this.this$0).onWeiboException(new WeiboDialogException(paramString1, paramInt, paramString2));
    }
    this.this$0.dismiss();
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    LogUtil.i("WeiboDialog", "load URL: " + paramString);
    if (paramString.startsWith("sms:"))
    {
      paramWebView = new Intent("android.intent.action.VIEW");
      paramWebView.putExtra("address", paramString.replace("sms:", ""));
      paramWebView.setType("vnd.android-dir/mms-sms");
      this.this$0.getContext().startActivity(paramWebView);
      return true;
    }
    return super.shouldOverrideUrlLoading(paramWebView, paramString);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\auth\WeiboDialog$WeiboWebViewClient.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */