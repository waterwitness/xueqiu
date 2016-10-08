package com.xueqiu.android.message.client;

import android.annotation.TargetApi;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.IBinder;
import android.os.SystemClock;
import android.preference.PreferenceManager;
import com.snowballfinance.message.io.c.e;
import com.snowballfinance.messageplatform.a.z;
import com.xueqiu.android.base.SnowBallApplication;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.d;
import com.xueqiu.android.base.q;
import com.xueqiu.android.base.storage.prefs.DataStore;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.i;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.model.ClientInfo;
import com.xueqiu.android.common.model.RequestResult;
import com.xueqiu.android.community.model.User;
import com.xueqiu.android.message.model.IMGroup;
import com.xueqiu.android.message.model.Talk;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import rx.a.4;
import rx.d.a.s;
import rx.e.a.1;
import rx.i.c;

public class MessageService
  extends Service
{
  public static boolean a = false;
  private ai b;
  private rx.h c;
  private com.snowballfinance.message.io.c.h d;
  private ExecutorService e;
  private rx.d.c.j f = new rx.d.c.j();
  private BroadcastReceiver g = new BroadcastReceiver()
  {
    public final void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      if (paramAnonymousIntent.getAction().equals("com.xueqiu.android.action.requestPrimary"))
      {
        paramAnonymousContext = new com.snowballfinance.messageplatform.a.r();
        MessageService.this.a(paramAnonymousContext);
      }
      while (!paramAnonymousIntent.getAction().equals("com.xueqiu.android.action.reconnect")) {
        return;
      }
      MessageService.f(MessageService.this).a(new rx.c.a()
      {
        public final void a()
        {
          MessageService.d(MessageService.this);
        }
      });
    }
  };
  
  private rx.a<Boolean> b()
  {
    if (this.d != null) {
      this.d.d();
    }
    v.a("MessageService", String.format("connect [userId:%d] [token:%s] [device:%s] [version:%s] [channel:%s]", new Object[] { Long.valueOf(d()), u.a().a, i.b(), e(), f() }));
    this.d = new com.snowballfinance.message.io.c.h(com.xueqiu.android.base.c.b.a().b(), d(), u.a().a, i.b(), e(), f());
    com.snowballfinance.message.io.c.h localh = this.d;
    localh.j.c().a(rx.h.p.a(this.e)).f().a(new rx.c.b()new rx.c.b
    {
      a a;
    }, new rx.c.b() {});
    localh.i.c().d(new rx.c.f() {}).c(new rx.c.b() {});
    localh.m.c().c(new rx.c.b() {});
    return this.d.b();
  }
  
  private void c()
  {
    v.a("MessageService", "restartService");
    Object localObject = new Intent(getApplicationContext(), getClass());
    ((Intent)localObject).setPackage(getPackageName());
    localObject = PendingIntent.getService(getApplicationContext(), 1, (Intent)localObject, 134217728);
    AlarmManager localAlarmManager = (AlarmManager)getApplicationContext().getSystemService("alarm");
    localAlarmManager.cancel((PendingIntent)localObject);
    localAlarmManager.set(3, SystemClock.elapsedRealtime() + 60000L, (PendingIntent)localObject);
  }
  
  private static long d()
  {
    u.a();
    long l2 = UserLogonDataPrefs.getLogonUserId();
    long l1 = l2;
    if (l2 <= 0L)
    {
      u.a();
      l1 = UserLogonDataPrefs.getLogonUserId();
    }
    return l1;
  }
  
  private String e()
  {
    try
    {
      Object localObject = getPackageManager().getPackageInfo(getPackageName(), 0);
      if ((v.a) && ((((PackageInfo)localObject).versionName == null) || (((PackageInfo)localObject).versionName.equals("")))) {
        ((PackageInfo)localObject).versionName = "4.0";
      }
      localObject = ((PackageInfo)localObject).versionName;
      return (String)localObject;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      aa.a(localNameNotFoundException);
    }
    return "";
  }
  
  private static String f()
  {
    Object localObject = com.xueqiu.android.base.g.a().a();
    String str1 = ((ClientInfo)localObject).getChannelId();
    String str2 = ((ClientInfo)localObject).getChannelEvent();
    localObject = str1;
    if (str2.trim().length() > 0) {
      localObject = String.format("%s:%s", new Object[] { str1, str2 });
    }
    return (String)localObject;
  }
  
  public final rx.a<z> a(final com.snowballfinance.messageplatform.a.y paramy)
  {
    if (this.d == null) {
      return rx.a.b(z.a(paramy, "not connected.")).a(rx.a.d.a.a());
    }
    final rx.i.a locala = rx.i.a.k();
    this.c.a(new rx.c.a()
    {
      public final void a()
      {
        MessageService.e(MessageService.this).a(paramy).c(new rx.c.b() {});
      }
    });
    paramy = locala.c();
    paramy = new s(paramy, new a.4(paramy));
    paramy.d(new a.1(paramy, new rx.j[1]));
    return paramy.a(rx.a.d.a.a());
  }
  
  public final void a(final com.snowballfinance.messageplatform.a.a parama)
  {
    if (this.c == null) {
      return;
    }
    this.c.a(new rx.c.a()
    {
      public final void a()
      {
        if ((MessageService.e(MessageService.this) != null) && (parama != null))
        {
          parama.a = com.snowballfinance.messageplatform.a.a.a();
          parama.b = i.b();
          MessageService.e(MessageService.this).a(parama);
        }
      }
    });
  }
  
  public final boolean a()
  {
    return this.d != null;
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return new b(this);
  }
  
  public void onCreate()
  {
    super.onCreate();
    try
    {
      com.xueqiu.android.base.b.a().c();
      v.c("MessageService", "setup Alarm.");
      Object localObject = new Intent("com.xueqiu.android.action.ALARM");
      localObject = PendingIntent.getBroadcast(getApplicationContext(), 0, (Intent)localObject, 0);
      long l = SystemClock.elapsedRealtime();
      ((AlarmManager)getApplicationContext().getSystemService("alarm")).setInexactRepeating(2, l + 900000L, 900000L, (PendingIntent)localObject);
      if (u.a().a == null)
      {
        stopSelf();
        return;
      }
      this.b = q.a().b();
      this.e = Executors.newSingleThreadExecutor();
      this.c = rx.h.p.a(this.e).a();
      this.c.a(new rx.c.a()
      {
        public final void a()
        {
          MessageService.a(MessageService.this);
          Object localObject = MessageService.this;
          if (u.a().c)
          {
            ai localai = q.a().b();
            localObject = new MessageService.7((MessageService)localObject);
            localai.k.b((com.xueqiu.android.base.b.p)localObject);
          }
        }
      });
      localObject = new IntentFilter();
      ((IntentFilter)localObject).addAction("com.xueqiu.android.action.requestPrimary");
      ((IntentFilter)localObject).addAction("com.xueqiu.android.action.reconnect");
      android.support.v4.content.r.a(getBaseContext()).a(this.g, (IntentFilter)localObject);
      a = true;
      localObject = new IntentFilter();
      ((IntentFilter)localObject).addAction("android.net.conn.CONNECTIVITY_CHANGE");
      ((IntentFilter)localObject).addAction("android.intent.action.SCREEN_ON");
      this.f.a(rx.a.b.a.a(getApplicationContext(), (IntentFilter)localObject).c(new rx.c.b() {}));
      this.c.a(new rx.c.a()
      {
        public final void a()
        {
          if (i.c(MessageService.this.getBaseContext())) {
            MessageService.c(MessageService.this);
          }
        }
      }, 1L, 1L, TimeUnit.HOURS);
      this.c.a(new rx.c.a()
      {
        public final void a()
        {
          MessageService.d(MessageService.this);
        }
      });
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    v.a("MessageService", "onDestroy");
    DataStore.close();
    if (!this.f.c()) {
      this.f.b();
    }
    android.support.v4.content.r.a(getBaseContext()).a(this.g);
    if (this.c != null) {
      this.c.a(new rx.c.a()
      {
        public final void a()
        {
          if (MessageService.e(MessageService.this) != null) {
            MessageService.e(MessageService.this).d();
          }
          MessageService.f(MessageService.this).b();
          MessageService.g(MessageService.this).shutdown();
        }
      });
    }
    if ((Boolean.valueOf(PreferenceManager.getDefaultSharedPreferences(getBaseContext()).getBoolean(getBaseContext().getString(2131165669), true)).booleanValue()) && (u.a().a != null)) {
      c();
    }
    a = false;
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    v.a("MessageService", "onStart:" + paramInt2);
    return 1;
  }
  
  @TargetApi(14)
  public void onTaskRemoved(Intent paramIntent)
  {
    super.onTaskRemoved(paramIntent);
    v.a("MessageService", "onTaskRemoved");
    DataStore.close();
    if ((Boolean.valueOf(PreferenceManager.getDefaultSharedPreferences(getBaseContext()).getBoolean(getBaseContext().getString(2131165669), true)).booleanValue()) && (u.a().a != null)) {
      c();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\message\client\MessageService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */