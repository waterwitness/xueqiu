package com.xiaomi.mipush.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public final class i
  extends BroadcastReceiver
{
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    Intent localIntent = new Intent(paramContext, PushMessageHandler.class);
    localIntent.putExtras(paramIntent);
    localIntent.setAction(paramIntent.getAction());
    try
    {
      paramContext.startService(localIntent);
      return;
    }
    catch (Exception paramContext) {}
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\mipush\sdk\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */