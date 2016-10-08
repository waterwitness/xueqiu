package com.xueqiu.android.stock.view;

import android.database.DataSetObserver;

final class e
  extends DataSetObserver
{
  private e(TableFixHeaders paramTableFixHeaders) {}
  
  public final void onChanged()
  {
    TableFixHeaders.a(this.a);
    this.a.requestLayout();
  }
  
  public final void onInvalidated() {}
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\view\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */