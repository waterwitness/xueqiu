package com.xueqiu.android.common.camera;

import android.app.Dialog;
import android.hardware.Camera;
import android.hardware.Camera.PictureCallback;
import android.hardware.Camera.ShutterCallback;

final class b
  implements Camera.PictureCallback, Camera.ShutterCallback
{
  private b(a parama) {}
  
  public final void onPictureTaken(byte[] paramArrayOfByte, Camera paramCamera)
  {
    a.a(this.a, false);
    a.b(this.a).b();
    a.a(this.a, "").setCancelable(false);
    new c(this.a, paramArrayOfByte).start();
  }
  
  public final void onShutter() {}
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\camera\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */