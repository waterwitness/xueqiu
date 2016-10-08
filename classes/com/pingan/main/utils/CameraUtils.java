package com.pingan.main.utils;

import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.os.Build.VERSION;

public class CameraUtils
{
  private static boolean checkCameraFacing(int paramInt)
  {
    if (getSdkVersion() < 9) {}
    for (;;)
    {
      return false;
      int j = Camera.getNumberOfCameras();
      Camera.CameraInfo localCameraInfo = new Camera.CameraInfo();
      int i = 0;
      while (i < j)
      {
        Camera.getCameraInfo(i, localCameraInfo);
        if (paramInt == localCameraInfo.facing) {
          return true;
        }
        i += 1;
      }
    }
  }
  
  private static int getSdkVersion()
  {
    return Build.VERSION.SDK_INT;
  }
  
  public static boolean hasBackFacingCamera()
  {
    return checkCameraFacing(0);
  }
  
  public static boolean hasFrontFacingCamera()
  {
    return checkCameraFacing(1);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\main\utils\CameraUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */