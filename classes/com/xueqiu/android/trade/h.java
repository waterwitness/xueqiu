package com.xueqiu.android.trade;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.android.volley.n;
import com.android.volley.y;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.xueqiu.android.base.b.ai;
import com.xueqiu.android.base.b.am;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.b.x;
import com.xueqiu.android.base.storage.prefs.UserPrefs;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.trade.model.TradeAccount;
import com.xueqiu.android.trade.model.TradeBroker;
import java.util.ArrayList;
import java.util.HashMap;

public final class h
  extends BroadcastReceiver
  implements com.xueqiu.android.base.b.q
{
  private x a = null;
  
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getAction();
    if (TextUtils.isEmpty(paramContext)) {}
    while ((!paramContext.equals("com.xueqiu.android.action.updateBrokerList")) || ((this.a != null) && (!this.a.i))) {
      return;
    }
    paramContext = com.xueqiu.android.base.q.a().b();
    paramIntent = new p(this)
    {
      public final void a(y paramAnonymousy)
      {
        aa.a(paramAnonymousy);
        paramAnonymousy = UserPrefs.getBoundBrokers();
        if ((paramAnonymousy != null) && (paramAnonymousy.size() > 0)) {
          com.xueqiu.android.message.client.c.m.a(paramAnonymousy);
        }
      }
    };
    this.a = paramContext.m.a(paramIntent);
  }
  
  public final boolean z_()
  {
    return this != null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */