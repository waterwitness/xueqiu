package com.xueqiu.android.trade.kwlopen;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.a.ac;
import android.support.v4.a.q;
import android.support.v4.content.r;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.xueqiu.android.base.b.a.c;
import com.xueqiu.android.common.b;
import org.apache.cordova.CordovaWebView;
import org.apache.cordova.g;

public class KwlOpenActivity
  extends b
{
  public static g j = null;
  private View k = null;
  private a p;
  private AlertDialog q;
  
  public void finish()
  {
    if (this.q == null) {
      this.q = new AlertDialog.Builder(this).setTitle("提示").setPositiveButton("继续开户", null).setNegativeButton("我要退出", new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          KwlOpenActivity.a(KwlOpenActivity.this);
        }
      }).setMessage("退出后需重新开始，您确认要退出开户流程么？").create();
    }
    this.q.show();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setTitle(2131166301);
    this.k = new FrameLayout(this);
    this.k.setId(2131623963);
    String str = getIntent().getStringExtra("extra_url");
    if (c.a(str))
    {
      finish();
      return;
    }
    if (paramBundle == null)
    {
      this.p = a.a(str);
      c().a().a(this.k.getId(), this.p).d();
    }
    setContentView(this.k);
    this.m = false;
  }
  
  protected void onDestroy()
  {
    if ((j != null) && (j.a != null))
    {
      CordovaWebView localCordovaWebView = j.a;
      if (localCordovaWebView.getParent() != null) {
        ((ViewGroup)localCordovaWebView.getParent()).removeView(localCordovaWebView);
      }
      localCordovaWebView.removeAllViews();
      localCordovaWebView.destroy();
      j.a = null;
    }
    j = null;
    r.a(this).a(new Intent("com.xueqiu.android.action.updateBrokerList"));
    super.onDestroy();
  }
  
  protected void onResume()
  {
    CookieManager.getInstance().setAcceptCookie(true);
    super.onResume();
  }
  
  protected void onStop()
  {
    super.onStop();
    CookieManager.getInstance().setAcceptCookie(false);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\kwlopen\KwlOpenActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */