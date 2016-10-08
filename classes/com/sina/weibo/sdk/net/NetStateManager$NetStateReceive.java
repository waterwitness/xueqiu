package com.sina.weibo.sdk.net;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;

public class NetStateManager$NetStateReceive
  extends BroadcastReceiver
{
  public NetStateManager$NetStateReceive(NetStateManager paramNetStateManager) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    NetStateManager.access$0(paramContext);
    if ("android.net.conn.CONNECTIVITY_CHANGE".equals(paramIntent.getAction()))
    {
      paramContext = (WifiManager)paramContext.getSystemService("wifi");
      paramIntent = paramContext.getConnectionInfo();
      if ((!paramContext.isWifiEnabled()) || (-1 == paramIntent.getNetworkId())) {
        NetStateManager.CUR_NETSTATE = NetStateManager.NetState.Mobile;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\net\NetStateManager$NetStateReceive.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */