package android.support.v4.a;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnDismissListener;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;

public class h
  extends i
  implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener
{
  int a = 0;
  int b = 0;
  public boolean c = true;
  boolean d = true;
  int e = -1;
  public Dialog f;
  boolean g;
  boolean h;
  boolean i;
  
  public void F_()
  {
    super.F_();
    if ((!this.i) && (!this.h)) {
      this.h = true;
    }
  }
  
  public final void K_()
  {
    super.K_();
    if (this.f != null)
    {
      this.g = false;
      this.f.show();
    }
  }
  
  public void a(Activity paramActivity)
  {
    super.a(paramActivity);
    if (!this.i) {
      this.h = false;
    }
  }
  
  public void a(@Nullable Bundle paramBundle)
  {
    super.a(paramBundle);
    if (this.H == 0) {}
    for (boolean bool = true;; bool = false)
    {
      this.d = bool;
      if (paramBundle != null)
      {
        this.a = paramBundle.getInt("android:style", 0);
        this.b = paramBundle.getInt("android:theme", 0);
        this.c = paramBundle.getBoolean("android:cancelable", true);
        this.d = paramBundle.getBoolean("android:showsDialog", this.d);
        this.e = paramBundle.getInt("android:backStackId", -1);
      }
      return;
    }
  }
  
  public final void a(q paramq, String paramString)
  {
    this.h = false;
    this.i = true;
    paramq = paramq.a();
    paramq.a(this, paramString);
    paramq.d();
  }
  
  public final void a(boolean paramBoolean)
  {
    if (this.h) {
      return;
    }
    this.h = true;
    this.i = false;
    if (this.f != null)
    {
      this.f.dismiss();
      this.f = null;
    }
    this.g = true;
    if (this.e >= 0)
    {
      this.C.b(this.e);
      this.e = -1;
      return;
    }
    ac localac = this.C.a();
    localac.b(this);
    if (paramBoolean)
    {
      localac.e();
      return;
    }
    localac.d();
  }
  
  @NonNull
  public Dialog b()
  {
    return new Dialog(g(), this.b);
  }
  
  public final LayoutInflater b(Bundle paramBundle)
  {
    if (!this.d) {
      return super.b(paramBundle);
    }
    this.f = b();
    if (this.f != null)
    {
      paramBundle = this.f;
      switch (this.a)
      {
      }
      for (;;)
      {
        return (LayoutInflater)this.f.getContext().getSystemService("layout_inflater");
        paramBundle.getWindow().addFlags(24);
        paramBundle.requestWindowFeature(1);
      }
    }
    return (LayoutInflater)this.D.c.getSystemService("layout_inflater");
  }
  
  public final void c(Bundle paramBundle)
  {
    super.c(paramBundle);
    if (!this.d) {}
    do
    {
      do
      {
        return;
        View localView = this.T;
        if (localView != null)
        {
          if (localView.getParent() != null) {
            throw new IllegalStateException("DialogFragment can not be attached to a container view");
          }
          this.f.setContentView(localView);
        }
        this.f.setOwnerActivity(g());
        this.f.setCancelable(this.c);
        this.f.setOnCancelListener(this);
        this.f.setOnDismissListener(this);
      } while (paramBundle == null);
      paramBundle = paramBundle.getBundle("android:savedDialogState");
    } while (paramBundle == null);
    this.f.onRestoreInstanceState(paramBundle);
  }
  
  public final void d()
  {
    super.d();
    if (this.f != null) {
      this.f.hide();
    }
  }
  
  public final void d(Bundle paramBundle)
  {
    super.d(paramBundle);
    if (this.f != null)
    {
      Bundle localBundle = this.f.onSaveInstanceState();
      if (localBundle != null) {
        paramBundle.putBundle("android:savedDialogState", localBundle);
      }
    }
    if (this.a != 0) {
      paramBundle.putInt("android:style", this.a);
    }
    if (this.b != 0) {
      paramBundle.putInt("android:theme", this.b);
    }
    if (!this.c) {
      paramBundle.putBoolean("android:cancelable", this.c);
    }
    if (!this.d) {
      paramBundle.putBoolean("android:showsDialog", this.d);
    }
    if (this.e != -1) {
      paramBundle.putInt("android:backStackId", this.e);
    }
  }
  
  public final void e()
  {
    super.e();
    if (this.f != null)
    {
      this.g = true;
      this.f.dismiss();
      this.f = null;
    }
  }
  
  public void onCancel(DialogInterface paramDialogInterface) {}
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    if (!this.g) {
      a(true);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\a\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */