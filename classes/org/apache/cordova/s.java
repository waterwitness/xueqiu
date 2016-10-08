package org.apache.cordova;

import android.app.Activity;

final class s
  extends q
{
  final Runnable b = new Runnable()
  {
    public final void run()
    {
      String str = p.a(s.this.c);
      if (str != null) {
        p.b(s.this.c).a("javascript:" + str);
      }
    }
  };
  
  private s(p paramp)
  {
    super(paramp, (byte)0);
  }
  
  final void a()
  {
    p.c(this.c).getActivity().runOnUiThread(this.b);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\cordova\s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */