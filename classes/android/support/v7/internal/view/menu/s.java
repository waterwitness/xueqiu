package android.support.v7.internal.view.menu;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnKeyListener;
import android.support.v7.b.h;
import android.support.v7.b.j;
import android.view.KeyEvent;
import android.view.KeyEvent.DispatcherState;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.ListAdapter;

public class s
  implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener, DialogInterface.OnKeyListener, ae
{
  private p a;
  n b;
  private AlertDialog c;
  private ae d;
  
  public s(p paramp)
  {
    this.a = paramp;
  }
  
  public final void a()
  {
    Object localObject = this.a;
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(((p)localObject).a);
    this.b = new n(h.abc_list_menu_item_layout, j.Theme_AppCompat_CompactMenu_Dialog);
    this.b.g = this;
    this.a.a(this.b);
    localBuilder.setAdapter(this.b.a(), this);
    View localView = ((p)localObject).i;
    if (localView != null) {
      localBuilder.setCustomTitle(localView);
    }
    for (;;)
    {
      localBuilder.setOnKeyListener(this);
      this.c = localBuilder.create();
      this.c.setOnDismissListener(this);
      localObject = this.c.getWindow().getAttributes();
      ((WindowManager.LayoutParams)localObject).type = 1003;
      ((WindowManager.LayoutParams)localObject).flags |= 0x20000;
      this.c.show();
      return;
      localBuilder.setIcon(((p)localObject).h).setTitle(((p)localObject).g);
    }
  }
  
  public final void a(p paramp, boolean paramBoolean)
  {
    if ((paramBoolean) || (paramp == this.a)) {
      b();
    }
    if (this.d != null) {
      this.d.a(paramp, paramBoolean);
    }
  }
  
  public final void b()
  {
    if (this.c != null) {
      this.c.dismiss();
    }
  }
  
  public final boolean b(p paramp)
  {
    if (this.d != null) {
      return this.d.b(paramp);
    }
    return false;
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.a((t)this.b.a().getItem(paramInt), 0);
  }
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    this.b.a(this.a, true);
  }
  
  public boolean onKey(DialogInterface paramDialogInterface, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 82) || (paramInt == 4)) {
      if ((paramKeyEvent.getAction() == 0) && (paramKeyEvent.getRepeatCount() == 0))
      {
        paramDialogInterface = this.c.getWindow();
        if (paramDialogInterface != null)
        {
          paramDialogInterface = paramDialogInterface.getDecorView();
          if (paramDialogInterface != null)
          {
            paramDialogInterface = paramDialogInterface.getKeyDispatcherState();
            if (paramDialogInterface != null)
            {
              paramDialogInterface.startTracking(paramKeyEvent, this);
              return true;
            }
          }
        }
      }
      else if ((paramKeyEvent.getAction() == 1) && (!paramKeyEvent.isCanceled()))
      {
        Object localObject = this.c.getWindow();
        if (localObject != null)
        {
          localObject = ((Window)localObject).getDecorView();
          if (localObject != null)
          {
            localObject = ((View)localObject).getKeyDispatcherState();
            if ((localObject != null) && (((KeyEvent.DispatcherState)localObject).isTracking(paramKeyEvent)))
            {
              this.a.a(true);
              paramDialogInterface.dismiss();
              return true;
            }
          }
        }
      }
    }
    return this.a.performShortcut(paramInt, paramKeyEvent, 0);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\view\menu\s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */