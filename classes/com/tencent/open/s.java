package com.tencent.open;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.io.File;

final class s
  implements Runnable
{
  s(AsynLoadImg paramAsynLoadImg) {}
  
  public final void run()
  {
    Log.v("AsynLoadImg", "saveFileRunnable:");
    String str1 = Util.f(AsynLoadImg.b(this.a));
    str1 = "share_qq_" + str1 + ".jpg";
    String str2 = AsynLoadImg.a() + str1;
    Object localObject = new File(str2);
    Message localMessage = AsynLoadImg.c(this.a).obtainMessage();
    if (((File)localObject).exists())
    {
      localMessage.arg1 = 0;
      localMessage.obj = str2;
      Log.v("AsynLoadImg", "file exists: time:" + (System.currentTimeMillis() - AsynLoadImg.d(this.a)));
      AsynLoadImg.c(this.a).sendMessage(localMessage);
      return;
    }
    localObject = AsynLoadImg.a(AsynLoadImg.b(this.a));
    boolean bool;
    if (localObject != null)
    {
      bool = this.a.a((Bitmap)localObject, str1);
      label175:
      if (!bool) {
        break label239;
      }
      localMessage.arg1 = 0;
      localMessage.obj = str2;
    }
    for (;;)
    {
      Log.v("AsynLoadImg", "file not exists: download time:" + (System.currentTimeMillis() - AsynLoadImg.d(this.a)));
      break;
      Log.v("AsynLoadImg", "saveFileRunnable:get bmp fail---");
      bool = false;
      break label175;
      label239:
      localMessage.arg1 = 1;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\open\s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */