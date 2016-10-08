package com.xueqiu.android.stock.a;

import android.database.DataSetObservable;
import android.database.DataSetObserver;

public abstract class a
  implements ai
{
  private final DataSetObservable a = new DataSetObservable();
  
  public final void a(DataSetObserver paramDataSetObserver)
  {
    this.a.registerObserver(paramDataSetObserver);
  }
  
  public final void b(DataSetObserver paramDataSetObserver)
  {
    this.a.unregisterObserver(paramDataSetObserver);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */