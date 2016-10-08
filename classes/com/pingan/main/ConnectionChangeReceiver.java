package com.pingan.main;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.letpower.engine.AndroidJavaAPI;
import com.letpower.engine.PAEngine;
import com.pingan.a.a.e;

public class ConnectionChangeReceiver
  extends BroadcastReceiver
{
  private static IAVCallStatusListener mAvCallStatusListener = null;
  private String TAG = "ConnectionChangeReceiver";
  private PAVideoSdkApiManager sdkMg = null;
  
  private void outputAVCallStatus(int paramInt, Object paramObject)
  {
    mAvCallStatusListener = PAEngine.getIAVCallStatusListener();
    e.a("LDSDK", this.TAG + "-outputAVCallStatus mAvCallStatusListener:" + mAvCallStatusListener + "--status:" + paramInt + "--obj:" + paramObject);
    if (mAvCallStatusListener != null)
    {
      e.a("LDSDK", this.TAG + "-outputAVCallStatus mAvCallStatusListener  in");
      mAvCallStatusListener.outputAVCallStatus(paramInt, paramObject);
    }
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (this.sdkMg == null) {
      this.sdkMg = PAVideoSdkApiManager.getInstance(paramContext);
    }
    paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
    paramContext.getNetworkInfo(0);
    paramContext.getNetworkInfo(1);
    paramContext = paramContext.getActiveNetworkInfo();
    if (paramContext != null)
    {
      e.b(this.TAG, "网络连接成功");
      if ((this.sdkMg.isIpChanged()) && (PAEngine.isRegister))
      {
        e.b(this.TAG, "网络连接成功--进入注册");
        this.sdkMg.checkIP();
        PAEngine.LDVoiceEngAndroidAPI.registeracc();
      }
      outputAVCallStatus(901, paramContext.getTypeName());
      return;
    }
    e.b(this.TAG, "网络连接失败");
    outputAVCallStatus(902, null);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\main\ConnectionChangeReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */