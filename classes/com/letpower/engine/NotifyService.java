package com.letpower.engine;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.os.Binder;
import android.os.IBinder;

public class NotifyService
  extends Service
{
  private static final String TAG = "WEBRTC";
  private Binder binder = new NotifyService.MyBinder(this);
  private Context context_;
  private boolean isContected = true;
  private BroadcastReceiver mReceiver = new BroadcastReceiver()
  {
    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      if (paramAnonymousIntent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE"))
      {
        NotifyService.this.context_ = NotifyService.this.getApplicationContext();
        NotifyService.this.isContected = NotifyService.this.isConnectNet();
        if (NotifyService.this.onGetConnectState != null) {
          NotifyService.this.onGetConnectState.GetState(NotifyService.this.isContected);
        }
      }
    }
  };
  private NotifyService.GetConnectState onGetConnectState;
  
  private boolean isConnectNet()
  {
    Object localObject = (ConnectivityManager)this.context_.getSystemService("connectivity");
    NetworkInfo localNetworkInfo = ((ConnectivityManager)localObject).getNetworkInfo(0);
    localObject = ((ConnectivityManager)localObject).getNetworkInfo(1);
    return (!localNetworkInfo.getState().equals(NetworkInfo.State.DISCONNECTED)) || (!((NetworkInfo)localObject).getState().equals(NetworkInfo.State.DISCONNECTED));
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return this.binder;
  }
  
  public void onCreate()
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    registerReceiver(this.mReceiver, localIntentFilter);
  }
  
  public void onDestroy()
  {
    unregisterReceiver(this.mReceiver);
    super.onDestroy();
  }
  
  public void setOnGetConnectState(NotifyService.GetConnectState paramGetConnectState)
  {
    this.onGetConnectState = paramGetConnectState;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\letpower\engine\NotifyService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */