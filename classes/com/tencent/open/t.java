package com.tencent.open;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;

final class t
  extends Handler
{
  t(AsynLoadImg paramAsynLoadImg, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public final void handleMessage(Message paramMessage)
  {
    Log.v("AsynLoadImg", "handleMessage:" + paramMessage.arg1);
    if (paramMessage.arg1 == 0)
    {
      AsynLoadImg.a(this.a).saved(paramMessage.arg1, (String)paramMessage.obj);
      return;
    }
    AsynLoadImg.a(this.a).saved(paramMessage.arg1, null);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\open\t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */