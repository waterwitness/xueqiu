package com.letpower.engine;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.os.CountDownTimer;
import com.pingan.a.a.e;

public class BluetoothScoReceiver
  extends BroadcastReceiver
{
  private static final String TAG = "WEBRTC_BLUETOOTH";
  private AudioManager _audioManager = null;
  private int mChangedState = -1;
  private int mUpdatedPrevState = -1;
  private int mUpdatedState = -1;
  private boolean prevLoudSpeakerOn = true;
  private boolean restart_ = false;
  CountDownTimer timer1 = null;
  
  private int SetPlayoutBluetooth(boolean paramBoolean)
  {
    if (this._audioManager == null)
    {
      e.d("WEBRTC_BLUETOOTH", "Could not change audio routing - no audio manager");
      return -1;
    }
    this._audioManager.setBluetoothScoOn(paramBoolean);
    return 0;
  }
  
  public void SetPrevLoudSpeakerStatus(boolean paramBoolean)
  {
    this.prevLoudSpeakerOn = paramBoolean;
  }
  
  public CountDownTimer getTimer()
  {
    new CountDownTimer(10000L, 1000L)
    {
      public void onFinish()
      {
        BluetoothScoReceiver.this.restart_ = true;
        if ((BluetoothScoReceiver.this.mUpdatedState != 1) && (BluetoothScoReceiver.this._audioManager != null))
        {
          BluetoothScoReceiver.this._audioManager.stopBluetoothSco();
          BluetoothScoReceiver.this._audioManager.startBluetoothSco();
        }
      }
      
      public void onTick(long paramAnonymousLong) {}
    };
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (this.timer1 == null)
    {
      this.timer1 = getTimer();
      this.timer1.start();
      this.restart_ = false;
    }
    label79:
    label180:
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              break label79;
              break label79;
              break label79;
              for (;;)
              {
                paramContext = paramIntent.getAction();
                if (!paramContext.equals("android.media.SCO_AUDIO_STATE_CHANGED")) {
                  break label180;
                }
                this.mUpdatedState = paramIntent.getIntExtra("android.media.extra.SCO_AUDIO_STATE", -1);
                if (this.mUpdatedState != 1) {
                  break;
                }
                SetPlayoutBluetooth(true);
                this.timer1.cancel();
                this.timer1 = null;
                return;
                if (this.restart_)
                {
                  this.timer1.cancel();
                  this.timer1.start();
                  this.restart_ = false;
                }
              }
            } while (this.mUpdatedState != 0);
            SetPlayoutBluetooth(false);
            this._audioManager.setSpeakerphoneOn(this.prevLoudSpeakerOn);
            this._audioManager.setStreamVolume(3, this._audioManager.getStreamMaxVolume(3), 0);
          } while (this.timer1 != null);
          this.timer1 = getTimer();
          this.timer1.start();
          this.restart_ = false;
          return;
        } while (!paramContext.equals("android.media.ACTION_SCO_AUDIO_STATE_UPDATED"));
        this.mUpdatedState = paramIntent.getIntExtra("android.media.extra.SCO_AUDIO_STATE", -1);
        this.mUpdatedPrevState = paramIntent.getIntExtra("android.media.extra.SCO_AUDIO_PREVIOUS_STATE", -1);
        if (this.mUpdatedState == 1)
        {
          SetPlayoutBluetooth(true);
          this.timer1.cancel();
          this.timer1 = null;
          return;
        }
      } while (this.mUpdatedState != 0);
      SetPlayoutBluetooth(false);
      this._audioManager.setSpeakerphoneOn(this.prevLoudSpeakerOn);
      this._audioManager.setStreamVolume(3, this._audioManager.getStreamMaxVolume(3), 0);
    } while (this.timer1 != null);
    this.timer1 = getTimer();
    this.timer1.start();
    this.restart_ = false;
  }
  
  public void setAudioManager(AudioManager paramAudioManager)
  {
    this._audioManager = paramAudioManager;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\letpower\engine\BluetoothScoReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */