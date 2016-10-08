package com.xueqiu.android.base;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.message.client.MessageService;

public class AlarmReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (!MessageService.a)
    {
      v.c("AlarmReceiver", "start message service.");
      paramContext.startService(new Intent(paramContext, MessageService.class));
      return;
    }
    v.c("AlarmReceiver", "message service is running.");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\AlarmReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */