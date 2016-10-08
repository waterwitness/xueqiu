package com.alipay.sdk.j;

import android.app.Activity;
import android.app.ProgressDialog;

public final class a
{
  Activity a;
  ProgressDialog b;
  
  public a(Activity paramActivity)
  {
    this.a = paramActivity;
  }
  
  public final boolean a()
  {
    return (this.b != null) && (this.b.isShowing());
  }
  
  public final void b()
  {
    c();
    b localb = new b(this, "正在加载");
    this.a.runOnUiThread(localb);
  }
  
  public final void c()
  {
    c localc = new c(this);
    this.a.runOnUiThread(localc);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\sdk\j\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */