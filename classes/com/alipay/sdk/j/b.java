package com.alipay.sdk.j;

import android.app.ProgressDialog;

final class b
  implements Runnable
{
  b(a parama, CharSequence paramCharSequence) {}
  
  public final void run()
  {
    if (this.d.b == null) {
      this.d.b = new ProgressDialog(this.d.a);
    }
    this.d.b.setCancelable(this.a);
    this.d.b.setOnCancelListener(this.b);
    this.d.b.setMessage(this.c);
    try
    {
      this.d.b.show();
      return;
    }
    catch (Exception localException)
    {
      this.d.b = null;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\sdk\j\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */