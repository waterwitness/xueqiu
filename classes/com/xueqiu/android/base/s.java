package com.xueqiu.android.base;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.content.r;
import com.android.volley.y;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.h5.e;
import com.xueqiu.android.base.storage.prefs.DefaultPrefs;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.UpdateDialogActivity;
import org.json.JSONObject;

public final class s
{
  static volatile boolean c = false;
  private static s d = null;
  String a = null;
  String b = null;
  private BroadcastReceiver e = null;
  
  public static s a()
  {
    if (((d == null) || (!c)) && (d == null)) {
      return new s();
    }
    return d;
  }
  
  protected static final s a(Context paramContext, e parame)
  {
    if ((d == null) || (!c))
    {
      d = new s();
      if (!c)
      {
        if (DefaultPrefs.getVersionCode(paramContext) != 101)
        {
          v.a("SBUpdateManager", String.format("updating %d to %d.", new Object[] { Integer.valueOf(DefaultPrefs.getVersionCode(paramContext)), Integer.valueOf(101) }));
          parame.a(true);
          DefaultPrefs.updateVersionCode(paramContext);
        }
        c = true;
      }
    }
    return d;
  }
  
  public final void a(Context paramContext, String paramString1, String paramString2, boolean paramBoolean)
  {
    if (!c) {
      return;
    }
    Intent localIntent = new Intent(paramContext, UpdateDialogActivity.class);
    localIntent.putExtra("extra_download_url", paramString1);
    localIntent.putExtra("extra_update_content", paramString2);
    localIntent.putExtra("extra_is_gray_update", paramBoolean);
    if (this.b != null) {
      localIntent.putExtra("extra_version", this.b);
    }
    localIntent.setFlags(268435456);
    paramContext.startActivity(localIntent);
  }
  
  public final void b()
  {
    if (!c) {
      return;
    }
    if (this.e != null)
    {
      b.a();
      r.a(b.d()).a(this.e);
      this.e = null;
    }
    this.e = new BroadcastReceiver()
    {
      public final void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
      {
        if (paramAnonymousIntent.getAction().equals("android.intent.action.DOWNLOAD_COMPLETE"))
        {
          s.a(s.this, paramAnonymousContext);
          b.a();
          b.d().unregisterReceiver(this);
          s.b(s.this);
        }
      }
    };
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.intent.action.DOWNLOAD_COMPLETE");
    b.a();
    b.d().registerReceiver(this.e, localIntentFilter);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */