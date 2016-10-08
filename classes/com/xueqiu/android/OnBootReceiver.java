package com.xueqiu.android;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import com.xueqiu.android.base.util.v;

public class OnBootReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    v.c("OnBootReceiver", "setup Alarm.");
    paramIntent = PendingIntent.getBroadcast(paramContext, 0, new Intent("com.xueqiu.android.action.ALARM"), 0);
    long l = SystemClock.elapsedRealtime();
    ((AlarmManager)paramContext.getSystemService("alarm")).setInexactRepeating(2, 5000L + l, 900000L, paramIntent);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\OnBootReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */