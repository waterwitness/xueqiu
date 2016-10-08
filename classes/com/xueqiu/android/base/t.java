package com.xueqiu.android.base;

import android.app.Activity;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.content.r;
import android.util.Base64;
import com.android.volley.y;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.xueqiu.android.base.b.a.c;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.storage.DBManager;
import com.xueqiu.android.base.storage.prefs.DefaultPrefs;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.av;
import com.xueqiu.android.base.util.i;
import com.xueqiu.android.base.util.m;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.base.util.w;
import com.xueqiu.android.common.account.LoginActivity;
import com.xueqiu.android.common.model.LoginResult;
import com.xueqiu.android.community.model.UserLogonData;
import com.xueqiu.android.trade.model.BrokerAccountToken;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public final class t
{
  public String a = "";
  public Map<String, BrokerAccountToken> b = null;
  public boolean c = false;
  public boolean d = true;
  public volatile boolean e = false;
  public String f = "";
  public boolean g = false;
  
  private t()
  {
    b.a();
    Context localContext = b.d();
    b.a();
    SharedPreferences localSharedPreferences = DefaultPrefs.getPreferences(b.d());
    Object localObject;
    if ((localSharedPreferences.contains("access_token")) || (localSharedPreferences.contains("access_token_encrypted")))
    {
      localObject = localSharedPreferences.getString("access_token", null);
      if (c.a((CharSequence)localObject)) {
        break label428;
      }
      localObject = Base64.encodeToString(com.xueqiu.android.base.util.d.a().a((String)localObject), 0);
    }
    for (;;)
    {
      UserLogonDataPrefs.storeAccessToken((String)localObject);
      UserLogonDataPrefs.storeLogonUserId(localSharedPreferences.getLong("userid", 0L));
      UserLogonDataPrefs.storeUserIsAnonymous(localSharedPreferences.getBoolean("user_type_anonymous", true));
      UserLogonDataPrefs.storeTokenExpiresIn(localSharedPreferences.getLong("expires_in", 0L));
      UserLogonDataPrefs.storeRefreshToken(localSharedPreferences.getString("refresh_token", ""));
      UserLogonDataPrefs.storeFetchTokenTime(localSharedPreferences.getLong("get_token_time", 0L));
      UserLogonDataPrefs.storeIsSpamUser(localSharedPreferences.getBoolean("is_spam_user", false));
      UserLogonDataPrefs.storeUserTelephone(localSharedPreferences.getString("user_telphone", ""));
      localObject = localSharedPreferences.edit();
      ((SharedPreferences.Editor)localObject).remove("access_token");
      ((SharedPreferences.Editor)localObject).remove("access_token_encrypted");
      ((SharedPreferences.Editor)localObject).remove("userid");
      ((SharedPreferences.Editor)localObject).remove("user_type_anonymous");
      ((SharedPreferences.Editor)localObject).remove("expires_in");
      ((SharedPreferences.Editor)localObject).remove("refresh_token");
      ((SharedPreferences.Editor)localObject).remove("get_token_time");
      ((SharedPreferences.Editor)localObject).remove("is_spam_user");
      ((SharedPreferences.Editor)localObject).remove("user_telphone");
      ((SharedPreferences.Editor)localObject).apply();
      this.d = UserLogonDataPrefs.isAnonymousUser();
      this.a = d();
      if ((this.a != null) && (!"".equals(this.a)))
      {
        this.c = true;
        if (this.c)
        {
          b.a();
          DefaultPrefs.putBoolean("has_visited_user_guide", true, b.e());
        }
      }
      DBManager.getInstance();
      try
      {
        localObject = com.xueqiu.android.base.util.d.a().a(UserPrefs.getBytes(localContext, "trade_tokens"));
        this.b = ((Map)m.a().fromJson((String)localObject, new TypeToken() {}.getType()));
        if (this.b == null) {
          this.b = new HashMap();
        }
        b.a();
        this.g = com.xueqiu.android.trade.patternlock.d.b(b.d());
        return;
        label428:
        localObject = localSharedPreferences.getString("access_token_encrypted", null);
      }
      catch (Throwable localThrowable)
      {
        for (;;) {}
      }
    }
  }
  
  public static void a(Activity paramActivity, boolean paramBoolean)
  {
    Bundle localBundle = new Bundle();
    localBundle.putByte("extra_mode", (byte)2);
    localBundle.putBoolean("extra_need_back", true);
    Intent localIntent = new Intent(paramActivity, LoginActivity.class);
    localIntent.putExtras(localBundle);
    paramActivity.startActivity(localIntent);
    if (paramBoolean)
    {
      paramActivity.finish();
      paramActivity.overridePendingTransition(2130968594, 2130968577);
    }
  }
  
  public static void a(Context paramContext)
  {
    if (i.f())
    {
      u.a();
      String str = w.a(String.valueOf(UserLogonDataPrefs.getLogonUserId()));
      com.xiaomi.mipush.sdk.b.c(paramContext, str, "extra message");
      v.a("setMiUserAccount", str);
    }
  }
  
  private static String d()
  {
    String str = UserLogonDataPrefs.getAccessToken();
    if (c.a(str)) {
      return str;
    }
    return com.xueqiu.android.base.util.d.a().a(Base64.decode(str, 0));
  }
  
  public final BrokerAccountToken a(String paramString)
  {
    Iterator localIterator = this.b.values().iterator();
    while (localIterator.hasNext())
    {
      BrokerAccountToken localBrokerAccountToken = (BrokerAccountToken)localIterator.next();
      if ((localBrokerAccountToken.getAid() != null) && (localBrokerAccountToken.getAid().equals(paramString))) {
        return localBrokerAccountToken;
      }
    }
    return null;
  }
  
  public final void a()
  {
    this.a = d();
    this.d = UserLogonDataPrefs.isAnonymousUser();
    this.c = true;
    new av().a();
    b.a();
    b.k();
    b.l();
    b.a();
    r.a(b.d()).a(new Intent("com.xueqiu.android.intent.action.LOGGED_IN"));
  }
  
  public final void a(UserLogonData paramUserLogonData)
  {
    UserLogonDataPrefs.storeLogonUserId(paramUserLogonData.getUserId());
    UserLogonDataPrefs.storeUserIsAnonymous(paramUserLogonData.isAnonymousUser());
    UserLogonDataPrefs.storeIsSpamUser(paramUserLogonData.isSpamUser());
    if (!c.a(paramUserLogonData.getTelephone())) {
      UserLogonDataPrefs.storeUserTelephone(paramUserLogonData.getTelephone());
    }
    a(paramUserLogonData.getAccessToken(), paramUserLogonData.getRefreshToken(), paramUserLogonData.getExpiresInByInMillis(), paramUserLogonData.getFetchTokenTime());
  }
  
  public final void a(BrokerAccountToken paramBrokerAccountToken)
  {
    paramBrokerAccountToken.setCreateTime(new Date(System.currentTimeMillis() - 60000L));
    this.b.put(paramBrokerAccountToken.getTid(), paramBrokerAccountToken);
    c();
  }
  
  final void a(String paramString1, String paramString2, long paramLong1, long paramLong2)
  {
    this.a = paramString1;
    UserLogonDataPrefs.storeAccessToken(Base64.encodeToString(com.xueqiu.android.base.util.d.a().a(paramString1), 0));
    UserLogonDataPrefs.storeTokenExpiresIn(paramLong1);
    UserLogonDataPrefs.storeRefreshToken(paramString2);
    UserLogonDataPrefs.storeFetchTokenTime(paramLong2);
  }
  
  public final void b()
  {
    if (this.e) {
      return;
    }
    this.e = true;
    q.a().b().e(UserLogonDataPrefs.getRefreshToken(), new p()
    {
      public final void a(y paramAnonymousy)
      {
        t.this.e = false;
        aa.a(paramAnonymousy);
      }
    });
  }
  
  public final void c()
  {
    Object localObject = m.a().toJson(this.b, new TypeToken() {}.getType());
    localObject = com.xueqiu.android.base.util.d.a().a((String)localObject);
    b.a();
    UserPrefs.setBytes(b.d(), "trade_tokens", (byte[])localObject);
  }
  
  public final void logout()
  {
    this.c = false;
    this.d = true;
    this.a = null;
    b.a();
    Object localObject = PreferenceManager.getDefaultSharedPreferences(b.d()).edit();
    ((SharedPreferences.Editor)localObject).putString("user_groups_cache_data", null);
    ((SharedPreferences.Editor)localObject).putString("investment_calendar_data_cache_obj", null);
    ((SharedPreferences.Editor)localObject).putLong("last_update_friends_time", 0L);
    ((SharedPreferences.Editor)localObject).putString("bound_info", null);
    ((SharedPreferences.Editor)localObject).putString("hostory_Search", "");
    ((SharedPreferences.Editor)localObject).putString("pref_key_pattern_sha1", "");
    ((SharedPreferences.Editor)localObject).apply();
    this.b.clear();
    b.a();
    localObject = b.d();
    UserPrefs.setBytes((Context)localObject, "trade_tokens", null);
    UserPrefs.setBoolean((Context)localObject, ((Context)localObject).getString(2131165665), false);
    UserLogonDataPrefs.clear();
    b.a();
    b.k();
    b.a();
    ((NotificationManager)b.d().getSystemService("notification")).cancelAll();
    b.a();
    r.a(b.d()).a(new Intent("com.xueqiu.android.intent.action.LOGGED_OUT"));
    q.a().c();
    q.a().d();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */