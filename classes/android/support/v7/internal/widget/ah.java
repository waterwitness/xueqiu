package android.support.v7.internal.widget;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.ListAdapter;

final class ah
  implements DialogInterface.OnClickListener, ak
{
  private AlertDialog b;
  private ListAdapter c;
  private CharSequence d;
  
  private ah(ag paramag) {}
  
  public final void a(ListAdapter paramListAdapter)
  {
    this.c = paramListAdapter;
  }
  
  public final void a(CharSequence paramCharSequence)
  {
    this.d = paramCharSequence;
  }
  
  public final void b()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.a.getContext());
    if (this.d != null) {
      localBuilder.setTitle(this.d);
    }
    this.b = localBuilder.setSingleChoiceItems(this.c, this.a.w, this).show();
  }
  
  public final void c()
  {
    this.b.dismiss();
    this.b = null;
  }
  
  public final boolean f()
  {
    if (this.b != null) {
      return this.b.isShowing();
    }
    return false;
  }
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.a(paramInt);
    if (this.a.u != null)
    {
      paramDialogInterface = this.a;
      this.c.getItemId(paramInt);
      paramDialogInterface.a(null, paramInt);
    }
    c();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\widget\ah.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */