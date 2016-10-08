package com.letpower.engine;

import android.content.Context;
import android.content.IntentFilter;
import android.os.PowerManager;
import com.pingan.a.a.e;
import java.lang.reflect.Method;

public class ScreenService
{
  private static final String TAG = "WEBRTC";
  private static Method mReflectScreenState;
  private Context mContext;
  private ScreenService.ScreenBroadcastReceiver mScreenReceiver;
  private ScreenService.ScreenStateListener mScreenStateListener;
  
  public ScreenService(Context paramContext)
  {
    this.mContext = paramContext;
    this.mScreenReceiver = new ScreenService.ScreenBroadcastReceiver(this, null);
    try
    {
      mReflectScreenState = PowerManager.class.getMethod("isScreenOn", new Class[0]);
      return;
    }
    catch (NoSuchMethodException paramContext)
    {
      e.a("WEBRTC", "API < 7," + paramContext);
    }
  }
  
  private void firstGetScreenState()
  {
    if (isScreenOn((PowerManager)this.mContext.getSystemService("power"))) {
      if (this.mScreenStateListener != null) {
        this.mScreenStateListener.onScreenOn();
      }
    }
    while (this.mScreenStateListener == null) {
      return;
    }
    this.mScreenStateListener.onScreenOff();
  }
  
  private static boolean isScreenOn(PowerManager paramPowerManager)
  {
    try
    {
      boolean bool = ((Boolean)mReflectScreenState.invoke(paramPowerManager, new Object[0])).booleanValue();
      return bool;
    }
    catch (Exception paramPowerManager) {}
    return false;
  }
  
  private void startScreenBroadcastReceiver()
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.intent.action.SCREEN_ON");
    localIntentFilter.addAction("android.intent.action.SCREEN_OFF");
    localIntentFilter.addAction("android.intent.action.USER_PRESENT");
    this.mContext.registerReceiver(this.mScreenReceiver, localIntentFilter);
  }
  
  public void requestScreenStateUpdate(ScreenService.ScreenStateListener paramScreenStateListener)
  {
    this.mScreenStateListener = paramScreenStateListener;
    startScreenBroadcastReceiver();
    firstGetScreenState();
  }
  
  public void stopScreenStateUpdate()
  {
    this.mContext.unregisterReceiver(this.mScreenReceiver);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\letpower\engine\ScreenService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */