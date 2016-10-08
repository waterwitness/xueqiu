package android.support.v4.view;

import android.database.DataSetObserver;

final class cr
  extends DataSetObserver
{
  private cr(ViewPager paramViewPager) {}
  
  public final void onChanged()
  {
    this.a.b();
  }
  
  public final void onInvalidated()
  {
    this.a.b();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\view\cr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */