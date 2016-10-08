package com.xueqiu.android.base.b;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

public final class o
  extends BroadcastReceiver
{
  public o(m paramm) {}
  
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getExtras().getString("raw");
    paramContext = paramContext.substring(paramContext.indexOf("#") + 1).split("&");
    int j = paramContext.length;
    int i = 0;
    if (i < j)
    {
      paramIntent = paramContext[i];
      if (paramIntent.startsWith("access_token=")) {
        this.a.c = paramIntent.split("=")[1].trim();
      }
      while (!paramIntent.startsWith("expires_in="))
      {
        i += 1;
        break;
      }
      this.a.e = Long.parseLong(paramIntent.split("=")[1].trim());
    }
    if (this.a.c != null) {
      this.a.g.a();
    }
    try
    {
      if (this.a.a != null)
      {
        this.a.a.unregisterReceiver(this.a.h);
        this.a.h = null;
      }
      return;
    }
    catch (Exception paramContext) {}
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\b\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */