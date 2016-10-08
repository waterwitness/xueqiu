package com.tencent.open;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.os.Bundle;
import android.view.ViewGroup.LayoutParams;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import com.tencent.tauth.IUiListener;
import org.json.JSONObject;

public class RedoDialog
  extends Dialog
{
  static final FrameLayout.LayoutParams a = new FrameLayout.LayoutParams(-1, -1);
  public JSONObject b;
  public String c;
  public String d;
  private String e;
  private IUiListener f;
  private ProgressDialog g;
  private WebView h;
  private FrameLayout i;
  
  private void a(int paramInt)
  {
    LinearLayout localLinearLayout = new LinearLayout(getContext());
    this.h = new WebView(getContext());
    this.h.setVerticalScrollBarEnabled(false);
    this.h.setHorizontalScrollBarEnabled(false);
    this.h.setWebViewClient(new r(this, (byte)0));
    this.h.getSettings().setJavaScriptEnabled(true);
    this.h.addJavascriptInterface(new o(this, (byte)0), "sdk_js_if");
    this.h.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
    this.h.loadUrl(this.e);
    this.h.setLayoutParams(a);
    this.h.setVisibility(4);
    this.h.getSettings().setSavePassword(false);
    localLinearLayout.setPadding(0, 0, 0, 0);
    localLinearLayout.addView(this.h);
    this.i.addView(localLinearLayout, -1, -1);
  }
  
  public void dismiss()
  {
    this.f.onCancel();
    super.dismiss();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.g = new ProgressDialog(getContext());
    this.g.requestWindowFeature(1);
    this.g.setMessage("Loading...");
    requestWindowFeature(1);
    this.i = new FrameLayout(getContext());
    a(0);
    addContentView(this.i, new ViewGroup.LayoutParams(-1, -1));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\open\RedoDialog.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */