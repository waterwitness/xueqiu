package com.xueqiu.android.common;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Process;
import android.support.v7.a.f;
import android.support.v7.a.g;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnLongClickListener;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TabHost.OnTabChangeListener;
import android.widget.TabHost.TabSpec;
import android.widget.TabWidget;
import android.widget.TextView;
import com.android.volley.y;
import com.google.gson.Gson;
import com.umeng.analytics.MobclickAgent;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.storage.prefs.DefaultPrefs;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.ag;
import com.xueqiu.android.base.util.ay;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.account.LoginActivity;
import com.xueqiu.android.common.account.VerifyBindedPhoneNumActivity;
import com.xueqiu.android.common.account.VerifyPhoneNumActivity;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.widget.SnowBallTabHost;
import com.xueqiu.android.community.WriteStatusActivity;
import com.xueqiu.android.community.c.o;
import com.xueqiu.android.community.model.Remind;
import com.xueqiu.android.community.model.RemindItem;
import com.xueqiu.android.message.RecentTalkActivity;
import com.xueqiu.android.trade.TakingPositionActivity;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import rx.j;

public class MainActivity
  extends b
{
  public Remind j = new Remind();
  public SnowBallTabHost k;
  public boolean p = false;
  private j q = null;
  private int r;
  private boolean s = false;
  private Context t;
  private BroadcastReceiver u = new BroadcastReceiver()
  {
    public final void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      if (paramAnonymousIntent.getAction().equals("com.xueqiu.android.action.UPDATE_UNREAD_COUNT"))
      {
        if (paramAnonymousIntent.getExtras() != null)
        {
          MainActivity.a(MainActivity.this, (Remind)paramAnonymousIntent.getParcelableExtra("extra_remind"));
          UserPrefs.setString(MainActivity.this.getBaseContext(), "key_remind", com.xueqiu.android.base.util.m.a().toJson(MainActivity.a(MainActivity.this)));
        }
        MainActivity.this.a(MainActivity.a(MainActivity.this));
      }
    }
  };
  private BroadcastReceiver v = new BroadcastReceiver()
  {
    public final void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      v.a("MainActivity", "intent.getAction = " + paramAnonymousIntent.getAction());
      MainActivity.b(MainActivity.this);
    }
  };
  private int w = -1;
  private k x;
  private String y = "";
  
  private View b(String paramString)
  {
    l locall = this.x.a(paramString);
    View localView = View.inflate(this, 2130903252, null);
    TextView localTextView = (TextView)localView.findViewById(2131624780);
    localTextView.setText(locall.a);
    if (paramString.equals("public_timeline_tag")) {
      localTextView.setTextColor(locall.d);
    }
    for (;;)
    {
      ((ImageView)localView.findViewById(2131624779)).setBackgroundResource(locall.b);
      if (paramString.equals("portfolio_tag")) {
        localView.setOnLongClickListener(new View.OnLongClickListener()
        {
          public final boolean onLongClick(View paramAnonymousView)
          {
            paramAnonymousView = new Intent(MainActivity.this, TakingPositionActivity.class);
            MainActivity.this.startActivity(paramAnonymousView);
            MobclickAgent.onEvent(MainActivity.this, "portfolio_performance");
            return true;
          }
        });
      }
      if (paramString == "trends_tag") {
        localView.setOnLongClickListener(new View.OnLongClickListener()
        {
          public final boolean onLongClick(View paramAnonymousView)
          {
            if (com.xueqiu.android.base.u.a().d)
            {
              t.a(MainActivity.this, false);
              return false;
            }
            paramAnonymousView = new Intent(MainActivity.this, WriteStatusActivity.class);
            paramAnonymousView.putExtra("extra_write_type", 3);
            MainActivity.this.startActivity(paramAnonymousView);
            return true;
          }
        });
      }
      this.x.b.put(paramString, localView);
      return localView;
      localTextView.setTextColor(locall.c);
    }
  }
  
  private static String b(int paramInt)
  {
    if (paramInt == 0) {
      return "";
    }
    if (paramInt >= 1000) {
      return "999+";
    }
    return String.valueOf(paramInt);
  }
  
  private void l()
  {
    this.x = new k(this);
    String[] arrayOfString = getResources().getStringArray(2131492883);
    if (this.j.getStatus() != null) {
      this.j.getStatus().getCount();
    }
    TypedArray localTypedArray = getTheme().obtainStyledAttributes(new int[] { 2130772215, 2130772214, 2130772218, 2130772216, 2130772217 });
    int i = 0;
    while (i < arrayOfString.length)
    {
      k localk = this.x;
      String str = new String[] { "public_timeline_tag", "portfolio_tag", "trends_tag", "quotes_center_tag", "trade_tag" }[i];
      l locall = new l(localk, str, arrayOfString[i], localTypedArray.getResourceId(i, 0), new int[] { 0, 10, 0, 0, 0 }[i]);
      localk.a.put(str, locall);
      i += 1;
    }
  }
  
  protected final void A_()
  {
    super.A_();
    int i;
    NotificationManager localNotificationManager;
    if (this.w != -1)
    {
      i = this.w;
      localNotificationManager = (NotificationManager)getSystemService("notification");
      if (i != 5) {
        break label66;
      }
      this.k.setCurrentTabByTag("trends_tag");
      localNotificationManager.cancel(6);
    }
    for (;;)
    {
      getIntent().putExtra("extra_notification", -1);
      this.w = -1;
      return;
      label66:
      if (i == 1) {
        localNotificationManager.cancel(1);
      } else if (i == 3) {
        localNotificationManager.cancel(3);
      } else if (i == 7) {
        localNotificationManager.cancel(4);
      } else if (i == 8) {
        this.k.setCurrentTabByTag("public_timeline_tag");
      } else if ((i == 9) || (i == 10)) {
        this.k.setCurrentTabByTag("trade_tag");
      } else if (i == 11) {
        this.k.setCurrentTabByTag("quotes_center_tag");
      }
    }
  }
  
  public final void a(Remind paramRemind)
  {
    if ((paramRemind == null) || (!paramRemind.isLegal())) {}
    label356:
    do
    {
      return;
      Object localObject = (ImageView)((View)this.x.b.get("trends_tag")).findViewById(2131624523);
      int i = paramRemind.getStatus().getCount();
      if (i > 0)
      {
        ((ImageView)localObject).setImageDrawable(ay.b(b(i), getResources()));
        ((ImageView)localObject).setVisibility(0);
      }
      for (;;)
      {
        i = paramRemind.getMentions().getCount();
        int m = paramRemind.getPaidMentions().getCount();
        int n = paramRemind.getPmComments().getCount();
        int i1 = paramRemind.getComments().getCount();
        int i2 = paramRemind.getFollowers().getCount();
        int i3 = paramRemind.getTradeNotification().getCount();
        localObject = b(i + this.r + m + n + i1 + i2 + i3);
        o localo = (o)c().a("public_timeline_tag");
        com.xueqiu.android.stock.c.m localm = (com.xueqiu.android.stock.c.m)c().a("portfolio_tag");
        com.xueqiu.android.community.c.c localc = (com.xueqiu.android.community.c.c)c().a("trends_tag");
        com.xueqiu.android.stock.c.u localu = (com.xueqiu.android.stock.c.u)c().a("quotes_center_tag");
        com.xueqiu.android.trade.c.n localn = (com.xueqiu.android.trade.c.n)c().a("trade_tag");
        if (localo != null) {
          localo.c((String)localObject);
        }
        if (localm != null) {
          localm.b((String)localObject);
        }
        if (localc != null) {
          localc.c((String)localObject);
        }
        if (localu != null) {
          ay.a((String)localObject, (ImageView)localu.c(2131624523));
        }
        if (localn != null) {
          localn.c((String)localObject);
        }
        i = paramRemind.getStrategy().getCount();
        long l1 = paramRemind.getStrategy().getTs();
        long l2 = UserPrefs.getLong(this, "key_quotes_center_new_strategy_clear_ts", 0L);
        paramRemind = (com.xueqiu.android.stock.c.u)c().a("quotes_center_tag");
        if ((i <= 0) || (l1 <= l2)) {
          break label356;
        }
        if (paramRemind == null) {
          break;
        }
        paramRemind.a(true);
        return;
        ((ImageView)localObject).setVisibility(8);
      }
    } while (paramRemind == null);
    paramRemind.a(false);
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getKeyCode() == 4) && (paramKeyEvent.getAction() == 1))
    {
      paramKeyEvent = c().a(this.y);
      if (((paramKeyEvent instanceof c)) && (((c)paramKeyEvent).y_())) {
        return false;
      }
      com.xueqiu.android.base.b.a().a(false);
      if (com.xueqiu.android.base.n.b(this).d)
      {
        Process.killProcess(Process.myPid());
        System.exit(0);
      }
      for (;;)
      {
        return true;
        moveTaskToBack(true);
      }
    }
    return super.dispatchKeyEvent(paramKeyEvent);
  }
  
  protected final void e()
  {
    com.xueqiu.android.base.b.a();
    if (com.xueqiu.android.base.b.i())
    {
      setTheme(2131361881);
      return;
    }
    super.e();
  }
  
  public final String j()
  {
    int m = 0;
    int i = m;
    if (this.j != null)
    {
      i = m;
      if (this.j.isLegal()) {
        i = this.r + this.j.getComments().getCount() + this.j.getMentions().getCount() + this.j.getPaidMentions().getCount() + this.j.getPmComments().getCount();
      }
    }
    return b(i);
  }
  
  public final void k()
  {
    int i3 = 0;
    Intent localIntent = new Intent(this, RecentTalkActivity.class);
    int i;
    int m;
    label39:
    int n;
    label52:
    int i1;
    label65:
    int i2;
    if (this.j.getMentions() == null)
    {
      i = 0;
      if (this.j.getPaidMentions() != null) {
        break label184;
      }
      m = 0;
      if (this.j.getPmComments() != null) {
        break label198;
      }
      n = 0;
      if (this.j.getComments() != null) {
        break label213;
      }
      i1 = 0;
      if (this.j.getFollowers() != null) {
        break label228;
      }
      i2 = 0;
      label78:
      if (this.j.getTradeNotification() != null) {
        break label243;
      }
    }
    for (;;)
    {
      localIntent.putExtra("extra_comment_count", i1);
      localIntent.putExtra("extra_mention_count", i);
      localIntent.putExtra("extra_paid_mention_count", m);
      localIntent.putExtra("extra_paid_comment_count", n);
      localIntent.putExtra("extra_new_follower_count", i2);
      localIntent.putExtra("extra_trade_notification_count", i3);
      startActivity(localIntent);
      com.xueqiu.android.base.i.a().a(new SNBEvent(1000, 8));
      return;
      i = this.j.getMentions().getCount();
      break;
      label184:
      m = this.j.getPaidMentions().getCount();
      break label39;
      label198:
      n = this.j.getPmComments().getCount();
      break label52;
      label213:
      i1 = this.j.getComments().getCount();
      break label65;
      label228:
      i2 = this.j.getFollowers().getCount();
      break label78;
      label243:
      i3 = this.j.getTradeNotification().getCount();
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 == 1)
    {
      localObject = (EditText)findViewById(2131624252);
      if (localObject != null) {
        ((EditText)localObject).setText("");
      }
    }
    Object localObject = c().a(this.y);
    if ((localObject != null) && (((android.support.v4.a.i)localObject).k())) {
      ((android.support.v4.a.i)localObject).a(paramInt1, paramInt2, paramIntent);
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.t = this;
    this.i.b().d();
    setContentView(2130903084);
    this.j = ((Remind)com.xueqiu.android.base.util.m.a().fromJson(UserPrefs.getString(this, "key_remind", ""), Remind.class));
    if (this.j == null) {
      this.j = new Remind();
    }
    this.s = getIntent().getBooleanExtra("extra_need_login", false);
    this.i.b().e(2130838344);
    this.i.b().b(false);
    this.i.b().e(false);
    a(rx.a.a.a.a(this, com.xueqiu.android.message.client.c.f).c(new rx.c.b() {}));
    a(rx.a.a.a.a(this, com.xueqiu.android.message.client.c.g).c(new rx.c.b() {}));
    a(rx.a.a.a.a(this, com.xueqiu.android.message.client.c.j).c(new rx.c.b() {}));
    a(rx.a.a.a.a(this, com.xueqiu.android.message.client.c.h).c(new rx.c.b() {}));
    a(rx.a.a.a.a(this, com.xueqiu.android.message.client.c.i).c(new rx.c.b() {}));
    a(rx.a.a.a.a(this, com.xueqiu.android.message.client.c.k).c(new rx.c.b() {}));
    a(rx.a.a.a.a(this, com.xueqiu.android.message.client.c.l).c(new rx.c.b() {}));
    paramBundle = new IntentFilter("com.xueqiu.android.action.UPDATE_UNREAD_COUNT");
    android.support.v4.content.r.a(this).a(this.u, paramBundle);
    paramBundle = new IntentFilter();
    paramBundle.addAction("com.xueqiu.android.action.statusPosted");
    android.support.v4.content.r.a(this).a(this.v, paramBundle);
    this.w = getIntent().getIntExtra("extra_notification", -1);
    if (this.s)
    {
      paramBundle = new Bundle();
      paramBundle.putByte("extra_mode", (byte)2);
      paramBundle.putBoolean("extra_need_back", true);
      localObject = new Intent(this, LoginActivity.class);
      ((Intent)localObject).putExtras(paramBundle);
      startActivity((Intent)localObject);
      overridePendingTransition(2130968576, 2130968577);
    }
    l();
    this.k = ((SnowBallTabHost)findViewById(16908306));
    this.k.a(this, c(), 2131624245);
    paramBundle = new Bundle();
    paramBundle.putInt("followers", this.j.getFollowers().getCount());
    this.k.a(this.k.newTabSpec("public_timeline_tag").setIndicator(b("public_timeline_tag")), o.class, paramBundle);
    paramBundle = new Bundle();
    paramBundle.putInt("page_type", UserPrefs.getInt(this, "portfolio_page_type", 2));
    this.k.a(this.k.newTabSpec("portfolio_tag").setIndicator(b("portfolio_tag")), com.xueqiu.android.stock.c.m.class, paramBundle);
    this.k.a(this.k.newTabSpec("trends_tag").setIndicator(b("trends_tag")), com.xueqiu.android.community.c.c.class, null);
    this.k.a(this.k.newTabSpec("quotes_center_tag").setIndicator(b("quotes_center_tag")), com.xueqiu.android.stock.c.u.class, null);
    Object localObject = new Bundle();
    if (this.w == 10) {}
    for (paramBundle = "performance";; paramBundle = UserPrefs.getString(this, "trade_page_type", "trade"))
    {
      ((Bundle)localObject).putString("page_type", paramBundle);
      this.k.a(this.k.newTabSpec("trade_tag").setIndicator(b("trade_tag")), com.xueqiu.android.trade.c.n.class, (Bundle)localObject);
      this.k.setOnTabChangedListener(new TabHost.OnTabChangeListener()
      {
        public final void onTabChanged(String paramAnonymousString)
        {
          int i = 0;
          while (i < MainActivity.d(MainActivity.this).getTabWidget().getChildCount())
          {
            ((TextView)MainActivity.d(MainActivity.this).getTabWidget().getChildTabViewAt(i).findViewById(2131624780)).setTextColor(MainActivity.e(MainActivity.this).a(paramAnonymousString).c);
            i += 1;
          }
          ((TextView)MainActivity.d(MainActivity.this).getCurrentTabView().findViewById(2131624780)).setTextColor(MainActivity.e(MainActivity.this).a(paramAnonymousString).d);
          MainActivity.a(MainActivity.this, paramAnonymousString);
          if ("portfolio_tag".equals(MainActivity.f(MainActivity.this))) {
            com.xueqiu.android.base.i.a().a(new SNBEvent(1000, 2));
          }
          do
          {
            return;
            if ("trends_tag".equals(MainActivity.f(MainActivity.this)))
            {
              com.xueqiu.android.base.i.a().a(new SNBEvent(1000, 3));
              return;
            }
            if ("public_timeline_tag".equals(MainActivity.f(MainActivity.this)))
            {
              com.xueqiu.android.base.i.a().a(new SNBEvent(1000, 1));
              return;
            }
            if ("quotes_center_tag".equals(MainActivity.f(MainActivity.this)))
            {
              com.xueqiu.android.base.i.a().a(new SNBEvent(1000, 16));
              return;
            }
          } while (!"trade_tag".equals(MainActivity.f(MainActivity.this)));
          com.xueqiu.android.base.i.a().a(new SNBEvent(1000, 5));
        }
      });
      this.k.getTabWidget().setShowDividers(0);
      a(rx.a.b.a.b(this, new IntentFilter("com.xueqiu.android.action.switchTabHostEnabled")).c(new rx.c.b() {}));
      if (!DefaultPrefs.getBoolean("has_visited_user_guide", false, this)) {
        startActivity(new Intent(this, UserGuideActivity.class));
      }
      return;
    }
  }
  
  protected void onDestroy()
  {
    if (this.u != null) {
      android.support.v4.content.r.a(getApplicationContext()).a(this.u);
    }
    if (this.v != null) {
      android.support.v4.content.r.a(getApplicationContext()).a(this.v);
    }
    super.onDestroy();
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
    this.w = paramIntent.getIntExtra("extra_notification", -1);
  }
  
  protected void onResume()
  {
    super.onResume();
    final String str2;
    if (UserLogonDataPrefs.isSpamUser())
    {
      str2 = UserLogonDataPrefs.getUserTelephone();
      if (TextUtils.isEmpty(str2)) {
        break label83;
      }
    }
    label83:
    for (final boolean bool = true;; bool = false)
    {
      String str1 = "您的帐号存在异常，请绑定手机号解除异常状态";
      if (bool) {
        str1 = "您的帐号存在异常，请验证绑定手机号解除异常状态";
      }
      new AlertDialog.Builder(this).setTitle("提示").setCancelable(false).setPositiveButton(com.xueqiu.android.base.r.d(2131165361), new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          if (bool)
          {
            paramAnonymousDialogInterface = new Intent(MainActivity.c(MainActivity.this), VerifyBindedPhoneNumActivity.class);
            paramAnonymousDialogInterface.putExtra("extra_phone_number", str2);
            MainActivity.c(MainActivity.this).startActivity(paramAnonymousDialogInterface);
            return;
          }
          paramAnonymousDialogInterface = new Intent(MainActivity.c(MainActivity.this), VerifyPhoneNumActivity.class);
          paramAnonymousDialogInterface.putExtra("extra_verify_phone_intent", 3);
          MainActivity.c(MainActivity.this).startActivity(paramAnonymousDialogInterface);
        }
      }).setMessage(str1).create().show();
      return;
    }
  }
  
  public void onStart()
  {
    super.onStart();
    if ((this.q != null) && (!this.q.c())) {
      this.q.b();
    }
    this.q = ag.c.a(new rx.c.a()
    {
      public final void a()
      {
        if (!com.xueqiu.android.base.b.a().c) {
          return;
        }
        long l = UserPrefs.getLong(MainActivity.this.getBaseContext(), "cached_since_id", 0L);
        MainActivity.g().m(l, new p(MainActivity.this)
        {
          public final void a(y paramAnonymous2y)
          {
            aa.a(paramAnonymous2y);
          }
        });
      }
    }, 2L, 60L, TimeUnit.SECONDS);
  }
  
  protected void onStop()
  {
    super.onStop();
    if ((this.q != null) && (!this.q.c())) {
      this.q.b();
    }
  }
  
  protected final Boolean w_()
  {
    return Boolean.valueOf(false);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\MainActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */