package com.alipay.sdk.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.webkit.SslErrorHandler;

final class p
  implements DialogInterface.OnClickListener
{
  p(n paramn) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.a.cancel();
    H5PayActivity.a(this.a.b.a, false);
    e.a = e.a();
    this.a.b.a.finish();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\sdk\app\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */