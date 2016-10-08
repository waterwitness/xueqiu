package android.support.v4.view;

import android.os.Handler;
import android.os.Message;
import android.view.GestureDetector.OnDoubleTapListener;
import android.view.GestureDetector.OnGestureListener;

final class p
  extends Handler
{
  p(o paramo) {}
  
  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default: 
      throw new RuntimeException("Unknown message " + paramMessage);
    case 1: 
      o.b(this.a).onShowPress(o.a(this.a));
    }
    do
    {
      return;
      o.c(this.a);
      return;
    } while (o.d(this.a) == null);
    if (!o.e(this.a))
    {
      o.d(this.a).onSingleTapConfirmed(o.a(this.a));
      return;
    }
    o.f(this.a);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\view\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */