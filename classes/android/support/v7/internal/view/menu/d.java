package android.support.v7.internal.view.menu;

import android.content.DialogInterface;

final class d
  extends s
{
  public d(c paramc, aj paramaj)
  {
    super(paramaj);
    paramc.m = paramc.f;
  }
  
  public final void onDismiss(DialogInterface paramDialogInterface)
  {
    super.onDismiss(paramDialogInterface);
    this.a.d = null;
    this.a.g = 0;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\view\menu\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */