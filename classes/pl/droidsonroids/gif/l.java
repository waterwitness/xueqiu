package pl.droidsonroids.gif;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;

final class l
  extends Handler
{
  private final WeakReference<b> a;
  
  public l(b paramb)
  {
    super(Looper.getMainLooper());
    this.a = new WeakReference(paramb);
  }
  
  public final void handleMessage(Message paramMessage)
  {
    Object localObject = (b)this.a.get();
    if (localObject == null) {}
    for (;;)
    {
      return;
      if (paramMessage.what == -1)
      {
        ((b)localObject).invalidateSelf();
        return;
      }
      localObject = ((b)localObject).g.iterator();
      while (((Iterator)localObject).hasNext())
      {
        ((Iterator)localObject).next();
        int i = paramMessage.what;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\pl\droidsonroids\gif\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */