package com.xueqiu.android.community;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.Bitmap;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.content.r;
import android.view.KeyEvent;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.m;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.WebViewActivity;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.widget.SNBWebView;
import com.xueqiu.android.community.model.Comment;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

@SuppressLint({"SetJavaScriptEnabled"})
public class RewardActivity
  extends b
{
  private String j;
  private long k;
  private String p = "https://xueqiu.com/c/donate";
  private SNBWebView q;
  private boolean r = false;
  
  @SuppressLint({"NewApi"})
  public static void a(WebView paramWebView, String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      return;
    }
    String str;
    try
    {
      str = String.format("javascript:setTimeout(function(){%s(%s)}, 0)", new Object[] { paramString, "" });
      if (Build.VERSION.SDK_INT >= 19)
      {
        paramWebView.evaluateJavascript(str, null);
        return;
      }
    }
    catch (Throwable paramWebView)
    {
      v.a("RewardActivity", String.format("evaluate:%s(%s)", new Object[] { paramString, null }), paramWebView);
      return;
    }
    paramWebView.loadUrl(str);
  }
  
  public final boolean b(String paramString)
  {
    if ((paramString.startsWith("js:")) || (paramString.startsWith("js://")))
    {
      String str1 = "";
      if (paramString.startsWith("js://")) {
        str1 = paramString.substring(5);
      }
      Object localObject;
      String str2;
      String str3;
      String str4;
      String str5;
      try
      {
        for (;;)
        {
          paramString = URLDecoder.decode(str1, "utf-8");
          if (!paramString.startsWith("{")) {
            break label931;
          }
          localObject = (JsonObject)m.a().fromJson(paramString, JsonObject.class);
          if (!((JsonObject)localObject).has("name")) {
            break label931;
          }
          paramString = ((JsonObject)localObject).get("name").getAsString();
          if (!paramString.equals("replyComment")) {
            break label585;
          }
          if (!((JsonObject)localObject).has("success")) {
            break;
          }
          paramString = ((JsonObject)localObject).get("success").getAsString();
          if (!((JsonObject)localObject).has("cancel")) {
            break label526;
          }
          str1 = ((JsonObject)localObject).get("cancel").getAsString();
          if (!((JsonObject)localObject).has("erro")) {
            break label532;
          }
          str2 = ((JsonObject)localObject).get("erro").getAsString();
          if (!((JsonObject)localObject).has("complete")) {
            break label538;
          }
          str3 = ((JsonObject)localObject).get("complete").getAsString();
          if (!((JsonObject)localObject).has("data")) {
            break label545;
          }
          localObject = ((JsonObject)localObject).get("data").getAsJsonObject();
          if (!((JsonObject)localObject).has("content")) {
            break label551;
          }
          str4 = ((JsonObject)localObject).get("content").getAsString();
          if (!((JsonObject)localObject).has("statusId")) {
            break label558;
          }
          str5 = ((JsonObject)localObject).get("statusId").getAsString();
          if (!((JsonObject)localObject).has("commentId")) {
            break label565;
          }
          str6 = ((JsonObject)localObject).get("commentId").getAsString();
          if (!((JsonObject)localObject).has("username")) {
            break label572;
          }
          str7 = ((JsonObject)localObject).get("username").getAsString();
          if ((!((JsonObject)localObject).has("isRetweet")) || (!((JsonObject)localObject).get("isRetweet").getAsBoolean())) {
            break label579;
          }
          bool = true;
          localObject = new Intent(this, WriteStatusActivity.class);
          Comment localComment = new Comment();
          localComment.setId(Long.parseLong(str6));
          localComment.setStatusId(Long.parseLong(str5));
          localComment.setText(str4);
          localComment.setScreenName(str7);
          ((Intent)localObject).putExtra("extra_write_type", 1);
          ((Intent)localObject).putExtra("extra_comment", localComment);
          ((Intent)localObject).putExtra("extra_status_id", Long.valueOf(str5));
          ((Intent)localObject).putExtra("extra_isretweet", bool);
          ((Intent)localObject).putExtra("extra_reply_somebody", str7);
          ((Intent)localObject).putExtra("extra_retweet_text", str4);
          ((Intent)localObject).putExtra("JSBridge", "replyComment");
          paramString = new k(this, this.q, paramString, str2, str1, str3);
          this.o = paramString;
          r.a(this).a(paramString, new IntentFilter("replyComment"));
          startActivity((Intent)localObject);
          return true;
          if (paramString.startsWith("js:")) {
            str1 = paramString.substring(3);
          }
        }
      }
      catch (UnsupportedEncodingException paramString)
      {
        for (;;)
        {
          paramString.printStackTrace();
          paramString = str1;
          continue;
          paramString = "";
          continue;
          label526:
          str1 = "";
          continue;
          label532:
          str2 = "";
          continue;
          label538:
          str3 = "";
          continue;
          label545:
          localObject = null;
          continue;
          label551:
          str4 = "";
          continue;
          label558:
          str5 = "";
          continue;
          label565:
          String str6 = "";
          continue;
          label572:
          String str7 = "";
          continue;
          label579:
          boolean bool = false;
        }
      }
      label585:
      if (paramString.equals("newRetweet"))
      {
        if (((JsonObject)localObject).has("success"))
        {
          paramString = ((JsonObject)localObject).get("success").getAsString();
          if (!((JsonObject)localObject).has("cancel")) {
            break label723;
          }
          str1 = ((JsonObject)localObject).get("cancel").getAsString();
          label637:
          if (!((JsonObject)localObject).has("erro")) {
            break label729;
          }
          str2 = ((JsonObject)localObject).get("erro").getAsString();
          label658:
          if (!((JsonObject)localObject).has("complete")) {
            break label735;
          }
          str3 = ((JsonObject)localObject).get("complete").getAsString();
          label680:
          if (!((JsonObject)localObject).has("data")) {
            break label742;
          }
        }
        label723:
        label729:
        label735:
        label742:
        for (localObject = ((JsonObject)localObject).get("data").getAsJsonObject();; localObject = null)
        {
          if (localObject != null) {
            break label748;
          }
          a(this.q, str2);
          return true;
          paramString = "";
          break;
          str1 = "";
          break label637;
          str2 = "";
          break label658;
          str3 = "";
          break label680;
        }
        label748:
        if (((JsonObject)localObject).has("content"))
        {
          str4 = ((JsonObject)localObject).get("content").getAsString();
          if (!((JsonObject)localObject).has("statusId")) {
            break label924;
          }
        }
        label924:
        for (str5 = ((JsonObject)localObject).get("statusId").getAsString();; str5 = "")
        {
          if (((JsonObject)localObject).has("username")) {
            ((JsonObject)localObject).get("username").getAsString();
          }
          localObject = new Intent(this, WriteStatusActivity.class);
          ((Intent)localObject).putExtra("extra_write_type", 2);
          ((Intent)localObject).putExtra("extra_status_id", Long.valueOf(str5));
          ((Intent)localObject).putExtra("extra_retweet_text", str4);
          ((Intent)localObject).putExtra("JSBridge", "newRetweet");
          paramString = new k(this, this.q, paramString, str2, str1, str3);
          this.o = paramString;
          r.a(this).a(paramString, new IntentFilter("newRetweet"));
          startActivity((Intent)localObject);
          return true;
          str4 = "";
          break;
        }
      }
    }
    label931:
    return false;
  }
  
  public void finish()
  {
    if (this.r)
    {
      Intent localIntent = new Intent();
      localIntent.putExtra("extra_donate_to_type", this.j);
      localIntent.putExtra("extra_donate_to_id", this.k);
      setResult(2, localIntent);
    }
    super.finish();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 99) && (paramInt2 == 99)) {
      this.q.reload();
    }
  }
  
  public void onBackPressed()
  {
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903092);
    setTitle("雪球币打赏");
    this.j = getIntent().getStringExtra("extra_donate_to_type");
    this.k = getIntent().getLongExtra("extra_donate_to_id", 0L);
    this.q = ((SNBWebView)findViewById(2131624298));
    this.q.getSettings().setJavaScriptEnabled(true);
    this.q.getSettings().setCacheMode(2);
    this.q.getSettings().setAllowFileAccess(true);
    this.q.getSettings().setUseWideViewPort(true);
    this.q.getSettings().setSupportZoom(true);
    this.q.getSettings().setBuiltInZoomControls(false);
    this.q.setWebChromeClient(new com.xueqiu.android.common.u(this));
    this.q.setWebViewClient(new WebViewClient()
    {
      public final void onPageFinished(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        RewardActivity.this.i();
        super.onPageFinished(paramAnonymousWebView, paramAnonymousString);
      }
      
      public final void onPageStarted(WebView paramAnonymousWebView, String paramAnonymousString, Bitmap paramAnonymousBitmap)
      {
        super.onPageStarted(paramAnonymousWebView, paramAnonymousString, paramAnonymousBitmap);
        RewardActivity.this.h();
      }
      
      public final boolean shouldOverrideUrlLoading(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        if (paramAnonymousString.equals("js://walletDonateSucceed")) {
          RewardActivity.a(RewardActivity.this);
        }
        for (;;)
        {
          return true;
          if (paramAnonymousString.equals("js://walletDeposit"))
          {
            paramAnonymousWebView = new Intent(RewardActivity.this, RechargeActivity.class);
            RewardActivity.this.startActivityForResult(paramAnonymousWebView, 99);
          }
          else if (!RewardActivity.this.b(paramAnonymousString))
          {
            paramAnonymousWebView.loadUrl(paramAnonymousString);
          }
        }
      }
    });
    try
    {
      paramBundle = getPackageManager().getPackageInfo(getPackageName(), 0);
      this.q.getSettings().setUserAgentString("Xueqiu Android " + paramBundle.versionName);
      if (com.xueqiu.android.base.u.a().d)
      {
        t.a(this, true);
        return;
      }
    }
    catch (PackageManager.NameNotFoundException paramBundle)
    {
      for (;;)
      {
        aa.a(paramBundle);
      }
      this.p = (this.p + "?to_id=" + this.k + "&to_type=" + this.j);
      this.q.loadUrl(this.p);
    }
  }
  
  public void onDestroy()
  {
    if ((this.q != null) && (this.q.getParent() != null))
    {
      ((ViewGroup)this.q.getParent()).removeView(this.q);
      this.q.removeAllViews();
      this.q.destroy();
      this.q = null;
    }
    super.onDestroy();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((this.q != null) && (this.q.canGoBack()) && (paramKeyEvent.getKeyCode() == 4) && (paramKeyEvent.getRepeatCount() == 0))
    {
      this.q.goBack();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected void onRestart()
  {
    super.onRestart();
  }
  
  protected final Boolean w_()
  {
    boolean bool = true;
    v.a(WebViewActivity.class.getSimpleName(), String.format("scrollX : %d", new Object[] { Integer.valueOf(this.q.getScrollX()) }));
    if (this.q.getScrollX() <= 0) {}
    for (;;)
    {
      return Boolean.valueOf(bool);
      bool = false;
    }
  }
  
  public final void x_()
  {
    if (this.q.canGoBack())
    {
      this.q.goBack();
      return;
    }
    super.onBackPressed();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\RewardActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */