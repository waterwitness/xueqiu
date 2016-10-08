package android.support.v7.a;

import android.support.v7.internal.widget.NativeActionModeAwareLayout;
import android.support.v7.internal.widget.ab;
import android.view.ActionMode;
import android.view.ActionMode.Callback;

final class p
  extends n
  implements ab
{
  final NativeActionModeAwareLayout d;
  ActionMode e;
  
  public p(f paramf, b paramb)
  {
    super(paramf, paramb);
    this.d = ((NativeActionModeAwareLayout)paramf.findViewById(android.support.v7.b.f.action_bar_root));
    if (this.d != null) {
      this.d.setActionModeForChildListener(this);
    }
  }
  
  public final ActionMode.Callback a(ActionMode.Callback paramCallback)
  {
    return new q(this, paramCallback);
  }
  
  public final void d()
  {
    super.d();
    if (this.e != null) {
      this.e.finish();
    }
  }
  
  final boolean g()
  {
    return (this.e == null) && (super.g());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\a\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */