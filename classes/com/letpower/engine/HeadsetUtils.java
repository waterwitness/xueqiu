package com.letpower.engine;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.IntentFilter;
import android.media.AudioManager;
import com.pingan.a.a.e;

public class HeadsetUtils
{
  public static BluetoothScoReceiver bluetoothScoReceiver_ = null;
  public static HeadsetPlugReceiver headsetPlugReceiver_ = null;
  private String TAG = "HeadsetUtils";
  private AudioManager _audioManager;
  private Context context;
  
  public HeadsetUtils(Context paramContext)
  {
    this.context = paramContext;
  }
  
  public BluetoothScoReceiver getBluetoothScoReceiver()
  {
    return bluetoothScoReceiver_;
  }
  
  public HeadsetPlugReceiver getHeadsetPlugReceiver()
  {
    return headsetPlugReceiver_;
  }
  
  public void registerBluetoothScoReceiver()
  {
    e.a(this.TAG, this.TAG + "-->registerBluetoothScoReceiver");
    Object localObject = BluetoothAdapter.getDefaultAdapter();
    if (localObject == null)
    {
      e.a(this.TAG, "LDEngineDemo::registerBluetoothScoReceiver bluetoothAdapter == null");
      return;
    }
    if (!((BluetoothAdapter)localObject).isEnabled())
    {
      e.a(this.TAG, "LDEngineDemo::registerBluetoothScoReceiver bluetoothAdapter.isEnabled() == false");
      return;
    }
    bluetoothScoReceiver_ = new BluetoothScoReceiver();
    if (this._audioManager == null) {
      this._audioManager = ((AudioManager)this.context.getSystemService("audio"));
    }
    bluetoothScoReceiver_.setAudioManager(this._audioManager);
    localObject = new IntentFilter();
    ((IntentFilter)localObject).addAction("android.media.ACTION_SCO_AUDIO_STATE_UPDATED");
    this.context.registerReceiver(bluetoothScoReceiver_, (IntentFilter)localObject);
    this._audioManager.startBluetoothSco();
  }
  
  public void registerHeadsetPlugReceiver()
  {
    e.a(this.TAG, this.TAG + "-->registerHeadsetPlugReceiver");
    if (headsetPlugReceiver_ == null) {
      headsetPlugReceiver_ = new HeadsetPlugReceiver();
    }
    if (this._audioManager == null) {
      this._audioManager = ((AudioManager)this.context.getSystemService("audio"));
    }
    headsetPlugReceiver_.setAudioManager(this._audioManager);
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.intent.action.HEADSET_PLUG");
    this.context.registerReceiver(headsetPlugReceiver_, localIntentFilter);
  }
  
  public void unregisterBluetoothScoReceiver()
  {
    try
    {
      e.a(this.TAG, this.TAG + "-->unregisterBluetoothScoReceiver");
      if (bluetoothScoReceiver_ == null) {
        return;
      }
      if (this._audioManager.isBluetoothScoOn()) {
        this._audioManager.setBluetoothScoOn(false);
      }
      this._audioManager.stopBluetoothSco();
      this.context.unregisterReceiver(bluetoothScoReceiver_);
      bluetoothScoReceiver_ = null;
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void unregisterHeadsetPlugReceiver()
  {
    e.a(this.TAG, this.TAG + "-->unregisterHeadsetPlugReceiver");
    if (headsetPlugReceiver_ == null) {
      return;
    }
    try
    {
      this._audioManager.setMode(0);
      this.context.unregisterReceiver(headsetPlugReceiver_);
      headsetPlugReceiver_ = null;
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException.printStackTrace();
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\letpower\engine\HeadsetUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */