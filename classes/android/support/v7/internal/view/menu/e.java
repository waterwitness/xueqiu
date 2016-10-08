package android.support.v7.internal.view.menu;

import android.view.View;

final class e
  implements Runnable
{
  private g b;
  
  public e(c paramc, g paramg)
  {
    this.b = paramg;
  }
  
  public final void run()
  {
    Object localObject = this.a.j;
    if (((p)localObject).c != null) {
      ((p)localObject).c.a((p)localObject);
    }
    localObject = (View)this.a.n;
    if ((localObject != null) && (((View)localObject).getWindowToken() != null) && (this.b.b())) {
      this.a.c = this.b;
    }
    this.a.e = null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\view\menu\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */