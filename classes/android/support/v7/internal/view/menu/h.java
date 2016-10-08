package android.support.v7.internal.view.menu;

import android.view.MenuItem;

final class h
  implements ae
{
  private h(c paramc) {}
  
  public final void a(p paramp, boolean paramBoolean)
  {
    if ((paramp instanceof aj)) {
      ((aj)paramp).l.a(false);
    }
  }
  
  public final boolean b(p paramp)
  {
    if (paramp == null) {
      return false;
    }
    this.a.g = ((aj)paramp).getItem().getItemId();
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\view\menu\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */