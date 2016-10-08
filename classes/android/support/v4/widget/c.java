package android.support.v4.widget;

import android.database.DataSetObserver;

final class c
  extends DataSetObserver
{
  private c(a parama) {}
  
  public final void onChanged()
  {
    this.a.a = true;
    this.a.notifyDataSetChanged();
  }
  
  public final void onInvalidated()
  {
    this.a.a = false;
    this.a.notifyDataSetInvalidated();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\widget\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */