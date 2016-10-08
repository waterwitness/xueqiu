package com.xiaomi.push.service.receivers;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.xiaomi.a.a.b.c;
import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.service.a.a;
import com.xiaomi.push.service.bh;

public class PingReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    new a(paramContext).a(false);
    c.c(paramIntent.getPackage() + " is the package name");
    if (bh.o.equals(paramIntent.getAction()))
    {
      if (TextUtils.equals(paramContext.getPackageName(), paramIntent.getPackage())) {
        c.c("Ping XMChannelService on timer");
      }
      try
      {
        paramIntent = new Intent(paramContext, XMPushService.class);
        paramIntent.putExtra("time_stamp", System.currentTimeMillis());
        paramIntent.setAction("com.xiaomi.push.timer");
        paramContext.startService(paramIntent);
        return;
      }
      catch (Exception paramContext)
      {
        c.a(paramContext);
        return;
      }
    }
    c.a("cancel the old ping timer");
    ((AlarmManager)paramContext.getSystemService("alarm")).cancel(PendingIntent.getBroadcast(paramContext, 0, new Intent(paramContext, PingReceiver.class), 0));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\service\receivers\PingReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */