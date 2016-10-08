package org.apache.cordova;

import android.app.Activity;
import java.util.LinkedList;

final class t
  extends q
{
  boolean b;
  final Runnable c = new Runnable()
  {
    public final void run()
    {
      if (!p.d(t.this.d).isEmpty()) {
        p.b(t.this.d).setNetworkAvailable(t.this.b);
      }
    }
  };
  
  private t(p paramp)
  {
    super(paramp, (byte)0);
  }
  
  final void a()
  {
    p.c(this.d).getActivity().runOnUiThread(this.c);
  }
  
  final void a(boolean paramBoolean)
  {
    if (paramBoolean) {
      if (this.b) {
        break label19;
      }
    }
    label19:
    for (paramBoolean = true;; paramBoolean = false)
    {
      this.b = paramBoolean;
      return;
    }
  }
  
  final void b()
  {
    this.b = false;
    p.b(this.d).setNetworkAvailable(true);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\cordova\t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */