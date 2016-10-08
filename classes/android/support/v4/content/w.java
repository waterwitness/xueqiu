package android.support.v4.content;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class w
  extends Handler
{
  public w()
  {
    super(Looper.getMainLooper());
  }
  
  public final void handleMessage(Message paramMessage)
  {
    v localv = (v)paramMessage.obj;
    switch (paramMessage.what)
    {
    default: 
      return;
    case 1: 
      u.c(localv.a, localv.b[0]);
      return;
    }
    u.b();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\content\w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */