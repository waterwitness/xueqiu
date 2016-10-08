package com.xueqiu.android.common;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.ImageView;
import com.android.volley.y;
import com.google.gson.JsonObject;
import com.umeng.analytics.MobclickAgent;
import com.xueqiu.android.base.SnowBallApplication;
import com.xueqiu.android.base.b;
import com.xueqiu.android.base.b.a.c;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.f;
import com.xueqiu.android.base.g;
import com.xueqiu.android.base.h5.H5Activity;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.ag;
import com.xueqiu.android.common.account.LoginActivity;
import com.xueqiu.android.common.model.SNBEvent;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

public class WelcomeActivity
  extends Activity
{
  private boolean a = false;
  private int b = 3;
  private String c = null;
  private long d = 0L;
  private boolean e = false;
  private com.xueqiu.android.common.account.a f;
  private boolean g = false;
  private Handler h = new Handler(Looper.getMainLooper())
  {
    public final void handleMessage(Message paramAnonymousMessage)
    {
      switch (paramAnonymousMessage.what)
      {
      default: 
        return;
      case 1: 
        WelcomeActivity.a(WelcomeActivity.this);
        return;
      case 3: 
        WelcomeActivity.b(WelcomeActivity.this);
        return;
      }
      WelcomeActivity.c(WelcomeActivity.this);
    }
  };
  
  private void a(final int paramInt)
  {
    if (!SnowBallApplication.a()) {
      if (!b.a().b)
      {
        ag.d.a(new rx.c.a()
        {
          public final void a()
          {
            WelcomeActivity.a(WelcomeActivity.this, paramInt);
          }
        }, 1L, TimeUnit.SECONDS);
        com.xueqiu.android.base.util.v.a("WelcomeActivity", "waiting to intent once");
      }
    }
    Object localObject1;
    label223:
    label229:
    label235:
    label387:
    do
    {
      return;
      String str;
      if (this.a)
      {
        localObject1 = new SNBEvent(1000, 6);
        ((SNBEvent)localObject1).addProperty("ad_id", String.valueOf(this.d));
        com.xueqiu.android.base.i.a().a((SNBEvent)localObject1);
        g.a();
        b.a();
        str = f.a(b.d());
        if (!com.xueqiu.android.base.util.i.c()) {
          break label223;
        }
        localObject1 = "0x05";
        if (!com.xueqiu.android.base.util.i.d()) {
          break label229;
        }
      }
      for (Object localObject2 = "WIFI";; localObject2 = "2G/3G")
      {
        com.xueqiu.android.base.q.a().b().a(this.d, "0x01", str, (String)localObject1, (String)localObject2, new p()
        {
          public final void a(y paramAnonymousy)
          {
            com.xueqiu.android.base.util.v.c("WelcomeActivity", "log ad show failed", paramAnonymousy);
          }
        });
        if (paramInt != 1) {
          break label387;
        }
        if ((getIntent() == null) || (getIntent().getData() == null)) {
          break label235;
        }
        localObject2 = getIntent().getData().toString();
        localObject1 = localObject2;
        if (((String)localObject2).contains("xueqiu://")) {
          localObject1 = ((String)localObject2).replace("xueqiu://", "https://xueqiu.com/");
        }
        if (!com.xueqiu.android.base.v.a((String)localObject1)) {
          break label235;
        }
        q.a((String)localObject1, this);
        overridePendingTransition(2130968598, 2130968597);
        finish();
        return;
        localObject1 = "0x04";
        break;
      }
      if (!u.a().c)
      {
        if (u.a().d)
        {
          this.f.a();
          return;
        }
        localObject1 = new Bundle();
        ((Bundle)localObject1).putByte("extra_mode", (byte)2);
        localObject2 = new Intent(this, LoginActivity.class);
        ((Intent)localObject2).putExtras((Bundle)localObject1);
        startActivity((Intent)localObject2);
        finish();
        return;
      }
      localObject1 = new Intent(this, MainActivity.class);
      if (!this.g)
      {
        ((Intent)localObject1).addFlags(1048576);
        startActivity((Intent)localObject1);
        overridePendingTransition(2130968598, 2130968597);
        finish();
      }
      if (this.g)
      {
        finish();
        overridePendingTransition(2130968583, 2130968584);
      }
      com.xueqiu.android.base.i.a().a(new SNBEvent(1000, 14));
      return;
    } while (c.a(this.c));
    if (!q.b(this.c, this))
    {
      if (!com.xueqiu.android.base.v.a(this.c)) {
        break label553;
      }
      localObject1 = new Intent(this, H5Activity.class);
      ((Intent)localObject1).putExtra("extra_url", this.c);
      ((Intent)localObject1).putExtra("extra_from_ad", true);
      ((Intent)localObject1).putExtra("extra_is_module", false);
      startActivity((Intent)localObject1);
    }
    for (;;)
    {
      localObject1 = com.xueqiu.android.base.q.a().b();
      u.a();
      ((ai)localObject1).d(UserLogonDataPrefs.getLogonUserId(), String.valueOf(this.d), new p()
      {
        public final void a(y paramAnonymousy)
        {
          aa.a(paramAnonymousy);
        }
      });
      this.h.removeMessages(2);
      localObject1 = new SNBEvent(1000, 7);
      ((SNBEvent)localObject1).addProperty("ad_id", String.valueOf(this.d));
      com.xueqiu.android.base.i.a().a((SNBEvent)localObject1);
      overridePendingTransition(2130968598, 2130968597);
      finish();
      return;
      label553:
      localObject1 = new Intent();
      ((Intent)localObject1).setClass(this, WebViewActivity.class);
      ((Intent)localObject1).putExtra("extra_from_ad", true);
      ((Intent)localObject1).putExtra("extra_url_path", this.c);
      ((Intent)localObject1).addFlags(1048576);
      startActivity((Intent)localObject1);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getWindow().setFlags(1024, 1024);
    setContentView(2130903272);
    if ((getIntent().getAction() != null) && (getIntent().getAction().equals("com.sina.weibo.sdk.action.ACTION_SDK_RESP_ACTIVITY"))) {
      b.a().a = getIntent().getExtras();
    }
    if (getIntent() != null) {
      this.g = getIntent().getBooleanExtra("extra_just_show_welcome", false);
    }
    if (this.g) {
      overridePendingTransition(2130968583, 2130968584);
    }
    int i = getResources().getIdentifier("first_publish_logo", "drawable", getPackageName());
    if (i != 0)
    {
      paramBundle = (ImageView)findViewById(2131624842);
      paramBundle.setImageResource(i);
      paramBundle.setVisibility(0);
    }
    MobclickAgent.updateOnlineConfig(this);
    com.xueqiu.android.base.a.a();
    this.e = com.xueqiu.android.base.a.d();
    paramBundle = this.h;
    if (this.e) {}
    for (long l = 0L;; l = 1000L)
    {
      paramBundle.sendEmptyMessageDelayed(1, l);
      this.f = new com.xueqiu.android.common.account.a(this, 2);
      return;
    }
  }
  
  protected void onDestroy()
  {
    this.f.b();
    super.onDestroy();
  }
  
  protected void onResume()
  {
    super.onResume();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\WelcomeActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */