package com.bairuitech.anychat;

import android.hardware.Camera;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import java.util.Date;

public final class j
  implements SensorEventListener
{
  public g a = null;
  private float b = 0.0F;
  private float c = 0.0F;
  private float d = 0.0F;
  private boolean e = false;
  private Date f = new Date();
  
  public final void onAccuracyChanged(Sensor paramSensor, int paramInt) {}
  
  public final void onSensorChanged(SensorEvent paramSensorEvent)
  {
    if (1 != paramSensorEvent.sensor.getType()) {
      return;
    }
    float f1 = paramSensorEvent.values[0];
    float f2 = paramSensorEvent.values[1];
    float f3 = paramSensorEvent.values[2];
    if ((Math.abs(f1 - this.b) <= 0.5D) && (Math.abs(f2 - this.c) <= 0.5D) && (Math.abs(f3 - this.d) <= 0.5D))
    {
      long l1 = new Date().getTime();
      long l2 = this.f.getTime();
      if ((this.e) && (l1 - l2 > 1000L))
      {
        this.e = false;
        if (AnyChatCoreSDK.GetSDKOptionInt(95) != 3) {
          break label190;
        }
        paramSensorEvent = AnyChatCoreSDK.k;
        if ((paramSensorEvent.a != null) && (paramSensorEvent.b)) {
          break label175;
        }
      }
    }
    for (;;)
    {
      this.b = f1;
      this.c = f2;
      this.d = f3;
      return;
      try
      {
        label175:
        paramSensorEvent.a.autoFocus(null);
      }
      catch (Exception paramSensorEvent) {}
      continue;
      label190:
      AnyChatCoreSDK.SetSDKOptionInt(90, 1);
      continue;
      this.e = true;
      this.f.setTime(System.currentTimeMillis());
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\bairuitech\anychat\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */