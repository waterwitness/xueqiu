package com.xueqiu.android.common.account;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.support.v4.content.r;
import com.android.volley.y;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.q;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.i;
import com.xueqiu.android.common.model.SNBJSONObject;
import com.xueqiu.android.community.model.User;

public final class a
{
  int a;
  Activity b;
  boolean c = false;
  String d = null;
  String e = null;
  String f = null;
  User g = null;
  public boolean h = false;
  private BroadcastReceiver i = new BroadcastReceiver()
  {
    public final void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      a.this.b.finish();
    }
  };
  
  public a(Activity paramActivity, int paramInt)
  {
    this.b = paramActivity;
    this.a = paramInt;
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.xueqiu.android.intent.action.LOGGED_IN");
    r.a(paramActivity.getApplicationContext()).a(this.i, localIntentFilter);
  }
  
  public final void a()
  {
    try
    {
      com.xueqiu.android.base.b.a();
      Object localObject = com.xueqiu.android.base.b.d().getPackageManager();
      com.xueqiu.android.base.b.a();
      localObject = ((PackageManager)localObject).getPackageInfo(com.xueqiu.android.base.b.d().getPackageName(), 0).versionName;
      String str = i.b();
      q.a().b().c(str, (String)localObject, new p()
      {
        public final void a(y paramAnonymousy)
        {
          aa.a(paramAnonymousy, true);
          if (a.this.a == 1)
          {
            aa.a(paramAnonymousy, true);
            if ((a.this.b instanceof com.xueqiu.android.common.b)) {
              ((com.xueqiu.android.common.b)a.this.b).i();
            }
            return;
          }
          paramAnonymousy = new Bundle();
          paramAnonymousy.putByte("extra_mode", (byte)2);
          Intent localIntent = new Intent(a.this.b, LoginActivity.class);
          localIntent.putExtras(paramAnonymousy);
          a.this.b.startActivity(localIntent);
          a.this.b.overridePendingTransition(2130968576, 2130968577);
          a.this.b.finish();
        }
      });
      if ((this.a == 1) && ((this.b instanceof com.xueqiu.android.common.b))) {
        ((com.xueqiu.android.common.b)this.b).h();
      }
      return;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      aa.a(localNameNotFoundException);
    }
  }
  
  public final void b()
  {
    com.xueqiu.android.base.b.a();
    r.a(com.xueqiu.android.base.b.d()).a(this.i);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\account\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */