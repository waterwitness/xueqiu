package com.letpower.engine;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class ScreenService$ScreenBroadcastReceiver
  extends BroadcastReceiver
{
  private String action = null;
  
  private ScreenService$ScreenBroadcastReceiver(ScreenService paramScreenService) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    this.action = paramIntent.getAction();
    if ("android.intent.action.SCREEN_ON".equals(this.action)) {
      ScreenService.access$0(this.this$0).onScreenOn();
    }
    while (!"android.intent.action.SCREEN_OFF".equals(this.action)) {
      return;
    }
    ScreenService.access$0(this.this$0).onScreenOff();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\letpower\engine\ScreenService$ScreenBroadcastReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */