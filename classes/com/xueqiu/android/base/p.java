package com.xueqiu.android.base;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.message.client.MessageService;
import java.util.Date;

public final class p
  extends BroadcastReceiver
{
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    if (TextUtils.isEmpty(str)) {}
    do
    {
      do
      {
        do
        {
          do
          {
            return;
            if (!str.equals("android.net.conn.CONNECTIVITY_CHANGE")) {
              break;
            }
          } while (paramIntent.getBooleanExtra("noConnectivity", false));
          q.a().b(paramContext, g.a());
          return;
          if (str.equals("android.intent.action.SCREEN_OFF"))
          {
            b.a().a(false);
            return;
          }
          if (!paramIntent.getAction().equals("android.intent.action.CLOSE_SYSTEM_DIALOGS")) {
            break;
          }
          paramContext = paramIntent.getStringExtra("reason");
          v.c("PushNotificationClient", paramContext);
        } while ((paramContext == null) || (!b.a().c) || ((!paramContext.equals("homekey")) && (!paramContext.equals("recentapps"))));
        b.a().a(false);
        v.c("PushNotificationClient", "setUserOnline=" + b.a().c);
        return;
      } while (!str.equals("com.xueqiu.android.intent.action.SCHEDULED_TICK"));
      v.a("SBBroadcastReceiver", String.format("message service running: %s at: %2$tH:%2$tM:%2$tS", new Object[] { Boolean.valueOf(MessageService.a), new Date() }));
    } while (MessageService.a);
    b.a();
    b.l();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */