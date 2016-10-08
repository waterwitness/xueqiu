package com.letpower.engine;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.os.Build;
import android.os.Build.VERSION;
import com.pingan.a.a.e;
import com.pingan.main.IAVCallStatusListener;

public class HeadsetPlugReceiver
  extends BroadcastReceiver
{
  private static final String TAG = "HeadsetPlugReceiver";
  private static boolean isHeadsetConnected = false;
  private static IAVCallStatusListener mAvCallStatusListener = null;
  private AudioManager _audioManager = null;
  private boolean prevLoudSpeakerOn = true;
  
  private int SetPlayoutSpeaker(boolean paramBoolean)
  {
    if (this._audioManager == null)
    {
      e.d("HeadsetPlugReceiver", "Could not change audio routing - no audio manager");
      return -1;
    }
    int i = Build.VERSION.SDK_INT;
    if ((3 == i) || (4 == i))
    {
      if (paramBoolean)
      {
        this._audioManager.setMode(0);
        return 0;
      }
      this._audioManager.setMode(2);
      return 0;
    }
    if (((Build.BRAND.equals("Samsung")) || (Build.BRAND.equals("samsung"))) && ((5 == i) || (6 == i) || (7 == i)))
    {
      if (paramBoolean) {
        this._audioManager.setMode(2);
      }
    }
    else
    {
      this._audioManager.setSpeakerphoneOn(paramBoolean);
      return 0;
    }
    this._audioManager.setSpeakerphoneOn(paramBoolean);
    this._audioManager.setMode(0);
    return 0;
  }
  
  public static boolean getIsHeadsetConnected()
  {
    return isHeadsetConnected;
  }
  
  private void outputAVCallStatus(int paramInt, Object paramObject)
  {
    e.b("PASDK", "HeadsetPlugReceiver-outputAVCallStatus mAvCallStatusListener:" + mAvCallStatusListener + "--status:" + paramInt + "--obj:" + paramObject);
    IAVCallStatusListener localIAVCallStatusListener = LDEngineDemo.getIAVCallStatusListener();
    mAvCallStatusListener = localIAVCallStatusListener;
    if (localIAVCallStatusListener != null)
    {
      e.b("PASDK", "HeadsetPlugReceiver-outputAVCallStatus mAvCallStatusListener  in");
      mAvCallStatusListener.outputAVCallStatus(paramInt, paramObject);
    }
  }
  
  public void SetPrevLoudSpeakerStatus(boolean paramBoolean)
  {
    this.prevLoudSpeakerOn = paramBoolean;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.hasExtra("state"))
    {
      if (paramIntent.getIntExtra("state", 0) != 0) {
        break label51;
      }
      outputAVCallStatus(17, null);
      e.a("HeadsetPlugReceiver", "拔出耳机");
      isHeadsetConnected = false;
      if (this._audioManager == null) {}
    }
    label51:
    do
    {
      SetPlayoutSpeaker(true);
      do
      {
        return;
      } while (paramIntent.getIntExtra("state", 0) != 1);
      outputAVCallStatus(16, null);
      e.a("HeadsetPlugReceiver", "插入耳机");
      isHeadsetConnected = true;
    } while (this._audioManager == null);
    SetPlayoutSpeaker(false);
  }
  
  public void setAudioManager(AudioManager paramAudioManager)
  {
    this._audioManager = paramAudioManager;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\letpower\engine\HeadsetPlugReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */