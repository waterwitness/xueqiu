package com.xiaomi.a.a.c;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class e
  extends Handler
{
  e(b paramb, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public final void handleMessage(Message paramMessage)
  {
    d locald = (d)paramMessage.obj;
    if ((paramMessage.what != 0) && (paramMessage.what == 1)) {
      locald.b();
    }
    super.handleMessage(paramMessage);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\a\a\c\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */