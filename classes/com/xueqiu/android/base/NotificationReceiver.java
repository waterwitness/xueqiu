package com.xueqiu.android.base;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.xueqiu.android.common.MainActivity;
import com.xueqiu.android.common.model.SNBEvent;
import com.xueqiu.android.common.q;

public class NotificationReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramIntent = paramIntent.getStringExtra("intent_url");
    Intent localIntent1 = q.c(paramIntent, paramContext);
    if (localIntent1 == null) {
      return;
    }
    Intent localIntent2 = new Intent(paramContext, MainActivity.class);
    localIntent2.setFlags(872415232);
    localIntent2.putExtra("extra_notification", 6);
    paramContext.startActivities(new Intent[] { localIntent2, localIntent1 });
    paramContext = new SNBEvent(1000, 9);
    paramContext.addProperty("url", paramIntent);
    i.a().a(paramContext);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\NotificationReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */