package org.apache.cordova;

import android.app.Activity;
import java.util.concurrent.atomic.AtomicInteger;

final class y
  extends g
{
  private y(x paramx) {}
  
  public final boolean a(String paramString)
  {
    if ("startup".equals(paramString))
    {
      x.a(this.d).getAndIncrement();
      x.b(this.d).getActivity().runOnUiThread(new Runnable()
      {
        public final void run()
        {
          x.a(y.this.d).getAndDecrement();
        }
      });
      return true;
    }
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\cordova\y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */