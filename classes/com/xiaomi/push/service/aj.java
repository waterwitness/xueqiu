package com.xiaomi.push.service;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class aj
  extends Handler
{
  aj(ai paramai, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public final void handleMessage(Message paramMessage)
  {
    ai.a(this.a, true);
    ai.a(this.a, System.currentTimeMillis());
    if ((paramMessage.obj instanceof f)) {
      ((f)paramMessage.obj).c();
    }
    ai.a(this.a, false);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\service\aj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */