package com.xiaomi.mipush.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public abstract class h
  extends BroadcastReceiver
{
  public void onCommandResult(Context paramContext, d paramd) {}
  
  public void onNotificationMessageArrived(Context paramContext, e parame) {}
  
  public void onNotificationMessageClicked(Context paramContext, e parame) {}
  
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    MessageHandleService.a(new a(paramIntent, this));
    paramIntent = new Intent(paramContext, MessageHandleService.class);
    try
    {
      paramContext.startService(paramIntent);
      return;
    }
    catch (Exception paramContext) {}
  }
  
  @Deprecated
  public void onReceiveMessage(Context paramContext, e parame) {}
  
  public void onReceivePassThroughMessage(Context paramContext, e parame) {}
  
  public void onReceiveRegisterResult(Context paramContext, d paramd) {}
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\mipush\sdk\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */