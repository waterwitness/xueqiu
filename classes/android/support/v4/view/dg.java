package android.support.v4.view;

import android.view.View;

final class dg
  implements do
{
  dc a;
  
  dg(dc paramdc)
  {
    this.a = paramdc;
  }
  
  public final void a(View paramView)
  {
    if (dc.d(this.a) >= 0) {
      ViewCompat.a(paramView, 2, null);
    }
    if (dc.a(this.a) != null) {
      dc.a(this.a).run();
    }
    Object localObject = paramView.getTag(2113929216);
    if ((localObject instanceof do)) {}
    for (localObject = (do)localObject;; localObject = null)
    {
      if (localObject != null) {
        ((do)localObject).a(paramView);
      }
      return;
    }
  }
  
  public final void b(View paramView)
  {
    if (dc.d(this.a) >= 0)
    {
      ViewCompat.a(paramView, dc.d(this.a), null);
      dc.c(this.a);
    }
    if (dc.b(this.a) != null) {
      dc.b(this.a).run();
    }
    Object localObject = paramView.getTag(2113929216);
    if ((localObject instanceof do)) {}
    for (localObject = (do)localObject;; localObject = null)
    {
      if (localObject != null) {
        ((do)localObject).b(paramView);
      }
      return;
    }
  }
  
  public final void c(View paramView)
  {
    Object localObject = paramView.getTag(2113929216);
    if ((localObject instanceof do)) {}
    for (localObject = (do)localObject;; localObject = null)
    {
      if (localObject != null) {
        ((do)localObject).c(paramView);
      }
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\view\dg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */